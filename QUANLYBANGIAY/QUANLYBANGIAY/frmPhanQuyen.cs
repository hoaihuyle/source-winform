using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QUANLYBANGIAY
{
    public partial class frmPhanQuyen : Form
    {
        string TenTK;
        string vaitro;
        public frmPhanQuyen(string TenTK, string vaitro) /*string TenTK,*/
        {
            InitializeComponent();
            this.TenTK = TenTK;
            this.vaitro = vaitro;
            if (vaitro != "Quản trị")
                btnQuanTri.Enabled = false;
        }
        
       
        private void btnQuanLy_Click_1(object sender, EventArgs e)
        {
            frmGiaoDien m = new frmGiaoDien(vaitro);
            m.ShowDialog();
        }

        private void btnQuanTri_Click_1(object sender, EventArgs e)
        {
            frmAdmin admin = new frmAdmin();
            admin.ShowDialog();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnBaoMat_Click(object sender, EventArgs e)
        {
            frmDoiMatKhau doimk = new frmDoiMatKhau(TenTK);
            doimk.ShowDialog();
        }

        private void frmPhanQuyen_Load(object sender, EventArgs e)
        {

        }
    }
}
