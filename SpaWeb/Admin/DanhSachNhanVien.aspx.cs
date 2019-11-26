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
    public partial class DanhSachNhanVien : System.Web.UI.Page
    {
        nhanVienDAL nhanVienService = new nhanVienDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MA_NV"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void SanPhamLoadGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public List<NHAN_VIEN> NhanVienLoad_GetData()
        {
            if(Convert.ToInt32(Session["Quyen"]) == 1)
            {
                var itemList = nhanVienService.GetListByCN(Convert.ToInt32(Session["CN"]));
                return itemList;
            }
            else
            {
                var itemList = nhanVienService.GetList();
                return itemList;
            }
        }
        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            int kq = nhanVienService.Delete(id);
            lb_messenger.Visible = true;
            if (kq != 0)
                lb_messenger.Text = "Xóa Thành Công";
            NhanVienLoad_GetData();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}