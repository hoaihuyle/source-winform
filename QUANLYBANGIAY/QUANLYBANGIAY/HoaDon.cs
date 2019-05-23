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
    public partial class HoaDon : Form
    {
        DateTime thoiGianLap;
        double tongTien;

        public HoaDon(string thoiGianLap, double tongTien)
        {
            InitializeComponent();
            this.thoiGianLap = DateTime.Parse(thoiGianLap);
            this.tongTien = tongTien;
        }

        private void HoaDon_Load(object sender, EventArgs e)
        {
            crHoaDon invoice = new crHoaDon();
            invoice.SetParameterValue("ThoiGianLap", thoiGianLap);
            invoice.SetParameterValue("TongTien", tongTien);
            crystalReportViewer1.ReportSource = invoice;
        }
    }
}
