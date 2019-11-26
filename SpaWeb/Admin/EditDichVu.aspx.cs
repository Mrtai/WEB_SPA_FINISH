using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.Admin
{
    public partial class EditDichVu : System.Web.UI.Page
    {
        dichVuDAL dvdal = new dichVuDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadDichVuAll();
        }
        public void loadDichVuAll()
        {
            var list = dvdal.GetList();
            Repeater_dichvu.DataSource = list;
            Repeater_dichvu.DataBind();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Button btn = (Button)sender;
                string id = btn.CommandName;
                if (dvdal.Delete(Int32.Parse(id)) == 1)
                {
                    string strBuilder = "<script language='javascript'>alert('xóa thành công')</script>";
                    Response.Write(strBuilder);
                    loadDichVuAll();
                }
                else
                {
                    string strBuilder = "<script language='javascript'>alert('Lỗi khi xóa')</script>";
                    Response.Write(strBuilder);
                }
            }
            catch
            {

            }
            
            
        }
    }
}