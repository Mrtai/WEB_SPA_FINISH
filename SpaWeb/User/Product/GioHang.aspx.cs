using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using DAL.DAL;
using DAL.Model;

namespace SpaWeb.User.Product
{
    public partial class GioHang : System.Web.UI.Page
    {
        sanPhamDAL sanPhamService= new sanPhamDAL();
        hoaDonDAL hdDAL = new hoaDonDAL();
        chiTietHoaDonDAL chiTietHoaDonService = new chiTietHoaDonDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] == null)
            {
                lb_notify.Text = "Giỏ Hàng Trống";
                lb_notify.Visible = true;
                btn_datHang.Visible = false;
            }
            else
            {
                btn_datHang.Visible = true;
                double tong = 0;
                List<CartModel> list = (List<CartModel>)Session["cart"];
                foreach (var i in list)
                {
                    SAN_PHAM sp = sanPhamService.GetDVByMa(i.MA_SP);
                    tong += sp.GIA.GetValueOrDefault()  * i.SO_LUONG;
                }
                lb_tongtien.Visible = true;
                lb_tongtien.Text = tong.ToString();
                lb_title.Visible = true;
            }

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public List<CartModel> CartItemGridView_GetData()
        {
            if (Session["cart"] != null)
            {
                List<CartModel> list = (List<CartModel>)Session["cart"];
                foreach (var i in list)
                {
                    SAN_PHAM sp = sanPhamService.GetDVByMa(i.MA_SP);
                    i.TEN_SP = sp.TEN_SP;
                    i.DON_GIA = sp.GIA.GetValueOrDefault();
                    i.THANH_TIEN = i.SO_LUONG * i.DON_GIA;
                }
                return list;
            }
            return null;
        }

        protected void btn_xoaCartItem_Click(object sender, EventArgs e)
        {
            List<CartModel> list = (List<CartModel>)Session["cart"];
            lb_notify.Visible = true;
            if (CartItemGridView.Rows.Count > 0)
            {
                var btn = (Control)sender;
                GridViewRow row = (GridViewRow)btn.NamingContainer;
                int cartID = Convert.ToInt32(row.Cells[0].Text);
                //Label lblValue = (Label)row.FindControl("LblValue");

                CartModel c = new CartModel();
                foreach(var i in list)
                {
                    if(i.id == cartID)
                    {
                        c = i;
                        break;
                    }
                }
                list.Remove(c);
                if(list.Count == 0)
                {
                    Session.Remove("cart");
                }

                Page.Response.Redirect(Page.Request.Url.ToString(), true);
               
            }
            
        }

        protected void txt_SoLuong_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {

        }

        protected void btn_datHang_Click(object sender, EventArgs e)
        {
            if(Session["MA_KH"] == null)
            {
                Response.Redirect("../Login/login.aspx");
            }
            else
            {
                HOA_DON hd = new HOA_DON();
                hd.MA_KH = Convert.ToInt32(Session["MA_KH"]);
                if (hdDAL.Add(hd) == 1)
                {
                    double tongtien = 0;
                    if (CartItemGridView.Rows.Count > 0)
                    {
                        foreach (GridViewRow row in CartItemGridView.Rows)
                        {
                            CHI_TIET_HOA_DON ct = new CHI_TIET_HOA_DON();
                            ct.MA_HD = hd.MA_HD;
                            ct.MA_SP = Int32.Parse(row.Cells[1].Text);
                            TextBox sl = (TextBox)row.FindControl("txt_SoLuong");
                            //ct.SO_LUONG = Int32.Parse(row.Cells[4].Text);
                            ct.SO_LUONG = Int32.Parse(sl.Text);
                            Label giastr = (Label)row.FindControl("txt_gia");
                            double gia = double.Parse(giastr.Text); 
                            ct.THANH_TIEN = ct.SO_LUONG * gia;
                            chiTietHoaDonService.Add(ct);
                            tongtien += ct.THANH_TIEN.GetValueOrDefault();
                        }

                    }
                    hd.TONG_TIEN = tongtien;
                    hdDAL.Update(hd);
                    Session.Remove("cart");
                    lb_notify.Visible = true;
                    lb_notify.Text = "Bạn đã đặt hàng thành công!";
                }
                else
                {
                    lb_notify.Visible = true;
                    lb_notify.Text = "Bạn đã đặt hàng không thành công!";
                }
                    
            }

            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

       
    }
}
//if (CartItemGridView.Rows.Count == 0)
//            {
//                lb_notify.Text = "Giỏ Hàng Trống";
//                lb_notify.Visible = true;
//                btn_datHang.Visible = false;
//            }
//            else
//            {
//                btn_datHang.Visible = true;
//            }
//            btn_save.Visible = false;