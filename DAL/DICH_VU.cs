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
    
    public partial class DICH_VU
    {
        public DICH_VU()
        {
            this.LICH_HEN = new HashSet<LICH_HEN>();
        }
    
        public int MA_DV { get; set; }
        public string TEN_DICH_VU { get; set; }
        public string CHI_TIET { get; set; }
        public Nullable<double> GIA { get; set; }
        public Nullable<int> MALOAI { get; set; }
    
        public virtual LOAI_DICHVU LOAI_DICHVU { get; set; }
        public virtual ICollection<LICH_HEN> LICH_HEN { get; set; }
        public virtual LOAI_DICHVU LOAI_DICHVU { get; set; }
    }
}
