using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;

namespace BLL
{
    public class KhachHang_BLL
    {
        KhachHang_DAL khdal = new KhachHang_DAL();
        //phương thức này gọi phương thức kh_select() ở lớp KhachHang_DAL (tầng DAL)
        public DataTable KhachHang_Select()
        {
            return khdal.kh_select();
        }

        //phương thức này gọi phương thức nv_insert() ở lớp KhachHang_DAL (tầng DAL)
        public int KhachHang_Insert(string TenKH,DateTime NgaySinh, string Sdt,string DiaChi)
        {
            return khdal.kh_insert(TenKH,NgaySinh, Sdt,DiaChi);
        }

        //phương thức này gọi phương thức nv_update() ở lớp KhachHang_DAL (tầng DAL)
        public int KhachHang_Update(string MaKH, string TenKH, DateTime NgaySinh, string Sdt, string DiaChi)
        {
            return khdal.kh_update(MaKH, TenKH,NgaySinh, Sdt, DiaChi);
        }

        //phương thức này gọi phương thức nv_delete() ở lớp KhachHang_DAL (tầng DAL)
        public int KhachHang_Delete(string MaKH)
        {
            return khdal.kh_delete(MaKH);
        }
        public DataTable KhachHang_TimKiem(string Chuoitimkiem)
        {
            return khdal.kh_timkiem(Chuoitimkiem);
        }
        public DataTable KhachHangAUD_Select()
        {
            return khdal.khAUD_select();
        }
        public int KhoiPhuc(string MaKH, string TenKH, DateTime NgaySinh, string Sdt, string DiaChi)
        {
            return khdal.khoiphuc(MaKH, TenKH, NgaySinh, Sdt, DiaChi);
        }
    }
}
