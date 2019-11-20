using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.DAL
{
    public class khachHangDAL
    {
        private DB_SPAEntities context = new DB_SPAEntities();
        public int Add(KHACH_HANG p)
        {
            int result = 0;
            context.KHACH_HANG.Add(p);
            result = context.SaveChanges();
            return result;
        }
        public int Update(KHACH_HANG p)
        {
            int result = 0;
            KHACH_HANG k = context.KHACH_HANG.FirstOrDefault(m => m.MA_KH == p.MA_KH);
            if (k != null)
            {
                k.TEN_KH = p.TEN_KH;
                k.EMAIL = p.EMAIL;
                k.PHONE = p.PHONE;
            }
            result = context.SaveChanges();
            return result;
        }

        public int Delete(int pMa)
        {
            int result = 0;
            KHACH_HANG k = context.KHACH_HANG.FirstOrDefault(m => m.MA_KH == pMa);
            context.KHACH_HANG.Remove(k);
            result = context.SaveChanges();
            return result;
        }
        public List<KHACH_HANG> GetList()
        {
            List<KHACH_HANG> list = new List<KHACH_HANG>();
            list = context.KHACH_HANG.ToList();
            return list;
        }

        public KHACH_HANG GetDVByMa(int pMa)
        {
            KHACH_HANG result = new KHACH_HANG();
            result = context.KHACH_HANG.FirstOrDefault(m => m.MA_KH == pMa);
            return result;
        }
    }
}
