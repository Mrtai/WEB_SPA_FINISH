using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.Admin.Bill
{
    public partial class ListBill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public List<HOA_DON> HoaDonLoadGrid_GetData()
        {
            hoaDonDAL dAL = new hoaDonDAL();
            var items = dAL.GetList();
            return items;
        }

        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            hoaDonDAL dAL = new hoaDonDAL();
            int id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            int kq = dAL.Delete(id);
            lb_messenger.Visible = true;
            if (kq != 0)
                lb_messenger.Text = "Xóa Thành Công";
            
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void btn_XacNhan_Click(object sender, EventArgs e)
        {

        }
    }
}