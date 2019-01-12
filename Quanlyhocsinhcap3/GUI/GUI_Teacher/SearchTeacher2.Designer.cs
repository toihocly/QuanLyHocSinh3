namespace Quanlyhocsinhcap3.GUI.GUI_Teacher
{
    partial class SearchTeacher2
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbxYear = new System.Windows.Forms.ComboBox();
            this.txtIDTeacher = new System.Windows.Forms.TextBox();
            this.btnSearch = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.panel_Item1 = new Quanlyhocsinhcap3.Panel_Item();
            this.label4 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtNameTeacher = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.TenNH = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenLH = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenMH = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1.SuspendLayout();
            this.panel_Item1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.groupBox1.Controls.Add(this.cbxYear);
            this.groupBox1.Controls.Add(this.txtIDTeacher);
            this.groupBox1.Controls.Add(this.btnSearch);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(11, 56);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(913, 70);
            this.groupBox1.TabIndex = 11;
            this.groupBox1.TabStop = false;
            // 
            // cbxYear
            // 
            this.cbxYear.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxYear.FormattingEnabled = true;
            this.cbxYear.Location = new System.Drawing.Point(98, 32);
            this.cbxYear.Name = "cbxYear";
            this.cbxYear.Size = new System.Drawing.Size(107, 24);
            this.cbxYear.TabIndex = 8;
            this.cbxYear.Click += new System.EventHandler(this.cbxYear_Click);
            // 
            // txtIDTeacher
            // 
            this.txtIDTeacher.Location = new System.Drawing.Point(291, 33);
            this.txtIDTeacher.Name = "txtIDTeacher";
            this.txtIDTeacher.Size = new System.Drawing.Size(100, 22);
            this.txtIDTeacher.TabIndex = 4;
            this.txtIDTeacher.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtIDTeacher_KeyDown);
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(436, 32);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(146, 23);
            this.btnSearch.TabIndex = 5;
            this.btnSearch.Text = "Xem";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(227, 36);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(47, 16);
            this.label3.TabIndex = 0;
            this.label3.Text = "MSGV";
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
            // panel_Item1
            // 
            this.panel_Item1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.panel_Item1.Controls.Add(this.label4);
            this.panel_Item1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel_Item1.Location = new System.Drawing.Point(0, 0);
            this.panel_Item1.Name = "panel_Item1";
            this.panel_Item1.Size = new System.Drawing.Size(932, 50);
            this.panel_Item1.TabIndex = 10;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(41)))), ((int)(((byte)(57)))), ((int)(((byte)(85)))));
            this.label4.Location = new System.Drawing.Point(4, 9);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(334, 22);
            this.label4.TabIndex = 0;
            this.label4.Text = "Tra cứu lịch công tác của giáo viên";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtNameTeacher);
            this.groupBox2.Controls.Add(this.dataGridView1);
            this.groupBox2.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(11, 132);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(913, 205);
            this.groupBox2.TabIndex = 12;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Danh sách kết quả";
            // 
            // txtNameTeacher
            // 
            this.txtNameTeacher.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtNameTeacher.Location = new System.Drawing.Point(701, 18);
            this.txtNameTeacher.Name = "txtNameTeacher";
            this.txtNameTeacher.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.txtNameTeacher.Size = new System.Drawing.Size(209, 16);
            this.txtNameTeacher.TabIndex = 1;
            this.txtNameTeacher.Text = "NameTeacher";
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.TenNH,
            this.TenLH,
            this.TenMH});
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(246)))), ((int)(((byte)(252)))), ((int)(((byte)(199)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridView1.DefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dataGridView1.Location = new System.Drawing.Point(3, 37);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(907, 165);
            this.dataGridView1.TabIndex = 0;
            // 
            // TenNH
            // 
            this.TenNH.DataPropertyName = "TenNH";
            this.TenNH.HeaderText = "Năm học";
            this.TenNH.Name = "TenNH";
            this.TenNH.ReadOnly = true;
            // 
            // TenLH
            // 
            this.TenLH.DataPropertyName = "TenLH";
            this.TenLH.HeaderText = "Lớp học";
            this.TenLH.Name = "TenLH";
            this.TenLH.ReadOnly = true;
            // 
            // TenMH
            // 
            this.TenMH.DataPropertyName = "TenMH";
            this.TenMH.HeaderText = "Bộ môn được phân công";
            this.TenMH.Name = "TenMH";
            this.TenMH.ReadOnly = true;
            // 
            // SearchTeacher2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.panel_Item1);
            this.Controls.Add(this.groupBox2);
            this.Name = "SearchTeacher2";
            this.Size = new System.Drawing.Size(932, 340);
            this.Load += new System.EventHandler(this.SearchTeacher2_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.panel_Item1.ResumeLayout(false);
            this.panel_Item1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cbxYear;
        private System.Windows.Forms.TextBox txtIDTeacher;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private Panel_Item panel_Item1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenNH;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenLH;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenMH;
        private System.Windows.Forms.Label txtNameTeacher;
    }
}
