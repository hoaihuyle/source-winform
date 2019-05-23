using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public class NhanVien_DAL
    {
        ThaoTacCSDL thaotac = new ThaoTacCSDL();
        //khai báo 2 mảng để truyền tên tham số và giá trị tham số vào Stored Procedures
        string[] name = { };
        object[] value = { };
        //phương thức này gọi phương thức SQL_Laydulieu ở lớp ThaoTac_CoSoDuLieu để thực hiện lấy dữ liệu
        public DataTable nv_select()
        {
            //thaotac.KetnoiCSDL();
            return thaotac.HienThiDuLieu("Select_NV", name, value, 0);
        }

        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện insert
        public int nv_insert(string TenNV, bool GioiTinh,DateTime NgaySinh,string Sdt,string DiaChi)
        {
            //thaotac.KetnoiCSDL();
            name = new string[5];
            value = new object[5];
            name[0] = "@TenNV"; value[0] = TenNV;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[1] = "@GioiTinh"; value[1] = GioiTinh;
            name[2] = "@NgaySinh";value[2] = NgaySinh;
            name[3] = "@Sdt"; value[3] = Sdt;
            name[4] = "@DiaChi";value[4] = DiaChi;
            return thaotac.ThucHien("Insert_NV", name, value, 5);
        }
        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện update
        public int nv_update(string MaNV, string TenNV,bool GioiTinh, DateTime NgaySinh,string Sdt,string DiaChi)
        {
            name = new string[6];
            value = new object[6];
            name[0] = "@MaNV"; value[0] = MaNV;
            name[1] = "@TenNV"; value[1] = TenNV;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[2] = "@GioiTinh"; value[2] = GioiTinh;
            name[3] = "@NgaySinh";value[3] = NgaySinh;
            name[4] = "@Sdt"; value[4] = Sdt;
            name[5] = "@DiaChi"; value[5] = DiaChi;
            return thaotac.ThucHien("Update_NV", name, value, 6);
        }
        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện delete
        public int nv_delete(string MaNV)
        {
            name = new string[1];
            value = new object[1];
            name[0] = "@MaNV"; value[0] = MaNV;
            return thaotac.ThucHien("Delete_NV", name, value, 1);
        }
        public DataTable nv_timkiem(string Chuoitimkiem)
        {
            name = new string[1];
            value = new object[1];
            name[0] = "@Chuoitimkiem"; value[0] = Chuoitimkiem;
            return thaotac.HienThiDuLieu("TimKiem_NV", name, value, 1);
        }
        public DataTable nvAUD_select()
        {
            //thaotac.KetnoiCSDL();
            return thaotac.HienThiDuLieu("Select_Audit_NV", name, value, 0);
        }
        public int khoiphuc(string MaNV, string TenNV, bool GioiTinh, DateTime NgaySinh, string Sdt, string DiaChi)
        {
            //thaotac.KetnoiCSDL();
            name = new string[6];
            value = new object[6];
            name[0] = "@MaNV"; value[0] = MaNV;
            name[1] = "@TenNV"; value[1] = TenNV;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[2] = "@GioiTinh"; value[2] = GioiTinh;
            name[3] = "@NgaySinh"; value[3] = NgaySinh;
            name[4] = "@Sdt"; value[4] = Sdt;
            name[5] = "@DiaChi"; value[5] = DiaChi;
            return thaotac.ThucHien("Insert_Audit_NV", name, value, 6);
        }
    }
}
