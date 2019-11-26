using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.Admin
{
    public partial class AddNhanVien : System.Web.UI.Page
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
                if(ViewState["load_nv"] == null)
                {
                    LoadCB();
                }
            }
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            NHAN_VIEN nv = new NHAN_VIEN();
            lb_messenger.Visible = true;
            if (!String.IsNullOrEmpty(txt_tenNV.Text) && !String.IsNullOrEmpty(txt_email.Text) && !String.IsNullOrEmpty(txt_username.Text) && dr_quyen.SelectedItem.Value != "0")
            {
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
                byte[] pass = Encoding.ASCII.GetBytes("123456");
                nv.PASSWORD = pass;
                
                try
                {
                    if (nhanVienService.Add(nv) == 1)
                    {
                        lb_messenger.Text = "Thêm Nhân Viên Thành Công";
                        lb_messenger.CssClass = "text-success";
                    }
                    else
                    {
                        lb_messenger.Text = "Thêm Nhân Viên Thất Bại";
                        lb_messenger.CssClass = "text-success";
                    }
                }
                catch
                {
                    lb_messenger.Text = "Lỗi exception";
                    lb_messenger.CssClass = "text-success";
                }
            }
            else
            {
                lb_messenger.Text = "Phải Nhập Đủ Các Trường";
                lb_messenger.CssClass = "text-success";
            }
        }

        protected void btn_Reset_Click(object sender, EventArgs e)
        {
            txt_email.Text = "";
            txt_tenNV.Text = "";
            txt_username.Text = "";
            rb_active.Checked = true;
            lb_messenger.Visible = true;
            LoadCB();
        }
        private void LoadCB()
        {
            var listDV = chiNhanhService.GetList();
            dr_chinhanh.DataTextField = "TEN_CHI_NHANH";
            dr_chinhanh.DataValueField = "MA_CN";
            dr_chinhanh.DataSource = listDV;
            dr_chinhanh.DataBind();
            ViewState["load_nv"] = true;
        }
    }
}