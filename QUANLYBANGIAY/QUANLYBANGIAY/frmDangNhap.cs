using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using BLL;

namespace QUANLYBANGIAY
{
    public partial class frmDangNhap : Form
    {
        public frmDangNhap()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
        TaiKhoan_BLL tkbll = new TaiKhoan_BLL();

        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (tbxDangNhap.Text != "" && tbxMatKhau.Text != "")
            {
                DataTable dt = new DataTable();
                dt = tkbll.TaiKhoan_DangNhap(tbxDangNhap.Text, tbxMatKhau.Text);
                if (dt.Rows.Count > 0)
                {
                    string role = dt.Rows[0]["VaiTro"].ToString();
                    string TenTK = dt.Rows[0]["TenDangNhap"].ToString();
                    tbxMatKhau.Text = "";
                    Hide();
                    frmPhanQuyen m = new frmPhanQuyen(TenTK, role);
                    m.ShowDialog();
                    Show();
                }
            }
            else
            {
                tbxMatKhau.Text = "";
                MessageBox.Show("Tên đăng nhập hoặc mật khẩu chưa đúng", "THÔNG BÁO!", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                //MessageBox.Show("Tên đăng nhập hoặc mật khẩu chưa đúng!");
            }
        }
        private void btnThoatDN_Click(object sender, EventArgs e)
        {
            Close();
        }
        
    }
}
