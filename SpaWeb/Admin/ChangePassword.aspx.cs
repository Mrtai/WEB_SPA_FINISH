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
    public partial class ChangePassword : System.Web.UI.Page
    {
        nhanVienDAL nhanVienService = new nhanVienDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MA_NV"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            int Ma_NV = Convert.ToInt32(Session["MA_NV"]);
            NHAN_VIEN nv = nhanVienService.GetDVByMa(Ma_NV);
            string passoldstr = txt_old_pass.Text;
            byte[] passold = Encoding.ASCII.GetBytes(passoldstr);
            if (nhanVienService.Login(nv.USERNAME,passold))
            {
                string passstr = txt_new_password.Text;
                byte[] pass = Encoding.ASCII.GetBytes(passstr);
                if (nhanVienService.ChangePassWord(pass, Ma_NV) == 1)
                {
                    lb_messenger.Visible = true;
                    lb_messenger.Text = "Thay đổi thành công";
                }
                else
                {
                    lb_messenger.Visible = true;
                    lb_messenger.Text = "Thay đổi không thành công";
                }
            }
            else
            {
                lb_messenger.Visible = true;
                lb_messenger.Text = "Mật khẩu cũ không đúng";
            }
            
        }
    }
}