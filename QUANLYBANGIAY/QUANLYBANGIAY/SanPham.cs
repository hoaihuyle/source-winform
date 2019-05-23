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
    public partial class SanPham : Form
    {
        public SanPham()
        {
            InitializeComponent();
        }

        private void SanPham_Load(object sender, EventArgs e)
        {
            crSanPham danhsach = new crSanPham();
            crystalReportViewer1.ReportSource = danhsach;
        }
    }
}
