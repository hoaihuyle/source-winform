using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public class KhachHang_DAL
    {
        ThaoTacCSDL thaotac = new ThaoTacCSDL();
        //khai báo 2 mảng để truyền tên tham số và giá trị tham số vào Stored Procedures
        string[] name = { };
        object[] value = { };
        //phương thức này gọi phương thức SQL_Laydulieu ở lớp ThaoTac_CoSoDuLieu để thực hiện lấy dữ liệu
        public DataTable kh_select()
        {
            //thaotac.KetnoiCSDL();
            return thaotac.HienThiDuLieu("Select_KH", name, value, 0);
        }

        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện insert
        public int kh_insert(string TenKH, DateTime NgaySinh, string Sdt,string DiaChi)
        {
            //thaotac.KetnoiCSDL();
            name = new string[4];
            value = new object[4];
            name[0] = "@TenKH"; value[0] = TenKH;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[1] = "@NgaySinh";value[1] = NgaySinh;
            name[2] = "@Sdt"; value[2] = Sdt;
            name[3] = "@DiaChi";value[3] = DiaChi;
            return thaotac.ThucHien("Insert_KH", name, value, 4);
        }
        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện update
        public int kh_update(string MaKH, string TenKH, DateTime NgaySinh, string Sdt,string DiaChi)
        {
            name = new string[5];
            value = new object[5];
            name[0] = "@MaKH"; value[0] = MaKH;
            name[1] = "@TenKH"; value[1] = TenKH;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[2] = "@NgaySinh";value[2] = NgaySinh;
            name[3] = "@Sdt"; value[3] = Sdt;
            name[4] = "@DiaChi";value[4] = DiaChi;
            return thaotac.ThucHien("Update_KH", name, value, 5);
        }
        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện delete
        public int kh_delete(string MaKH)
        {
            name = new string[1];
            value = new object[1];
            name[0] = "@MaKH"; value[0] = MaKH;
            return thaotac.ThucHien("Delete_KH", name, value, 1);
        }
        public DataTable kh_timkiem(string Chuoitimkiem)
        {
            name = new string[1];
            value = new object[1];
            name[0] = "@Chuoitimkiem"; value[0] = Chuoitimkiem;
            return thaotac.HienThiDuLieu("TimKiem_KH", name, value, 1);
        }

        public DataTable khAUD_select()
        {
            //thaotac.KetnoiCSDL();
            return thaotac.HienThiDuLieu("Select_Audit_KH", name, value, 0);
        }

        public int khoiphuc(string MaKH, string TenKH, DateTime NgaySinh, string Sdt, string DiaChi)
        {
            //thaotac.KetnoiCSDL();
            name = new string[5];
            value = new object[5];
            name[0] = "@MaKH"; value[0] = MaKH;
            name[1] = "@TenKH"; value[1] = TenKH;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[2] = "@NgaySinh"; value[2] = NgaySinh;
            name[3] = "@Sdt"; value[3] = Sdt;
            name[4] = "@DiaChi"; value[4] = DiaChi;
            return thaotac.ThucHien("Insert_Audit_KH", name, value, 5);
        }

    }
}
