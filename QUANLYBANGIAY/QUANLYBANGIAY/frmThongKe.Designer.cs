namespace QUANLYBANGIAY
{
    partial class frmThongKe
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
            this.dgvTK = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.dtpBD = new System.Windows.Forms.DateTimePicker();
            this.dtpKT = new System.Windows.Forms.DateTimePicker();
            this.tbxTT = new System.Windows.Forms.TextBox();
            this.btnHienThi = new System.Windows.Forms.Button();
            this.btnIn = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTK)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvTK
            // 
            this.dgvTK.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTK.Location = new System.Drawing.Point(12, 75);
            this.dgvTK.Name = "dgvTK";
            this.dgvTK.Size = new System.Drawing.Size(563, 286);
            this.dgvTK.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 18);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(94, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Thời gian bắt đầu:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(338, 18);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(55, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Tổng tiền:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 48);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(96, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "Thời gian kết thúc:";
            // 
            // dtpBD
            // 
            this.dtpBD.Location = new System.Drawing.Point(112, 12);
            this.dtpBD.Name = "dtpBD";
            this.dtpBD.Size = new System.Drawing.Size(200, 20);
            this.dtpBD.TabIndex = 4;
            // 
            // dtpKT
            // 
            this.dtpKT.Location = new System.Drawing.Point(112, 41);
            this.dtpKT.Name = "dtpKT";
            this.dtpKT.Size = new System.Drawing.Size(200, 20);
            this.dtpKT.TabIndex = 5;
            // 
            // tbxTT
            // 
            this.tbxTT.Location = new System.Drawing.Point(399, 12);
            this.tbxTT.Name = "tbxTT";
            this.tbxTT.Size = new System.Drawing.Size(176, 20);
            this.tbxTT.TabIndex = 6;
            // 
            // btnHienThi
            // 
            this.btnHienThi.Location = new System.Drawing.Point(399, 46);
            this.btnHienThi.Name = "btnHienThi";
            this.btnHienThi.Size = new System.Drawing.Size(75, 23);
            this.btnHienThi.TabIndex = 7;
            this.btnHienThi.Text = "Hiển thị";
            this.btnHienThi.UseVisualStyleBackColor = true;
            this.btnHienThi.Click += new System.EventHandler(this.btnHienThi_Click);
            // 
            // btnIn
            // 
            this.btnIn.Location = new System.Drawing.Point(500, 46);
            this.btnIn.Name = "btnIn";
            this.btnIn.Size = new System.Drawing.Size(75, 23);
            this.btnIn.TabIndex = 8;
            this.btnIn.Text = "In";
            this.btnIn.UseVisualStyleBackColor = true;
            this.btnIn.Click += new System.EventHandler(this.btnIn_Click);
            // 
            // frmThongKe
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(587, 373);
            this.Controls.Add(this.btnIn);
            this.Controls.Add(this.btnHienThi);
            this.Controls.Add(this.tbxTT);
            this.Controls.Add(this.dtpKT);
            this.Controls.Add(this.dtpBD);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dgvTK);
            this.Name = "frmThongKe";
            this.Text = "ThongKe";
            ((System.ComponentModel.ISupportInitialize)(this.dgvTK)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvTK;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker dtpBD;
        private System.Windows.Forms.DateTimePicker dtpKT;
        private System.Windows.Forms.TextBox tbxTT;
        private System.Windows.Forms.Button btnHienThi;
        private System.Windows.Forms.Button btnIn;
    }
}