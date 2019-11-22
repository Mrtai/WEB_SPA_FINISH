using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.Admin
{
    public partial class DanhSachKhachHang : System.Web.UI.Page
    {
        khachHangDAL khachHangService = new khachHangDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MA_NV"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
        
        protected void btn_delete_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            int kq = khachHangService.Delete(id);
            lb_messenger.Visible = true;
            if (kq != 0)
                lb_messenger.Text = "Xóa Thành Công";
            KhachHangLoadGrid_GetData();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public List<DAL.KHACH_HANG> KhachHangLoadGrid_GetData()
        {
            var list = khachHangService.GetList();
            return list;
        }
    }
}