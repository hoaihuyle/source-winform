using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;

namespace QUANLYBANGIAY
{
    public partial class frmAdmin : Form
    {
        public frmAdmin()
        {
            InitializeComponent();
        }

        private void frmAdmin_Load(object sender, EventArgs e)
        {
            HienThiKhachHang();
            HienThiNhanVien();
            HienThiSanPham();
            HienThiHoaDon();
            HienThiChiTietHD();
        }
        KhachHang_BLL khbll = new KhachHang_BLL();
        NhanVien_BLL nvbll = new NhanVien_BLL();
        SanPham_BLL spbll = new SanPham_BLL();
        HoaDon_BLL hdbll = new HoaDon_BLL();
        HoaDon_BLL cthdbll = new HoaDon_BLL();
        TaiKhoan_BLL tkbll = new TaiKhoan_BLL();

        void HienThiKhachHang()
        {
            dgvKH.DataSource = khbll.KhachHangAUD_Select();
        }
        void HienThiNhanVien()
        {
            dgvNV.DataSource = nvbll.NhanVienAUD_Select();
        }
        void HienThiSanPham()
        {
            dgvSP.DataSource = spbll.SanPhamAUD_Select();
        }
        void HienThiHoaDon()
        {
            dgvHD.DataSource = hdbll.HoaDonAUD_Select();
        }
        void HienThiChiTietHD()
        {
            dgvCTHD.DataSource = cthdbll.ChiTietHoaDonAUD_Select();
        }
        void HienThiTaiKhoan()
        {
            dgvTK.DataSource = tkbll.TaiKhoan_Select();
        }
        
        private void tabCtrl_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadData();
        }
        void LoadData()
        {
            if (tabControl1.SelectedTab == tabControl1.TabPages["tabKH"])
                HienThiKhachHang();
            else if (tabControl1.SelectedTab == tabControl1.TabPages["tabNV"])
                HienThiNhanVien();
            else if (tabControl1.SelectedTab == tabControl1.TabPages["tabSP"])
                HienThiSanPham();
            else if (tabControl1.SelectedTab == tabControl1.TabPages["tabHD"])
                HienThiHoaDon();
            else if (tabControl1.SelectedTab == tabControl1.TabPages["tabCTHD"])
                HienThiChiTietHD();
            else if (tabControl1.SelectedTab == tabControl1.TabPages["TabTK"])
                HienThiTaiKhoan();
        }
       
        private void btnKhoiPhucKH_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Khôi phục khách hàng " + dgvKH["Tên khách hàng", dgvKH.CurrentRow.Index].Value.ToString() + "?",
                                                      "THÔNG BÁO!",
                                                      MessageBoxButtons.YesNo,
                                                      MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                int rowIndex = dgvKH.CurrentRow.Index;
                string ma = dgvKH["Mã khách hàng", rowIndex].Value.ToString();
                string ten = dgvKH["Tên khách hàng", rowIndex].Value.ToString();
                DateTime ngaysinh = (DateTime)dgvKH["Ngày sinh", rowIndex].Value;
                string sdt = dgvKH["Số điện thoại", rowIndex].Value.ToString();
                string diaChi = dgvKH["Địa chỉ", rowIndex].Value.ToString();

                if (dgvKH["Action", rowIndex].Value.ToString().Trim() == "D")
                {
                    khbll.KhoiPhuc(ma, ten , ngaysinh, sdt, diaChi);
                    MessageBox.Show("Ðã khôi phục khách hàng " + ten, "THÔNG BÁO!",
                                        MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else if (dgvKH["Action", rowIndex].Value.ToString().Trim() == "U")
                {
                    khbll.KhachHang_Update(ma, ten,ngaysinh, sdt, diaChi);
                    MessageBox.Show("Ðã khôi phục khách hàng " + ten, "THÔNG BÁO!",
                                        MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }

        private void btnKhoiPhucNV_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Khôi phục nhân viên " + dgvNV["Tên nhân viên", dgvNV.CurrentRow.Index].Value.ToString() + "?",
                                                      "THÔNG BÁO!",
                                                      MessageBoxButtons.YesNo,
                                                      MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                int rowIndex = dgvNV.CurrentRow.Index;
                string ma = dgvNV["Mã nhân viên", rowIndex].Value.ToString();
                string ten = dgvNV["Tên nhân viên", rowIndex].Value.ToString();
                bool gioitinh = (bool)dgvNV["Giới tính", rowIndex].Value;
                DateTime ngaysinh = (DateTime)dgvNV["Ngày sinh", rowIndex].Value;
                string sdt = dgvNV["Số điện thoại", rowIndex].Value.ToString();
                string diaChi = dgvNV["Địa chỉ", rowIndex].Value.ToString();

                if (dgvNV["Action", rowIndex].Value.ToString().Trim() == "D")
                {
                    nvbll.KhoiPhuc(ma, ten, gioitinh, ngaysinh, sdt, diaChi);
                    MessageBox.Show("Ðã khôi phục nhân viên " + ten, "THÔNG BÁO!",
                                        MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else if (dgvNV["Action", rowIndex].Value.ToString().Trim() == "U")
                {
                    nvbll.NhanVien_Update(ma, ten, gioitinh, ngaysinh, sdt, diaChi);
                    MessageBox.Show("Ðã khôi phục thông tin nhân viên " + ten, "THÔNG BÁO!",
                                        MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }

        private void btnKhoiPhucSP_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Khôi phục sản phẩm " + dgvSP["Tên sản phẩm", dgvSP.CurrentRow.Index].Value.ToString() + "?",
                                                      "THÔNG BÁO!",
                                                      MessageBoxButtons.YesNo,
                                                      MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                int rowIndex = dgvSP.CurrentRow.Index;
                string ma = dgvSP["Mã sản phẩm", rowIndex].Value.ToString();
                string ten = dgvSP["Tên sản phẩm", rowIndex].Value.ToString();
                double gia = (double)dgvSP["Đơn giá bán", rowIndex].Value;
                int soluong = (int)dgvSP["Số lượng còn", rowIndex].Value;

                if (dgvSP["Action", rowIndex].Value.ToString().Trim() == "D")
                {
                    spbll.KhoiPhuc(ma, ten,gia, soluong);
                    MessageBox.Show("Ðã khôi phục sản phẩm " + ten, "THÔNG BÁO!",
                                        MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else if (dgvSP["Action", rowIndex].Value.ToString().Trim() == "U")
                {
                    spbll.SanPham_Update(ma, ten, gia, soluong);
                    MessageBox.Show("Ðã khôi phục thông tin sản phẩm " + ten, "THÔNG BÁO!",
                                        MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }

        private void btnKhoiPhucHD_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Khôi phục hóa đơn " + dgvHD["Mã hóa đơn", dgvHD.CurrentRow.Index].Value.ToString() + "?",
                                                     "THÔNG BÁO!",
                                                     MessageBoxButtons.YesNo,
                                                     MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                int rowIndex = dgvHD.CurrentRow.Index;
                string ma = dgvHD["Mã hóa đơn", rowIndex].Value.ToString();
                DateTime thoigian = (DateTime)dgvHD["Thời gian lập", rowIndex].Value;
                string maNV = dgvHD["Nhân viên", rowIndex].Value.ToString();
                string maKH = dgvHD["Khách hàng", rowIndex].Value.ToString();
                
                if (dgvHD["Action", rowIndex].Value.ToString().Trim() == "D")
                {
                    hdbll.KhoiPhuc(ma, thoigian,maNV, maKH);
                    MessageBox.Show("Ðã khôi phục hóa đơn " + ma, "THÔNG BÁO!",
                                        MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else if (dgvHD["Action", rowIndex].Value.ToString().Trim() == "U")
                {
                    hdbll.HoaDon_Update(ma, thoigian, maNV, maKH);
                    MessageBox.Show("Ðã khôi phục thông tin sản phẩm " + ma, "THÔNG BÁO!",
                                        MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }

        private void btnKhoiPhucCTHD_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Khôi phục thông tin hóa đơn ngày  "+
                                                      dgvCTHD["Thời gian lập", dgvCTHD.CurrentRow.Index].Value.ToString()+"?",
                                                     "THÔNG BÁO!",
                                                     MessageBoxButtons.YesNo,
                                                     MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                try
                {
                    int rowIndex = dgvCTHD.CurrentRow.Index;
                    HienThi(rowIndex);
                    int soluong = (int)dgvCTHD["Số lượng", rowIndex].Value;
                    string maHD = dgvCTHD["Mã hóa đơn", rowIndex].Value.ToString();
                    string maSP = dgvCTHD["Mã sản phẩm", rowIndex].Value.ToString();

                    if (dgvCTHD["Action", rowIndex].Value.ToString().Trim() == "D")
                    {
                        cthdbll.KhoiPhuc(soluong, maHD, maSP);
                        MessageBox.Show("Ðã khôi phục thông tin hóa đơn ngày  "  +
                                                      dgvCTHD["Thời gian lập", dgvCTHD.CurrentRow.Index].Value.ToString() + "?",
                                                     "THÔNG BÁO!",
                                            MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else if (dgvCTHD["Action", rowIndex].Value.ToString().Trim() == "U")
                    {
                        cthdbll.ChiTietHoaDon_Update(soluong, maHD, maSP);
                        MessageBox.Show("Ðã khôi phục thông tin hóa đơn ngày  " +
                                                      dgvCTHD["Thời gian lập", dgvCTHD.CurrentRow.Index].Value.ToString() + "?",
                                                     "THÔNG BÁO!",
                                            MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }

                }
                catch
                {
                    MessageBox.Show("Chưa khôi phục hóa đơn ngày " + dgvCTHD["Thời gian lập", dgvCTHD.CurrentRow.Index].Value.ToString(),
                                        "THÔNG BÁO!", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }

            }
        }
         void HienThi(int rowIndex)
        {
            
        }

        private void btnHienThi_Click(object sender, EventArgs e)
        {
            if(tbxTenNV_TK.Text !="")
            dgvTK.DataSource = tkbll.TaiKhoan_TimKiem(tbxTenNV_TK.Text);
            else
            dgvTK.DataSource = tkbll.TaiKhoan_Select();
        }

        private void btnTaoMoi_Click(object sender, EventArgs e)
        {
            tbxTenTK.Clear();
            tbxTenNV_TK.Clear();
            tbxTenTK.Focus();
        }

        //private void btnKichHoat_Click(object sender, EventArgs e)
        //{
        //    if (dgvTK["Action", dgvTK.CurrentRow.Index].Value.ToString() == "U")
        //    {
        //        dgvTK.DataSource = tkbll.DoiMatKhau(tbxTenTK.Text, tbxTenTK.Text);
        //        tbxTenTK.Text = "";
        //        tbxTenNV_TK.Text = "";
        //        HienThiTaiKhoan();
        //        MessageBox.Show("Đã kích hoạt mật khẩu mặc định cho tài khoản " + tbxTenTK.Text, "THÔNG BÁO!",
        //                            MessageBoxButtons.OK, MessageBoxIcon.Information);
        //    }
        //}

        private void btnXoa_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Xoá tài khoản " + tbxTenNV_TK.Text + "?",
                                                     "THÔNG BÁO!",
                                                     MessageBoxButtons.YesNo,
                                                     MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                string username = tbxTenTK.Text;
                dgvTK.DataSource = tkbll.TaiKhoan_Delete(tbxTenTK.Text);
                MessageBox.Show("Đã xoá tài khoản " + username, "THÔNG BÁO!",
                                    MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnKhoiPhuc_Click(object sender, EventArgs e)
        {

        }

        private void dgvTK_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            tbxTenTK.Text = dgvTK["Tên đăng nhập", e.RowIndex].Value.ToString();
            tbxTenNV_TK.Text = dgvTK["Tên", e.RowIndex].Value.ToString();
            if ((string)dgvTK.Rows[e.RowIndex].Cells["Vai trò"].Value == "Bán hàng")
                rdoBanHang.Checked = true;
            else
                rdoQuanLy.Checked = true;
          
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            if (tbxTenTK.Text != "" && tbxTenNV_TK.Text != "")
            {

                string role;
                if (rdoBanHang.Checked)
                    role = "Bán hàng";
                else
                    role = "Quản lý";

                dgvTK.DataSource = tkbll.TaiKhoan_Insert(tbxTenTK.Text, tbxTenTK.Text, tbxTenNV_TK.Text, role);
                HienThiTaiKhoan();
                LoadData();
            }
        }
    }
}
