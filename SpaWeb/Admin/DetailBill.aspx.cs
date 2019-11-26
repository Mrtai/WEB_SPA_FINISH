using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.Admin
{
    public partial class DetailBill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public List<CHI_TIET_HOA_DON> ChiTietHoaDonLoadGrid_GetData([QueryString("MaHD")] int id)
        {
            chiTietHoaDonDAL cthd = new chiTietHoaDonDAL();
            var sp2 = cthd.GetDVByMa(id);
            return sp2;
        }
    }
}