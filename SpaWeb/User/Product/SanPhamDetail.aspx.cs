﻿using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.User.Product
{
    public partial class SanPhamDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public SAN_PHAM SanPhamDetail_GetItem([QueryString("MaSP")] int id)
        {          
            sanPhamDAL sp = new sanPhamDAL();
            var sp2 = sp.GetDVByMa(id);
            return sp2;
        }

        protected void btn_AddCart_Click(object sender, EventArgs e)
        {
            cartItemDAL cart = new cartItemDAL();
            var item = new CartItem();

            int id= Convert.ToInt32(Request.QueryString["MaSP"]);
            TextBox t = (TextBox)sanPhamDetail.Row.FindControl("txt_soLuong");

            
            var result = cart.GetDVByMa(1, id);
            if (result.Count() == 0)
            {
                item.MA_SP = id;
                item.MA_KH = 1;
                item.NgayTao = DateTime.Now;
                item.SoLuong = Convert.ToInt32(t.Text);

                cart.Add(item);
                
            }
            else
            {
                item.MA_SP = id;
                item.MA_KH = 1;
                item.NgayTao = DateTime.Now;
                item.SoLuong = Convert.ToInt32(t.Text);
                cart.Update2(item);
               
            }
            
        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id

    }
}