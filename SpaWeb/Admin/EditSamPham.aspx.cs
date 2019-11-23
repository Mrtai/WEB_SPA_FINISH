using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SpaWeb.Admin;
using System.IO;

namespace SpaWeb.Admin.Product
{
    public partial class EditSamPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            try
            {
                sanPhamDAL spDAL = new sanPhamDAL();
                SAN_PHAM sp = new SAN_PHAM();

                lb_messenger.Visible = true;
                var idSP = Request.QueryString["MaSP"];

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

                if (!String.IsNullOrEmpty(txt_tenSP.Text) && !String.IsNullOrEmpty(txt_moTa.Text)
                    && !String.IsNullOrEmpty(txt_gia.Text))
                {
                    sp.MA_SP = Convert.ToInt32(idSP);
                    sp.TEN_SP = txt_tenSP.Text;
                    sp.MO_TA = txt_moTa.Text;
                    sp.ANH = Path.GetFileName(FileUpload_hinh.FileName.ToString());
                    sp.GIA = Convert.ToDouble(txt_gia.Text);

                    int result = spDAL.Update(sp);

                    if (result == 1)
                    {
                        lb_messenger.Text = "Cập Nhật Sản Phẩm Thành Công";
                        lb_messenger.CssClass = "text-success";
                    }
                    else
                    {
                        lb_messenger.Text = "Cập Nhật Sản Phẩm Thất Bại";
                    }
                }

                else
                {
                    lb_messenger.Text = "Phải Nhập Đủ Các Trường";
                }
            } catch(Exception ex)
            {
                lb_messenger.Text = ex.ToString();
            }
        }

        protected void btn_Reset_Click(object sender, EventArgs e)
        {
            try
            {
                AddSanPham aSP = new AddSanPham();
                aSP.resetControl();
            } catch(Exception ex)
            {
                lb_messenger.Text = ex.ToString();
            }
        }

        protected void addDataIntoControl()
        {
            try
            {
                sanPhamDAL spDAL = new sanPhamDAL();

                var idSP = Request.QueryString["MaSP"];
                var sp = spDAL.GetDVByMa(Convert.ToInt32(idSP));
                if (sp != null)
                {
                    txt_tenSP.Text = sp.TEN_SP;
                    txt_moTa.Text = sp.MO_TA;

                    txt_gia.Text = sp.GIA.ToString();
                }
            } catch (Exception ex)
            {
                lb_messenger.Text = ex.ToString();
            }

        }
    }
}