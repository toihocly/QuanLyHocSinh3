using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Quanlyhocsinhcap3.BUS;
using Quanlyhocsinhcap3.DTO;

namespace Quanlyhocsinhcap3.GUI.GUI_Login
{
    public partial class RegisterMember : UserControl
    {


        #region Call Class
        Login_UserBUS login_UserBUS = new Login_UserBUS();

        #endregion


        public RegisterMember()
        {
            InitializeComponent();
        }
        List<string> values = new List<string>(new string[] { "STT" });


        #region Method


        public void ClearTextBoxes(Control control)
        {
            foreach (Control c in control.Controls)
            {
                if (c is TextBox)
                {
                    ((TextBox)c).Clear();
                }
                if (c.HasChildren)
                {
                    ClearTextBoxes(c);
                }
            }
        }
       

        void LoadData()
        {
            ClearTextBoxes(groupBox1);

            // hiển thị thông tin của giáo viên
            dtgvUser.DataSource = login_UserBUS.ShowUser();
        }

        void AddUser()
        {
            // khởi tạo đối tượng.
            Login_User Login_User = new Login_User();
            // thêm dữ liệu cho đối tượng
            Login_User.HoTen = txtName.Text;
            Login_User.TaiKhoan = txtUser.Text;
            Login_User.MatKhau = txtPass.Text;
            Login_User.SDT = txtPhone.Text;
            Login_User.LoaiDN = cbxDecentralization.Text;
            // gọi đến BUS để xử lý (thêm vào CSDL)
            login_UserBUS.InsertUser(Login_User);

        }
        #endregion

        #region Events


        private void btnShowPass_Click(object sender, EventArgs e)
        {
            txtPass.UseSystemPasswordChar = !txtPass.UseSystemPasswordChar;
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text != "")
            {
                Login_User login_User = new Login_User();
                login_User.HoTen = txtSearch.Text;

                dtgvUser.DataSource = login_UserBUS.SearchUserIfName(login_User);
            }
            else
            {
                LoadData();
            }
        }

        private void txtSearch_Click(object sender, EventArgs e)
        {
            txtSearch.Text = "";
        }

        private void btnSave_Click(object sender, EventArgs e)
        {


            AddUser();
            LoadData();

        }
        #endregion

        #region Sub Events
        private void cbxDecentralization_Click(object sender, EventArgs e)
        {
            cbxDecentralization.DroppedDown = true;
        }

        #endregion

        #region Load
        private void RegisterMember_Load(object sender, EventArgs e)
        {
            //Cố định header ở datagridview
            dtgvUser.AllowUserToResizeColumns = false;

            dtgvUser.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            LoadAnimation();

            LoadData();

            dtgvUser.Focus();
        }
        #endregion



        private void dtgvUser_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dtgvUser.Columns[e.ColumnIndex].Name == "btnEdit")
            {
                DataGridViewRow row = dtgvUser.SelectedCells[0].OwningRow;
                Login_User login_User = new Login_User();
                login_User.STT = int.Parse(row.Cells["STT"].Value.ToString());
                login_User.TaiKhoan = row.Cells["TaiKhoan"].Value.ToString();
                login_User.MatKhau = row.Cells["MatKhau"].Value.ToString();
                login_User.HoTen = row.Cells["HoTen"].Value.ToString();
                login_User.SDT = row.Cells["SDT"].Value.ToString();
                login_User.LoaiDN = row.Cells["LoaiDN"].Value.ToString();


                EditUser editform = new EditUser(login_User);
                editform.ShowDialog();

            }
            else if (dtgvUser.Columns[e.ColumnIndex].Name == "btnDelete")
            {
                DialogResult dialogResult = MessageBox.Show("Bạn có chắc là muốn làm việc này", "WARNING", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    DataGridViewRow row = dtgvUser.SelectedCells[0].OwningRow;
                    values[0] = row.Cells["STT"].Value.ToString();

                    login_UserBUS.DeleteUser(values[0]);
                    MessageBox.Show("Delete complete.");
                }
                else if (dialogResult == DialogResult.No)
                {
                    //do something else
                }


            }
            LoadData();
        }

        private void dtgvUser_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
        {
            // F1 : Thêm
            if (e.KeyCode == Keys.F1)
            {
                LoadAnimation();
            }
            // F4: sửa
            else if (e.KeyCode == Keys.F4)
            {
                DataGridViewRow row = dtgvUser.SelectedCells[0].OwningRow;
                Login_User login_User = new Login_User();
                login_User.STT = int.Parse(row.Cells["STT"].Value.ToString());
                login_User.TaiKhoan = row.Cells["TaiKhoan"].Value.ToString();
                login_User.MatKhau = row.Cells["MatKhau"].Value.ToString();
                login_User.HoTen = row.Cells["HoTen"].Value.ToString();
                login_User.SDT = row.Cells["SDT"].Value.ToString();
                login_User.LoaiDN = row.Cells["LoaiDN"].Value.ToString();


                EditUser editform = new EditUser(login_User);
                editform.ShowDialog();
            }
            // F8 : xóa
            else if (e.KeyCode == Keys.F8)
            {
                DialogResult dialogResult = MessageBox.Show("Bạn có chắc là muốn làm việc này", "WARNING", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    DataGridViewRow row = dtgvUser.SelectedCells[0].OwningRow;
                    values[0] = row.Cells["STT"].Value.ToString();

                    login_UserBUS.DeleteUser(values[0]);
                    MessageBox.Show("Delete complete.");
                }
                else if (dialogResult == DialogResult.No)
                {
                    //do something else
                }
            }


            LoadData();
        }

        private void txtSearch_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                //enter key is down
                btnSearch_Click(null, null);
            }
        }

        #region Xử lý ngoại lệ
        private void panel_Item2_MouseEnter(object sender, EventArgs e)
        {
            txtSearch.Text = "Name....";
            groupBox1.Focus();
        }






        #endregion

        #region Animation
        bool xxx = true;
        void LoadAnimation()
        {
            if (xxx)// hiển thị group2 đèn lên group1
            {
                groupBox2.Location = new Point(groupBox1.Location.X, groupBox1.Location.Y);
                groupBox1.Visible = false;
            }
            else// hiển thị group2 chạy xuông và  group1 hiện thị
            {
                label6.Visible = false;
                timer1.Enabled = true;
                timer1.Interval = 2;
            }
            xxx = !xxx;
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            int i = groupBox1.Location.Y;
            while (i < groupBox1.Location.Y + groupBox1.Height + 10)
            {
                i++;
                groupBox2.Location = new Point(groupBox1.Location.X, i);
            }
            timer1.Enabled = false;
            label6.Visible = true;
            groupBox1.Visible = true;
        }
        #endregion

    }
}
