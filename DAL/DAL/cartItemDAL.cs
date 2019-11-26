using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.DAL
{
    public class cartItemDAL
    {
        private DB_SPAEntities1 context = new DB_SPAEntities1();
        public int Add(CartItem p)
        {
            int result = 0;
            context.CartItems.Add(p);
            result = context.SaveChanges();
            return result;
        }
        public int Update(CartItem p)
        {
            int result = 0;
            CartItem k = context.CartItems.FirstOrDefault(m => m.CartID == p.CartID);
            if (k != null)
            {
                k.NgayTao = p.NgayTao;
                k.SoLuong = p.SoLuong;
            }
            result = context.SaveChanges();
            return result;
        }

        public int Update2(CartItem p)
        {
            int result = 0;
            CartItem k = context.CartItems.FirstOrDefault(m => m.MA_KH == p.MA_KH && m.MA_SP == p.MA_SP);
            if (k != null)
            {
                k.NgayTao = p.NgayTao;
                k.SoLuong = p.SoLuong;
            }
            result = context.SaveChanges();
            return result;
        }

        public int Delete(int pMa)
        {
            int result = 0;
            CartItem k = context.CartItems.FirstOrDefault(m => m.CartID == pMa);
            context.CartItems.Remove(k);
            result = context.SaveChanges();
            return result;
        }
        public List<CartItem> GetList()
        {
            List<CartItem> list = new List<CartItem>();
            list = context.CartItems.ToList();
            return list;
        }

        public List<CartItem> GetDVByMa(int makh)
        {
            List<CartItem> result = new List<CartItem>();
            result = context.CartItems.Where(m => m.MA_KH == makh).ToList();
            return result;
        }

        public List<CartItem> GetDVByMa(int makh, int masp)
        {
            List<CartItem> result = new List<CartItem>();
            result = context.CartItems.Where(m => m.MA_KH == makh && m.MA_SP == masp).ToList();
            return result;
        }
    }
}
