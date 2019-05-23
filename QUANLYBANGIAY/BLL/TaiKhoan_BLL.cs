using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;

namespace BLL
{
    public class TaiKhoan_BLL
    {
        TaiKhoan_DAL tkdal = new TaiKhoan_DAL();
        //phương thức này gọi phương thức kh_select() ở lớp KhachHang_DAL (tầng DAL)
        public DataTable TaiKhoan_Select()
        {
            return tkdal.tk_select();
        }

        //phương thức này gọi phương thức nv_insert() ở lớp KhachHang_DAL (tầng DAL)
        public int TaiKhoan_Insert(string Tendangnhap, string Matkhau, string Ten, string Vaitro)
        {
            return tkdal.tk_insert(Tendangnhap, Matkhau,  Ten,  Vaitro);
        }

        //phương thức này gọi phương thức nv_update() ở lớp KhachHang_DAL (tầng DAL)
        public int TaiKhoan_Update(string Tendangnhap, string Matkhau, string Ten, string Vaitro)
        {
            return tkdal.tk_update( Tendangnhap, Matkhau, Ten, Vaitro);
        }

        //phương thức này gọi phương thức nv_delete() ở lớp KhachHang_DAL (tầng DAL)
        public int TaiKhoan_Delete(string Tendangnhap)
        {
            return tkdal.tk_delete(Tendangnhap);
        }
        public DataTable TaiKhoan_TimKiem(string Chuoitimkiem)
        {
            return tkdal.tk_timkiem(Chuoitimkiem);
        }
        public DataTable TaiKhoan_DangNhap(string TenDangNhap, string MatKhau)
        {
            return tkdal.tk_DangNhap(TenDangNhap, MatKhau);
        }
        public DataTable TaiKhoanAUD_Select()
        {
            return tkdal.tkAUD_select();
        }
        public int DoiMatKhau(string TenDangNhap, string MatKhau)
        {
            return tkdal.doiMatKhau(TenDangNhap, MatKhau);
        }
    }
}
