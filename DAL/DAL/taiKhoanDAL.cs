using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.DAL
{
    public class taiKhoanDAL
    {
        private DB_SPAEntities context = new DB_SPAEntities();
        public int Add(TAI_KHOAN p)
        {
            int result = 0;
            context.TAI_KHOAN.Add(p);
            result = context.SaveChanges();
            return result;
        }
        public int Update(TAI_KHOAN p)
        {
            int result = 0;
            TAI_KHOAN k = context.TAI_KHOAN.FirstOrDefault(m => m.MA_TK == p.MA_TK);
            if (k != null)
            {
                k.USERNAME = p.USERNAME;
                k.PASSWORD = p.PASSWORD;
                k.TRANG_THAI = p.TRANG_THAI;
            }
            result = context.SaveChanges();
            return result;
        }
        public bool Login(string username,byte[] pass)
        {
            bool tk = context.TAI_KHOAN.Any(t => t.USERNAME == username && t.PASSWORD == pass && t.TRANG_THAI == true);
            return tk;
        }

        public int Delete(int pMa)
        {
            int result = 0;
            TAI_KHOAN k = context.TAI_KHOAN.FirstOrDefault(m => m.MA_TK == pMa);
            context.TAI_KHOAN.Remove(k);
            result = context.SaveChanges();
            return result;
        }
        public List<TAI_KHOAN> GetList()
        {
            List<TAI_KHOAN> list = new List<TAI_KHOAN>();
            list = context.TAI_KHOAN.ToList();
            return list;
        }

        public TAI_KHOAN GetDVByMa(int pMa)
        {
            TAI_KHOAN result = new TAI_KHOAN();
            result = context.TAI_KHOAN.FirstOrDefault(m => m.MA_TK == pMa);
            return result;
        }
        public TAI_KHOAN GetByUsername(string username)
        {
            TAI_KHOAN result = new TAI_KHOAN();
            result = context.TAI_KHOAN.FirstOrDefault(m => m.USERNAME == username);
            return result;
        }
    }
}
