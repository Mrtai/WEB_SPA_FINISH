using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using DAL.DAL;

namespace SpaWeb.User.Product
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (CartItemGridView.Rows.Count == 0)
            {
                lb_notify.Text = "Giỏ Hàng Trống";
                lb_notify.Visible = true;
                btn_datHang.Visible = false;
            }
            else
            {
                btn_datHang.Visible = true;
            }
            btn_save.Visible = false;

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public List<CartItem> CartItemGridView_GetData()
        {
            cartItemDAL cartDAL = new cartItemDAL();
            var item = cartDAL.GetDVByMa(1);
            return item.ToList();
        }

        protected void btn_xoaCartItem_Click(object sender, EventArgs e)
        {
            cartItemDAL cartDAL = new cartItemDAL();
            lb_notify.Visible = true;
            if (CartItemGridView.Rows.Count > 0)
            {
                var btn = (Control)sender;
                GridViewRow row = (GridViewRow)btn.NamingContainer;
                int cartID = Convert.ToInt32(row.Cells[0].Text);
                //Label lblValue = (Label)row.FindControl("LblValue");

                cartDAL.Delete(cartID);
                

                Page.Response.Redirect(Page.Request.Url.ToString(), true);
               
            }
            
        }
        
        protected void txt_SoLuong_TextChanged(object sender, EventArgs e)
        {
            btn_save.Visible = true;
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {

        }

        protected void btn_datHang_Click(object sender, EventArgs e)
        {
            cartItemDAL cart = new cartItemDAL();
            int count = CartItemGridView.Rows.Count;
            if (count > 0)
            {
                for (int i = 0; i < count; i++)
                {
                    int id = Convert.ToInt32(CartItemGridView.Rows[i].Cells[0].Text);
                    cart.Delete(id);
                }
            }
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}