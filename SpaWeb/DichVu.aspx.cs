using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb
{
    public partial class DichVu : System.Web.UI.Page
    {
      

        dichVuDAL dvdal = new dichVuDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadDichVu();
            loadDichVuAll();
        }
        public void loadDichVu()
        {
            var list = dvdal.GetList_Hot();
            Repeaterdata_host.DataSource = list;
            Repeaterdata_host.DataBind();
           
        }
        public void loadDichVuAll()
        {
            var list = dvdal.GetList();
            Repeater_dichvu.DataSource = list;
            
            Repeater_dichvu.DataBind();

        }
    }
}