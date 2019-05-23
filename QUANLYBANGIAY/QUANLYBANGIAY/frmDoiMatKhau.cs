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
    public partial class frmDoiMatKhau : Form
    {
        string tenTK;
        TaiKhoan_BLL tkbll = new TaiKhoan_BLL();
        public frmDoiMatKhau(string tenTK)
        {
            InitializeComponent();
            this.tenTK = tenTK;
        }
        
        private void frmDoiMatKhau_Load(object sender, EventArgs e)
        {

        }
        private void btnHủy_Click(object sender, EventArgs e)
        {
            tbxMKCu.Clear();
            tbxMKMoi.Clear();
            tbxXacNhanMK.Clear();
        }
        private void btnThayDoi_Click_1(object sender, EventArgs e)
        {
            if (tbxMKCu.Text != "" && tbxMKMoi.Text != "" && tbxXacNhanMK.Text != "" &&
                 tbxMKMoi.Text == tbxXacNhanMK.Text)
            {
                tkbll.DoiMatKhau(tenTK, tbxMKMoi.Text);
                MessageBox.Show("Đã thay đổi mật khẩu thành công !", "THÔNG BÁO!", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnThoat_Click_1(object sender, EventArgs e)
        {
            Close();
        }
    }
}
