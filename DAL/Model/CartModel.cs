using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Model
{
    public class CartModel
    {
        public int id { set; get; }
        public int MA_SP { get; set; }
        public int SO_LUONG { get; set; }
        public string TEN_SP { get; set; }
        public double DON_GIA { get; set; }
        public double THANH_TIEN { get; set; }
    }
}
