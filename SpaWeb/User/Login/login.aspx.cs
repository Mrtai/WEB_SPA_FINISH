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
                Response.Redirect("../../Default.aspx");
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Đăng nhập không thành công')", true);
            }
        }
    }
}