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
    public partial class frmThongKe : Form
    {
        public frmThongKe()
        {
            InitializeComponent();
        }
        ThongKeBanHang_BLL tkbll = new ThongKeBanHang_BLL();
        private void btnHienThi_Click(object sender, EventArgs e)
        {
            dgvTK.DataSource = tkbll.ThongKe(dtpBD.Value, dtpKT.Value);
            tbxTT.Text = TinhTongTien() + "";

        }
        double TinhTongTien()
        {
            double TongTien = 0;
            for (int i = 0; i < (dgvTK.RowCount - 1); i++)
                TongTien += double.Parse(dgvTK["Đơn giá bán", i].Value.ToString()) * double.Parse(dgvTK["Tổng số lượng", i].Value.ToString());
            return TongTien;
        }

        private void btnIn_Click(object sender, EventArgs e)
        {
            if (dgvTK.Rows.Count > 0)
            {
                ThongKe baocao = new ThongKe(dtpBD.Value, dtpKT.Value, double.Parse(tbxTT.Text));
                baocao.ShowDialog();
            }
        }
    }
}
