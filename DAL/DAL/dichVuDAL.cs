using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.DAL
{
    public class dichVuDAL
    {
        private DB_SPAEntities1 context = new DB_SPAEntities1();
        public int Add(DICH_VU p)
        {
            int result = 0;
            context.DICH_VU.Add(p);
            result = context.SaveChanges();
            return result;
        }
        public int Update(DICH_VU p)
        {
            int result = 0;
            try
            {
               
                DICH_VU k = context.DICH_VU.FirstOrDefault(m => m.MA_DV == p.MA_DV);
                if (k != null)
                {
                    k.TEN_DICH_VU = p.TEN_DICH_VU;
                    k.GIA = p.GIA;
                    k.CHI_TIET = p.CHI_TIET;
                }
                result = context.SaveChanges();
                
            }catch(Exception ex)
            {
                ex.ToString();
            }
            return result;

        }

        public int Delete(int pMa)
        {
            int result = 0;
            DICH_VU k = context.DICH_VU.FirstOrDefault(m => m.MA_DV == pMa);
            context.DICH_VU.Remove(k);
            result = context.SaveChanges();
            return result;
        }
        public List<DICH_VU> GetList()
        {
            List<DICH_VU> list = new List<DICH_VU>();
            list = context.DICH_VU.ToList();
            return list;
        }
        public List<DICH_VU> GetList_Hot()
        {
            List<DICH_VU> list = new List<DICH_VU>();
            list = context.DICH_VU.OrderBy(x=>x.SOLUONG_DUNG).Take(6).ToList();
            return list;
        }

        public DICH_VU GetDVByMa(int pMa)
        {
            DICH_VU result = new DICH_VU();
            result = context.DICH_VU.FirstOrDefault(m => m.MA_DV == pMa);
            return result;
        }
        public List<DICH_VU> GetDVByMaLoai(int pMa)
        {
            List<DICH_VU> list = new List<DICH_VU>();
            list = context.DICH_VU.Where(m=> m.MALOAI == pMa).ToList();
            return list;
        }
    }
}
