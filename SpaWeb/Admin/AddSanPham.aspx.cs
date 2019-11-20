using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.Admin.Product
{
    public partial class AddSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_tenSP.Focus();
            
        }

        
        protected void btn_Save_Click(object sender, EventArgs e)
        {
            sanPhamDAL spDAL = new sanPhamDAL();
            SAN_PHAM sp = new SAN_PHAM();

            lb_messenger.Visible = true;

            if (FileUpload_hinh.HasFile)
            {
                try
                {
                    if (FileUpload_hinh.PostedFile.ContentType == "image/jpeg")
                    {
                        if (FileUpload_hinh.PostedFile.ContentLength < 102400)
                        {
                            string filename = Path.GetFileName(FileUpload_hinh.FileName.ToString());
                            FileUpload_hinh.SaveAs(Server.MapPath("~/Resource/image/") + filename);

                        }
                    }
                       
                }
                catch { }
                
             }

            if (!String.IsNullOrEmpty(txt_tenSP.Text) && !String.IsNullOrEmpty(txt_gia.Text))
            {
                sp.TEN_SP = txt_tenSP.Text;
                sp.MO_TA = txt_moTa.Text;
                sp.ANH = Path.GetFileName(FileUpload_hinh.FileName.ToString());
                sp.GIA = Convert.ToDouble(txt_gia.Text);

                int result = spDAL.Add(sp);

                if (result == 1)
                {
                    lb_messenger.Text = "Thêm Sản Phẩm Thành Công";
                    lb_messenger.CssClass = "text-success";
                }
                else
                {
                    lb_messenger.Text = "Thêm Sản Phẩm Thất Bại";
                }
            }
            else
            {
                lb_messenger.Text = "Phải Nhập Đủ Các Trường";
            }

        }

        protected void btn_Reset_Click(object sender, EventArgs e)
        {
            resetControl();
        }

        public void resetControl()
        {
            txt_tenSP.Text = "";

            txt_moTa.Text = "";
            txt_gia.Text = "";
            lb_messenger.Visible = false;
        }
    }
}