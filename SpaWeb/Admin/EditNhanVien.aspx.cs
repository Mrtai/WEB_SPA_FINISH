using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.Admin
{
    public partial class EditNhanVien : System.Web.UI.Page
    {
        nhanVienDAL nhanVienService = new nhanVienDAL();
        chiNhanhDAL chiNhanhService = new chiNhanhDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MA_NV"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                loadData();
                if (ViewState["loadDR"] == null)
                {
                    LoadCB();
                }
            }
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            var id = Request.QueryString["MANV"];
            NHAN_VIEN nv = new NHAN_VIEN();
            if (!String.IsNullOrEmpty(txt_tenNV.Text) && !String.IsNullOrEmpty(txt_email.Text) && !String.IsNullOrEmpty(txt_username.Text))
            {
                nv.MA_NV = Convert.ToInt32(id);
                nv.TEN_NV = txt_tenNV.Text;
                nv.EMAIL = txt_email.Text;
                nv.USERNAME = txt_username.Text;
                nv.MA_CN = Int32.Parse(dr_chinhanh.SelectedItem.Value);
                nv.QUYEN = Int32.Parse(dr_quyen.SelectedItem.Value);
                if (rb_active.Checked)
                {
                    nv.TRANGTHAI = true;
                }
                else
                {
                    nv.TRANGTHAI = false;
                }
                
                lb_messenger.Visible = true;
                try
                {
                    if (nhanVienService.Update(nv) == 1)
                    {
                        lb_messenger.Text = "Cập Nhật Nhân Viên Thành Công";
                        lb_messenger.CssClass = "text-success";
                    }
                    else
                    {
                        lb_messenger.Text = "Cập Nhật Nhân Viên Thất Bại";
                    }
                }
                catch
                {
                    lb_messenger.Text = "Lỗi exception";
                }
            }
            else
            {
                lb_messenger.Text = "Phải Nhập Đủ Các Trường";
            }
        }

        protected void btn_Reset_Click(object sender, EventArgs e)
        {
            txt_email.Text = "";
            txt_tenNV.Text = "";
            txt_username.Text = "";
            rb_active.Checked = true;
            lb_messenger.Visible = true;
        }
        private void loadData()
        {
            var id = Request.QueryString["MANV"];
            NHAN_VIEN nv = nhanVienService.GetDVByMa(Convert.ToInt32(id));
            txt_tenNV.Text = nv.TEN_NV;
            txt_email.Text = nv.EMAIL;
            txt_username.Text = nv.USERNAME;
            
            if (nv.TRANGTHAI)
            {
                rb_active.Checked = true;
            }
            else
            {
                rb_lock.Checked = false;
            }
        }
        private void LoadCB()
        {
            var id = Request.QueryString["MANV"];
            NHAN_VIEN nv = nhanVienService.GetDVByMa(Convert.ToInt32(id));
            var listDV = chiNhanhService.GetList();
            dr_chinhanh.DataTextField = "TEN_CHI_NHANH";
            dr_chinhanh.DataValueField = "MA_CN";
            dr_chinhanh.DataSource = listDV;
            if(nv.MA_CN != null)
                dr_chinhanh.SelectedValue = nv.MA_CN.ToString();
            dr_chinhanh.DataBind();
            dr_quyen.SelectedValue = nv.QUYEN.ToString();
            ViewState["loadDR"] = true;
        }
    }
}