using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.User.Product
{
    public partial class SanPhamListLoad : System.Web.UI.Page
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
        public List<SAN_PHAM> SanPhamList_GetData()
        {
            sanPhamDAL sp = new sanPhamDAL();
            var itemList = sp.GetList();
            return itemList;
        }
    }
}