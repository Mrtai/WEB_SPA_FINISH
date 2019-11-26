using DAL;
using DAL.DAL;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.Admin
{
   
    public partial class AddDichVu : System.Web.UI.Page
    {
        loaiDichVuDAL loaidv = new loaiDichVuDAL();
        dichVuDAL dvdal = new dichVuDAL();
        
        public static List<string> danhsach = new List<string>();
        
        protected void Page_Load(object sender, EventArgs e)
        {

            List<LOAI_DICHVU> listdv = loaidv.GetList();

            ListItem[] items = new ListItem[listdv.Count()];
            int i= 0;
            foreach(LOAI_DICHVU fv in listdv)
            {
                items[i] = new ListItem(fv.TEN_LOAI, fv.MAlLOAI.ToString());
                i++;
            }

            DropDownList1.Items.AddRange(items);
            DropDownList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload_hinh1.HasFile)
            {

                DateTime foo = DateTime.UtcNow;
                long unixTime = ((DateTimeOffset)foo).ToUnixTimeSeconds();
                string fn = "DV" + unixTime.ToString() + "_" + System.IO.Path.GetFileName(FileUpload_hinh1.PostedFile.FileName);
                string SaveLocation = Server.MapPath("~/Resource/image/") + fn;
                danhsach.Add(fn);
                FileUpload_hinh1.PostedFile.SaveAs(SaveLocation);
                loadDataRepeater(danhsach);


            }
        }
      public void  loadDataRepeater(List<string> ds)
        {
            RepeaterHinh.DataSource = ds;
            RepeaterHinh.DataBind();
        }

        protected void btn_Reset_Click(object sender, EventArgs e)
        {

        }
        protected void btn_Save_Click(object sender, EventArgs e)
        {
            DICH_VU dv = new DICH_VU();
            dv.TEN_DICH_VU = txt_tenDV.Text;
            try
            {
                dv.SOLUONG_DUNG = Int32.Parse(txt_soluong.Text);

            }
            catch
            {
                string strBuilder = "<script language='javascript'>alert('so luong phai la so')</script>";
                Response.Write(strBuilder);
                return;

            }
            try
            {
                dv.GIA = Int32.Parse(txt_gia.Text);

            }
            catch
            {
                string strBuilder = "<script language='javascript'>alert('don gia phai la so')</script>";
                Response.Write(strBuilder);
                return;
            }

            dv.MALOAI = Int32.Parse(DropDownList1.SelectedValue.ToString());
            dv.IMAGE = txt_image.Text;
            dv.GIA = Int32.Parse(txt_gia.Text);

            dv.CHI_TIET = txt_ChiTiet.Text;
            if (dvdal.Add(dv) == 1)
            {
                string strBuilder = "<script language='javascript'>alert('thanh cong')</script>";
                Response.Write(strBuilder);
                txt_tenDV.Text = "";
                txt_soluong.Text = "";
                txt_image.Text = "";
                txt_gia.Text = "";

            }else
            {
                string strBuilder = "<script language='javascript'>alert('that bai')</script>";
                Response.Write(strBuilder);
            }
            
        }
    }
}