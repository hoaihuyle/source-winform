using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
   public class TaiKhoan_DAL
    {
        ThaoTacCSDL thaotac = new ThaoTacCSDL();
        //khai báo 2 mảng để truyền tên tham số và giá trị tham số vào Stored Procedures
        string[] name = { };
        object[] value = { };
        //phương thức này gọi phương thức SQL_Laydulieu ở lớp ThaoTac_CoSoDuLieu để thực hiện lấy dữ liệu
        public DataTable tk_select()
        {
            //thaotac.KetnoiCSDL();
            return thaotac.HienThiDuLieu("Select_TK", name, value, 0);
        }

        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện insert
        public int tk_insert(string Tendangnhap,string Matkhau, string Ten, string Vaitro)
        {
            //thaotac.KetnoiCSDL();
            name = new string[4];
            value = new object[4];
            name[0] = "@TenDangNhap"; value[0] = Tendangnhap;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[1] = "@MatKhau"; value[1] = Matkhau;
            name[2] = "@Ten"; value[2] = Ten;
            name[3] = "@VaiTro"; value[3] = Vaitro;
            return thaotac.ThucHien("Insert_TK", name, value, 4);
        }
        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện update
        public int tk_update(string Tendangnhap, string Matkhau, string Ten, string Vaitro)
        {
            name = new string[4];
            value = new object[4];
            name[0] = "@TenDangNhap"; value[0] = Tendangnhap;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[1] = "@MatKhau"; value[1] = Matkhau;
            name[2] = "@Ten"; value[2] = Ten;
            name[3] = "@VaiTro"; value[3] = Vaitro;
            return thaotac.ThucHien("Update_TK", name, value, 4);
        }
        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện delete
        public int tk_delete(string Tendangnhap)
        {
            name = new string[1];
            value = new object[1];
            name[0] = "@TenDangNhap"; value[0] = Tendangnhap;
            return thaotac.ThucHien("Delete_TK", name, value, 1);
        }
        public DataTable tk_timkiem(string Chuoitimkiem)
        {
            name = new string[1];
            value = new object[1];
            name[0] = "@Chuoitimkiem"; value[0] = Chuoitimkiem;
            return thaotac.HienThiDuLieu("TimKiem_TK", name, value, 1);
        }
        public DataTable tk_DangNhap(string TenDangNhap, string MatKhau)
        {
            name = new string[2];
            value = new object[2];
            name[0] = "@TenDangNhap"; value[0] = TenDangNhap;
            name[1] = "@MatKhau";value[1] = MatKhau;
            return thaotac.HienThiDuLieu("DangNhap_TK", name, value, 2);
        }
        public DataTable tkAUD_select()
        {
            //thaotac.KetnoiCSDL();
            return thaotac.HienThiDuLieu("Select_Audit_TK", name, value, 0);
        }
        public int doiMatKhau(string TenDangNhap, string MatKhau)
        {
            name = new string[2];
            value = new object[2];
            name[0] = "@TenDangNhap"; value[0] = TenDangNhap;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[1] = "@MatKhau"; value[1] = MatKhau;
            return thaotac.ThucHien("sp_DoiMatKhau", name, value, 2);
        }
       
    }
}

