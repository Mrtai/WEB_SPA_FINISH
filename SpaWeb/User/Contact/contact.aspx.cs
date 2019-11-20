using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.User.Contact
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        bool flag = true;
        dichVuDAL dichVuService = new dichVuDAL();
        chiNhanhDAL chiNhanhService = new chiNhanhDAL();
        lichHenDAL lichHenService = new lichHenDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            if (ViewState["contact_load"] == null )
            {
                LoadCB();
            }
            LoadDS();
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            //get value dr
            string name_cn = dr_chinhanh.SelectedItem.Text;
            string name_dv = dr_dichvu.SelectedItem.Text;

            ViewState["name_chi_nhanh"] = name_cn;
            ViewState["name_dich_vu"] = name_dv;
            ViewState["id_chi_nhanh"] = dr_chinhanh.SelectedValue;
            ViewState["id_dich_vu"] = dr_dichvu.SelectedValue;
            lb_chinhanh.Text = name_cn;
            lb_service.Text = name_dv;
            //end

            MultiView1.ActiveViewIndex = 1;
        }

        protected void btn_next1_Click(object sender, EventArgs e)
        {
            
           MultiView1.ActiveViewIndex = 2;
        }

        protected void btn_previous_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btn_previous_2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }
        private void LoadDS()
        {
            var listCN = chiNhanhService.GetList();
            DSchinhan.DataSource = listCN;
        }
        private void LoadCB()
        {
            
            var listDV = dichVuService.GetList();
            dr_dichvu.DataTextField = "TEN_DICH_VU";
            dr_dichvu.DataValueField = "MA_DV";
            dr_dichvu.DataSource = listDV;
            
            if(ViewState["id_dich_vu"] != null)
            {
                string dichvuChecked = ViewState["id_dich_vu"].ToString();
                dr_dichvu.ClearSelection();
                dr_dichvu.Items.FindByValue(dichvuChecked).Selected = true;
            }
            dr_dichvu.DataBind();
            var listCN = chiNhanhService.GetList();
            dr_chinhanh.DataValueField = "MA_CN";
            dr_chinhanh.DataTextField = "TEN_CHI_NHANH";
            dr_chinhanh.DataSource = listCN;
            dr_chinhanh.DataBind();
            


            //if (ViewState["id_chi_nhanh"] != null)
            //{
            //    string chinhanhChecked = ViewState["id_chi_nhanh"].ToString();
            //    dr_chinhanh.ClearSelection();
            //    dr_chinhanh.Items.FindByValue(chinhanhChecked).Selected = true;
            //}
            //DSchinhan.DataBind();
            //if (ViewState["name_chi_nhanh"] != null)
            //{
            //    string name_cn = ViewState["name_chi_nhanh"].ToString();
            //    lb_chinhanh.Text = name_cn;
            //}
            //if(ViewState["name_dich_vu"] != null)
            //{
            //    string namem_dv = ViewState["name_dich_vu"].ToString();
            //    lb_service.Text = namem_dv;
            //}
            flag = false;
            ViewState["contact_load"] = true;
           
        }
        private string getRadio()
        {
            string r = "";
            if (opt0.Checked)
            {
                r = opt0.Text;
            }
            if (opt1.Checked)
            {
                r = opt1.Text;
            }
            else if (opt2.Checked)
            {
                r = opt2.Text;
            }
            else if (opt3.Checked)
            {
                r = opt3.Text;
            }
            else if (opt4.Checked)
            {
                r = opt4.Text;
            }
            else if (opt5.Checked)
            {
                r = opt5.Text;
            }
            else if (opt6.Checked)
            {
                r = opt6.Text;
            }
            else if (opt7.Checked)
            {
                r = opt7.Text;
            }
            else if (opt8.Checked)
            {
                r = opt8.Text;
            }
            else if (opt9.Checked)
            {
                r = opt9.Text;
            }
            else if (opt10.Checked)
            {
                r = opt10.Text;
            }
            else if (opt11.Checked)
            {
                r = opt11.Text;
            }
            else if (opt12.Checked)
            {
                r = opt12.Text;
            }
            else if (opt13.Checked)
            {
                r = opt13.Text;
            }
            else if (opt14.Checked)
            {
                r = opt14.Text;
            }
            else if (opt15.Checked)
            {
                r = opt15.Text;
            }
            else if (opt16.Checked)
            {
                r = opt16.Text;
            }
            else if (opt17.Checked)
            {
                r = opt17.Text;
            }
            else if (opt18.Checked)
            {
                r = opt18.Text;
            }
            else if (opt19.Checked)
            {
                r = opt19.Text;
            }
            else if (opt20.Checked)
            {
                r = opt20.Text;
            }
            else if (opt21.Checked)
            {
                r = opt21.Text;
            }
            else if (opt22.Checked)
            {
                r = opt22.Text;
            }
            else
            {
                r = opt23.Text;
            }
            return r;
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string id_cn = dr_chinhanh.SelectedItem.Value;
            string id_dv = dr_dichvu.SelectedItem.Value;
            string gio = getRadio();
            string name = txt_name.Text;
            string phone = txt_phone.Text;
            string email = txt_email.Text;
            string note = txt_note1.Text;
            DateTime dt;
            if (ViewState["ngay"] != null)
            {
                string ngay = ViewState["ngay"].ToString();
                dt = DateTime.ParseExact(ngay, "MM/dd/yyyy", CultureInfo.InvariantCulture);
            }
            else
            {
                dt = DateTime.Now;
            }
           
            LICH_HEN lh = new LICH_HEN();
            lh.MA_CN = Int32.Parse(id_cn);
            lh.MA_DV = Int32.Parse(id_dv);
            lh.GIO = gio;
            lh.NGAY = dt;
            lh.NOTE = note;
            if(lichHenService.Add(lh) == 1)
            {
                lb_result.Text = "Bạn đã đặt lịch thành công";
                lb_result.Visible = true;
            }
            else
            {
                lb_result.Text = "Bạn đã đặt lịch không thành công";
                lb_result.Visible = true;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            ViewState["ngay"] = Calendar1.SelectedDate.ToShortDateString();
        }
    }
}