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
            hoaDonDAL hdDAL = new hoaDonDAL();
            sanPhamDAL spDAL = new sanPhamDAL();

            chiTietHoaDonDAL cthdDAL = new chiTietHoaDonDAL();
            
            HOA_DON hd = new HOA_DON
            {
                MA_KH = 1
            };

            hdDAL.Add(hd);

            double tongTien = 0;
            int count = CartItemGridView.Rows.Count;
            if (count > 0)
            {
                for (int i = 0; i < count; i++)
                {
                    CHI_TIET_HOA_DON cthd = new CHI_TIET_HOA_DON();
                    int idCart = Convert.ToInt32(CartItemGridView.Rows[i].Cells[0].Text);              
                    string tenSP = CartItemGridView.Rows[i].Cells[1].Text;
                    string soLuong = ((TextBox)CartItemGridView.Rows[i].FindControl("txt_SoLuong")).Text;

                    var a = spDAL.GetDVByTen(tenSP);
                    int masp = a.MA_SP;
                    double giaSP = Convert.ToDouble(a.GIA);

                    cthd.MA_SP = a.MA_SP;
                    cthd.MA_HD = hd.MA_HD;
                    cthd.SO_LUONG = Convert.ToInt32(soLuong);
                    cthd.THANH_TIEN = Convert.ToInt32(soLuong) * giaSP;
                    
                    tongTien = tongTien + cthd.THANH_TIEN.Value;

                    cthdDAL.Add(cthd);                   
          
                    cart.Delete(idCart);
                }
                hd.TONG_TIEN = tongTien;
                hdDAL.Update(hd);
            }

            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}