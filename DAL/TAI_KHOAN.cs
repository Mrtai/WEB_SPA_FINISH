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
    
    public partial class TAI_KHOAN
    {
        public int MA_TK { get; set; }
        public int MA_KH { get; set; }
        public string USERNAME { get; set; }
        public byte[] PASSWORD { get; set; }
        public bool TRANG_THAI { get; set; }
    
        public virtual KHACH_HANG KHACH_HANG { get; set; }
    }
}
