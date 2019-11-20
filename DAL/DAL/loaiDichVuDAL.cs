using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.DAL
{
    public class loaiDichVuDAL
    {
        private DB_SPAEntities context = new DB_SPAEntities();
        public int Add(LOAI_DICHVU p)
        {
            int result = 0;
            context.LOAI_DICHVU.Add(p);
            result = context.SaveChanges();
            return result;
        }
        public int Update(LOAI_DICHVU p)
        {
            int result = 0;
            LOAI_DICHVU k = context.LOAI_DICHVU.FirstOrDefault(m => m.MAlLOAI == p.MAlLOAI);
            if (k != null)
            {
                k.TEN_LOAI = p.TEN_LOAI;
                k.STATUS = p.STATUS;
            }
            result = context.SaveChanges();
            return result;
        }

        public int Delete(int pMa)
        {
            int result = 0;
            LOAI_DICHVU k = context.LOAI_DICHVU.FirstOrDefault(m => m.MAlLOAI == pMa);
            context.LOAI_DICHVU.Remove(k);
            result = context.SaveChanges();
            return result;
        }
        public List<LOAI_DICHVU> GetList()
        {
            List<LOAI_DICHVU> list = new List<LOAI_DICHVU>();
            list = context.LOAI_DICHVU.ToList();
            return list;
        }

        public LOAI_DICHVU GetDVByMa(int pMa)
        {
            LOAI_DICHVU result = new LOAI_DICHVU();
            result = context.LOAI_DICHVU.FirstOrDefault(m => m.MAlLOAI == pMa);
            return result;
        }
    }

}
