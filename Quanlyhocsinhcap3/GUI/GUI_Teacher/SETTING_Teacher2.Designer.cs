namespace Quanlyhocsinhcap3.GUI
{
    partial class SETTING_Teacher2
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
            this.btnAdd = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.cbxYear = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.cbxGradeLevel = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.cbxGrade = new System.Windows.Forms.ComboBox();
            this.panel_Item1 = new Quanlyhocsinhcap3.Panel_Item();
            this.label4 = new System.Windows.Forms.Label();
            this.cbxSubject = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.panel_Item2 = new Quanlyhocsinhcap3.Panel_Item();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.panel_Item1.SuspendLayout();
            this.panel_Item2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnAdd
            // 
            this.btnAdd.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnAdd.Location = new System.Drawing.Point(168, 0);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(75, 27);
            this.btnAdd.TabIndex = 0;
            this.btnAdd.Text = "Add";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnCancel.Location = new System.Drawing.Point(243, 0);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 27);
            this.btnCancel.TabIndex = 0;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(20, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(29, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Year";
            // 
            // cbxYear
            // 
            this.cbxYear.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxYear.FormattingEnabled = true;
            this.cbxYear.Location = new System.Drawing.Point(90, 22);
            this.cbxYear.Name = "cbxYear";
            this.cbxYear.Size = new System.Drawing.Size(121, 21);
            this.cbxYear.TabIndex = 2;
            this.cbxYear.SelectedIndexChanged += new System.EventHandler(this.cbxYear_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(20, 59);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(62, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "GradeLevel";
            // 
            // cbxGradeLevel
            // 
            this.cbxGradeLevel.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxGradeLevel.FormattingEnabled = true;
            this.cbxGradeLevel.Location = new System.Drawing.Point(90, 56);
            this.cbxGradeLevel.Name = "cbxGradeLevel";
            this.cbxGradeLevel.Size = new System.Drawing.Size(121, 21);
            this.cbxGradeLevel.TabIndex = 2;
            this.cbxGradeLevel.SelectedIndexChanged += new System.EventHandler(this.cbxGradeLevel_SelectedIndexChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(20, 93);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(36, 13);
            this.label3.TabIndex = 1;
            this.label3.Text = "Grade";
            // 
            // cbxGrade
            // 
            this.cbxGrade.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxGrade.FormattingEnabled = true;
            this.cbxGrade.Location = new System.Drawing.Point(90, 90);
            this.cbxGrade.Name = "cbxGrade";
            this.cbxGrade.Size = new System.Drawing.Size(121, 21);
            this.cbxGrade.TabIndex = 2;
            // 
            // panel_Item1
            // 
            this.panel_Item1.Controls.Add(this.btnAdd);
            this.panel_Item1.Controls.Add(this.btnCancel);
            this.panel_Item1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel_Item1.Location = new System.Drawing.Point(0, 284);
            this.panel_Item1.Name = "panel_Item1";
            this.panel_Item1.Size = new System.Drawing.Size(318, 27);
            this.panel_Item1.TabIndex = 3;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(20, 127);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(43, 13);
            this.label4.TabIndex = 1;
            this.label4.Text = "Subject";
            // 
            // cbxSubject
            // 
            this.cbxSubject.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxSubject.FormattingEnabled = true;
            this.cbxSubject.Location = new System.Drawing.Point(90, 124);
            this.cbxSubject.Name = "cbxSubject";
            this.cbxSubject.Size = new System.Drawing.Size(121, 21);
            this.cbxSubject.TabIndex = 2;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Arial", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(41)))), ((int)(((byte)(57)))), ((int)(((byte)(85)))));
            this.label5.Location = new System.Drawing.Point(5, 11);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(205, 22);
            this.label5.TabIndex = 0;
            this.label5.Text = "Phân công công việc";
            // 
            // panel_Item2
            // 
            this.panel_Item2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.panel_Item2.Controls.Add(this.label5);
            this.panel_Item2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel_Item2.Location = new System.Drawing.Point(0, 0);
            this.panel_Item2.Name = "panel_Item2";
            this.panel_Item2.Size = new System.Drawing.Size(318, 50);
            this.panel_Item2.TabIndex = 40;
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(247)))), ((int)(((byte)(247)))));
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.cbxSubject);
            this.groupBox1.Controls.Add(this.cbxYear);
            this.groupBox1.Controls.Add(this.cbxGrade);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.cbxGradeLevel);
            this.groupBox1.Location = new System.Drawing.Point(12, 56);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(294, 174);
            this.groupBox1.TabIndex = 41;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = " ";
            // 
            // SETTING_Teacher2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.ClientSize = new System.Drawing.Size(318, 311);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.panel_Item2);
            this.Controls.Add(this.panel_Item1);
            this.Name = "SETTING_Teacher2";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "SETTING_Teacher2";
            this.Load += new System.EventHandler(this.SETTING_Teacher2_Load);
            this.panel_Item1.ResumeLayout(false);
            this.panel_Item2.ResumeLayout(false);
            this.panel_Item2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbxYear;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cbxGradeLevel;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cbxGrade;
        private Panel_Item panel_Item1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cbxSubject;
        private System.Windows.Forms.Label label5;
        private Panel_Item panel_Item2;
        private System.Windows.Forms.GroupBox groupBox1;
    }
}