using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;

namespace BLL
{
    public class HoaDon_BLL
    {
        HoaDon_DAL hddal = new HoaDon_DAL();
        //phương thức này gọi phương thức sv_select() ở lớp SinhVien_DAL (tầng DAL)
        
        public void HienNgayNhap(DataTable dt)
        {
            hddal.HienNgayNhap(dt);
        }
        public void HienSanPham(DataTable dt)
        {
            hddal.HienSanPham(dt);
        }
        public void HienKhachHang(DataTable dt)
        {
            hddal.HienTenKhachHang(dt);
        }
        public void HienNhanVien(DataTable dt)
        {
            hddal.HienTenNhanVien(dt);
        }
        public DataTable ChiTietHoaDon_Select(string MaHD)
        {
            return hddal.cthd_select(MaHD);
        }
        //phương thức này gọi phương thức sv_insert() ở lớp SinhVien_DAL (tầng DAL)
        public int HoaDon_Insert(DateTime ThoiGianLap, string MaNV, string MaKH)
        {
            return hddal.hd_insert(ThoiGianLap, MaNV, MaKH);
        }
        public int ChiTietHoaDon_Insert(int SoLuong,  string MaHD, string MaSP)
        {
            return hddal.cthd_insert(SoLuong,  MaHD, MaSP);
        }
        //phương thức này gọi phương thức sv_update() ở lớp SinhVien_DAL (tầng DAL)
        public int HoaDon_Update(string MaHD, DateTime ThoiGianLap, string MaNV, string MaKH)
        {
            return hddal.hd_update(MaHD, ThoiGianLap, MaNV, MaKH);
        }
        public int ChiTietHoaDon_Update(int SoLuong,  string MaHD, string MaSP)
        {
            return hddal.cthd_update(SoLuong,  MaHD, MaSP);
        }
        //phương thức này gọi phương thức sv_delete() ở lớp SinhVien_DAL (tầng DAL)
        public int HoaDon_Delete(string MaHD)
        {
            return hddal.hd_delete(MaHD);
        }
        public int ChiTietHoaDon_Delete(string MaHD, string MaSP)
        {
            return hddal.cthd_delete(MaHD, MaSP);
        }
        public int KhoiPhuc(string MaHD, DateTime ThoiGianLap, string MaNV, string MaKH)
        {
            return hddal.khoiphuc(MaHD, ThoiGianLap, MaNV, MaKH);
        }

        public DataTable HoaDonAUD_Select()
        {
            return hddal.HienThiHoaDonAudit();
        }
        public DataTable ChiTietHoaDonAUD_Select()
        {
            return hddal.HienThiChiTietHDAudit();
        }
        public int KhoiPhuc(int SoLuong, string MaHD, string MaSP)
        {
            return hddal.khoiphucCTHD(SoLuong, MaHD, MaSP);
        }
    }
}
