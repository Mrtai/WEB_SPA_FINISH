using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.DAL
{
    public class nhanVienDAL
    {
        private DB_SPAEntities context = new DB_SPAEntities();
        public int Add(NHAN_VIEN p)
        {
            int result = 0;
            context.NHAN_VIEN.Add(p);
            result = context.SaveChanges();
            return result;
        }
        public int Update(NHAN_VIEN p)
        {
            int result = 0;
            NHAN_VIEN k = context.NHAN_VIEN.FirstOrDefault(m => m.MA_NV == p.MA_NV);
            if (k != null)
            {
                k.TEN_NV = p.TEN_NV;
                k.EMAIL = p.EMAIL;
                k.USERNAME = p.USERNAME;
                k.PASSWORD = p.PASSWORD;
                k.TRANGTHAI = p.TRANGTHAI;
            }
            result = context.SaveChanges();
            return result;
        }

        public int Delete(int pMa)
        {
            int result = 0;
            NHAN_VIEN k = context.NHAN_VIEN.FirstOrDefault(m => m.MA_NV == pMa);
            context.NHAN_VIEN.Remove(k);
            result = context.SaveChanges();
            return result;
        }
        public List<NHAN_VIEN> GetList()
        {
            List<NHAN_VIEN> list = new List<NHAN_VIEN>();
            list = context.NHAN_VIEN.ToList();
            return list;
        }

        public NHAN_VIEN GetDVByMa(int pMa)
        {
            NHAN_VIEN result = new NHAN_VIEN();
            result = context.NHAN_VIEN.FirstOrDefault(m => m.MA_NV == pMa);
            return result;
        }
    }
}
