namespace Quanlyhocsinhcap3.GUI
{
    partial class SETTING_Teacher3
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
            this.lsbAssignment = new System.Windows.Forms.ListBox();
            this.btnAdd = new System.Windows.Forms.Button();
            this.btnRemove = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtSubject = new System.Windows.Forms.Label();
            this.txtGrade = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtGradeLevel = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtYear = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.panel_Item1 = new Quanlyhocsinhcap3.Panel_Item();
            this.btnOk = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.label8 = new System.Windows.Forms.Label();
            this.panel_Item2 = new Quanlyhocsinhcap3.Panel_Item();
            this.groupBox1.SuspendLayout();
            this.panel_Item1.SuspendLayout();
            this.panel_Item2.SuspendLayout();
            this.SuspendLayout();
            // 
            // lsbAssignment
            // 
            this.lsbAssignment.FormattingEnabled = true;
            this.lsbAssignment.ItemHeight = 16;
            this.lsbAssignment.Location = new System.Drawing.Point(26, 219);
            this.lsbAssignment.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.lsbAssignment.Name = "lsbAssignment";
            this.lsbAssignment.Size = new System.Drawing.Size(201, 116);
            this.lsbAssignment.TabIndex = 1;
            this.lsbAssignment.SelectedIndexChanged += new System.EventHandler(this.lsbAssignment_SelectedIndexChanged);
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(47, 343);
            this.btnAdd.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(87, 28);
            this.btnAdd.TabIndex = 2;
            this.btnAdd.Text = "Add";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // btnRemove
            // 
            this.btnRemove.Location = new System.Drawing.Point(140, 343);
            this.btnRemove.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnRemove.Name = "btnRemove";
            this.btnRemove.Size = new System.Drawing.Size(87, 28);
            this.btnRemove.TabIndex = 2;
            this.btnRemove.Text = "Remove";
            this.btnRemove.UseVisualStyleBackColor = true;
            this.btnRemove.Click += new System.EventHandler(this.btnRemove_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.txtSubject);
            this.groupBox1.Controls.Add(this.txtGrade);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtGradeLevel);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.txtYear);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Font = new System.Drawing.Font("Arial", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(236, 63);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Size = new System.Drawing.Size(191, 206);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = " Chi tiết";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(7, 151);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(66, 16);
            this.label5.TabIndex = 0;
            this.label5.Text = "Môn học :";
            // 
            // txtSubject
            // 
            this.txtSubject.AutoSize = true;
            this.txtSubject.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSubject.Location = new System.Drawing.Point(111, 151);
            this.txtSubject.Name = "txtSubject";
            this.txtSubject.Size = new System.Drawing.Size(62, 16);
            this.txtSubject.TabIndex = 0;
            this.txtSubject.Text = "Môn học:";
            // 
            // txtGrade
            // 
            this.txtGrade.AutoSize = true;
            this.txtGrade.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtGrade.Location = new System.Drawing.Point(111, 108);
            this.txtGrade.Name = "txtGrade";
            this.txtGrade.Size = new System.Drawing.Size(39, 16);
            this.txtGrade.TabIndex = 0;
            this.txtGrade.Text = "Lớp :";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(7, 113);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(39, 16);
            this.label4.TabIndex = 0;
            this.label4.Text = "Lớp :";
            // 
            // txtGradeLevel
            // 
            this.txtGradeLevel.AutoSize = true;
            this.txtGradeLevel.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtGradeLevel.Location = new System.Drawing.Point(111, 73);
            this.txtGradeLevel.Name = "txtGradeLevel";
            this.txtGradeLevel.Size = new System.Drawing.Size(42, 16);
            this.txtGradeLevel.TabIndex = 0;
            this.txtGradeLevel.Text = "Khối :";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(7, 75);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(42, 16);
            this.label3.TabIndex = 0;
            this.label3.Text = "Khối :";
            // 
            // txtYear
            // 
            this.txtYear.AutoSize = true;
            this.txtYear.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtYear.Location = new System.Drawing.Point(111, 37);
            this.txtYear.Name = "txtYear";
            this.txtYear.Size = new System.Drawing.Size(34, 16);
            this.txtYear.TabIndex = 0;
            this.txtYear.Text = "Year";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(7, 37);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(72, 16);
            this.label2.TabIndex = 0;
            this.label2.Text = "Năm học : ";
            // 
            // panel_Item1
            // 
            this.panel_Item1.Controls.Add(this.btnOk);
            this.panel_Item1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel_Item1.Location = new System.Drawing.Point(0, 395);
            this.panel_Item1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.panel_Item1.Name = "panel_Item1";
            this.panel_Item1.Size = new System.Drawing.Size(439, 32);
            this.panel_Item1.TabIndex = 3;
            // 
            // btnOk
            // 
            this.btnOk.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnOk.Location = new System.Drawing.Point(352, 0);
            this.btnOk.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnOk.Name = "btnOk";
            this.btnOk.Size = new System.Drawing.Size(87, 32);
            this.btnOk.TabIndex = 2;
            this.btnOk.Text = "OK";
            this.btnOk.UseVisualStyleBackColor = true;
            this.btnOk.Click += new System.EventHandler(this.btnOk_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(23, 199);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(24, 16);
            this.label6.TabIndex = 0;
            this.label6.Text = "Cũ";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(23, 63);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(52, 16);
            this.label7.TabIndex = 0;
            this.label7.Text = "Hiện tại";
            // 
            // listBox1
            // 
            this.listBox1.Enabled = false;
            this.listBox1.FormattingEnabled = true;
            this.listBox1.ItemHeight = 16;
            this.listBox1.Location = new System.Drawing.Point(26, 83);
            this.listBox1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(201, 100);
            this.listBox1.TabIndex = 1;
            this.listBox1.SelectedIndexChanged += new System.EventHandler(this.lsbAssignment_SelectedIndexChanged);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(41)))), ((int)(((byte)(57)))), ((int)(((byte)(85)))));
            this.label8.Location = new System.Drawing.Point(5, 11);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(253, 22);
            this.label8.TabIndex = 0;
            this.label8.Text = "Danh sách lớp được phân";
            // 
            // panel_Item2
            // 
            this.panel_Item2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.panel_Item2.Controls.Add(this.label8);
            this.panel_Item2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel_Item2.Location = new System.Drawing.Point(0, 0);
            this.panel_Item2.Name = "panel_Item2";
            this.panel_Item2.Size = new System.Drawing.Size(439, 50);
            this.panel_Item2.TabIndex = 40;
            // 
            // SETTING_Teacher3
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.ClientSize = new System.Drawing.Size(439, 427);
            this.Controls.Add(this.panel_Item2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.panel_Item1);
            this.Controls.Add(this.btnRemove);
            this.Controls.Add(this.btnAdd);
            this.Controls.Add(this.listBox1);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.lsbAssignment);
            this.Controls.Add(this.label6);
            this.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "SETTING_Teacher3";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "SETTING_Teacher3";
            this.Load += new System.EventHandler(this.SETTING_Teacher3_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.panel_Item1.ResumeLayout(false);
            this.panel_Item2.ResumeLayout(false);
            this.panel_Item2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.ListBox lsbAssignment;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.Button btnRemove;
        private Panel_Item panel_Item1;
        private System.Windows.Forms.Button btnOk;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label txtGrade;
        private System.Windows.Forms.Label txtGradeLevel;
        private System.Windows.Forms.Label txtYear;
        private System.Windows.Forms.Label txtSubject;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ListBox listBox1;
        private System.Windows.Forms.Label label8;
        private Panel_Item panel_Item2;
    }
}