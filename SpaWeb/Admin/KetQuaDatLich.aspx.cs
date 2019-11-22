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
    public partial class KetQuaDatLich : System.Web.UI.Page
    {
        lichHenDAL lichHenService = new lichHenDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MA_NV"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btn_Process_Click(object sender, EventArgs e)
        {
            var id = Request.QueryString["MALH"];
            if (lichHenService.ProcessLichHen(Convert.ToInt32(id)) == 1)
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Xử lý lịch hẹn thành công')", true);
                Response.Redirect("DanhSachDatLich.aspx");
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Xử lý lịch hẹn không thành công, làm ơn thử lại')", true);
            }
        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public DAL.LICH_HEN KetQua_GetItem([QueryString("MALH")] int id)
        {
            //var id = Request.QueryString["MALH"];
            var kq = lichHenService.GetDVByMa(id);
            return kq;
        }
    }
}