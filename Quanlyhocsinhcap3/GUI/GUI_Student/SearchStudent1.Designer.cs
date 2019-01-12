namespace Quanlyhocsinhcap3.GUI.GUI_Student
{
    partial class SearchStudent1
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            this.panel_Item1 = new Quanlyhocsinhcap3.Panel_Item();
            this.label4 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbxSemester = new System.Windows.Forms.ComboBox();
            this.cbxYear = new System.Windows.Forms.ComboBox();
            this.txtMSHS = new System.Windows.Forms.TextBox();
            this.btnSearch = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.TenMH = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diem15s_1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diem15s_2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diem15s_3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diem15s_4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diem1tiet_1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diem1tiet_2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diem1tiet_3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diemgiuaki = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Diemcuoiki = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel_Item1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel_Item1
            // 
            this.panel_Item1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.panel_Item1.Controls.Add(this.label4);
            this.panel_Item1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel_Item1.Location = new System.Drawing.Point(0, 0);
            this.panel_Item1.Name = "panel_Item1";
            this.panel_Item1.Size = new System.Drawing.Size(932, 50);
            this.panel_Item1.TabIndex = 0;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(41)))), ((int)(((byte)(57)))), ((int)(((byte)(85)))));
            this.label4.Location = new System.Drawing.Point(4, 9);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(230, 22);
            this.label4.TabIndex = 0;
            this.label4.Text = "Tra cứu kết quả học tập";
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.groupBox1.Controls.Add(this.cbxSemester);
            this.groupBox1.Controls.Add(this.cbxYear);
            this.groupBox1.Controls.Add(this.txtMSHS);
            this.groupBox1.Controls.Add(this.btnSearch);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(11, 56);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(913, 70);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            // 
            // cbxSemester
            // 
            this.cbxSemester.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxSemester.FormattingEnabled = true;
            this.cbxSemester.Location = new System.Drawing.Point(274, 32);
            this.cbxSemester.Name = "cbxSemester";
            this.cbxSemester.Size = new System.Drawing.Size(107, 24);
            this.cbxSemester.TabIndex = 3;
            this.cbxSemester.Click += new System.EventHandler(this.cbxSemester_Click);
            // 
            // cbxYear
            // 
            this.cbxYear.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxYear.FormattingEnabled = true;
            this.cbxYear.Location = new System.Drawing.Point(98, 32);
            this.cbxYear.Name = "cbxYear";
            this.cbxYear.Size = new System.Drawing.Size(107, 24);
            this.cbxYear.TabIndex = 2;
            this.cbxYear.Click += new System.EventHandler(this.cbxYear_Click);
            // 
            // txtMSHS
            // 
            this.txtMSHS.Location = new System.Drawing.Point(464, 33);
            this.txtMSHS.Name = "txtMSHS";
            this.txtMSHS.Size = new System.Drawing.Size(100, 22);
            this.txtMSHS.TabIndex = 4;
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(609, 32);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(146, 23);
            this.btnSearch.TabIndex = 5;
            this.btnSearch.Text = "Xem kết quả học tập";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(400, 36);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(46, 16);
            this.label3.TabIndex = 0;
            this.label3.Text = "MSHS";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(216, 36);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(45, 16);
            this.label2.TabIndex = 0;
            this.label2.Text = "Học kì";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(30, 36);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(60, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Năm học";
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.groupBox2.Controls.Add(this.dataGridView1);
            this.groupBox2.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(11, 132);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(913, 205);
            this.groupBox2.TabIndex = 6;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Danh sách kết quả học tập";
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.DisplayedCellsExceptHeaders;
            this.dataGridView1.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(246)))), ((int)(((byte)(252)))), ((int)(((byte)(199)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView1.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.TenMH,
            this.Diem15s_1,
            this.Diem15s_2,
            this.Diem15s_3,
            this.Diem15s_4,
            this.Diem1tiet_1,
            this.Diem1tiet_2,
            this.Diem1tiet_3,
            this.Diemgiuaki,
            this.Diemcuoiki});
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(246)))), ((int)(((byte)(252)))), ((int)(((byte)(199)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridView1.DefaultCellStyle = dataGridViewCellStyle2;
            this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridView1.Location = new System.Drawing.Point(3, 18);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(907, 184);
            this.dataGridView1.TabIndex = 0;
            // 
            // TenMH
            // 
            this.TenMH.DataPropertyName = "TenMH";
            this.TenMH.HeaderText = "Môn học";
            this.TenMH.Name = "TenMH";
            this.TenMH.ReadOnly = true;
            // 
            // Diem15s_1
            // 
            this.Diem15s_1.DataPropertyName = "Diem15s_1";
            this.Diem15s_1.HeaderText = "15\'";
            this.Diem15s_1.Name = "Diem15s_1";
            this.Diem15s_1.ReadOnly = true;
            // 
            // Diem15s_2
            // 
            this.Diem15s_2.DataPropertyName = "Diem15s_2";
            this.Diem15s_2.HeaderText = "15\'";
            this.Diem15s_2.Name = "Diem15s_2";
            this.Diem15s_2.ReadOnly = true;
            // 
            // Diem15s_3
            // 
            this.Diem15s_3.DataPropertyName = "Diem15s_3";
            this.Diem15s_3.HeaderText = "15\'";
            this.Diem15s_3.Name = "Diem15s_3";
            this.Diem15s_3.ReadOnly = true;
            // 
            // Diem15s_4
            // 
            this.Diem15s_4.DataPropertyName = "Diem15s_4";
            this.Diem15s_4.HeaderText = "15\'";
            this.Diem15s_4.Name = "Diem15s_4";
            this.Diem15s_4.ReadOnly = true;
            // 
            // Diem1tiet_1
            // 
            this.Diem1tiet_1.DataPropertyName = "Diem1tiet_1";
            this.Diem1tiet_1.HeaderText = "1 tiết";
            this.Diem1tiet_1.Name = "Diem1tiet_1";
            this.Diem1tiet_1.ReadOnly = true;
            // 
            // Diem1tiet_2
            // 
            this.Diem1tiet_2.DataPropertyName = "Diem1tiet_2";
            this.Diem1tiet_2.HeaderText = "1 tiết";
            this.Diem1tiet_2.Name = "Diem1tiet_2";
            this.Diem1tiet_2.ReadOnly = true;
            // 
            // Diem1tiet_3
            // 
            this.Diem1tiet_3.DataPropertyName = "Diem1tiet_3";
            this.Diem1tiet_3.HeaderText = "1 tiết";
            this.Diem1tiet_3.Name = "Diem1tiet_3";
            this.Diem1tiet_3.ReadOnly = true;
            // 
            // Diemgiuaki
            // 
            this.Diemgiuaki.DataPropertyName = "Diemgiuaki";
            this.Diemgiuaki.HeaderText = "Giữa kì";
            this.Diemgiuaki.Name = "Diemgiuaki";
            this.Diemgiuaki.ReadOnly = true;
            // 
            // Diemcuoiki
            // 
            this.Diemcuoiki.DataPropertyName = "Diemcuoiki";
            this.Diemcuoiki.HeaderText = "Cuối kì";
            this.Diemcuoiki.Name = "Diemcuoiki";
            this.Diemcuoiki.ReadOnly = true;
            // 
            // SearchStudent1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.panel_Item1);
            this.Name = "SearchStudent1";
            this.Size = new System.Drawing.Size(932, 340);
            this.Load += new System.EventHandler(this.SearchStudent1_Load);
            this.panel_Item1.ResumeLayout(false);
            this.panel_Item1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Panel_Item panel_Item1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.ComboBox cbxSemester;
        private System.Windows.Forms.ComboBox cbxYear;
        private System.Windows.Forms.TextBox txtMSHS;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenMH;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diem15s_1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diem15s_2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diem15s_3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diem15s_4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diem1tiet_1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diem1tiet_2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diem1tiet_3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diemgiuaki;
        private System.Windows.Forms.DataGridViewTextBoxColumn Diemcuoiki;
    }
}
