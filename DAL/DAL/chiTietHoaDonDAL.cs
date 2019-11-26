using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.DAL
{
    public class chiTietHoaDonDAL
    {
        private DB_SPAEntities1 context = new DB_SPAEntities1();
        public int Add(CHI_TIET_HOA_DON p)
        {
            int result = 0;
            context.CHI_TIET_HOA_DON.Add(p);
            result = context.SaveChanges();
            return result;
        }
        public int Update(CHI_TIET_HOA_DON p)
        {
            int result = 0;
            CHI_TIET_HOA_DON k = context.CHI_TIET_HOA_DON.FirstOrDefault(m => m.MA_HD == p.MA_HD && m.MA_SP == p.MA_SP);
            if (k != null)
            {
                k.SO_LUONG = p.SO_LUONG;
                k.THANH_TIEN = p.THANH_TIEN;
            }
            result = context.SaveChanges();
            return result;
        }

        public int Delete(int pMaHD,int pMaSP)
        {
            int result = 0;
            CHI_TIET_HOA_DON k = context.CHI_TIET_HOA_DON.FirstOrDefault(m => m.MA_HD == pMaHD && m.MA_SP == pMaSP);
            context.CHI_TIET_HOA_DON.Remove(k);
            result = context.SaveChanges();
            return result;
        }
        public List<CHI_TIET_HOA_DON> GetList()
        {
            List<CHI_TIET_HOA_DON> list = new List<CHI_TIET_HOA_DON>();
            list = context.CHI_TIET_HOA_DON.ToList();
            return list;
        }

        public List<CHI_TIET_HOA_DON> GetDVByMa(int pMaHD)
        {
            List<CHI_TIET_HOA_DON> result = new List<CHI_TIET_HOA_DON>();
            result = context.CHI_TIET_HOA_DON.Where(m => m.MA_HD == pMaHD).ToList();
            return result;
        }

        public CHI_TIET_HOA_DON GetDVByMa(int pMaHD, int pMaSP)
        {
            CHI_TIET_HOA_DON result = new CHI_TIET_HOA_DON();
            result = context.CHI_TIET_HOA_DON.FirstOrDefault(m => m.MA_HD == pMaHD && m.MA_SP == pMaSP);
            return result;
        }
    }
}
