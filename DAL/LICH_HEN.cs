//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class LICH_HEN
    {
        public int MA_LH { get; set; }
        public Nullable<int> MA_KH { get; set; }
        public Nullable<int> MA_CN { get; set; }
        public Nullable<int> MA_DV { get; set; }
        public Nullable<System.DateTime> NGAY { get; set; }
        public string GIO { get; set; }
        public string NOTE { get; set; }
        public Nullable<bool> TRANG_THAI { get; set; }
    
        public virtual CHI_NHANH CHI_NHANH { get; set; }
        public virtual DICH_VU DICH_VU { get; set; }
        public virtual KHACH_HANG KHACH_HANG { get; set; }
    }
}
