using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        nhanVienDAL nhanVienService = new nhanVienDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_dangnhap_Click(object sender, EventArgs e)
        {
            string username = txt_email.Text;
            string password = txt_password.Text;
            byte[] pass = Encoding.ASCII.GetBytes(password);
            if (nhanVienService.Login(username, pass))
            {
                //TAI_KHOAN
                //Session["user_id"] = 
                NHAN_VIEN tk = nhanVienService.GetDVByUsername(username);
                Session["MA_NV"] = tk.MA_NV;
                Session["TEN_NV"] =tk.TEN_NV;
                Session["EMAIL"] = tk.EMAIL;
                Session["QUYEN"] = tk.QUYEN;
                Session["CN"] = tk.MA_CN;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Đăng nhập không thành công')", true);
            }
        }
    }
}