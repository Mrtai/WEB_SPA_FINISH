using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.Admin
{
    public partial class EditDichVuDetail : System.Web.UI.Page
    {
        loaiDichVuDAL loaidv = new loaiDichVuDAL();
        dichVuDAL dvdal = new dichVuDAL();
        public static int dem=0;

        public static List<string> danhsach = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (dem == 0)
            {
                loadDV();
                dem = 1;
            }


        }
        public void loadDV()
        {
            List<LOAI_DICHVU> listdv = loaidv.GetList();

            ListItem[] items = new ListItem[listdv.Count()];
            int i = 0;
            foreach (LOAI_DICHVU fv in listdv)
            {
                items[i] = new ListItem(fv.TEN_LOAI, fv.MAlLOAI.ToString());
                i++;
            }

            DropDownList1.Items.AddRange(items);
            DropDownList1.DataBind();


            var idSP = Request.QueryString["MaDV"];
            DICH_VU dv = dvdal.GetDVByMa(Int32.Parse(idSP));



            if (dv == null)
            {
                string strBuilder = "<script language='javascript'>alert('loi load du lieu')</script>";
                Response.Write(strBuilder);
            }
            else
            {
                txt_tenDV1.Text = dv.TEN_DICH_VU.ToString();
                txt_image1.Text = dv.IMAGE;
                txt_gia1.Text = dv.GIA.ToString();
                txt_soluong1.Text = dv.SOLUONG_DUNG.ToString();
                if (dv.CHI_TIET == null)
                {

                }
                else
                {
                    txt_ChiTiet1.Text = dv.CHI_TIET.ToString();
                }

            }
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
        public void loadDataRepeater(List<string> ds)
        {
            RepeaterHinh.DataSource = ds;
            RepeaterHinh.DataBind();
        }

        protected void btn_Reset_Click(object sender, EventArgs e)
        {

        }
        protected void btn_Save_Click(object sender, EventArgs e)
        {
            var idSP = Request.QueryString["MaDV"];
            DICH_VU dvv = dvdal.GetDVByMa(Int32.Parse(idSP));
            dvv.TEN_DICH_VU = txt_tenDV1.Text.ToString();
            try
            {
                dvv.SOLUONG_DUNG = Int32.Parse(txt_soluong1.Text.ToString());

            }
            catch
            {
                string strBuilder = "<script language='javascript'>alert('so luong phai la so')</script>";
                Response.Write(strBuilder);
                return;

            }
            try
            {
                dvv.GIA = Int32.Parse(txt_gia1.Text.ToString());

            }
            catch
            {
                string strBuilder = "<script language='javascript'>alert('don gia phai la so')</script>";
                Response.Write(strBuilder);
                return;
            }

            dvv.MALOAI = Int32.Parse(DropDownList1.SelectedValue.ToString());
            dvv.IMAGE = txt_image1.Text.ToString();
            dvv.GIA = Int32.Parse(txt_gia1.Text.ToString());

            dvv.CHI_TIET = txt_ChiTiet1.Text.ToString();
            if (dvdal.Update(dvv) == 1)
            {
                string strBuilder = "<script language='javascript'>alert('thanh cong')</script>";
                Response.Write(strBuilder);
                txt_tenDV1.Text = "";
                txt_soluong1.Text = "";
                txt_image1.Text = "";
                txt_gia1.Text = "";
                dem = 0;

            }
            else
            {
                string strBuilder = "<script language='javascript'>alert('that bai')</script>";
                Response.Write(strBuilder);
            }



        }
    }
}