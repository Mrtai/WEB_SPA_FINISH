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
    
    public partial class KHACH_HANG
    {
        public KHACH_HANG()
        {
            this.HOA_DON = new HashSet<HOA_DON>();
            this.TAI_KHOAN = new HashSet<TAI_KHOAN>();
            this.LICH_HEN = new HashSet<LICH_HEN>();
        }
    
        public int MA_KH { get; set; }
        public string TEN_KH { get; set; }
        public string EMAIL { get; set; }
        public string PHONE { get; set; }
    
        public virtual ICollection<HOA_DON> HOA_DON { get; set; }
        public virtual ICollection<TAI_KHOAN> TAI_KHOAN { get; set; }
        public virtual ICollection<LICH_HEN> LICH_HEN { get; set; }
    }
}
