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
using Quanlyhocsinhcap3.GUI;
using Quanlyhocsinhcap3.DAO;

namespace Quanlyhocsinhcap3
{
    public partial class ADDTeacher : UserControl
    {
        #region Call Class
        DataHocSinhEntities db = new DataHocSinhEntities();
        TeacherBUS teacherBUS = new TeacherBUS();
        Support support = new Support();

        SETTING_Teacher1 setting_teacher = null;
        #endregion

        public ADDTeacher()
        {
            InitializeComponent();
        }

        List<string> values = new List<string>(new string[] { "MaGV"});


        #region Methon
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

        void DeleteTrash()
        {
            support.DeleteControlTrash(this, setting_teacher);
        }


        void Load_Teacher()
        {
            //reset text
            ClearTextBoxes(groupBox1);
            

            // hiển thị thông tin của giáo viên
            dtgvTeacher.DataSource = teacherBUS.ShowTeacher();

        }

        void AddTeacher()
        {
            // khởi tạo đối tượng.
            Teacher teacher = new Teacher();
            // thêm dữ liệu cho đối tượng
            teacher.TenGV = txtName.Text;
            bool sex = false;
            if (cbxSex.Text == "Nam")
                sex = true;
            teacher.GioiTinh = sex;
            teacher.NgaySinh = dateTimePicker1.Value;
            teacher.CMND = txtIdentityCard.Text;
            teacher.SDT = txtPhone.Text;
            teacher.DiaChi = txtAddress.Text;
            // gọi đến BUS để xử lý (thêm vào CSDL)
            teacherBUS.InsertTeacher(teacher);

        }
        

        #endregion

        #region Event
        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            txtDateOfBirth.Text = dateTimePicker1.Value.ToString("dd/MM/yyyy");
        }

      

        private void cbxSex_Click(object sender, EventArgs e)
        {
            cbxSex.DroppedDown = true;
        }


        private void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtSearch.Text != "")
                {
                    //values[0] : mã giáo viên
                    values[0] = (txtSearch.Text);
                    if (teacherBUS.ExistsOfTeacher(values[0]) == 0)
                        throw new Exception();

                    dtgvTeacher.DataSource = teacherBUS.SearchTeacherIf(values[0]);
                }
                else
                {
                    Load_Teacher();
                }
            }
            catch (Exception)
            {
            }



        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            AddTeacher();

            Load_Teacher();
        }

        private void dtgvTeacher_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dtgvTeacher.Columns[e.ColumnIndex].Name == "btnSetting")
            {
                if (setting_teacher != null)
                {
                    setting_teacher.Close();
                    setting_teacher = null;
                }

                int width = Support.Locaion_Width + Support.Size_Width - 50;
                int height = Support.Locaion_Height + Support.Size_Height / 2 + 100;
                Point point = new Point(width, height);
                // MessageBox.Show(Cursor.Position.X.ToString() +","+ Cursor.Position.Y.ToString());



                if (setting_teacher == null)
                {
                    DataGridViewRow row = dtgvTeacher.SelectedCells[0].OwningRow;
                    Teacher teacher = new Teacher();
                    teacher.MaGV = int.Parse(row.Cells["MaGV"].Value.ToString());
                    setting_teacher = new SETTING_Teacher1(point, teacher);
                    setting_teacher.StartPosition = FormStartPosition.Manual;
                    //setting_teacher.Left = 500;
                    //setting_teacher.Top = 500;
                    setting_teacher.Show();
                    //Point point = new(this.Location)


                }
            }

        }

        private void txtSearch_Click(object sender, EventArgs e)
        {
            txtSearch.Text = "";
        }

        private void txtSearch_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                //enter key is down
                btnSearch_Click(null, null);
            }
        }

        private void dtgvTeacher_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
        {
            // F1 : Thêm
            if (e.KeyCode == Keys.F1)
            {
                LoadAnimation();
            }
            // F4 : Sửa
            else if (e.KeyCode == Keys.F4)
            {

                DataGridViewRow row = dtgvTeacher.SelectedCells[0].OwningRow;
                Teacher teacher = new Teacher();
                teacher.MaGV = int.Parse(row.Cells["MaGV"].Value.ToString());
                teacher.TenGV = row.Cells["TenGV"].Value.ToString();
                teacher.GioiTinh = (bool)row.Cells["GioiTinh"].Value;
                teacher.NgaySinh = (DateTime)row.Cells["NgaySinh"].Value;
                teacher.CMND = row.Cells["CMND"].Value.ToString();
                teacher.SDT = row.Cells["SDT"].Value.ToString();
                teacher.DiaChi = row.Cells["DiaChi"].Value.ToString();
                EditTeacher editform = new EditTeacher(teacher);
                editform.ShowDialog();
                //
                Load_Teacher();
            }
            // F8 : xóa
            else if (e.KeyCode == Keys.F8)
            {
                DialogResult dialogResult = MessageBox.Show("Bạn có chắc là muốn làm việc này", "WARNING", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {

                    DataGridViewRow row = dtgvTeacher.SelectedCells[0].OwningRow;
                    values[0] = (row.Cells["MaGV"].Value.ToString());

                    try
                    {
                        // gọi đến BUS để xử lý (thêm vào CSDL)
                        teacherBUS.DeleteTeacher(values[0]);
                        //
                        Load_Teacher();
                        MessageBox.Show("Delete complete.");
                    }
                    catch (Exception)
                    {
                    }

                }
            }



        }

        private void panel_Item1_MouseEnter(object sender, EventArgs e)
        {
            if (setting_teacher != null)
            {
                setting_teacher.Close();
                setting_teacher = null;
            }
        }



        #endregion


        #region Load
        private void ADDTeacher_Load(object sender, EventArgs e)
        {
            //Cố định header ở datagridview
            dtgvTeacher.AllowUserToResizeColumns = false;

            dtgvTeacher.SelectionMode = DataGridViewSelectionMode.FullRowSelect;

            LoadAnimation();

            Load_Teacher();

            dtgvTeacher.Focus();
        }
        #endregion
        

        #region Xử lý ngoại lệ
        private void panel_Item2_MouseEnter(object sender, EventArgs e)
        {
            txtSearch.Text = "MSSV....";
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
