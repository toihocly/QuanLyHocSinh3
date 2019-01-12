using Quanlyhocsinhcap3.BUS;
using Quanlyhocsinhcap3.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quanlyhocsinhcap3.GUI.GUI_Login
{
    public partial class EditUser : Form
    {
        Login_UserBUS login_UserBUS = new Login_UserBUS();


        public EditUser(Login_User login_User)
        {
            InitializeComponent();

            List<string> values = new List<string>();
            values.Add(login_User.STT.ToString());
            values.Add(login_User.TaiKhoan);
            values.Add(login_User.MatKhau);
            values.Add(login_User.HoTen);
            values.Add(login_User.SDT);
            values.Add(login_User.LoaiDN);

            //load dữ liệu
            Load_Data(values);


        }

        List<string> values = new List<string>();

        void Load_Data(List<string> values)
        {
            txtTaiKhoan.Text = values[1];
            txtMatKhau.Text = values[2];
            txtHoTen.Text = values[3];
            txtSDT.Text = values[4];
            cbxQuyen.Text = values[5];
        }


        private void btnShowPass_Click(object sender, EventArgs e)
        {
            txtMatKhau.UseSystemPasswordChar = !txtMatKhau.UseSystemPasswordChar;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Bạn có chắc muốn tiếp tục", "WARNING", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                try
                {
                   
                    values[1] = txtTaiKhoan.Text;
                    values[2] = txtMatKhau.Text;
                    values[3] = txtHoTen.Text;
                    values[4] = txtSDT.Text;
                    values[5] = cbxQuyen.Text;

                    login_UserBUS.RepearUser(values);

                    this.Close();
                }
                catch (Exception)
                {
                }
               
            }
            else if (dialogResult == DialogResult.No)
            {
                //do something else
            }
        }
    }
}
