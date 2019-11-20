using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.DAL
{
    public class lichHenDAL
    {
        private DB_SPAEntities context = new DB_SPAEntities();
        public int Add(LICH_HEN p)
        {
            int result = 0;
            context.LICH_HEN.Add(p);
            result = context.SaveChanges();
            return result;
        }
        public int Update(LICH_HEN p)
        {
            int result = 0;
            LICH_HEN k = context.LICH_HEN.FirstOrDefault(m => m.MA_LH == p.MA_LH);
            if (k != null)
            {
                k.MA_DV = p.MA_DV;
                k.MA_CN = p.MA_CN;
                k.NGAY = p.NGAY;
                k.GIO = p.GIO;
            }
            result = context.SaveChanges();
            return result;
        }

        public int Delete(int pMa)
        {
            int result = 0;
            LICH_HEN k = context.LICH_HEN.FirstOrDefault(m => m.MA_LH == pMa);
            context.LICH_HEN.Remove(k);
            result = context.SaveChanges();
            return result;
        }
        public List<LICH_HEN> GetList()
        {
            List<LICH_HEN> list = new List<LICH_HEN>();
            list = context.LICH_HEN.ToList();
            return list;
        }

        public LICH_HEN GetDVByMa(int pMa)
        {
            LICH_HEN result = new LICH_HEN();
            result = context.LICH_HEN.FirstOrDefault(m => m.MA_LH == pMa);
            return result;
        }
    }
}
