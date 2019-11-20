using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.User.Login
{
    public partial class login : System.Web.UI.Page
    {
        taiKhoanDAL taiKhoanService = new taiKhoanDAL();
        khachHangDAL khachHangService = new khachHangDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_dangnhap_Click(object sender, EventArgs e)
        {
            string username = txt_email.Text;
            string password = txt_password.Text;
            byte[] pass = Encoding.ASCII.GetBytes(password);
            if (taiKhoanService.Login(username, pass))
            {
                //TAI_KHOAN
                //Session["user_id"] = 
                TAI_KHOAN tk= taiKhoanService.GetByUsername(username);
                Session["MA_KH"] = tk.MA_KH;
                KHACH_HANG kh = khachHangService.GetDVByMa(tk.MA_KH);
                Session["TEN_KH"] = kh.TEN_KH;
                Session["EMAIL"] = kh.EMAIL;
                Session["PHONE"] = kh.PHONE;
                Response.Redirect("../../Default.aspx");
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Đăng nhập không thành công')", true);
            }
        }
    }
}