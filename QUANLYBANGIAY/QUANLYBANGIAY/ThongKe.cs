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
    public partial class ThongKe : Form
    {
        string ThoiGianBatDau;
        string ThoiGianKetThuc;
        double TongTien;
        public ThongKe(DateTime BatDau, DateTime KetThuc, double tongTien )
        {
            InitializeComponent();
            ThoiGianBatDau = BatDau.ToString("yyyy-MM-dd");
            ThoiGianKetThuc = KetThuc.ToString("yyyy-MM-dd");
            this.TongTien = tongTien;
        }

        private void ThongKe_Load(object sender, EventArgs e)
        {
            crThongKe gg = new crThongKe();
            gg.SetParameterValue("@Thoigianbatdau", DateTime.Parse(ThoiGianBatDau));
            gg.SetParameterValue("@Thoigianketthuc", DateTime.Parse(ThoiGianKetThuc));
            gg.SetParameterValue("TongTien", TongTien);
            crystalReportViewer1.ReportSource = gg;
            
        }
    }
}