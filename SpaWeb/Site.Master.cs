using DAL.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Session["MA_KH"] != null)
            {
                lb_name_user.Visible = true;
                lb_name_user.Text = "Hi," + Session["TEN_KH"].ToString();
            }
            else
            {
                link_dangky.Visible = true;
                link_login.Visible = true;
            }
            if(Session["cart"] != null)
            {
                var list = (List<CartModel>)Session["cart"];
                lb_count_cart.Text = list.Count.ToString();
            }
            else
            {
                lb_count_cart.Text = "0";
            }
        }
    }
}