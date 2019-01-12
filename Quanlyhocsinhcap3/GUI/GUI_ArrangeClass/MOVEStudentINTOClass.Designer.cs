namespace Quanlyhocsinhcap3
{
    partial class MOVEStudentINTOClass
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
            this.panel_Item1 = new Quanlyhocsinhcap3.Panel_Item();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label4 = new System.Windows.Forms.Label();
            this.cbxGrade = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.btnRightToLeft = new System.Windows.Forms.Button();
            this.lsbStudentNotHaveClass = new System.Windows.Forms.ListBox();
            this.btnLeftToRight = new System.Windows.Forms.Button();
            this.lsbStudentOFClass = new System.Windows.Forms.ListBox();
            this.panel_Item2 = new Quanlyhocsinhcap3.Panel_Item();
            this.label6 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnSearch = new System.Windows.Forms.Button();
            this.cbxYear = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.cbxGradeLevel = new System.Windows.Forms.ComboBox();
            this.panel_Item1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.panel_Item2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel_Item1
            // 
            this.panel_Item1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.panel_Item1.Controls.Add(this.groupBox2);
            this.panel_Item1.Controls.Add(this.panel_Item2);
            this.panel_Item1.Controls.Add(this.groupBox1);
            this.panel_Item1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel_Item1.Location = new System.Drawing.Point(0, 0);
            this.panel_Item1.Name = "panel_Item1";
            this.panel_Item1.Size = new System.Drawing.Size(932, 340);
            this.panel_Item1.TabIndex = 0;
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.cbxGrade);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.btnRightToLeft);
            this.groupBox2.Controls.Add(this.lsbStudentNotHaveClass);
            this.groupBox2.Controls.Add(this.btnLeftToRight);
            this.groupBox2.Controls.Add(this.lsbStudentOFClass);
            this.groupBox2.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(11, 132);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(913, 205);
            this.groupBox2.TabIndex = 33;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Xếp lớp";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(112, 32);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(198, 16);
            this.label4.TabIndex = 3;
            this.label4.Text = "Danh sách học sinh chưa có lớp";
            // 
            // cbxGrade
            // 
            this.cbxGrade.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxGrade.FormattingEnabled = true;
            this.cbxGrade.Location = new System.Drawing.Point(625, 18);
            this.cbxGrade.Name = "cbxGrade";
            this.cbxGrade.Size = new System.Drawing.Size(100, 24);
            this.cbxGrade.TabIndex = 2;
            this.cbxGrade.TextChanged += new System.EventHandler(this.cbxGrade_TextChanged);
            this.cbxGrade.Click += new System.EventHandler(this.cbxGrade_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Arial Narrow", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.Red;
            this.label2.Location = new System.Drawing.Point(104, 10);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(235, 16);
            this.label2.TabIndex = 9;
            this.label2.Text = "Xép thêm trường hợp chuyển học giữa các lớp";
            this.label2.Visible = false;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(574, 21);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(31, 16);
            this.label5.TabIndex = 4;
            this.label5.Text = "Lớp";
            // 
            // btnRightToLeft
            // 
            this.btnRightToLeft.Location = new System.Drawing.Point(395, 130);
            this.btnRightToLeft.Name = "btnRightToLeft";
            this.btnRightToLeft.Size = new System.Drawing.Size(75, 23);
            this.btnRightToLeft.TabIndex = 8;
            this.btnRightToLeft.Text = "<<";
            this.btnRightToLeft.UseVisualStyleBackColor = true;
            this.btnRightToLeft.Click += new System.EventHandler(this.btnRightToLeft_Click);
            // 
            // lsbStudentNotHaveClass
            // 
            this.lsbStudentNotHaveClass.FormattingEnabled = true;
            this.lsbStudentNotHaveClass.ItemHeight = 16;
            this.lsbStudentNotHaveClass.Location = new System.Drawing.Point(87, 51);
            this.lsbStudentNotHaveClass.Name = "lsbStudentNotHaveClass";
            this.lsbStudentNotHaveClass.Size = new System.Drawing.Size(280, 148);
            this.lsbStudentNotHaveClass.TabIndex = 6;
            // 
            // btnLeftToRight
            // 
            this.btnLeftToRight.Location = new System.Drawing.Point(395, 88);
            this.btnLeftToRight.Name = "btnLeftToRight";
            this.btnLeftToRight.Size = new System.Drawing.Size(75, 23);
            this.btnLeftToRight.TabIndex = 7;
            this.btnLeftToRight.Text = ">>";
            this.btnLeftToRight.UseVisualStyleBackColor = true;
            this.btnLeftToRight.Click += new System.EventHandler(this.btnLeftToRight_Click);
            // 
            // lsbStudentOFClass
            // 
            this.lsbStudentOFClass.FormattingEnabled = true;
            this.lsbStudentOFClass.ItemHeight = 16;
            this.lsbStudentOFClass.Location = new System.Drawing.Point(517, 51);
            this.lsbStudentOFClass.Name = "lsbStudentOFClass";
            this.lsbStudentOFClass.Size = new System.Drawing.Size(280, 148);
            this.lsbStudentOFClass.TabIndex = 6;
            // 
            // panel_Item2
            // 
            this.panel_Item2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.panel_Item2.Controls.Add(this.label6);
            this.panel_Item2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel_Item2.Location = new System.Drawing.Point(0, 0);
            this.panel_Item2.Name = "panel_Item2";
            this.panel_Item2.Size = new System.Drawing.Size(932, 50);
            this.panel_Item2.TabIndex = 32;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(41)))), ((int)(((byte)(57)))), ((int)(((byte)(85)))));
            this.label6.Location = new System.Drawing.Point(4, 9);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(122, 22);
            this.label6.TabIndex = 0;
            this.label6.Text = "Xếp lớp học";
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.groupBox1.Controls.Add(this.btnSearch);
            this.groupBox1.Controls.Add(this.cbxYear);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.cbxGradeLevel);
            this.groupBox1.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(11, 56);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(913, 70);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = " ";
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(441, 32);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(100, 23);
            this.btnSearch.TabIndex = 3;
            this.btnSearch.Text = "Xử lý";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // cbxYear
            // 
            this.cbxYear.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxYear.FormattingEnabled = true;
            this.cbxYear.Location = new System.Drawing.Point(100, 32);
            this.cbxYear.Name = "cbxYear";
            this.cbxYear.Size = new System.Drawing.Size(121, 24);
            this.cbxYear.TabIndex = 2;
            this.cbxYear.TextChanged += new System.EventHandler(this.cbxYear_TextChanged);
            this.cbxYear.Click += new System.EventHandler(this.cbxYear_Click);
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
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(267, 36);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(34, 16);
            this.label3.TabIndex = 1;
            this.label3.Text = "Khối";
            // 
            // cbxGradeLevel
            // 
            this.cbxGradeLevel.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxGradeLevel.FormattingEnabled = true;
            this.cbxGradeLevel.Location = new System.Drawing.Point(321, 32);
            this.cbxGradeLevel.Name = "cbxGradeLevel";
            this.cbxGradeLevel.Size = new System.Drawing.Size(100, 24);
            this.cbxGradeLevel.TabIndex = 2;
            this.cbxGradeLevel.Click += new System.EventHandler(this.cbxGradeLevel_Click);
            // 
            // MOVEStudentINTOClass
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panel_Item1);
            this.Name = "MOVEStudentINTOClass";
            this.Size = new System.Drawing.Size(932, 340);
            this.Load += new System.EventHandler(this.MOVEStudentINTOClass_Load);
            this.panel_Item1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.panel_Item2.ResumeLayout(false);
            this.panel_Item2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private Quanlyhocsinhcap3.Panel_Item panel_Item1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.ComboBox cbxYear;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cbxGradeLevel;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cbxGrade;
        private System.Windows.Forms.ListBox lsbStudentOFClass;
        private System.Windows.Forms.ListBox lsbStudentNotHaveClass;
        private System.Windows.Forms.Button btnRightToLeft;
        private System.Windows.Forms.Button btnLeftToRight;
        private System.Windows.Forms.Label label2;
        private Panel_Item panel_Item2;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.GroupBox groupBox2;
    }
}
