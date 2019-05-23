namespace QUANLYBANGIAY
{
    partial class frmAdmin
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabNV = new System.Windows.Forms.TabPage();
            this.btnKhoiPhucNV = new System.Windows.Forms.Button();
            this.dgvNV = new System.Windows.Forms.DataGridView();
            this.tabSP = new System.Windows.Forms.TabPage();
            this.btnKhoiPhucSP = new System.Windows.Forms.Button();
            this.dgvSP = new System.Windows.Forms.DataGridView();
            this.tabKH = new System.Windows.Forms.TabPage();
            this.btnKhoiPhucKH = new System.Windows.Forms.Button();
            this.dgvKH = new System.Windows.Forms.DataGridView();
            this.tabHD = new System.Windows.Forms.TabPage();
            this.btnKhoiPhucHD = new System.Windows.Forms.Button();
            this.dgvHD = new System.Windows.Forms.DataGridView();
            this.tabCTHD = new System.Windows.Forms.TabPage();
            this.btnKhoiPhucCTHD = new System.Windows.Forms.Button();
            this.dgvCTHD = new System.Windows.Forms.DataGridView();
            this.tabTK = new System.Windows.Forms.TabPage();
            this.tbxTenNV_TK = new System.Windows.Forms.TextBox();
            this.tbxTenTK = new System.Windows.Forms.TextBox();
            this.rdoQuanLy = new System.Windows.Forms.RadioButton();
            this.rdoBanHang = new System.Windows.Forms.RadioButton();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btnTaoMoi = new System.Windows.Forms.Button();
            this.btnHienThi = new System.Windows.Forms.Button();
            this.dgvTK = new System.Windows.Forms.DataGridView();
            this.btnLuu = new System.Windows.Forms.Button();
            this.tabControl1.SuspendLayout();
            this.tabNV.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvNV)).BeginInit();
            this.tabSP.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSP)).BeginInit();
            this.tabKH.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvKH)).BeginInit();
            this.tabHD.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvHD)).BeginInit();
            this.tabCTHD.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCTHD)).BeginInit();
            this.tabTK.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTK)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabNV);
            this.tabControl1.Controls.Add(this.tabSP);
            this.tabControl1.Controls.Add(this.tabKH);
            this.tabControl1.Controls.Add(this.tabHD);
            this.tabControl1.Controls.Add(this.tabCTHD);
            this.tabControl1.Controls.Add(this.tabTK);
            this.tabControl1.Location = new System.Drawing.Point(7, 7);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(749, 470);
            this.tabControl1.TabIndex = 1;
            this.tabControl1.SelectedIndexChanged += new System.EventHandler(this.tabCtrl_SelectedIndexChanged);
            // 
            // tabNV
            // 
            this.tabNV.BackColor = System.Drawing.Color.LavenderBlush;
            this.tabNV.Controls.Add(this.btnKhoiPhucNV);
            this.tabNV.Controls.Add(this.dgvNV);
            this.tabNV.Location = new System.Drawing.Point(4, 22);
            this.tabNV.Name = "tabNV";
            this.tabNV.Padding = new System.Windows.Forms.Padding(3);
            this.tabNV.Size = new System.Drawing.Size(741, 444);
            this.tabNV.TabIndex = 0;
            this.tabNV.Text = "Nhân Viên";
            // 
            // btnKhoiPhucNV
            // 
            this.btnKhoiPhucNV.BackColor = System.Drawing.Color.Transparent;
            this.btnKhoiPhucNV.Location = new System.Drawing.Point(603, 396);
            this.btnKhoiPhucNV.Name = "btnKhoiPhucNV";
            this.btnKhoiPhucNV.Size = new System.Drawing.Size(120, 40);
            this.btnKhoiPhucNV.TabIndex = 19;
            this.btnKhoiPhucNV.Text = "Khôi phục";
            this.btnKhoiPhucNV.UseVisualStyleBackColor = false;
            this.btnKhoiPhucNV.Click += new System.EventHandler(this.btnKhoiPhucNV_Click);
            // 
            // dgvNV
            // 
            this.dgvNV.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dgvNV.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvNV.Location = new System.Drawing.Point(21, 19);
            this.dgvNV.Name = "dgvNV";
            this.dgvNV.Size = new System.Drawing.Size(702, 371);
            this.dgvNV.TabIndex = 0;
            // 
            // tabSP
            // 
            this.tabSP.BackColor = System.Drawing.Color.LavenderBlush;
            this.tabSP.Controls.Add(this.btnKhoiPhucSP);
            this.tabSP.Controls.Add(this.dgvSP);
            this.tabSP.Location = new System.Drawing.Point(4, 22);
            this.tabSP.Name = "tabSP";
            this.tabSP.Padding = new System.Windows.Forms.Padding(3);
            this.tabSP.Size = new System.Drawing.Size(741, 444);
            this.tabSP.TabIndex = 1;
            this.tabSP.Text = "Sản Phẩm";
            // 
            // btnKhoiPhucSP
            // 
            this.btnKhoiPhucSP.Location = new System.Drawing.Point(598, 392);
            this.btnKhoiPhucSP.Name = "btnKhoiPhucSP";
            this.btnKhoiPhucSP.Size = new System.Drawing.Size(119, 44);
            this.btnKhoiPhucSP.TabIndex = 21;
            this.btnKhoiPhucSP.Text = "Khôi phục";
            this.btnKhoiPhucSP.UseVisualStyleBackColor = true;
            this.btnKhoiPhucSP.Click += new System.EventHandler(this.btnKhoiPhucSP_Click);
            // 
            // dgvSP
            // 
            this.dgvSP.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dgvSP.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvSP.Location = new System.Drawing.Point(19, 15);
            this.dgvSP.Name = "dgvSP";
            this.dgvSP.Size = new System.Drawing.Size(698, 371);
            this.dgvSP.TabIndex = 20;
            // 
            // tabKH
            // 
            this.tabKH.BackColor = System.Drawing.Color.LavenderBlush;
            this.tabKH.Controls.Add(this.btnKhoiPhucKH);
            this.tabKH.Controls.Add(this.dgvKH);
            this.tabKH.Location = new System.Drawing.Point(4, 22);
            this.tabKH.Name = "tabKH";
            this.tabKH.Padding = new System.Windows.Forms.Padding(3);
            this.tabKH.Size = new System.Drawing.Size(741, 444);
            this.tabKH.TabIndex = 2;
            this.tabKH.Text = "Khách Hàng";
            // 
            // btnKhoiPhucKH
            // 
            this.btnKhoiPhucKH.Location = new System.Drawing.Point(602, 394);
            this.btnKhoiPhucKH.Name = "btnKhoiPhucKH";
            this.btnKhoiPhucKH.Size = new System.Drawing.Size(119, 42);
            this.btnKhoiPhucKH.TabIndex = 21;
            this.btnKhoiPhucKH.Text = "Khôi phục";
            this.btnKhoiPhucKH.UseVisualStyleBackColor = true;
            this.btnKhoiPhucKH.Click += new System.EventHandler(this.btnKhoiPhucKH_Click);
            // 
            // dgvKH
            // 
            this.dgvKH.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dgvKH.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvKH.Location = new System.Drawing.Point(16, 18);
            this.dgvKH.Name = "dgvKH";
            this.dgvKH.Size = new System.Drawing.Size(705, 370);
            this.dgvKH.TabIndex = 20;
            // 
            // tabHD
            // 
            this.tabHD.BackColor = System.Drawing.Color.LavenderBlush;
            this.tabHD.Controls.Add(this.btnKhoiPhucHD);
            this.tabHD.Controls.Add(this.dgvHD);
            this.tabHD.Location = new System.Drawing.Point(4, 22);
            this.tabHD.Name = "tabHD";
            this.tabHD.Padding = new System.Windows.Forms.Padding(3);
            this.tabHD.Size = new System.Drawing.Size(741, 444);
            this.tabHD.TabIndex = 4;
            this.tabHD.Text = "Hóa Đơn";
            // 
            // btnKhoiPhucHD
            // 
            this.btnKhoiPhucHD.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.btnKhoiPhucHD.Location = new System.Drawing.Point(597, 391);
            this.btnKhoiPhucHD.Name = "btnKhoiPhucHD";
            this.btnKhoiPhucHD.Size = new System.Drawing.Size(124, 45);
            this.btnKhoiPhucHD.TabIndex = 21;
            this.btnKhoiPhucHD.Text = "Khôi phục";
            this.btnKhoiPhucHD.UseVisualStyleBackColor = false;
            this.btnKhoiPhucHD.Click += new System.EventHandler(this.btnKhoiPhucHD_Click);
            // 
            // dgvHD
            // 
            this.dgvHD.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dgvHD.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvHD.Location = new System.Drawing.Point(18, 19);
            this.dgvHD.Name = "dgvHD";
            this.dgvHD.Size = new System.Drawing.Size(703, 366);
            this.dgvHD.TabIndex = 20;
            // 
            // tabCTHD
            // 
            this.tabCTHD.BackColor = System.Drawing.Color.LavenderBlush;
            this.tabCTHD.Controls.Add(this.btnKhoiPhucCTHD);
            this.tabCTHD.Controls.Add(this.dgvCTHD);
            this.tabCTHD.Location = new System.Drawing.Point(4, 22);
            this.tabCTHD.Name = "tabCTHD";
            this.tabCTHD.Padding = new System.Windows.Forms.Padding(3);
            this.tabCTHD.Size = new System.Drawing.Size(741, 444);
            this.tabCTHD.TabIndex = 6;
            this.tabCTHD.Text = "Chi tiết hóa đơn";
            // 
            // btnKhoiPhucCTHD
            // 
            this.btnKhoiPhucCTHD.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.btnKhoiPhucCTHD.Location = new System.Drawing.Point(599, 390);
            this.btnKhoiPhucCTHD.Name = "btnKhoiPhucCTHD";
            this.btnKhoiPhucCTHD.Size = new System.Drawing.Size(120, 46);
            this.btnKhoiPhucCTHD.TabIndex = 21;
            this.btnKhoiPhucCTHD.Text = "Khôi phục";
            this.btnKhoiPhucCTHD.UseVisualStyleBackColor = false;
            this.btnKhoiPhucCTHD.Click += new System.EventHandler(this.btnKhoiPhucCTHD_Click);
            // 
            // dgvCTHD
            // 
            this.dgvCTHD.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dgvCTHD.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvCTHD.Location = new System.Drawing.Point(16, 12);
            this.dgvCTHD.Name = "dgvCTHD";
            this.dgvCTHD.Size = new System.Drawing.Size(703, 372);
            this.dgvCTHD.TabIndex = 20;
            // 
            // tabTK
            // 
            this.tabTK.BackColor = System.Drawing.Color.LavenderBlush;
            this.tabTK.Controls.Add(this.btnLuu);
            this.tabTK.Controls.Add(this.tbxTenNV_TK);
            this.tabTK.Controls.Add(this.tbxTenTK);
            this.tabTK.Controls.Add(this.rdoQuanLy);
            this.tabTK.Controls.Add(this.rdoBanHang);
            this.tabTK.Controls.Add(this.label3);
            this.tabTK.Controls.Add(this.label2);
            this.tabTK.Controls.Add(this.label1);
            this.tabTK.Controls.Add(this.btnXoa);
            this.tabTK.Controls.Add(this.btnTaoMoi);
            this.tabTK.Controls.Add(this.btnHienThi);
            this.tabTK.Controls.Add(this.dgvTK);
            this.tabTK.Location = new System.Drawing.Point(4, 22);
            this.tabTK.Name = "tabTK";
            this.tabTK.Padding = new System.Windows.Forms.Padding(3);
            this.tabTK.Size = new System.Drawing.Size(741, 444);
            this.tabTK.TabIndex = 7;
            this.tabTK.Text = "Tài khoản";
            // 
            // tbxTenNV_TK
            // 
            this.tbxTenNV_TK.Location = new System.Drawing.Point(114, 47);
            this.tbxTenNV_TK.Name = "tbxTenNV_TK";
            this.tbxTenNV_TK.Size = new System.Drawing.Size(200, 20);
            this.tbxTenNV_TK.TabIndex = 34;
            // 
            // tbxTenTK
            // 
            this.tbxTenTK.Location = new System.Drawing.Point(114, 19);
            this.tbxTenTK.Name = "tbxTenTK";
            this.tbxTenTK.Size = new System.Drawing.Size(200, 20);
            this.tbxTenTK.TabIndex = 33;
            // 
            // rdoQuanLy
            // 
            this.rdoQuanLy.AutoSize = true;
            this.rdoQuanLy.Location = new System.Drawing.Point(253, 76);
            this.rdoQuanLy.Name = "rdoQuanLy";
            this.rdoQuanLy.Size = new System.Drawing.Size(61, 17);
            this.rdoQuanLy.TabIndex = 36;
            this.rdoQuanLy.TabStop = true;
            this.rdoQuanLy.Text = "Quản lý";
            this.rdoQuanLy.UseVisualStyleBackColor = true;
            // 
            // rdoBanHang
            // 
            this.rdoBanHang.AutoSize = true;
            this.rdoBanHang.Location = new System.Drawing.Point(114, 76);
            this.rdoBanHang.Name = "rdoBanHang";
            this.rdoBanHang.Size = new System.Drawing.Size(71, 17);
            this.rdoBanHang.TabIndex = 35;
            this.rdoBanHang.TabStop = true;
            this.rdoBanHang.Text = "Bán hàng";
            this.rdoBanHang.UseVisualStyleBackColor = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(15, 80);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(44, 13);
            this.label3.TabIndex = 31;
            this.label3.Text = "Vai Trò:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(13, 54);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(82, 13);
            this.label2.TabIndex = 30;
            this.label2.Text = "Tên Nhân Viên:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(15, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(80, 13);
            this.label1.TabIndex = 29;
            this.label1.Text = "Tên Tài khoản:";
            // 
            // btnXoa
            // 
            this.btnXoa.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.btnXoa.Location = new System.Drawing.Point(658, 264);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(75, 35);
            this.btnXoa.TabIndex = 28;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.UseVisualStyleBackColor = false;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnTaoMoi
            // 
            this.btnTaoMoi.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.btnTaoMoi.Location = new System.Drawing.Point(658, 158);
            this.btnTaoMoi.Name = "btnTaoMoi";
            this.btnTaoMoi.Size = new System.Drawing.Size(75, 35);
            this.btnTaoMoi.TabIndex = 26;
            this.btnTaoMoi.Text = "Tạo Mới";
            this.btnTaoMoi.UseVisualStyleBackColor = false;
            this.btnTaoMoi.Click += new System.EventHandler(this.btnTaoMoi_Click);
            // 
            // btnHienThi
            // 
            this.btnHienThi.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.btnHienThi.Location = new System.Drawing.Point(658, 105);
            this.btnHienThi.Name = "btnHienThi";
            this.btnHienThi.Size = new System.Drawing.Size(75, 35);
            this.btnHienThi.TabIndex = 25;
            this.btnHienThi.Text = "Hiển Thị";
            this.btnHienThi.UseVisualStyleBackColor = false;
            this.btnHienThi.Click += new System.EventHandler(this.btnHienThi_Click);
            // 
            // dgvTK
            // 
            this.dgvTK.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dgvTK.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTK.Location = new System.Drawing.Point(16, 105);
            this.dgvTK.Name = "dgvTK";
            this.dgvTK.Size = new System.Drawing.Size(629, 334);
            this.dgvTK.TabIndex = 22;
            this.dgvTK.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvTK_CellContentClick);
            // 
            // btnLuu
            // 
            this.btnLuu.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.btnLuu.Location = new System.Drawing.Point(658, 211);
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(75, 35);
            this.btnLuu.TabIndex = 37;
            this.btnLuu.Text = "Lưu";
            this.btnLuu.UseVisualStyleBackColor = false;
            this.btnLuu.Click += new System.EventHandler(this.btnLuu_Click);
            // 
            // frmAdmin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(756, 477);
            this.Controls.Add(this.tabControl1);
            this.Name = "frmAdmin";
            this.Text = "Admin";
            this.Load += new System.EventHandler(this.frmAdmin_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabNV.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvNV)).EndInit();
            this.tabSP.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvSP)).EndInit();
            this.tabKH.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvKH)).EndInit();
            this.tabHD.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvHD)).EndInit();
            this.tabCTHD.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvCTHD)).EndInit();
            this.tabTK.ResumeLayout(false);
            this.tabTK.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTK)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabNV;
        private System.Windows.Forms.Button btnKhoiPhucNV;
        private System.Windows.Forms.DataGridView dgvNV;
        private System.Windows.Forms.TabPage tabSP;
        private System.Windows.Forms.Button btnKhoiPhucSP;
        private System.Windows.Forms.DataGridView dgvSP;
        private System.Windows.Forms.TabPage tabKH;
        private System.Windows.Forms.Button btnKhoiPhucKH;
        private System.Windows.Forms.DataGridView dgvKH;
        private System.Windows.Forms.TabPage tabHD;
        private System.Windows.Forms.Button btnKhoiPhucHD;
        private System.Windows.Forms.DataGridView dgvHD;
        private System.Windows.Forms.TabPage tabCTHD;
        private System.Windows.Forms.Button btnKhoiPhucCTHD;
        private System.Windows.Forms.DataGridView dgvCTHD;
        private System.Windows.Forms.TabPage tabTK;
        private System.Windows.Forms.TextBox tbxTenNV_TK;
        private System.Windows.Forms.TextBox tbxTenTK;
        private System.Windows.Forms.RadioButton rdoQuanLy;
        private System.Windows.Forms.RadioButton rdoBanHang;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.Button btnTaoMoi;
        private System.Windows.Forms.Button btnHienThi;
        private System.Windows.Forms.DataGridView dgvTK;
        private System.Windows.Forms.Button btnLuu;
    }
}