using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Model
{
    public class LichHenModel
    {
        public int MA_LH { get; set; }
        public Nullable<int> MA_KH { get; set; }
        public Nullable<int> MA_CN { get; set; }
        public Nullable<int> MA_DV { get; set; }
        public Nullable<System.DateTime> NGAY { get; set; }
        public string GIO { get; set; }
        public string NOTE { get; set; }
        public string TRANG_THAI { get; set; }

        public virtual CHI_NHANH CHI_NHANH { get; set; }
        public virtual DICH_VU DICH_VU { get; set; }
        public virtual KHACH_HANG KHACH_HANG { get; set; }
    }
}
