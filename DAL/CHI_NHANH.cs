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
    
    public partial class CHI_NHANH
    {
        public CHI_NHANH()
        {
            this.LICH_HEN = new HashSet<LICH_HEN>();
            this.NHAN_VIEN = new HashSet<NHAN_VIEN>();
        }
    
        public int MA_CN { get; set; }
        public string TEN_CHI_NHANH { get; set; }
        public string DIA_CHI { get; set; }
        public string PHONE { get; set; }
    
        public virtual ICollection<LICH_HEN> LICH_HEN { get; set; }
        public virtual ICollection<NHAN_VIEN> NHAN_VIEN { get; set; }
    }
}
