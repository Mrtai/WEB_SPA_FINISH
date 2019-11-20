using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.DAL;
using System.Data;
using DAL;

namespace SpaWeb
{
    public partial class _Default : Page
    {
        loaiDichVuDAL loaiDV = new loaiDichVuDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadrepet();
        }
        public void loadrepet()
        {
            var list = loaiDV.GetList();
            Repeater2.DataSource = list;
            Repeater2.DataBind();
            Repeater3.DataSource = list;
            Repeater3.DataBind();
        }

        protected void Repeater3_ItemDataBound(object sender, RepeaterItemEventArgs args)
        {
            if (args.Item.ItemType == ListItemType.Item || args.Item.ItemType == ListItemType.AlternatingItem)
            {
                Repeater childRepeater = (Repeater)args.Item.FindControl("Repeater4");
                LOAI_DICHVU row = (LOAI_DICHVU)args.Item.DataItem;
                // getSavingsPerCustomer(row["MA_LOAI"]);
                dichVuDAL dv = new dichVuDAL();
                var  d = dv.GetDVByMaLoai(Int32.Parse(row.MAlLOAI.ToString()));
                childRepeater.DataSource = d;
                childRepeater.DataBind();
            }
        }
       
    }
}