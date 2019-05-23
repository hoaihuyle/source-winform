namespace QUANLYBANGIAY
{
    partial class frmDangNhap
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
            this.label1 = new System.Windows.Forms.Label();
            this.tbxDangNhap = new System.Windows.Forms.TextBox();
            this.tbxMatKhau = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.btnDangNhap = new System.Windows.Forms.Button();
            this.btnThoatDN = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.SystemColors.Control;
            this.label1.Font = new System.Drawing.Font("Arial Rounded MT Bold", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(45, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(355, 40);
            this.label1.TabIndex = 0;
            this.label1.Text = "QUẢN LÝ BÁN GIÀY";
            // 
            // tbxDangNhap
            // 
            this.tbxDangNhap.Location = new System.Drawing.Point(181, 100);
            this.tbxDangNhap.Name = "tbxDangNhap";
            this.tbxDangNhap.Size = new System.Drawing.Size(216, 20);
            this.tbxDangNhap.TabIndex = 1;
            // 
            // tbxMatKhau
            // 
            this.tbxMatKhau.Location = new System.Drawing.Point(181, 140);
            this.tbxMatKhau.Name = "tbxMatKhau";
            this.tbxMatKhau.PasswordChar = '*';
            this.tbxMatKhau.Size = new System.Drawing.Size(216, 20);
            this.tbxMatKhau.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.SystemColors.Control;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.Black;
            this.label2.Location = new System.Drawing.Point(15, 100);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(141, 20);
            this.label2.TabIndex = 3;
            this.label2.Text = "Tên Đăng nhập:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.Black;
            this.label3.Location = new System.Drawing.Point(62, 140);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(94, 20);
            this.label3.TabIndex = 4;
            this.label3.Text = "Mật Khẩu:";
            // 
            // btnDangNhap
            // 
            this.btnDangNhap.BackColor = System.Drawing.Color.Pink;
            this.btnDangNhap.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDangNhap.Location = new System.Drawing.Point(181, 186);
            this.btnDangNhap.Name = "btnDangNhap";
            this.btnDangNhap.Size = new System.Drawing.Size(93, 33);
            this.btnDangNhap.TabIndex = 5;
            this.btnDangNhap.Text = "Đăng nhập";
            this.btnDangNhap.UseVisualStyleBackColor = false;
            this.btnDangNhap.Click += new System.EventHandler(this.btnDangNhap_Click);
            // 
            // btnThoatDN
            // 
            this.btnThoatDN.BackColor = System.Drawing.Color.Pink;
            this.btnThoatDN.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThoatDN.Location = new System.Drawing.Point(304, 186);
            this.btnThoatDN.Name = "btnThoatDN";
            this.btnThoatDN.Size = new System.Drawing.Size(93, 33);
            this.btnThoatDN.TabIndex = 6;
            this.btnThoatDN.Text = "Thoát";
            this.btnThoatDN.UseVisualStyleBackColor = false;
            this.btnThoatDN.Click += new System.EventHandler(this.btnThoatDN_Click);
            // 
            // frmDangNhap
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::QUANLYBANGIAY.Properties.Resources.g5;
            this.ClientSize = new System.Drawing.Size(463, 328);
            this.Controls.Add(this.btnThoatDN);
            this.Controls.Add(this.btnDangNhap);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.tbxMatKhau);
            this.Controls.Add(this.tbxDangNhap);
            this.Controls.Add(this.label1);
            this.Name = "frmDangNhap";
            this.Text = "Đăng nhập";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox tbxDangNhap;
        private System.Windows.Forms.TextBox tbxMatKhau;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnDangNhap;
        private System.Windows.Forms.Button btnThoatDN;
    }
}

