using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.DAL
{
    public class hoaDonDAL
    {
        private DB_SPAEntities context = new DB_SPAEntities();
        public int Add(HOA_DON p)
        {
            int result = 0;
            context.HOA_DON.Add(p);
            result = context.SaveChanges();
            return result;
        }
        public int Update(HOA_DON p)
        {
            int result = 0;
            HOA_DON k = context.HOA_DON.FirstOrDefault(m => m.MA_HD == p.MA_HD);
            if (k != null)
            {
                k.MA_KH = p.MA_KH;
                k.TONG_TIEN = p.TONG_TIEN;
            }
            result = context.SaveChanges();
            return result;
        }

        public int Delete(int pMa)
        {
            int result = 0;
            HOA_DON k = context.HOA_DON.FirstOrDefault(m => m.MA_HD == pMa);
            context.HOA_DON.Remove(k);
            result = context.SaveChanges();
            return result;
        }
        public List<HOA_DON> GetList()
        {
            List<HOA_DON> list = new List<HOA_DON>();
            list = context.HOA_DON.ToList();
            return list;
        }

        public HOA_DON GetDVByMa(int pMa)
        {
            HOA_DON result = new HOA_DON();
            result = context.HOA_DON.FirstOrDefault(m => m.MA_HD == pMa);
            return result;
        }
    }
}
