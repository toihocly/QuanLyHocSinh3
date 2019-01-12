using Quanlyhocsinhcap3.BUS;
using Quanlyhocsinhcap3.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quanlyhocsinhcap3
{
    public partial class Login : Form
    {
        Login_UserBUS login_UserBUS = new Login_UserBUS();
        public Login()
        {
            InitializeComponent();
            
        }

        List<string> values = new List<string>(new string[] { "STT","taikhoan", "matkhau" });

        #region Event
        private void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                // check mã
                values[1] = cbxUser.Text;
                values[2] = txtPass.Text;

                DataTable dt = new DataTable();

                dt = login_UserBUS.CheckUser(values[1], values[2]);

                // tách lấy STT của tài khoản đăng nhập
                values[0] = dt.Rows[0]["STT"].ToString();



                // nếu đúng
                this.Hide();
                MainProcess ui = new MainProcess(values[0]);
                ui.ShowDialog();
                this.Close();

            }
            catch (Exception)
            {
                cbxUser.Text = "";
                txtPass.Text = "";
                txtError.Visible = true;
                txtError.Text = "Tài Khoản hoặc mật khẩu không chính xác!!";
            }




        }

        private void Login_Load(object sender, EventArgs e)
        {
            this.MinimizeBox = true;
            this.MaximizeBox = false;
        }

        private void cbxUser_Click(object sender, EventArgs e)
        {
            txtError.Visible = false;
        }



        private void txtPass_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                //enter key is down
                btnLogin_Click(null, null);
            }
        }
        #endregion


    }
}
