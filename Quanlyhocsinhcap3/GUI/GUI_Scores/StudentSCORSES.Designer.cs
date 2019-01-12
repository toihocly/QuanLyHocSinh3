namespace Quanlyhocsinhcap3
{
    partial class StudentSCORSES
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
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dtgvStudentScorses = new System.Windows.Forms.DataGridView();
            this.MaHS = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenHS = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diem15s_1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diem15s_2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diem15s_3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diem15s_4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diem1tiet_1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diem1tiet_2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diem1tiet_3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diemgiuaki = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diemmcuoiki = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnUpdate = new System.Windows.Forms.DataGridViewButtonColumn();
            this.label6 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbxSemester = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.cbxGradeLevel = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.btnSearch = new System.Windows.Forms.Button();
            this.cbxSubject = new System.Windows.Forms.ComboBox();
            this.cbxGrade = new System.Windows.Forms.ComboBox();
            this.cbxYear = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.panel_Item1.SuspendLayout();
            this.panel_Item2.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgvStudentScorses)).BeginInit();
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
            this.panel_Item1.TabIndex = 0;
            // 
            // panel_Item2
            // 
            this.panel_Item2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.panel_Item2.Controls.Add(this.label7);
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
            this.label7.Size = new System.Drawing.Size(171, 22);
            this.label7.TabIndex = 0;
            this.label7.Text = "Cập nhật điểm số";
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.groupBox2.Controls.Add(this.dtgvStudentScorses);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(11, 132);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(913, 205);
            this.groupBox2.TabIndex = 9;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Điểm số";
            // 
            // dtgvStudentScorses
            // 
            this.dtgvStudentScorses.AllowUserToAddRows = false;
            this.dtgvStudentScorses.AllowUserToDeleteRows = false;
            this.dtgvStudentScorses.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dtgvStudentScorses.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.dtgvStudentScorses.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgvStudentScorses.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaHS,
            this.TenHS,
            this.Diem15s_1,
            this.Diem15s_2,
            this.Diem15s_3,
            this.Diem15s_4,
            this.Diem1tiet_1,
            this.Diem1tiet_2,
            this.Diem1tiet_3,
            this.Diemgiuaki,
            this.Diemmcuoiki,
            this.btnUpdate});
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(246)))), ((int)(((byte)(252)))), ((int)(((byte)(199)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dtgvStudentScorses.DefaultCellStyle = dataGridViewCellStyle1;
            this.dtgvStudentScorses.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dtgvStudentScorses.Location = new System.Drawing.Point(3, 18);
            this.dtgvStudentScorses.Name = "dtgvStudentScorses";
            this.dtgvStudentScorses.ReadOnly = true;
            this.dtgvStudentScorses.Size = new System.Drawing.Size(907, 184);
            this.dtgvStudentScorses.TabIndex = 1;
            this.dtgvStudentScorses.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtgvStudentScorses_CellContentClick);
            // 
            // MaHS
            // 
            this.MaHS.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.MaHS.DataPropertyName = "MaHS";
            this.MaHS.FillWeight = 82.08122F;
            this.MaHS.HeaderText = "Mã Học Sinh";
            this.MaHS.Name = "MaHS";
            this.MaHS.ReadOnly = true;
            // 
            // TenHS
            // 
            this.TenHS.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.TenHS.DataPropertyName = "TenHS";
            this.TenHS.FillWeight = 82.08122F;
            this.TenHS.HeaderText = "Tên học sinh";
            this.TenHS.Name = "TenHS";
            this.TenHS.ReadOnly = true;
            this.TenHS.Width = 150;
            // 
            // Diem15s_1
            // 
            this.Diem15s_1.DataPropertyName = "Diem15s_1";
            this.Diem15s_1.FillWeight = 82.08122F;
            this.Diem15s_1.HeaderText = "15\'";
            this.Diem15s_1.Name = "Diem15s_1";
            this.Diem15s_1.ReadOnly = true;
            // 
            // Diem15s_2
            // 
            this.Diem15s_2.DataPropertyName = "Diem15s_2";
            this.Diem15s_2.FillWeight = 82.08122F;
            this.Diem15s_2.HeaderText = "15\'";
            this.Diem15s_2.Name = "Diem15s_2";
            this.Diem15s_2.ReadOnly = true;
            // 
            // Diem15s_3
            // 
            this.Diem15s_3.DataPropertyName = "Diem15s_3";
            this.Diem15s_3.FillWeight = 82.08122F;
            this.Diem15s_3.HeaderText = "15\'";
            this.Diem15s_3.Name = "Diem15s_3";
            this.Diem15s_3.ReadOnly = true;
            // 
            // Diem15s_4
            // 
            this.Diem15s_4.DataPropertyName = "Diem15s_4";
            this.Diem15s_4.FillWeight = 82.08122F;
            this.Diem15s_4.HeaderText = "15\'";
            this.Diem15s_4.Name = "Diem15s_4";
            this.Diem15s_4.ReadOnly = true;
            // 
            // Diem1tiet_1
            // 
            this.Diem1tiet_1.DataPropertyName = "Diem1tiet_1";
            this.Diem1tiet_1.FillWeight = 82.08122F;
            this.Diem1tiet_1.HeaderText = "1 tiết";
            this.Diem1tiet_1.Name = "Diem1tiet_1";
            this.Diem1tiet_1.ReadOnly = true;
            // 
            // Diem1tiet_2
            // 
            this.Diem1tiet_2.DataPropertyName = "Diem1tiet_2";
            this.Diem1tiet_2.FillWeight = 82.08122F;
            this.Diem1tiet_2.HeaderText = "1 tiết";
            this.Diem1tiet_2.Name = "Diem1tiet_2";
            this.Diem1tiet_2.ReadOnly = true;
            // 
            // Diem1tiet_3
            // 
            this.Diem1tiet_3.DataPropertyName = "Diem1tiet_3";
            this.Diem1tiet_3.FillWeight = 82.08122F;
            this.Diem1tiet_3.HeaderText = "1 tiết";
            this.Diem1tiet_3.Name = "Diem1tiet_3";
            this.Diem1tiet_3.ReadOnly = true;
            // 
            // Diemgiuaki
            // 
            this.Diemgiuaki.DataPropertyName = "Diemgiuaki";
            this.Diemgiuaki.FillWeight = 82.08122F;
            this.Diemgiuaki.HeaderText = "Giữa kì";
            this.Diemgiuaki.Name = "Diemgiuaki";
            this.Diemgiuaki.ReadOnly = true;
            // 
            // Diemmcuoiki
            // 
            this.Diemmcuoiki.DataPropertyName = "Diemcuoiki";
            this.Diemmcuoiki.HeaderText = "Cuối kì";
            this.Diemmcuoiki.Name = "Diemmcuoiki";
            this.Diemmcuoiki.ReadOnly = true;
            // 
            // btnUpdate
            // 
            this.btnUpdate.HeaderText = "Cập nhật";
            this.btnUpdate.Name = "btnUpdate";
            this.btnUpdate.ReadOnly = true;
            this.btnUpdate.Text = "Update";
            this.btnUpdate.UseColumnTextForButtonValue = true;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.Color.Red;
            this.label6.Location = new System.Drawing.Point(721, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(186, 16);
            this.label6.TabIndex = 5;
            this.label6.Text = "F5: Cập nhật lại thông tin điểm";
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.groupBox1.Controls.Add(this.cbxSemester);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.cbxGradeLevel);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.btnSearch);
            this.groupBox1.Controls.Add(this.cbxSubject);
            this.groupBox1.Controls.Add(this.cbxGrade);
            this.groupBox1.Controls.Add(this.cbxYear);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(11, 56);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(913, 70);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = " ";
            // 
            // cbxSemester
            // 
            this.cbxSemester.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxSemester.FormattingEnabled = true;
            this.cbxSemester.Location = new System.Drawing.Point(522, 32);
            this.cbxSemester.Name = "cbxSemester";
            this.cbxSemester.Size = new System.Drawing.Size(100, 24);
            this.cbxSemester.TabIndex = 9;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(473, 36);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(45, 16);
            this.label2.TabIndex = 8;
            this.label2.Text = "Học kì";
            // 
            // cbxGradeLevel
            // 
            this.cbxGradeLevel.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxGradeLevel.FormattingEnabled = true;
            this.cbxGradeLevel.Location = new System.Drawing.Point(235, 32);
            this.cbxGradeLevel.Name = "cbxGradeLevel";
            this.cbxGradeLevel.Size = new System.Drawing.Size(100, 24);
            this.cbxGradeLevel.TabIndex = 3;
            this.cbxGradeLevel.TextChanged += new System.EventHandler(this.cbxGradeLevel_TextChanged);
            this.cbxGradeLevel.Click += new System.EventHandler(this.cbxGradeLevel_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(192, 36);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(34, 16);
            this.label5.TabIndex = 3;
            this.label5.Text = "Khối";
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(805, 33);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(100, 23);
            this.btnSearch.TabIndex = 7;
            this.btnSearch.Text = "Lọc";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // cbxSubject
            // 
            this.cbxSubject.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxSubject.FormattingEnabled = true;
            this.cbxSubject.Location = new System.Drawing.Point(685, 32);
            this.cbxSubject.Name = "cbxSubject";
            this.cbxSubject.Size = new System.Drawing.Size(100, 24);
            this.cbxSubject.TabIndex = 6;
            this.cbxSubject.Click += new System.EventHandler(this.cbxSubject_Click);
            // 
            // cbxGrade
            // 
            this.cbxGrade.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxGrade.FormattingEnabled = true;
            this.cbxGrade.Location = new System.Drawing.Point(371, 32);
            this.cbxGrade.Name = "cbxGrade";
            this.cbxGrade.Size = new System.Drawing.Size(100, 24);
            this.cbxGrade.TabIndex = 5;
            this.cbxGrade.TextChanged += new System.EventHandler(this.cbxGrade_TextChanged);
            this.cbxGrade.Click += new System.EventHandler(this.cbxClass_Click);
            // 
            // cbxYear
            // 
            this.cbxYear.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxYear.FormattingEnabled = true;
            this.cbxYear.Location = new System.Drawing.Point(81, 32);
            this.cbxYear.Name = "cbxYear";
            this.cbxYear.Size = new System.Drawing.Size(100, 24);
            this.cbxYear.TabIndex = 2;
            this.cbxYear.TextChanged += new System.EventHandler(this.cbxYear_TextChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(624, 36);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(58, 16);
            this.label4.TabIndex = 0;
            this.label4.Text = "Môn học";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(332, 36);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(35, 16);
            this.label3.TabIndex = 0;
            this.label3.Text = " Lớp";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(21, 36);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(60, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Năm học";
            // 
            // StudentSCORSES
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panel_Item1);
            this.Name = "StudentSCORSES";
            this.Size = new System.Drawing.Size(932, 340);
            this.Load += new System.EventHandler(this.StudentSCORSES_Load);
            this.panel_Item1.ResumeLayout(false);
            this.panel_Item2.ResumeLayout(false);
            this.panel_Item2.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgvStudentScorses)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private Panel_Item panel_Item1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.ComboBox cbxSubject;
        private System.Windows.Forms.ComboBox cbxGrade;
        private System.Windows.Forms.ComboBox cbxYear;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dtgvStudentScorses;
        private System.Windows.Forms.ComboBox cbxGradeLevel;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.GroupBox groupBox2;
        private Panel_Item panel_Item2;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaHS;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenHS;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diem15s_1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diem15s_2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diem15s_3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diem15s_4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diem1tiet_1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diem1tiet_2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diem1tiet_3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diemgiuaki;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diemmcuoiki;
        private System.Windows.Forms.DataGridViewButtonColumn btnUpdate;
        private System.Windows.Forms.ComboBox cbxSemester;
        private System.Windows.Forms.Label label2;
    }
}
