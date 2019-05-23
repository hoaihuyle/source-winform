using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;

namespace BLL
{
    public class NhanVien_BLL
    {
        NhanVien_DAL nvdal = new NhanVien_DAL();
        //phương thức này gọi phương thức nv_select() ở lớp NhanVien_DAL (tầng DAL)
        public DataTable NhanVien_Select()
        {
            return nvdal.nv_select();
        }

        //phương thức này gọi phương thức nv_insert() ở lớp NhanVien_DAL (tầng DAL)
        public int NhanVien_Insert(string TenNV, bool GioiTinh,DateTime NgaySinh, string Sdt, string DiaChi)
        {
            return nvdal.nv_insert(TenNV, GioiTinh,NgaySinh, Sdt, DiaChi);
        }

        //phương thức này gọi phương thức nv_update() ở lớp NhanVien_DAL (tầng DAL)
        public int NhanVien_Update(string MaNV, string TenNV, bool GioiTinh,DateTime NgaySinh, string Sdt, string DiaChi)
        {
            return nvdal.nv_update(MaNV, TenNV, GioiTinh,NgaySinh, Sdt, DiaChi);
        }

        //phương thức này gọi phương thức nv_delete() ở lớp NhanVien_DAL (tầng DAL)
        public int NhanVien_Delete(string MaNV)
        {
            return nvdal.nv_delete(MaNV);
        }
        public DataTable NhanVien_TimKiem(string Chuoitimkiem)
        {
            return nvdal.nv_timkiem(Chuoitimkiem);
        }
        public DataTable NhanVienAUD_Select()
        {
            return nvdal.nvAUD_select();
        }
        public int KhoiPhuc(string MaNV, string TenNV, bool GioiTinh, DateTime NgaySinh, string Sdt, string DiaChi)
        {
            return nvdal.khoiphuc(MaNV ,TenNV, GioiTinh, NgaySinh, Sdt, DiaChi);
        }
    }
}
