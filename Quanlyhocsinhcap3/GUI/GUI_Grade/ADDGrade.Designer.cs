namespace Quanlyhocsinhcap3.GUI.GUI_Grade
{
    partial class ADDGrade
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            this.panel_Item1 = new Quanlyhocsinhcap3.Panel_Item();
            this.panel_Item2 = new Quanlyhocsinhcap3.Panel_Item();
            this.label7 = new System.Windows.Forms.Label();
            this.cbxGradeLevel = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.cbxYear = new System.Windows.Forms.ComboBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label6 = new System.Windows.Forms.Label();
            this.dtgvGrade = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtNameGrade = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnSave = new System.Windows.Forms.Button();
            this.cbxTeacher = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.MaLH = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.STT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenLH = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenKH = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenNH = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenGV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel_Item1.SuspendLayout();
            this.panel_Item2.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgvGrade)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel_Item1
            // 
            this.panel_Item1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.panel_Item1.Controls.Add(this.panel_Item2);
            this.panel_Item1.Controls.Add(this.groupBox2);
            this.panel_Item1.Controls.Add(this.groupBox1);
            this.panel_Item1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel_Item1.Location = new System.Drawing.Point(0, 0);
            this.panel_Item1.Name = "panel_Item1";
            this.panel_Item1.Size = new System.Drawing.Size(932, 340);
            this.panel_Item1.TabIndex = 1;
            // 
            // panel_Item2
            // 
            this.panel_Item2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.panel_Item2.Controls.Add(this.label7);
            this.panel_Item2.Controls.Add(this.cbxGradeLevel);
            this.panel_Item2.Controls.Add(this.label1);
            this.panel_Item2.Controls.Add(this.label5);
            this.panel_Item2.Controls.Add(this.cbxYear);
            this.panel_Item2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel_Item2.Location = new System.Drawing.Point(0, 0);
            this.panel_Item2.Name = "panel_Item2";
            this.panel_Item2.Size = new System.Drawing.Size(932, 50);
            this.panel_Item2.TabIndex = 41;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(41)))), ((int)(((byte)(57)))), ((int)(((byte)(85)))));
            this.label7.Location = new System.Drawing.Point(5, 11);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(175, 22);
            this.label7.TabIndex = 0;
            this.label7.Text = "Thông tin lớp học";
            // 
            // cbxGradeLevel
            // 
            this.cbxGradeLevel.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxGradeLevel.FormattingEnabled = true;
            this.cbxGradeLevel.Location = new System.Drawing.Point(821, 14);
            this.cbxGradeLevel.Name = "cbxGradeLevel";
            this.cbxGradeLevel.Size = new System.Drawing.Size(100, 21);
            this.cbxGradeLevel.TabIndex = 2;
            this.cbxGradeLevel.TextChanged += new System.EventHandler(this.cbxGradeLevel_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(616, 17);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(50, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Năm học";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(786, 17);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(28, 13);
            this.label5.TabIndex = 3;
            this.label5.Text = "Khối";
            // 
            // cbxYear
            // 
            this.cbxYear.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxYear.FormattingEnabled = true;
            this.cbxYear.Location = new System.Drawing.Point(671, 14);
            this.cbxYear.Name = "cbxYear";
            this.cbxYear.Size = new System.Drawing.Size(100, 21);
            this.cbxYear.TabIndex = 1;
            this.cbxYear.TextChanged += new System.EventHandler(this.cbxYear_TextChanged);
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.dtgvGrade);
            this.groupBox2.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(11, 132);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(913, 205);
            this.groupBox2.TabIndex = 9;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Lớp học";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.Color.Red;
            this.label6.Location = new System.Drawing.Point(850, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(60, 16);
            this.label6.TabIndex = 16;
            this.label6.Text = "F8 : Xóa ";
            // 
            // dtgvGrade
            // 
            this.dtgvGrade.AllowUserToAddRows = false;
            this.dtgvGrade.AllowUserToDeleteRows = false;
            this.dtgvGrade.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dtgvGrade.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.dtgvGrade.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgvGrade.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaLH,
            this.STT,
            this.TenLH,
            this.TenKH,
            this.TenNH,
            this.TenGV});
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(246)))), ((int)(((byte)(252)))), ((int)(((byte)(199)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dtgvGrade.DefaultCellStyle = dataGridViewCellStyle1;
            this.dtgvGrade.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dtgvGrade.Location = new System.Drawing.Point(3, 18);
            this.dtgvGrade.Name = "dtgvGrade";
            this.dtgvGrade.ReadOnly = true;
            this.dtgvGrade.Size = new System.Drawing.Size(907, 184);
            this.dtgvGrade.TabIndex = 1;
            this.dtgvGrade.PreviewKeyDown += new System.Windows.Forms.PreviewKeyDownEventHandler(this.dtgvGrade_PreviewKeyDown);
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.groupBox1.Controls.Add(this.txtNameGrade);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.btnSave);
            this.groupBox1.Controls.Add(this.cbxTeacher);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(11, 56);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(913, 70);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = " ";
            // 
            // txtNameGrade
            // 
            this.txtNameGrade.Location = new System.Drawing.Point(410, 33);
            this.txtNameGrade.Name = "txtNameGrade";
            this.txtNameGrade.Size = new System.Drawing.Size(100, 22);
            this.txtNameGrade.TabIndex = 6;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(331, 36);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(52, 16);
            this.label2.TabIndex = 3;
            this.label2.Text = "Tên lớp";
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(553, 32);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(87, 23);
            this.btnSave.TabIndex = 7;
            this.btnSave.Text = "Thêm";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // cbxTeacher
            // 
            this.cbxTeacher.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxTeacher.FormattingEnabled = true;
            this.cbxTeacher.Location = new System.Drawing.Point(153, 32);
            this.cbxTeacher.Name = "cbxTeacher";
            this.cbxTeacher.Size = new System.Drawing.Size(150, 24);
            this.cbxTeacher.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(19, 36);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(125, 16);
            this.label3.TabIndex = 0;
            this.label3.Text = "Giáo viên chủ nhiệm";
            // 
            // MaLH
            // 
            this.MaLH.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.MaLH.DataPropertyName = "MaLH";
            this.MaLH.HeaderText = "MaLH";
            this.MaLH.Name = "MaLH";
            this.MaLH.ReadOnly = true;
            this.MaLH.Width = 5;
            // 
            // STT
            // 
            this.STT.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.STT.DataPropertyName = "STT";
            this.STT.HeaderText = "STT";
            this.STT.Name = "STT";
            this.STT.ReadOnly = true;
            this.STT.Width = 50;
            // 
            // TenLH
            // 
            this.TenLH.DataPropertyName = "TenLH";
            this.TenLH.HeaderText = "Lớp Học";
            this.TenLH.Name = "TenLH";
            this.TenLH.ReadOnly = true;
            // 
            // TenKH
            // 
            this.TenKH.DataPropertyName = "TenKH";
            this.TenKH.HeaderText = "Khối Học";
            this.TenKH.Name = "TenKH";
            this.TenKH.ReadOnly = true;
            // 
            // TenNH
            // 
            this.TenNH.DataPropertyName = "TenNH";
            this.TenNH.HeaderText = "Năm Học";
            this.TenNH.Name = "TenNH";
            this.TenNH.ReadOnly = true;
            // 
            // TenGV
            // 
            this.TenGV.DataPropertyName = "TenGV";
            this.TenGV.HeaderText = "Giáo Viên Chủ Nhiệm";
            this.TenGV.Name = "TenGV";
            this.TenGV.ReadOnly = true;
            // 
            // ADDGrade
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panel_Item1);
            this.Name = "ADDGrade";
            this.Size = new System.Drawing.Size(932, 340);
            this.Load += new System.EventHandler(this.ADDGrade_Load);
            this.panel_Item1.ResumeLayout(false);
            this.panel_Item2.ResumeLayout(false);
            this.panel_Item2.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgvGrade)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ComboBox cbxGradeLevel;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.ComboBox cbxTeacher;
        private System.Windows.Forms.ComboBox cbxYear;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dtgvGrade;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label7;
        private Panel_Item panel_Item1;
        private Panel_Item panel_Item2;
        private System.Windows.Forms.TextBox txtNameGrade;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaLH;
        private System.Windows.Forms.DataGridViewTextBoxColumn STT;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenLH;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenKH;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenNH;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenGV;
    }
}
