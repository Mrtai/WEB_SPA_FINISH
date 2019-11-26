using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb
{
    public partial class ChiTietDichVu : System.Web.UI.Page
    {
        
        dichVuDAL dvDAL = new dichVuDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public DAL.DICH_VU DichVuDetail_GetItem([QueryString("MaDV")] int id)
        {
            DICH_VU dv = new DICH_VU();
            dv = dvDAL.GetDVByMa(id);
            return dv;
        }
       
    }
}