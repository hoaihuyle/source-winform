using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public class ThongKeBanHang
    {
        ThaoTacCSDL thaotac = new ThaoTacCSDL();
        //khai báo 2 mảng để truyền tên tham số và giá trị tham số vào Stored Procedures
        string[] name = { };
        object[] value = { };
        //phương thức này gọi phương thức SQL_Laydulieu ở lớp ThaoTac_CoSoDuLieu để thực hiện lấy dữ liệu

        public DataTable thongKe(DateTime TimeBatDau, DateTime TimeKetThuc)
        {
            //thaotac.KetnoiCSDL();
            name = new string[2];
            value = new object[2];
            name[0] = "@Thoigianbatdau";
            TimeBatDau = DateTime.Parse(TimeBatDau.ToShortDateString() );
            value[0] = TimeBatDau;
            
            name[1] = "@Thoigianketthuc";
            TimeKetThuc = DateTime.Parse(TimeKetThuc.ToShortDateString());
            value[1] = TimeKetThuc;
            
            return thaotac.HienThiDuLieu("ThongKeHangBan", name, value, 2);
        }
    }
}
