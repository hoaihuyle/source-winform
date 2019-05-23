using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;

namespace BLL
{
    public class SanPham_BLL
    {
            SanPham_DAL spdal = new SanPham_DAL();
            //phương thức này gọi phương thức sp_select() ở lớp SanPham_DAL (tầng DAL)
            public DataTable SanPham_Select()
            {
                return spdal.sp_select();
            }

            //phương thức này gọi phương thức sp_insert() ở lớp SanPham_DAL (tầng DAL)
            public int SanPham_Insert(string TenSP,double DonGiaBan, int SoLuongCon)
            {
                return spdal.sp_insert(TenSP,DonGiaBan, SoLuongCon);
            }

            //phương thức này gọi phương thức sp_update() ở lớp SanPham_DAL (tầng DAL)
            public int SanPham_Update(string MaSP, string TenSP, double DonGiaBan, int SoLuongCon)
            {
                return spdal.sp_update(MaSP, TenSP, DonGiaBan, SoLuongCon);
            }

            //phương thức này gọi phương thức sp_delete() ở lớp SanPham_DAL (tầng DAL)
            public int SanPham_Delete(string MaSP)
            {
                return spdal.sp_delete(MaSP);
            }
            public DataTable SanPham_TimKiem(string Chuoitimkiem)
            {
                return spdal.sp_timkiem(Chuoitimkiem);
            }
            public DataTable SanPhamAUD_Select()
            {
                return spdal.spAUD_select();
            }
            public int KhoiPhuc( string MaSP, string TenSP, double DonGiaBan, int SoLuongCon)
            {
                return spdal.khoiphuc(MaSP, TenSP, DonGiaBan, SoLuongCon);
            }
    }
}
