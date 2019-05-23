using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;

namespace BLL
{
    public class ThongKeBanHang_BLL
    {
        ThongKeBanHang tkdal = new ThongKeBanHang();
        public DataTable ThongKe(DateTime TimeBatDau, DateTime TimeKetThuc)
        {
            return tkdal.thongKe( TimeBatDau, TimeKetThuc);
        } 
    }
}
