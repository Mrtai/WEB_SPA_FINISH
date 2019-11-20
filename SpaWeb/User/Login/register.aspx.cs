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
    public partial class register : System.Web.UI.Page
    {
        khachHangDAL khachHangService = new khachHangDAL();
        taiKhoanDAL taiKhoanService = new taiKhoanDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_dangky_Click(object sender, EventArgs e)
        {
            KHACH_HANG kh = new KHACH_HANG();
            TAI_KHOAN tk = new TAI_KHOAN();
            kh.PHONE = txt_phone.Text;
            kh.EMAIL = txt_email.Text;
            kh.TEN_KH = txt_name.Text;
            if(khachHangService.Add(kh) == 1)
            {
                tk.MA_KH = kh.MA_KH;
                tk.USERNAME = txt_username.Text;
                byte[] pass = Encoding.ASCII.GetBytes(txt_password.Text);
                tk.PASSWORD = pass;
                tk.TRANG_THAI = true;
                if(taiKhoanService.Add(tk) == 1)
                {
                    lbResult.Visible = true;
                    lbResult.Text = "Đăng ký thành công";
                    hyperlink.Visible = true;
                    hyperlink.Text = "Chuyển sang trang login";
                }
                else
                {
                    lbResult.Visible = true;
                    lbResult.Text = "Đăng ký không thành công";
                }
                
            }
            else
            {
                lbResult.Visible = true;
                lbResult.Text = "Đăng ký không thành công";
            }
        }
    }
}