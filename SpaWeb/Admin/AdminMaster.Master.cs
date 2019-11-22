using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.Admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MA_NV"] != null)
            {
                lb_name.Text = Session["TEN_NV"].ToString();
                lb_name_2.Text = Session["TEN_NV"].ToString();
                if (Convert.ToInt32(Session["QUYEN"]) == 3)
                {
                    lb_quyen.Text = "ADMIN";
                }
                else if(Convert.ToInt32(Session["QUYEN"]) == 1)
                {
                    lb_quyen.Text = "Quản lý chi nhánh";
                }
                else
                {
                    lb_quyen.Text = "Nhân viên";
                }
                BindMenu();
            }

        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();
            Response.Redirect("Login.aspx");
        }
        private void BindMenu()
        {
            if (Convert.ToInt32(Session["QUYEN"]) == 3)
            {
                link_datlich.Visible = true;
                link_dv.Visible = true;
                link_hd.Visible = true;
                link_kh.Visible = true;
                link_nv.Visible = true;
                link_sp.Visible = true;
            }
            else if (Convert.ToInt32(Session["QUYEN"]) == 1)
            {
                link_kh.Visible = true;
                link_nv.Visible = true;
                link_datlich.Visible = true;
                //link_hd.Visible = true;
                //link_sp.Visible = true;
            }
            else
            {
                link_kh.Visible = true;
                link_datlich.Visible = true;
            }
        }
    }
}