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
    public partial class frmGiaoDien : Form
    {

        SanPham_BLL spbll = new SanPham_BLL();
        NhanVien_BLL nvbll = new NhanVien_BLL();
        KhachHang_BLL khbll = new KhachHang_BLL();
        HoaDon_BLL hdbll = new HoaDon_BLL();
        bool hienThiSP = false;
        bool hienThiNV = false;
        bool hienThiHD = false;

        public frmGiaoDien( string vaitro)
        {
            InitializeComponent();
            if (vaitro == "Bán hàng")
            {
                tabSP.Enabled = false;
                tabNV.Enabled = false;
            }

        }
        void HienThiSP()
        {
            dgvSP.DataSource = spbll.SanPham_Select();
        }
        void HienThiNV()
        {
            dgvNV.DataSource = nvbll.NhanVien_Select();
        }
        void HienThiKH()
        {
            dgvKH.DataSource = khbll.KhachHang_Select();
        }
        
        private void GiaoDien_Load(object sender, EventArgs e)
        {
            HienThiSP();
            HienThiNV();
            HienThiKH();
            HienThongTin();
            HienThiHoaDon();
        }
        private void dgvSP_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            tbxMaSP.Text = dgvSP.Rows[e.RowIndex].Cells[0].Value.ToString();
            tbxTenSP.Text = dgvSP.Rows[e.RowIndex].Cells[1].Value.ToString();
            tbxDonGia.Text = dgvSP.Rows[e.RowIndex].Cells[2].Value.ToString();
            tbxSoLuongCon.Text = dgvSP.Rows[e.RowIndex].Cells[3].Value.ToString();
        }

        private void btnLuuSP_Click(object sender, EventArgs e)
        {
            DialogResult key = MessageBox.Show("Bạn có muốn lưu " + tbxTenSP.Text.ToString() + " vào Cơ Sở Dữ Liệu", "",
                                                MessageBoxButtons.YesNo, MessageBoxIcon.Information);
            if (key == DialogResult.Yes)
            {
                if (tbxTenSP.Text == "" || tbxDonGia.Text == "" || tbxSoLuongCon.Text == "")
                    MessageBox.Show("Dữ liệu chưa nhập đủ!", "Thông báo!", MessageBoxButtons.OK);
                else
                {
                    dgvSP.DataSource = spbll.SanPham_Insert(tbxTenSP.Text, double.Parse(tbxDonGia.Text), int.Parse(tbxSoLuongCon.Text));
                    HienThiSP();
                }
            }
        }
        private void btnSuaSP_Click(object sender, EventArgs e)
        {
            try
            {
                dgvSP.DataSource = spbll.SanPham_Update(tbxMaSP.Text, tbxTenSP.Text, double.Parse(tbxDonGia.Text), int.Parse(tbxSoLuongCon.Text));
                MessageBox.Show("Cập Nhật Thành công!");
            }
            catch (Exception LOI)
            {
                MessageBox.Show(LOI.Message, "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            HienThiSP();
        }

        private void btnXoaSP_Click(object sender, EventArgs e)
        {
            DialogResult key = MessageBox.Show("Bạn có muốn xóa không?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (key == DialogResult.Yes)
            {
                try
                {
                    spbll.SanPham_Delete(tbxMaSP.Text);
                    tbxMaSP.Clear();
                    tbxTenSP.Clear();
                    tbxDonGia.Clear();
                    tbxSoLuongCon.Clear();
                    dgvSP.ClearSelection();
                    dgvSP.DataSource = spbll.SanPham_Select();
                }
                catch (Exception LOI)
                {
                    MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            dgvSP.DataSource = spbll.SanPham_Select();
            HienThiSP();
        }

        private void btnTaoMoiSP_Click(object sender, EventArgs e)
        {
            tbxMaSP.Clear();
            tbxTenSP.Clear();
            tbxDonGia.Clear();
            tbxSoLuongCon.Clear();
            tbxTenSP.Focus();
        }

        private void btnThoatSP_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnTaoMoi_Click(object sender, EventArgs e)
        {
            tbxMaNV.Clear();
            tbxTenNV.Clear();
            dtpNgaySinhNV.Value = DateTime.Now;
            tbxSdtNV.Clear();
            tbxDiaChiNV.Clear();
            tbxTenNV.Focus();
        }

        private void btnSuaNV_Click(object sender, EventArgs e)
        {
            try
            {
                bool GioiTinh;
                if (rdoNam.Checked) GioiTinh = true;
                else
                    GioiTinh = false;
                dgvNV.DataSource = nvbll.NhanVien_Update(tbxMaNV.Text, tbxTenNV.Text, GioiTinh, dtpNgaySinhNV.Value, tbxSdtNV.Text, tbxDiaChiNV.Text);
                MessageBox.Show("Cập Nhật Thành công!");
            }
            catch (Exception LOI)
            {
                MessageBox.Show(LOI.Message, "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnXoaNV_Click(object sender, EventArgs e)
        {
            DialogResult key = MessageBox.Show("Bạn có muốn xóa không?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (key == DialogResult.Yes)
            {
                try
                {
                    nvbll.NhanVien_Delete(tbxMaNV.Text);
                    tbxMaNV.Clear();
                    tbxTenNV.Clear();
                    tbxSdtNV.Clear();
                    tbxDiaChiNV.Clear();
                    dgvNV.ClearSelection();
                    dgvNV.DataSource = nvbll.NhanVien_Select();
                }
                catch (Exception LOI)
                {
                    MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            dgvNV.DataSource = nvbll.NhanVien_Select();
            HienThiNV();
        }

        private void btnLuuNV_Click(object sender, EventArgs e)
        {
            DialogResult key = MessageBox.Show("Bạn có muốn lưu " + tbxTenNV.Text.ToString() + "vào Cơ Sở Dữ Liệu", "",
                                                MessageBoxButtons.YesNo, MessageBoxIcon.Information);
            if (key == DialogResult.Yes)
            {
                if (tbxTenNV.Text == "" || tbxSdtNV.Text == "" || tbxDiaChiNV.Text == "")
                    MessageBox.Show("Dữ liệu chưa nhập đủ!", "Thông báo!", MessageBoxButtons.OK);
                else
                {
                    bool GioiTinh;
                    if (rdoNam.Checked) GioiTinh = true;
                    else
                        GioiTinh = false;
                    dgvNV.DataSource = nvbll.NhanVien_Insert(tbxTenNV.Text, GioiTinh, dtpNgaySinhNV.Value, tbxSdtNV.Text, tbxDiaChiNV.Text);
                    HienThiNV();
                }
            }

        }
        private void dgvNV_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            tbxMaNV.Text = dgvNV.Rows[e.RowIndex].Cells[0].Value.ToString();
            tbxTenNV.Text = dgvNV.Rows[e.RowIndex].Cells[1].Value.ToString();
            if ((bool)dgvNV.Rows[e.RowIndex].Cells[2].Value == true)
                rdoNam.Checked = true;
            else
                rdoNu.Checked = true;
            dtpNgaySinhNV.Value = DateTime.Parse(dgvNV.Rows[e.RowIndex].Cells[3].Value.ToString());
            tbxSdtNV.Text = dgvNV.Rows[e.RowIndex].Cells[4].Value.ToString();
            tbxDiaChiNV.Text = dgvNV.Rows[e.RowIndex].Cells[5].Value.ToString();
        }
        private void btnThoatNV_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnTaoMoiKH_Click(object sender, EventArgs e)
        {
            tbxMaKH.Clear();
            tbxTenKH.Clear();
            dtpNgaySinhKH.Value = DateTime.Now;
            tbxSdtKH.Clear();
            tbxDiaChiKH.Clear();
            tbxTenKH.Focus();
        }

        private void btnSuaKH_Click(object sender, EventArgs e)
        {
            try
            {
                dgvKH.DataSource = khbll.KhachHang_Update(tbxMaKH.Text, tbxTenKH.Text, dtpNgaySinhKH.Value, tbxSdtKH.Text, tbxDiaChiKH.Text);
                MessageBox.Show("Cập Nhật Thành công!");
            }
            catch (Exception LOI)
            {
                MessageBox.Show(LOI.Message, "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            HienThiKH();
        }

        private void btnXoaKH_Click(object sender, EventArgs e)
        {
            DialogResult key = MessageBox.Show("Bạn có muốn xóa không?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (key == DialogResult.Yes)
            {
                try
                {
                    khbll.KhachHang_Delete(tbxMaKH.Text);
                    tbxMaKH.Clear();
                    tbxTenKH.Clear();
                    tbxSdtKH.Clear();
                    tbxDiaChiKH.Clear();
                    dgvKH.ClearSelection();
                    dgvKH.DataSource = khbll.KhachHang_Select();
                }
                catch (Exception LOI)
                {
                    MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            dgvKH.DataSource = khbll.KhachHang_Select();
            HienThiKH();
        }

        private void btnLuuKH_Click(object sender, EventArgs e)
        {
            DialogResult key = MessageBox.Show("Bạn có muốn lưu " + tbxTenKH.Text.ToString() + " vào Cơ Sở Dữ Liệu", "",
                                                MessageBoxButtons.YesNo, MessageBoxIcon.Information);
           
            if (key == DialogResult.Yes)
            {
                if (tbxTenKH.Text == "" || tbxSdtKH.Text == "" || tbxDiaChiKH.Text == "")
                    MessageBox.Show("Dữ liệu chưa nhập đủ!", "Thông báo!", MessageBoxButtons.OK);
                else
                {

                    dgvKH.DataSource = khbll.KhachHang_Insert(tbxTenKH.Text, dtpNgaySinhKH.Value, tbxSdtKH.Text, tbxDiaChiKH.Text);
                    HienThiKH();
                }
            }
        }

        private void btnThoatKH_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dgvKH_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            tbxMaKH.Text = dgvKH.Rows[e.RowIndex].Cells[0].Value.ToString();
            tbxTenKH.Text = dgvKH.Rows[e.RowIndex].Cells[1].Value.ToString();
            dtpNgaySinhKH.Value = DateTime.Parse(dgvKH.Rows[e.RowIndex].Cells[2].Value.ToString());
            tbxSdtKH.Text = dgvKH.Rows[e.RowIndex].Cells[3].Value.ToString();
            tbxDiaChiKH.Text = dgvKH.Rows[e.RowIndex].Cells[4].Value.ToString();
        }

        private void tbxGiaBan_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = !((e.KeyChar >= 48 && e.KeyChar <= 57) ||
                         (e.KeyChar == 8) || (e.KeyChar == 127) ||
                         (e.KeyChar == 46));
        }// sự kiện chỉ cho nhập phím số (số thực, có thể nhập dấu .), k cho nhập chữ

        private void tbxSoLuong_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = !((e.KeyChar >= 48 && e.KeyChar <= 57) ||
                         (e.KeyChar == 8) || (e.KeyChar == 127));
        }

        private void btnThoatCTHD_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        void ClearData()
        {
            tbxMaHD.Text = "";
            tbxGiaBan.Text = "";
            tbxSoLuong.Text = "";
        }
        void HienThongTin()
        {
            HienNgayNhap();
            HienSanPham();
            HienNhanVien();
            HienKhachHang();
        }

        void HienNgayNhap()
        {
            DataTable dt = new DataTable();
            hdbll.HienNgayNhap(dt);
            cbxThoiGianLap.DisplayMember = "ThoiGianLap";
            cbxThoiGianLap.ValueMember = "MaHD";
            cbxThoiGianLap.DataSource = dt;
        }
        void HienSanPham()
        {
            DataTable dt = new DataTable();
            hdbll.HienSanPham(dt);
            cbxTenSP_HD.DisplayMember = "TenSP";
            cbxTenSP_HD.ValueMember = "MaSP";
            cbxTenSP_HD.DataSource = dt;
        }

        void HienNhanVien()
        {
            DataTable dt = new DataTable();
            hdbll.HienNhanVien(dt);
            cbxTenNV_HD.DisplayMember = "TenNV";
            cbxTenNV_HD.ValueMember = "MaNV";
            cbxTenNV_HD.DataSource = dt;
        }
        void HienKhachHang()
        {
            DataTable dt = new DataTable();
            hdbll.HienKhachHang(dt);
            cbxTenKH_HD.DisplayMember = "TenKH";
            cbxTenKH_HD.ValueMember = "MaKH";
            cbxTenKH_HD.DataSource = dt;
        }
        void HienThiHoaDon()
        {
            if (cbxThoiGianLap.Text != "")
            {
                dgvCTHD.DataSource = hdbll.ChiTietHoaDon_Select(cbxThoiGianLap.SelectedValue.ToString());
                tbxTongTien.Text = TinhTongTien() + "";
            }
        }
        double TinhTongTien()
        {
            double TongTien = 0;
            for (int i = 0; i < (dgvCTHD.RowCount-1); i++)
                TongTien += double.Parse(dgvCTHD["Đơn giá bán", i].Value.ToString()) * double.Parse(dgvCTHD["Số lượng", i].Value.ToString());
            return TongTien;
        }
        private void tabCtrl_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (tabControl1.SelectedTab == tabControl1.TabPages["tabNV"])

            {
                if (!hienThiNV)

                {

                    HienThiNV();
                    hienThiNV = true;
                }
            }

            if (tabControl1.SelectedTab == tabControl1.TabPages["tabSP"])
            {
                if (!hienThiSP)
                {
                    HienThiSP();
                    hienThiSP = true;
                }
            }
           
            if (tabControl1.SelectedTab == tabControl1.TabPages["tabHD"])
            {
                    HienNgayNhap();
                    HienNhanVien();
                    HienSanPham();
                    HienKhachHang();
                    HienThiHoaDon();
            }

        }// mở tab tab nào thì tab đó load dữ liệu

        private void btnThemHD_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Bạn muốn tạo hóa đơn mới?",
                                                      "THÔNG BÁO!",
                                                      MessageBoxButtons.YesNo,
                                                      MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                dgvCTHD.DataSource = hdbll.HoaDon_Insert(DateTime.Now, cbxTenNV_HD.SelectedValue.ToString(), cbxTenKH_HD.SelectedValue.ToString());
                HienNgayNhap();
                cbxThoiGianLap.SelectedIndex = cbxThoiGianLap.Items.Count - 1;
                MessageBox.Show("Đã thêm hóa đơn ngày " + cbxThoiGianLap.Text, "THÔNG BÁO!",
                                MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
        
        private void btnTaoMoiCTHD_Click(object sender, EventArgs e)
        {
            ClearData();
        }
        
        private void btnXoaCTHD_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Bạn có chắc chắn muốn xóa hóa đơn ngày " + cbxThoiGianLap.Text + " hay không?",
                                                      "THÔNG BÁO!",
                                                      MessageBoxButtons.YesNo,
                                                      MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                dgvCTHD.DataSource = hdbll.ChiTietHoaDon_Delete(tbxMaHD.Text, cbxTenSP_HD.SelectedValue.ToString());
                ClearData();
                HienThiHoaDon();
                MessageBox.Show("Đã xoá hóa đơn ngày " + cbxThoiGianLap.Text, "THÔNG BÁO!",
                                    MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnLuuCTHD_Click(object sender, EventArgs e)
        {
            if (tbxSoLuong.Text != "" )
            {
                try
                {
                    if (tbxMaHD.Text == "")
                    {
                        dgvCTHD.DataSource = hdbll.ChiTietHoaDon_Insert(int.Parse(tbxSoLuong.Text), cbxThoiGianLap.SelectedValue.ToString(), cbxTenSP_HD.SelectedValue.ToString());
                        ClearData();
                        HienThiHoaDon();
                        try
                        {
                            int rowIndex = dgvCTHD.CurrentRow.Index;
                            cbxTenNV_HD.Text = dgvCTHD["Tên nhân viên", rowIndex].Value.ToString();
                        }
                        catch { }

                        MessageBox.Show("Ðã thêm nội dung hóa đơn ngày " + cbxThoiGianLap.Text, "THÔNG BÁO!",
                                        MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        int rowIndex = dgvCTHD.CurrentRow.Index; // gán giá trị cho 1 biến tạm
                        string tenSP = dgvCTHD["Tên sản phẩm", rowIndex].Value.ToString();
                        int soLuong = int.Parse(dgvCTHD["Số lượng", rowIndex].Value.ToString());
                        string tenNV = dgvCTHD["Tên nhân viên", rowIndex].Value.ToString();
                        string tenKH = dgvCTHD["Tên khách hàng", rowIndex].Value.ToString();
                        if ((tenKH != cbxTenKH_HD.Text || tenNV != cbxTenNV_HD.Text) && (soLuong != int.Parse(tbxSoLuong.Text)))
                        {
                            dgvCTHD.DataSource = hdbll.HoaDon_Update(tbxMaHD.Text, DateTime.Parse(cbxThoiGianLap.Text), cbxTenNV_HD.SelectedValue.ToString(), cbxTenKH_HD.SelectedValue.ToString());
                            dgvCTHD.DataSource = hdbll.ChiTietHoaDon_Update(int.Parse(tbxSoLuong.Text), tbxMaHD.Text, cbxTenSP_HD.SelectedValue.ToString());
                            ClearData();
                            HienThiHoaDon();
                            MessageBox.Show("Ðã sửa thông tin nội dung hóa đơn ngày " + cbxThoiGianLap.Text, "THÔNG BÁO!",
                                                MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else if (tenNV != cbxTenNV_HD.Text)
                        {
                            dgvCTHD.DataSource = hdbll.HoaDon_Update(tbxMaHD.Text, DateTime.Parse(cbxThoiGianLap.Text), cbxTenNV_HD.SelectedValue.ToString(), cbxTenKH_HD.SelectedValue.ToString());
                            ClearData();
                            HienThiHoaDon();
                            MessageBox.Show("Ðã sửa thông tin nội dung hóa đơn ngày  " + cbxThoiGianLap.Text, "THÔNG BÁO!",
                                                MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                        else if (soLuong != int.Parse(tbxSoLuong.Text))
                        {

                            dgvCTHD.DataSource = hdbll.ChiTietHoaDon_Update(int.Parse(tbxSoLuong.Text), tbxMaHD.Text, cbxTenSP_HD.SelectedValue.ToString());
                            ClearData();
                            HienThiHoaDon();
                            MessageBox.Show("Ðã sửa thông tin nội dung hóa đơn ngày " + cbxThoiGianLap.Text, "THÔNG BÁO!",
                                                MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                    }
                }
                catch
                {
                    MessageBox.Show("Hóa đơn đã có sản phẩm " + cbxTenSP_HD.Text, "THÔNG BÁO!",
                                        MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            else
                MessageBox.Show("Vui lòng nhập đủ các thông tin", "THÔNG BÁO!",
                                    MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
        private void btnInCTHD_Click(object sender, EventArgs e)
        {
            if (dgvCTHD.Rows.Count > 0)
            {
               HoaDon invoice = new HoaDon(dgvCTHD["Thời gian lập", dgvCTHD.CurrentRow.Index].Value.ToString(),
                                                              double.Parse(tbxTongTien.Text));
               invoice.ShowDialog();
            }
        }
        
        private void dgvCTHD_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int rowIndex = dgvCTHD.CurrentRow.Index;
            tbxMaHD.Text = cbxThoiGianLap.SelectedValue.ToString();
            cbxThoiGianLap.Text = dgvCTHD["Thời gian lập", rowIndex].Value.ToString();
            cbxTenSP_HD.Text = dgvCTHD["Tên sản phẩm", rowIndex].Value.ToString();
            tbxGiaBan.Text = dgvCTHD["Đơn giá bán", rowIndex].Value.ToString();
            tbxSoLuong.Text = dgvCTHD["Số lượng", rowIndex].Value.ToString();
            cbxTenNV_HD.Text = dgvCTHD["Tên nhân viên", rowIndex].Value.ToString();
            cbxTenKH_HD.Text = dgvCTHD["Tên khách hàng", rowIndex].Value.ToString();
        }
        private void cbxThoiGianLap_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            HienThiHoaDon();
        }
        
        private void btnHuyHD_Click_1(object sender, EventArgs e)
        {
            dgvCTHD.DataSource = hdbll.HoaDon_Delete(cbxThoiGianLap.SelectedValue.ToString());
            HienNgayNhap();
        }
        

        
        private void btnTimKiemNV_Click(object sender, EventArgs e)
        {
            dgvNV.DataSource = nvbll.NhanVien_TimKiem(tbxTenNV.Text);
        }

        private void btnTimKiemSP_Click(object sender, EventArgs e)
        {
            dgvSP.DataSource = spbll.SanPham_TimKiem(tbxTenSP.Text);
        }

        private void btnTimKiemKH_Click(object sender, EventArgs e)
        {
            dgvKH.DataSource = khbll.KhachHang_TimKiem(tbxTenKH.Text);
        }

        private void tabSP_Click(object sender, EventArgs e)
        {

        }

        private void cbxTenKH_HD_SelectedIndexChanged(object sender, EventArgs e)
        {
            //HienKhachHang();
        }

        private void cbxTenNV_HD_SelectedIndexChanged(object sender, EventArgs e)
        {
            //HienNhanVien();
        }

        private void cbxTenSP_HD_SelectedIndexChanged(object sender, EventArgs e)
        {
            //HienSanPham();
        }

        private void btnInSP_Click(object sender, EventArgs e)
        {
            SanPham danhsach = new SanPham();
            danhsach.ShowDialog();
        }

        private void btnInNV_Click(object sender, EventArgs e)
        {
            NhanVien danhsach = new NhanVien();
            danhsach.ShowDialog();
        }

        private void btnInKH_Click(object sender, EventArgs e)
        {
            KhachHang danhsach = new KhachHang();
            danhsach.ShowDialog();
        }

        private void btnThongKe_Click(object sender, EventArgs e)
        {
            frmThongKe m = new frmThongKe();
            m.ShowDialog();
        }
    }
}
