using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public class HoaDon_DAL
    {
        ThaoTacCSDL thaotac = new ThaoTacCSDL();
        //khai báo 2 mảng để truyền tên tham số và giá trị tham số vào Stored Procedures
        string[] name = { };
        object[] value = { };
        //phương thức này gọi phương thức SQL_Laydulieu ở lớp ThaoTac_CoSoDuLieu để thực hiện lấy dữ liệu
        
        public void HienNgayNhap(DataTable dt)
        {
            thaotac.HienDuLieu("HOADON", dt);
        }

        public void HienSanPham(DataTable dt)
        {
            thaotac.HienDuLieu("SANPHAM", dt);
        }
        public void HienDonGiaBan(DataTable dt)
        {
            thaotac.HienDuLieu("SANPHAM", dt);
        }
        public void HienTenNhanVien(DataTable dt)
        {
            thaotac.HienDuLieu("NHANVIEN", dt);
        }
        public void HienTenKhachHang(DataTable dt)
        {
            thaotac.HienDuLieu("KHACHHANG", dt);
        }
        public DataTable cthd_select(string MaHD)
        {
            //thaotac.KetnoiCSDL();
            name = new string[1];
            value = new object[1];
            name[0] = "@MaHD"; value[0] = MaHD;
            return thaotac.HienThiDuLieu("Select_CTHD", name, value, 1);
        }
        
        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện insert
        public int hd_insert(DateTime ThoiGianLap, string MaNV, string MaKH )
        {
            //thaotac.KetnoiCSDL();
            name = new string[3];
            value = new object[3];
            name[0] = "@ThoiGianLap"; value[0] = ThoiGianLap;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[1] = "@MaNV"; value[1] = MaNV;
            name[2] = "@MaKH";value[2] = MaKH;
            return thaotac.ThucHien("Insert_HD", name, value, 3);
        }
        public int cthd_insert(int SoLuong,  string MaHD, string MaSP)
        {
            name = new string[3];
            value = new object[3];
            name[0] = "@SoLuong"; value[0] = SoLuong;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[1] = "@MaHD";value[1] = MaHD;
            name[2] = "@MaSP";value[2] = MaSP;
            return thaotac.ThucHien("Insert_CTHD", name, value, 3);
        }
        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện update
        public int hd_update(string MaHD, DateTime ThoiGianLap, string MaNV, string MaKH)
        {
            name = new string[4];
            value = new object[4];
            name[0] = "@MaHD";value[0] = MaHD;
            name[1] = "@ThoiGianLap"; value[1] = ThoiGianLap;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[2] = "@MaNV"; value[2] = MaNV;
            name[3] = "@MaKH"; value[3] = MaKH;
            return thaotac.ThucHien("Update_HD", name, value, 4);
        }
        public int cthd_update(int SoLuong,  string MaHD, string MaSP)
        {
            name = new string[3];
            value = new object[3];
            name[0] = "@SoLuong"; value[0] = SoLuong;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[1] = "@MaHD"; value[1] = MaHD;
            name[2] = "@MaSP"; value[2] = MaSP;
            return thaotac.ThucHien("Update_CTHD", name, value, 3);
        }
        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện delete
        public int hd_delete(string MaHD)
        {
            name = new string[1];
            value = new object[1];
            name[0] = "@MaHD"; value[0] = MaHD;
            return thaotac.ThucHien("Delete_HD", name, value, 1);
        }
        public int cthd_delete(string MaHD, string MaSP)
        {
            name = new string[2];
            value = new object[2];
            name[0] = "@MaHD"; value[0] = MaHD;
            name[1] = "@MaSP";value[1] = MaSP;
            return thaotac.ThucHien("Delete_CTHD", name, value, 2);
        }
        public DataTable HienThiHoaDonAudit()
        {
            return thaotac.HienThiDuLieu("Select_Audit_HD", name, value, 0);
        }

        public DataTable HienThiChiTietHDAudit()
        {
            return thaotac.HienThiDuLieu("Select_Audit_CTHD", name, value, 0);
        }

        public int Insert_AuditHD(string MaHD, DateTime ThoiGianLap)
        {
            name = new string[2];
            value = new object[2];
            name[0] = "@MaHD"; value[0] = MaHD;
            name[1] = "@ThoiGianLap"; value[1] = ThoiGianLap;
            return thaotac.ThucHien("Insert_Audit_HD", name, value, 2);
        }
        public int khoiphuc(string MaHD, DateTime ThoiGianLap, string MaNV, string MaKH)
        {
            //thaotac.KetnoiCSDL();
            name = new string[4];
            value = new object[4];
            name[0] = "@MaHD"; value[0] = MaHD;
            name[1] = "@ThoiGianLap"; value[1] = ThoiGianLap;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[2] = "@MaNV"; value[2] = MaNV;
            name[3] = "@MaKH"; value[3] = MaKH;
            return thaotac.ThucHien("Insert_Audit_HD", name, value, 4);
        }

        public DataTable cthdAUD_select()
        {
            return thaotac.HienThiDuLieu("Select_Audit_CTHD", name, value, 0);
        }
        public int khoiphucCTHD(int SoLuong, string MaHD, string MaSP)
        {
            name = new string[3];
            value = new object[3];
            name[0] = "@SoLuong"; value[0] = SoLuong;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[1] = "@MaHD"; value[1] = MaHD;
            name[2] = "@MaSP"; value[2] = MaSP;
            return thaotac.ThucHien("Insert_CTHD", name, value, 3);
        }
    }
}
