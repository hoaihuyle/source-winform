using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public class SanPham_DAL
    {
        ThaoTacCSDL thaotac = new ThaoTacCSDL();
        //khai báo 2 mảng để truyền tên tham số và giá trị tham số vào Stored Procedures
        string[] name = { };
        object[] value = { };
        //phương thức này gọi phương thức SQL_Laydulieu ở lớp ThaoTac_CoSoDuLieu để thực hiện lấy dữ liệu
        public DataTable sp_select()
        {
            //thaotac.KetnoiCSDL();
            return thaotac.HienThiDuLieu("Select_SP",name,value,0);
        }

        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện insert
        public int sp_insert(string TenSP, double DonGiaBan,int SoLuongCon)
        {
            //thaotac.KetnoiCSDL();
            name = new string[3];
            value = new object[3];
            name[0] = "@TenSP"; value[0] = TenSP;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[1] = "@DonGiaBan";value[1] = DonGiaBan;
            name[2] = "@SoLuongCon"; value[2] = SoLuongCon;
            return thaotac.ThucHien("Insert_SP", name, value,3);
        }
        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện update
        public int sp_update(string MaSP, string TenSP,double DonGiaBan, int SoLuongCon)
        {
            name = new string[4];
            value = new object[4];
            name[0] = "@MaSP"; value[0] = MaSP;
            name[1] = "@TenSP"; value[1] = TenSP;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[2] = "@DonGiaBan";value[2] = DonGiaBan;
            name[3] = "@SoLuongCon"; value[3] = SoLuongCon;
            return thaotac.ThucHien("Update_SP", name, value, 4);
        }
        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện delete
        public int sp_delete(string MaSP)
        {
            name = new string[1];
            value = new object[1];
            name[0] = "@MaSP"; value[0] = MaSP;
            return thaotac.ThucHien("Delete_SP", name, value, 1);
        }
        public DataTable sp_timkiem(string Chuoitimkiem)
        {
            name = new string[1];
            value = new object[1];
            name[0] = "@Chuoitimkiem"; value[0] = Chuoitimkiem;
            return thaotac.HienThiDuLieu("TimKiem_SP", name, value, 1);
        }
        public DataTable spAUD_select()
        {
            //thaotac.KetnoiCSDL();
            return thaotac.HienThiDuLieu("Select_Audit_SP", name, value, 0);
        }
        public int khoiphuc(string MaSP, string TenSP, double DonGiaBan, int SoLuongCon)
        {
            //thaotac.KetnoiCSDL();
            name = new string[4];
            value = new object[4];
            name[0] = "@MaSP"; value[0] = MaSP;
            name[1] = "@TenSP"; value[1] = TenSP;//@,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL
            name[2] = "@DonGiaBan"; value[2] = DonGiaBan;
            name[3] = "@SoLuongCon"; value[3] = SoLuongCon;
            return thaotac.ThucHien("Insert_Audit_SP", name, value, 4);
        }
    }
}
