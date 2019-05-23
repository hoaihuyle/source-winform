namespace QUANLYBANGIAY
{
    partial class frmDoiMatKhau
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
            this.btnThayDoi = new System.Windows.Forms.Button();
            this.btnHủy = new System.Windows.Forms.Button();
            this.btnThoat = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.tbxMKCu = new System.Windows.Forms.TextBox();
            this.tbxMKMoi = new System.Windows.Forms.TextBox();
            this.tbxXacNhanMK = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // btnThayDoi
            // 
            this.btnThayDoi.Location = new System.Drawing.Point(71, 186);
            this.btnThayDoi.Name = "btnThayDoi";
            this.btnThayDoi.Size = new System.Drawing.Size(75, 23);
            this.btnThayDoi.TabIndex = 0;
            this.btnThayDoi.Text = "Thay đổi";
            this.btnThayDoi.UseVisualStyleBackColor = true;
            this.btnThayDoi.Click += new System.EventHandler(this.btnThayDoi_Click_1);
            // 
            // btnHủy
            // 
            this.btnHủy.Location = new System.Drawing.Point(182, 186);
            this.btnHủy.Name = "btnHủy";
            this.btnHủy.Size = new System.Drawing.Size(75, 23);
            this.btnHủy.TabIndex = 1;
            this.btnHủy.Text = "Hủy";
            this.btnHủy.UseVisualStyleBackColor = true;
            this.btnHủy.Click += new System.EventHandler(this.btnHủy_Click);
            // 
            // btnThoat
            // 
            this.btnThoat.Location = new System.Drawing.Point(302, 186);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(75, 23);
            this.btnThoat.TabIndex = 2;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click_1);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(43, 31);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(70, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "Mật khẩu cũ:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(43, 70);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(74, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Mật khẩu mới:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(43, 116);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(103, 13);
            this.label3.TabIndex = 5;
            this.label3.Text = "Xác nhận mật khẩu:";
            // 
            // tbxMKCu
            // 
            this.tbxMKCu.Location = new System.Drawing.Point(144, 31);
            this.tbxMKCu.Name = "tbxMKCu";
            this.tbxMKCu.Size = new System.Drawing.Size(167, 20);
            this.tbxMKCu.TabIndex = 6;
            // 
            // tbxMKMoi
            // 
            this.tbxMKMoi.Location = new System.Drawing.Point(144, 67);
            this.tbxMKMoi.Name = "tbxMKMoi";
            this.tbxMKMoi.Size = new System.Drawing.Size(167, 20);
            this.tbxMKMoi.TabIndex = 7;
            // 
            // tbxXacNhanMK
            // 
            this.tbxXacNhanMK.Location = new System.Drawing.Point(144, 108);
            this.tbxXacNhanMK.Name = "tbxXacNhanMK";
            this.tbxXacNhanMK.Size = new System.Drawing.Size(167, 20);
            this.tbxXacNhanMK.TabIndex = 8;
            // 
            // frmDoiMatKhau
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(389, 261);
            this.Controls.Add(this.tbxXacNhanMK);
            this.Controls.Add(this.tbxMKMoi);
            this.Controls.Add(this.tbxMKCu);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.btnHủy);
            this.Controls.Add(this.btnThayDoi);
            this.Name = "frmDoiMatKhau";
            this.Text = "frmDoiMatKhau";
            this.Load += new System.EventHandler(this.frmDoiMatKhau_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnThayDoi;
        private System.Windows.Forms.Button btnHủy;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox tbxMKCu;
        private System.Windows.Forms.TextBox tbxMKMoi;
        private System.Windows.Forms.TextBox tbxXacNhanMK;
    }
}