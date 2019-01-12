namespace Quanlyhocsinhcap3
{
    partial class Login
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
            this.panel_Item4 = new Quanlyhocsinhcap3.Panel_Item();
            this.panel_Item3 = new Quanlyhocsinhcap3.Panel_Item();
            this.txtError = new System.Windows.Forms.Label();
            this.btnLogin = new System.Windows.Forms.Button();
            this.cbxUser = new System.Windows.Forms.ComboBox();
            this.txtPass = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.panel_Item2 = new Quanlyhocsinhcap3.Panel_Item();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.panel_Item1 = new Quanlyhocsinhcap3.Panel_Item();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.panel_Item3.SuspendLayout();
            this.panel_Item2.SuspendLayout();
            this.panel_Item1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel_Item4
            // 
            this.panel_Item4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(41)))), ((int)(((byte)(57)))), ((int)(((byte)(85)))));
            this.panel_Item4.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel_Item4.Location = new System.Drawing.Point(0, 0);
            this.panel_Item4.Name = "panel_Item4";
            this.panel_Item4.Size = new System.Drawing.Size(605, 27);
            this.panel_Item4.TabIndex = 2;
            // 
            // panel_Item3
            // 
            this.panel_Item3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(252)))), ((int)(((byte)(252)))), ((int)(((byte)(252)))));
            this.panel_Item3.Controls.Add(this.txtError);
            this.panel_Item3.Controls.Add(this.btnLogin);
            this.panel_Item3.Controls.Add(this.cbxUser);
            this.panel_Item3.Controls.Add(this.txtPass);
            this.panel_Item3.Controls.Add(this.label5);
            this.panel_Item3.Controls.Add(this.label4);
            this.panel_Item3.Controls.Add(this.label3);
            this.panel_Item3.Dock = System.Windows.Forms.DockStyle.Right;
            this.panel_Item3.Location = new System.Drawing.Point(605, 0);
            this.panel_Item3.Name = "panel_Item3";
            this.panel_Item3.Size = new System.Drawing.Size(327, 479);
            this.panel_Item3.TabIndex = 1;
            // 
            // txtError
            // 
            this.txtError.AutoSize = true;
            this.txtError.ForeColor = System.Drawing.Color.Red;
            this.txtError.Location = new System.Drawing.Point(55, 345);
            this.txtError.Name = "txtError";
            this.txtError.Size = new System.Drawing.Size(56, 13);
            this.txtError.TabIndex = 6;
            this.txtError.Text = "Hiển thị lỗi";
            this.txtError.Visible = false;
            // 
            // btnLogin
            // 
            this.btnLogin.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(205)))), ((int)(((byte)(220)))), ((int)(((byte)(57)))));
            this.btnLogin.Location = new System.Drawing.Point(134, 300);
            this.btnLogin.Name = "btnLogin";
            this.btnLogin.Size = new System.Drawing.Size(75, 23);
            this.btnLogin.TabIndex = 3;
            this.btnLogin.Text = "Log In";
            this.btnLogin.UseVisualStyleBackColor = false;
            this.btnLogin.Click += new System.EventHandler(this.btnLogin_Click);
            // 
            // cbxUser
            // 
            this.cbxUser.FormattingEnabled = true;
            this.cbxUser.Location = new System.Drawing.Point(114, 210);
            this.cbxUser.Name = "cbxUser";
            this.cbxUser.Size = new System.Drawing.Size(136, 21);
            this.cbxUser.TabIndex = 1;
            this.cbxUser.Click += new System.EventHandler(this.cbxUser_Click);
            // 
            // txtPass
            // 
            this.txtPass.Location = new System.Drawing.Point(114, 254);
            this.txtPass.Name = "txtPass";
            this.txtPass.Size = new System.Drawing.Size(136, 20);
            this.txtPass.TabIndex = 2;
            this.txtPass.UseSystemPasswordChar = true;
            this.txtPass.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtPass_KeyDown);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(32, 261);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(53, 13);
            this.label5.TabIndex = 2;
            this.label5.Text = "Password";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(45, 213);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(29, 13);
            this.label4.TabIndex = 1;
            this.label4.Text = "User";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 26.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(117, 130);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(107, 39);
            this.label3.TabIndex = 0;
            this.label3.Text = "LogIn";
            // 
            // panel_Item2
            // 
            this.panel_Item2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(91)))), ((int)(((byte)(113)))), ((int)(((byte)(153)))));
            this.panel_Item2.Controls.Add(this.label2);
            this.panel_Item2.Controls.Add(this.label1);
            this.panel_Item2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel_Item2.Location = new System.Drawing.Point(0, 0);
            this.panel_Item2.Name = "panel_Item2";
            this.panel_Item2.Size = new System.Drawing.Size(932, 479);
            this.panel_Item2.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 48F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(71, 213);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(445, 73);
            this.label2.TabIndex = 0;
            this.label2.Text = "học sinh cấp 3";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 48F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(167, 96);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(253, 73);
            this.label1.TabIndex = 0;
            this.label1.Text = "Quản lý";
            // 
            // panel_Item1
            // 
            this.panel_Item1.Controls.Add(this.statusStrip1);
            this.panel_Item1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel_Item1.Location = new System.Drawing.Point(0, 479);
            this.panel_Item1.Name = "panel_Item1";
            this.panel_Item1.Size = new System.Drawing.Size(932, 22);
            this.panel_Item1.TabIndex = 0;
            // 
            // statusStrip1
            // 
            this.statusStrip1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(212)))), ((int)(((byte)(211)))), ((int)(((byte)(211)))));
            this.statusStrip1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.statusStrip1.Location = new System.Drawing.Point(0, 0);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(932, 22);
            this.statusStrip1.TabIndex = 0;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(932, 501);
            this.Controls.Add(this.panel_Item4);
            this.Controls.Add(this.panel_Item3);
            this.Controls.Add(this.panel_Item2);
            this.Controls.Add(this.panel_Item1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Name = "Login";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Login";
            this.Load += new System.EventHandler(this.Login_Load);
            this.panel_Item3.ResumeLayout(false);
            this.panel_Item3.PerformLayout();
            this.panel_Item2.ResumeLayout(false);
            this.panel_Item2.PerformLayout();
            this.panel_Item1.ResumeLayout(false);
            this.panel_Item1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private Quanlyhocsinhcap3.Panel_Item panel_Item1;
        private Quanlyhocsinhcap3.Panel_Item panel_Item2;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private Quanlyhocsinhcap3.Panel_Item panel_Item3;
        private System.Windows.Forms.Label txtError;
        private System.Windows.Forms.Button btnLogin;
        private System.Windows.Forms.ComboBox cbxUser;
        private System.Windows.Forms.TextBox txtPass;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private Quanlyhocsinhcap3.Panel_Item panel_Item4;
    }
}