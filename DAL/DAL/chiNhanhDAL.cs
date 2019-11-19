using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class chiNhanhDAL
    {
        private DB_SPAEntities context = new DB_SPAEntities();
        public int Add(CHI_NHANH p)
        {
            int result = 0;
            context.CHI_NHANH.Add(p);
            result = context.SaveChanges();
            return result;
        }
        public int Update(CHI_NHANH p)
        {
            int result = 0;
            CHI_NHANH k = context.CHI_NHANH.FirstOrDefault(m => m.MA_CN == p.MA_CN);
            if (k != null)
            {
                k.TEN_CHI_NHANH = p.TEN_CHI_NHANH;
                k.DIA_CHI = p.DIA_CHI;
                k.PHONE = p.PHONE;
            }
            result = context.SaveChanges();
            return result;
        }

        public int Delete(int pMa)
        {
            int result = 0;
            CHI_NHANH k = context.CHI_NHANH.FirstOrDefault(m => m.MA_CN == pMa);
            context.CHI_NHANH.Remove(k);
            result = context.SaveChanges();
            return result;
        }
        public List<CHI_NHANH> GetList()
        {
            List<CHI_NHANH> list = new List<CHI_NHANH>();
            list = context.CHI_NHANH.ToList();
            return list;
        }

        public CHI_NHANH GetDVByMa(int pMa)
        {
            CHI_NHANH result = new CHI_NHANH();
            result = context.CHI_NHANH.FirstOrDefault(m => m.MA_CN == pMa);
            return result;
        }
    }
}
