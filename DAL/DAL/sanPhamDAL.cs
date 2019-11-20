using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.DAL
{
    public class sanPhamDAL
    {
        private DB_SPAEntities context = new DB_SPAEntities();
        public int Add(SAN_PHAM p)
        {
            int result = 0;
            context.SAN_PHAM.Add(p);
            result = context.SaveChanges();
            return result;
        }
        public int Update(SAN_PHAM p)
        {
            int result = 0;
            SAN_PHAM k = context.SAN_PHAM.FirstOrDefault(m => m.MA_SP == p.MA_SP);
            if (k != null)
            {
                k.TEN_SP = p.TEN_SP;
                k.MO_TA = p.MO_TA;
                k.GIA = p.GIA;
                k.ANH = p.ANH;
            }
            result = context.SaveChanges();
            return result;
        }

        public int Delete(int pMa)
        {
            int result = 0;
            SAN_PHAM k = context.SAN_PHAM.FirstOrDefault(m => m.MA_SP == pMa);
            context.SAN_PHAM.Remove(k);
            result = context.SaveChanges();
            return result;
        }
        public List<SAN_PHAM> GetList()
        {
            List<SAN_PHAM> list = new List<SAN_PHAM>();
            list = context.SAN_PHAM.ToList();
            return list;
        }

        public SAN_PHAM GetDVByMa(int pMa)
        {
            SAN_PHAM result = new SAN_PHAM();
            result = context.SAN_PHAM.FirstOrDefault(m => m.MA_SP == pMa);
            return result;
        }

        public int GetDVByTen(string pTen)
        {
            SAN_PHAM result = new SAN_PHAM();
            result = context.SAN_PHAM.FirstOrDefault(m => m.TEN_SP == pTen);
            int maSP = result.MA_SP;
            return maSP;
        }
    }
}
