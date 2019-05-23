namespace QUANLYBANGIAY
{
    partial class frmPhanQuyen
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
            this.btnQuanLy = new System.Windows.Forms.Button();
            this.btnQuanTri = new System.Windows.Forms.Button();
            this.btnThoat = new System.Windows.Forms.Button();
            this.btnBaoMat = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnQuanLy
            // 
            this.btnQuanLy.BackColor = System.Drawing.SystemColors.Control;
            this.btnQuanLy.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnQuanLy.Location = new System.Drawing.Point(50, 60);
            this.btnQuanLy.Name = "btnQuanLy";
            this.btnQuanLy.Size = new System.Drawing.Size(124, 36);
            this.btnQuanLy.TabIndex = 0;
            this.btnQuanLy.Text = "Quản Lý";
            this.btnQuanLy.UseVisualStyleBackColor = false;
            this.btnQuanLy.Click += new System.EventHandler(this.btnQuanLy_Click_1);
            // 
            // btnQuanTri
            // 
            this.btnQuanTri.BackColor = System.Drawing.SystemColors.Control;
            this.btnQuanTri.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnQuanTri.Location = new System.Drawing.Point(233, 61);
            this.btnQuanTri.Name = "btnQuanTri";
            this.btnQuanTri.Size = new System.Drawing.Size(124, 35);
            this.btnQuanTri.TabIndex = 1;
            this.btnQuanTri.Text = "Quản trị";
            this.btnQuanTri.UseVisualStyleBackColor = false;
            this.btnQuanTri.Click += new System.EventHandler(this.btnQuanTri_Click_1);
            // 
            // btnThoat
            // 
            this.btnThoat.BackColor = System.Drawing.Color.Pink;
            this.btnThoat.ForeColor = System.Drawing.SystemColors.ControlText;
            this.btnThoat.Location = new System.Drawing.Point(282, 132);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(75, 28);
            this.btnThoat.TabIndex = 2;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = false;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnBaoMat
            // 
            this.btnBaoMat.BackColor = System.Drawing.Color.Pink;
            this.btnBaoMat.Location = new System.Drawing.Point(282, 161);
            this.btnBaoMat.Name = "btnBaoMat";
            this.btnBaoMat.Size = new System.Drawing.Size(75, 28);
            this.btnBaoMat.TabIndex = 3;
            this.btnBaoMat.Text = "Bảo mật??";
            this.btnBaoMat.UseVisualStyleBackColor = false;
            this.btnBaoMat.Click += new System.EventHandler(this.btnBaoMat_Click);
            // 
            // frmPhanQuyen
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::QUANLYBANGIAY.Properties.Resources.g5;
            this.ClientSize = new System.Drawing.Size(385, 251);
            this.Controls.Add(this.btnBaoMat);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.btnQuanTri);
            this.Controls.Add(this.btnQuanLy);
            this.Name = "frmPhanQuyen";
            this.Text = "PhanQuyen";
            this.Load += new System.EventHandler(this.frmPhanQuyen_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnQuanLy;
        private System.Windows.Forms.Button btnQuanTri;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Button btnBaoMat;
    }
}