using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.Admin.Product
{
    public partial class SanPhamLoad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SanPhamLoad_GetData();
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public List<SAN_PHAM> SanPhamLoad_GetData()
        {
                sanPhamDAL sp = new sanPhamDAL();
                var itemList = sp.GetList();
                return itemList;
        }

        
        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            sanPhamDAL sp = new sanPhamDAL();
            try
            {
                int id = Convert.ToInt32((sender as LinkButton).CommandArgument);
                int kq = sp.Delete(id);
                lb_messenger.Visible = true;
                if (kq != 0)
                    lb_messenger.Text = "Xóa Thành Công";
                SanPhamLoad_GetData();
                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
            catch
            {
                lb_messenger.Visible = true;
                lb_messenger.Text = "Phải Xóa Các Chi Tiết Hóa Đơn Của Hóa Đơn Này Trước";
            }
        }
    }
}