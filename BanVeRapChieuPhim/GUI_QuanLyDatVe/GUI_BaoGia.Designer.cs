﻿namespace BanVeRapChieuPhim.GUI_QuanLyDatVe
{
    partial class GUI_BaoGia
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
            this.label2 = new System.Windows.Forms.Label();
            this.dgvGia = new System.Windows.Forms.DataGridView();
            this.DinhDang = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.LoaiGhe = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgayChieu = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.GioChieu = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DonGia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnThoat = new System.Windows.Forms.Button();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btnSua = new System.Windows.Forms.Button();
            this.btnThem = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvGia)).BeginInit();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label2.ForeColor = System.Drawing.Color.Navy;
            this.label2.Location = new System.Drawing.Point(536, 22);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(192, 37);
            this.label2.TabIndex = 68;
            this.label2.Text = "QUẢN LÝ GIÁ";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.label2.UseCompatibleTextRendering = true;
            // 
            // dgvGia
            // 
            this.dgvGia.AllowUserToAddRows = false;
            this.dgvGia.AllowUserToDeleteRows = false;
            this.dgvGia.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.dgvGia.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvGia.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvGia.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.DinhDang,
            this.LoaiGhe,
            this.NgayChieu,
            this.GioChieu,
            this.DonGia});
            this.dgvGia.Location = new System.Drawing.Point(1, 152);
            this.dgvGia.Name = "dgvGia";
            this.dgvGia.ReadOnly = true;
            this.dgvGia.Size = new System.Drawing.Size(1254, 209);
            this.dgvGia.TabIndex = 62;
            // 
            // DinhDang
            // 
            this.DinhDang.DataPropertyName = "DinhDang";
            this.DinhDang.HeaderText = "Định dạng";
            this.DinhDang.Name = "DinhDang";
            this.DinhDang.ReadOnly = true;
            // 
            // LoaiGhe
            // 
            this.LoaiGhe.DataPropertyName = "LoaiGhe";
            this.LoaiGhe.HeaderText = "Loại ghế";
            this.LoaiGhe.Name = "LoaiGhe";
            this.LoaiGhe.ReadOnly = true;
            // 
            // NgayChieu
            // 
            this.NgayChieu.DataPropertyName = "NgayChieu";
            this.NgayChieu.HeaderText = "Ngày chiếu";
            this.NgayChieu.Name = "NgayChieu";
            this.NgayChieu.ReadOnly = true;
            // 
            // GioChieu
            // 
            this.GioChieu.DataPropertyName = "GioiChieu";
            this.GioChieu.HeaderText = "Giờ chiếu";
            this.GioChieu.Name = "GioChieu";
            this.GioChieu.ReadOnly = true;
            // 
            // DonGia
            // 
            this.DonGia.DataPropertyName = "DonGia";
            this.DonGia.HeaderText = "Giá";
            this.DonGia.Name = "DonGia";
            this.DonGia.ReadOnly = true;
            // 
            // btnThoat
            // 
            this.btnThoat.AutoSize = true;
            this.btnThoat.Location = new System.Drawing.Point(765, 399);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(90, 30);
            this.btnThoat.TabIndex = 77;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnXoa
            // 
            this.btnXoa.AutoSize = true;
            this.btnXoa.Location = new System.Drawing.Point(645, 399);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(90, 30);
            this.btnXoa.TabIndex = 76;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.UseVisualStyleBackColor = true;
            // 
            // btnSua
            // 
            this.btnSua.AutoSize = true;
            this.btnSua.Location = new System.Drawing.Point(525, 399);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(90, 30);
            this.btnSua.TabIndex = 75;
            this.btnSua.Text = "Sửa";
            this.btnSua.UseVisualStyleBackColor = true;
            // 
            // btnThem
            // 
            this.btnThem.AutoSize = true;
            this.btnThem.Location = new System.Drawing.Point(405, 399);
            this.btnThem.Name = "btnThem";
            this.btnThem.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.btnThem.Size = new System.Drawing.Size(90, 30);
            this.btnThem.TabIndex = 74;
            this.btnThem.Text = "Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            // 
            // GUI_BaoGia
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1259, 450);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.btnXoa);
            this.Controls.Add(this.btnSua);
            this.Controls.Add(this.btnThem);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dgvGia);
            this.Name = "GUI_BaoGia";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "GUI_Gia";
            ((System.ComponentModel.ISupportInitialize)(this.dgvGia)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dgvGia;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.Button btnSua;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.DataGridViewTextBoxColumn DinhDang;
        private System.Windows.Forms.DataGridViewTextBoxColumn LoaiGhe;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgayChieu;
        private System.Windows.Forms.DataGridViewTextBoxColumn GioChieu;
        private System.Windows.Forms.DataGridViewTextBoxColumn DonGia;
    }
}