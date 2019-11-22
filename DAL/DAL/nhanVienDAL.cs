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
                k.TRANGTHAI = p.TRANGTHAI;
                k.MA_CN = p.MA_CN;
                k.QUYEN = p.QUYEN;
            }
            result = context.SaveChanges();
            return result;
        }
        public int ChangePassWord(byte[] pass,int ma)
        {
            int result = 0;
            NHAN_VIEN k = context.NHAN_VIEN.FirstOrDefault(m => m.MA_NV == ma);
            if (k != null)
            {
                k.PASSWORD = pass;
                result = context.SaveChanges();
            }
            else
            {
                return 0;
            }
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
        public List<NHAN_VIEN> GetListByCN(int MaCN)
        {
            List<NHAN_VIEN> list = new List<NHAN_VIEN>();
            list = context.NHAN_VIEN.Where(m => m.MA_CN == MaCN).ToList();
            return list;
        }
        public bool Login(string username, byte[] pass)
        {
            bool tk = context.NHAN_VIEN.Any(t => t.USERNAME == username && t.PASSWORD == pass && t.TRANGTHAI == true);
            return tk;
        }

        public NHAN_VIEN GetDVByMa(int pMa)
        {
            NHAN_VIEN result = new NHAN_VIEN();
            result = context.NHAN_VIEN.FirstOrDefault(m => m.MA_NV == pMa);
            return result;
        }

        public NHAN_VIEN GetDVByUsername(string username)
        {
            NHAN_VIEN result = new NHAN_VIEN();
            result = context.NHAN_VIEN.FirstOrDefault(m => m.USERNAME == username);
            return result;
        }
    }
}
