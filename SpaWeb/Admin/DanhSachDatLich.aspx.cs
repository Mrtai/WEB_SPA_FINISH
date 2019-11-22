using DAL;
using DAL.DAL;
using DAL.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.Admin
{
    public partial class DanhSachDatLich : System.Web.UI.Page
    {
        lichHenDAL lichHenService = new lichHenDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MA_NV"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
        public List<LichHenModel> DatLichLoad_GetData()
        {
            List<LichHenModel> res = new List<LichHenModel>();
            List<LICH_HEN> itemList = new List<LICH_HEN>();
            if (Convert.ToInt32(Session["Quyen"]) == 1 || Convert.ToInt32(Session["Quyen"]) == 2)
            {
                itemList = lichHenService.GetListByCN(Convert.ToInt32(Session["CN"]));
            }
            else
            {
                itemList = lichHenService.GetList();
                
            }
            foreach (LICH_HEN l in itemList)
            {
                LichHenModel lichHen = new LichHenModel();
                lichHen.CHI_NHANH = l.CHI_NHANH;
                lichHen.DICH_VU = l.DICH_VU;
                lichHen.GIO = l.GIO;
                lichHen.KHACH_HANG = l.KHACH_HANG;
                lichHen.MA_CN = l.MA_CN;
                lichHen.MA_DV = l.MA_DV;
                lichHen.MA_KH = l.MA_KH;
                lichHen.MA_LH = l.MA_LH;
                lichHen.NGAY = l.NGAY;
                lichHen.NOTE = l.NOTE;
                if (l.TRANG_THAI == true)
                {
                    lichHen.TRANG_THAI = "Đã xử lý";
                }
                else
                {
                    lichHen.TRANG_THAI = "Chưa xử lý";
                }
                res.Add(lichHen);
            }
            return res;
        }
        protected void btn_Process_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            LICH_HEN k = lichHenService.GetDVByMa(id);
            if(k.TRANG_THAI == true)
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Lịch hẹn đã được xử lý')", true);
            }
            else
            {
                Response.Redirect("KetQuaDatLich.aspx?MALH="+id);
            }

        }
    }
}