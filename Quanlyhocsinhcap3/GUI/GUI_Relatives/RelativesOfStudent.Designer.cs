namespace Quanlyhocsinhcap3
{
    partial class RelativesOfStudent
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(RelativesOfStudent));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            this.panel_Item1 = new Quanlyhocsinhcap3.Panel_Item();
            this.panel_Item2 = new Quanlyhocsinhcap3.Panel_Item();
            this.label1 = new System.Windows.Forms.Label();
            this.btnSearch = new System.Windows.Forms.Button();
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label7 = new System.Windows.Forms.Label();
            this.dtgvRelatives = new System.Windows.Forms.DataGridView();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.btnSave2 = new System.Windows.Forms.Button();
            this.cbxRelatives2 = new System.Windows.Forms.ComboBox();
            this.txtPhone2 = new System.Windows.Forms.TextBox();
            this.txtName2 = new System.Windows.Forms.TextBox();
            this.txtJob2 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtAddress = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtDate = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtName = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.MaTN = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.STT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenTN = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CongViec = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SDT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.QuanHe = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel_Item1.SuspendLayout();
            this.panel_Item2.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgvRelatives)).BeginInit();
            this.groupBox3.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel_Item1
            // 
            this.panel_Item1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.panel_Item1.Controls.Add(this.panel_Item2);
            this.panel_Item1.Controls.Add(this.groupBox2);
            this.panel_Item1.Controls.Add(this.groupBox3);
            this.panel_Item1.Controls.Add(this.groupBox1);
            this.panel_Item1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel_Item1.Location = new System.Drawing.Point(0, 0);
            this.panel_Item1.Name = "panel_Item1";
            this.panel_Item1.Size = new System.Drawing.Size(932, 340);
            this.panel_Item1.TabIndex = 0;
            // 
            // panel_Item2
            // 
            this.panel_Item2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.panel_Item2.Controls.Add(this.label1);
            this.panel_Item2.Controls.Add(this.btnSearch);
            this.panel_Item2.Controls.Add(this.txtSearch);
            this.panel_Item2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel_Item2.Location = new System.Drawing.Point(0, 0);
            this.panel_Item2.Name = "panel_Item2";
            this.panel_Item2.Size = new System.Drawing.Size(932, 50);
            this.panel_Item2.TabIndex = 23;
            this.panel_Item2.MouseEnter += new System.EventHandler(this.panel_Item2_MouseEnter);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(41)))), ((int)(((byte)(57)))), ((int)(((byte)(85)))));
            this.label1.Location = new System.Drawing.Point(4, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(197, 22);
            this.label1.TabIndex = 0;
            this.label1.Text = "Thông tin thân nhân";
            // 
            // btnSearch
            // 
            this.btnSearch.BackColor = System.Drawing.Color.White;
            this.btnSearch.FlatAppearance.BorderSize = 0;
            this.btnSearch.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSearch.Image = ((System.Drawing.Image)(resources.GetObject("btnSearch.Image")));
            this.btnSearch.Location = new System.Drawing.Point(897, 4);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(20, 19);
            this.btnSearch.TabIndex = 17;
            this.btnSearch.UseVisualStyleBackColor = false;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // txtSearch
            // 
            this.txtSearch.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSearch.Location = new System.Drawing.Point(785, 3);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(133, 21);
            this.txtSearch.TabIndex = 16;
            this.txtSearch.Text = "MSSV....";
            this.txtSearch.Click += new System.EventHandler(this.txtSearch_Click);
            this.txtSearch.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtSearch_KeyDown);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.dtgvRelatives);
            this.groupBox2.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(11, 208);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(913, 129);
            this.groupBox2.TabIndex = 22;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Thông tin thân nhân";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.ForeColor = System.Drawing.Color.Red;
            this.label7.Location = new System.Drawing.Point(778, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(124, 16);
            this.label7.TabIndex = 24;
            this.label7.Text = "F4 : Sửa , F8 : Xóa ";
            // 
            // dtgvRelatives
            // 
            this.dtgvRelatives.AllowUserToAddRows = false;
            this.dtgvRelatives.AllowUserToDeleteRows = false;
            this.dtgvRelatives.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dtgvRelatives.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.dtgvRelatives.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgvRelatives.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaTN,
            this.STT,
            this.TenTN,
            this.CongViec,
            this.SDT,
            this.QuanHe});
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(246)))), ((int)(((byte)(252)))), ((int)(((byte)(199)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dtgvRelatives.DefaultCellStyle = dataGridViewCellStyle1;
            this.dtgvRelatives.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dtgvRelatives.Location = new System.Drawing.Point(3, 18);
            this.dtgvRelatives.Name = "dtgvRelatives";
            this.dtgvRelatives.ReadOnly = true;
            this.dtgvRelatives.Size = new System.Drawing.Size(907, 108);
            this.dtgvRelatives.TabIndex = 19;
            this.dtgvRelatives.PreviewKeyDown += new System.Windows.Forms.PreviewKeyDownEventHandler(this.dtgvRelatives_PreviewKeyDown);
            // 
            // groupBox3
            // 
            this.groupBox3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.groupBox3.Controls.Add(this.btnSave2);
            this.groupBox3.Controls.Add(this.cbxRelatives2);
            this.groupBox3.Controls.Add(this.txtPhone2);
            this.groupBox3.Controls.Add(this.txtName2);
            this.groupBox3.Controls.Add(this.txtJob2);
            this.groupBox3.Controls.Add(this.label3);
            this.groupBox3.Controls.Add(this.label6);
            this.groupBox3.Controls.Add(this.label8);
            this.groupBox3.Controls.Add(this.label10);
            this.groupBox3.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox3.Location = new System.Drawing.Point(11, 132);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(913, 70);
            this.groupBox3.TabIndex = 18;
            this.groupBox3.TabStop = false;
            // 
            // btnSave2
            // 
            this.btnSave2.Location = new System.Drawing.Point(760, 23);
            this.btnSave2.Name = "btnSave2";
            this.btnSave2.Size = new System.Drawing.Size(97, 23);
            this.btnSave2.TabIndex = 3;
            this.btnSave2.Text = "Thêm";
            this.btnSave2.UseVisualStyleBackColor = true;
            this.btnSave2.Click += new System.EventHandler(this.btnSave2_Click);
            // 
            // cbxRelatives2
            // 
            this.cbxRelatives2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxRelatives2.FormattingEnabled = true;
            this.cbxRelatives2.Items.AddRange(new object[] {
            "Cha",
            "Mẹ",
            "Cô",
            "Chú",
            "Ông",
            "Bà",
            "Anh",
            "Chị"});
            this.cbxRelatives2.Location = new System.Drawing.Point(629, 21);
            this.cbxRelatives2.Name = "cbxRelatives2";
            this.cbxRelatives2.Size = new System.Drawing.Size(112, 24);
            this.cbxRelatives2.TabIndex = 2;
            // 
            // txtPhone2
            // 
            this.txtPhone2.Location = new System.Drawing.Point(439, 23);
            this.txtPhone2.Name = "txtPhone2";
            this.txtPhone2.Size = new System.Drawing.Size(110, 22);
            this.txtPhone2.TabIndex = 1;
            // 
            // txtName2
            // 
            this.txtName2.Location = new System.Drawing.Point(76, 23);
            this.txtName2.Name = "txtName2";
            this.txtName2.Size = new System.Drawing.Size(110, 22);
            this.txtName2.TabIndex = 1;
            // 
            // txtJob2
            // 
            this.txtJob2.Location = new System.Drawing.Point(269, 23);
            this.txtJob2.Name = "txtJob2";
            this.txtJob2.Size = new System.Drawing.Size(110, 22);
            this.txtJob2.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(560, 26);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(61, 16);
            this.label3.TabIndex = 0;
            this.label3.Text = "Quan hệ:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(393, 26);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(36, 16);
            this.label6.TabIndex = 0;
            this.label6.Text = "SDT:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(195, 26);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(68, 16);
            this.label8.TabIndex = 0;
            this.label8.Text = "Công việc:";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(18, 26);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(53, 16);
            this.label10.TabIndex = 0;
            this.label10.Text = "Họ Tên:";
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.groupBox1.Controls.Add(this.txtAddress);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.txtDate);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtName);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(11, 56);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(913, 70);
            this.groupBox1.TabIndex = 18;
            this.groupBox1.TabStop = false;
            // 
            // txtAddress
            // 
            this.txtAddress.AutoSize = true;
            this.txtAddress.Location = new System.Drawing.Point(701, 36);
            this.txtAddress.Name = "txtAddress";
            this.txtAddress.Size = new System.Drawing.Size(56, 16);
            this.txtAddress.TabIndex = 0;
            this.txtAddress.Text = "Address";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(631, 36);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(52, 16);
            this.label5.TabIndex = 0;
            this.label5.Text = "Địa chỉ:";
            // 
            // txtDate
            // 
            this.txtDate.AutoSize = true;
            this.txtDate.Location = new System.Drawing.Point(433, 36);
            this.txtDate.Name = "txtDate";
            this.txtDate.Size = new System.Drawing.Size(36, 16);
            this.txtDate.TabIndex = 0;
            this.txtDate.Text = "DOD";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(325, 36);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(70, 16);
            this.label4.TabIndex = 0;
            this.label4.Text = "Ngày sinh:";
            // 
            // txtName
            // 
            this.txtName.AutoSize = true;
            this.txtName.Location = new System.Drawing.Point(121, 36);
            this.txtName.Name = "txtName";
            this.txtName.Size = new System.Drawing.Size(42, 16);
            this.txtName.TabIndex = 0;
            this.txtName.Text = "Name";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(18, 36);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(86, 16);
            this.label2.TabIndex = 0;
            this.label2.Text = "Tên học sinh:";
            // 
            // MaTN
            // 
            this.MaTN.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.MaTN.DataPropertyName = "MaTN";
            this.MaTN.HeaderText = "MaTN";
            this.MaTN.Name = "MaTN";
            this.MaTN.ReadOnly = true;
            this.MaTN.Width = 5;
            // 
            // STT
            // 
            this.STT.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.ColumnHeader;
            this.STT.DataPropertyName = "STT";
            this.STT.HeaderText = "STT";
            this.STT.Name = "STT";
            this.STT.ReadOnly = true;
            this.STT.Width = 56;
            // 
            // TenTN
            // 
            this.TenTN.DataPropertyName = "TenTN";
            this.TenTN.HeaderText = "Tên thân nhân";
            this.TenTN.Name = "TenTN";
            this.TenTN.ReadOnly = true;
            // 
            // CongViec
            // 
            this.CongViec.DataPropertyName = "CongViec";
            this.CongViec.HeaderText = "Công việc";
            this.CongViec.Name = "CongViec";
            this.CongViec.ReadOnly = true;
            // 
            // SDT
            // 
            this.SDT.DataPropertyName = "SDT";
            this.SDT.HeaderText = "SĐT";
            this.SDT.Name = "SDT";
            this.SDT.ReadOnly = true;
            // 
            // QuanHe
            // 
            this.QuanHe.DataPropertyName = "QuanHe";
            this.QuanHe.HeaderText = "Quan hệ";
            this.QuanHe.Name = "QuanHe";
            this.QuanHe.ReadOnly = true;
            // 
            // RelativesOfStudent
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panel_Item1);
            this.Name = "RelativesOfStudent";
            this.Size = new System.Drawing.Size(932, 340);
            this.Load += new System.EventHandler(this.RelativesOfStudent_Load);
            this.panel_Item1.ResumeLayout(false);
            this.panel_Item2.ResumeLayout(false);
            this.panel_Item2.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgvRelatives)).EndInit();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private Panel_Item panel_Item1;
        private System.Windows.Forms.DataGridView dtgvRelatives;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.TextBox txtSearch;
        private System.Windows.Forms.Label txtAddress;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label txtDate;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label txtName;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox groupBox2;
        private Panel_Item panel_Item2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnSave2;
        private System.Windows.Forms.ComboBox cbxRelatives2;
        private System.Windows.Forms.TextBox txtPhone2;
        private System.Windows.Forms.TextBox txtName2;
        private System.Windows.Forms.TextBox txtJob2;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaTN;
        private System.Windows.Forms.DataGridViewTextBoxColumn STT;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenTN;
        private System.Windows.Forms.DataGridViewTextBoxColumn CongViec;
        private System.Windows.Forms.DataGridViewTextBoxColumn SDT;
        private System.Windows.Forms.DataGridViewTextBoxColumn QuanHe;
    }
}
