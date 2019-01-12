using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Threading;
using Quanlyhocsinhcap3.GUI.GUI_Student;
using Quanlyhocsinhcap3.BUS;
using Quanlyhocsinhcap3.DTO;

namespace Quanlyhocsinhcap3
{
    public partial class ADDStudent : UserControl
    {

        DataHocSinhEntities db = new DataHocSinhEntities();
        StudentBUS studentBUS = new StudentBUS();
        public ADDStudent()
        {
            InitializeComponent();
            
            
        }



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


        void LoadData()
        {

            //xóa hết các text trước đó
            ClearTextBoxes(groupBox1);

            var result = from c in db.HOCSINHs select  new {  c.MaHS ,  c.TenHS , GioiTinh = (c.GioiTinh == true ? "Nam" :"Nữ") ,   c.NgaySinh ,  c.DiaChi};
            dtgvStudent.DataSource = result.ToList(); 
         
        }

        void AddStudent()
        {
            try
            {
                if (txtDateOfBirth.Text == "")
                {
                    MessageBox.Show("Không được để trống ngày sinh");
                    throw new Exception();
                }
                Student student = new Student();
                student.TenHS = txtName.Text;
                bool sex = false;
                if (cbxSex.Text == "Nam")
                    sex = true;
                student.GioiTinh = sex;
                student.NgaySinh = dateTimePicker1.Value;
                student.DiaChi = txtAddress.Text;
                // thêm dữ liệu vào csdl
                studentBUS.InsertStudent(student);
                
            }
            catch
            {
                MessageBox.Show("Xãy ra lỗi", "WARING AddStudent");
            }
            
        }

        void SreachValue()
        {
            try
            {
                if (txtSearch.Text != "")
                {
                    int x = int.Parse(txtSearch.Text);
                    var query = from c in db.HOCSINHs
                             where c.MaHS == x
                             select new { c.MaHS, c.TenHS, GioiTinh = c.GioiTinh == true ? "Nam" : "Nữ", c.NgaySinh, c.DiaChi };
               
                
                    // kiểm tra tính đúng của dữ liệu
                    var result = query.FirstOrDefault(); // gives first result or null
                    if (result == null)
                    {

                        MessageBox.Show("Không tồn tại học sinh", "WARNING");
                        return;
                    }
                    dtgvStudent.DataSource = query.ToList();
                }
                else
                {
                    var query = from c in db.HOCSINHs
                                select new { c.MaHS, c.TenHS, GioiTinh = c.GioiTinh == true ? "Nam" : "Nữ", c.NgaySinh, c.DiaChi };

                    
                    dtgvStudent.DataSource = query.ToList();
                }
                    
                
            }
            catch (Exception)
            {
                MessageBox.Show("Chương trình không nhận kí tự chữ", "WARNING");
            }
                
           
        }

        #endregion

      

        #region Events
        private void dtgvStudent_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
        {
            // F1 : Thêm
            if (e.KeyCode == Keys.F1)
            {
                LoadAnimation();
            }
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            txtDateOfBirth.Text = dateTimePicker1.Value.ToString("dd/MM/yyyy");
        }


        private void btnSave_Click(object sender, EventArgs e)
        {
            // thêm học sinh
            AddStudent();
            //load lại dữ liệu
            LoadData();
        }

        private void cbxSex_KeyUp(object sender, KeyEventArgs e)
        {
            cbxSex.Text = "";
        }

        private void txtSearch_Click(object sender, EventArgs e)
        {
            txtSearch.Text = "";
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            SreachValue();
        }

        private void txtSearch_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                //enter key is down
                btnSearch_Click(null, null);
            }
        }

        private void dtgvStudent_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dtgvStudent.Columns[e.ColumnIndex].Name == "btnEdit")
            {
                DataGridViewRow row = dtgvStudent.SelectedCells[0].OwningRow;
                var id = int.Parse(row.Cells["MaHS"].Value.ToString());
                var name = row.Cells["TenHS"].Value.ToString();
                var sex = row.Cells["GioiTinh"].Value.ToString();
                var date = (DateTime)row.Cells["NgaySinh"].Value;
                var address = row.Cells["DiaChi"].Value.ToString();
                EditStudent editform = new EditStudent(id, name, sex, date, address);
                editform.ShowDialog();

            }
            else if (dtgvStudent.Columns[e.ColumnIndex].Name == "btnDelete")
            {
                DialogResult dialogResult = MessageBox.Show( "Bạn có chắc là muốn làm việc này", "WARNING", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    try
                    {
                        DataGridViewRow row = dtgvStudent.SelectedCells[0].OwningRow;
                        var id = int.Parse(row.Cells["MaHS"].Value.ToString());
                        HOCSINH hs = db.HOCSINHs.Find(id);
                        db.HOCSINHs.Remove(hs);
                        db.SaveChanges();
                        MessageBox.Show("Delete complete.");
                    }
                    catch (Exception)
                    {
                        MessageBox.Show("Học sinh đang được sử dụng không xóa được", "WARNING");
                    }
                   
                }
                else if (dialogResult == DialogResult.No)
                {
                    //do something else
                }


            }

            LoadData();
        }

        #endregion


        #region Load
        private void ADDStudent_Load(object sender, EventArgs e)
        {
            //Cố định header ở datagridview
            dtgvStudent.AllowUserToResizeColumns = false;

            dtgvStudent.SelectionMode = DataGridViewSelectionMode.FullRowSelect;

            LoadAnimation();
            LoadData();

            dtgvStudent.Focus();

        }
        #endregion




        #region Xử lý ngoại lệ
        // xử lý ngoại lệ

        private void panel_Item2_MouseEnter(object sender, EventArgs e)
        {

            txtSearch.Text = "MSSV....";
            groupBox1.Focus();
        }

        private void cbxSex_Click(object sender, EventArgs e)
        {
            cbxSex.DroppedDown = true;
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
