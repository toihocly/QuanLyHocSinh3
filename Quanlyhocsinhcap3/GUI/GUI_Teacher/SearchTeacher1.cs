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

namespace Quanlyhocsinhcap3.GUI.GUI_Teacher
{
    public partial class SearchTeacher1 : UserControl
    {
        #region Call Class
        //Year
        YearBUS yearBUS = new YearBUS();
        //học kì
        GradeLevelBUS gradeLevelBUS = new GradeLevelBUS();
        //AssignmentTeacher
        AssignmentTeacherBUS assteacherBUS = new AssignmentTeacherBUS();
        //Teacher
        TeacherBUS teacherBUS = new TeacherBUS();
        #endregion
        public SearchTeacher1()
        {
            InitializeComponent();
        }

        List<string> values = new List<string>(new string[] { "MaNH", "MaKH", "MaGV" });
        

        #region Method

        void Load_Display(int i)
        {
            switch (i)
            {
                case 1:
                    {
                        foreach (Control item in groupBox2.Controls)
                        {
                            item.Visible = true;
                        }
                        break;
                    }
                case 2:
                    {
                        foreach (Control item in groupBox2.Controls)
                        {
                            item.Visible = false;
                        }
                        break;
                    }
                default:
                    break;
            }
        }


        void Handling_Year()
        {
            cbxYear.DataSource = yearBUS.ShowYear();
            cbxYear.DisplayMember = "TenNH";
            cbxYear.ValueMember = "MaNH";
        }

        void Handling_GradeLevel()
        {
            Load_Display(2);
            // Hiển thị khối học ví dụ : 10 , 11 , 12
            if (int.TryParse(cbxYear.SelectedValue.ToString(), out int _check))
            {
                cbxGradeLevel.DataSource = gradeLevelBUS.ShowGradeLevel(cbxYear.SelectedValue.ToString());
                cbxGradeLevel.ValueMember = "MaKH";
                cbxGradeLevel.DisplayMember = "TenKH";
            }


        }

        void Load_Teacher(string magv)
        {
            DataTable dt = new DataTable();

            try
            {
                dt = teacherBUS.SearchTeacherIf(magv);

                txtNameTeacher.DataBindings.Clear();
                txtNameTeacher.DataBindings.Add("Text", dt, "TenGV", true, DataSourceUpdateMode.Never);

            }
            catch (Exception)
            {
            }
        }

        #endregion

        #region Events

        private void cbxYear_TextChanged(object sender, EventArgs e)
        {
            if (cbxYear.SelectedValue != null)
            {
                Handling_GradeLevel();
            }
        }

        private void txtMaGV_KeyDown(object sender, KeyEventArgs e)
        {

            if (e.KeyCode == Keys.Enter)
            {
                //enter key is down
                btnSearch_Click(null, null);
            }
        }


        private void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                //values[0] : mã năm học |  values[1] : mã khối học |   values[2] :  mã giáo viên
                values[0] = (cbxYear.SelectedValue.ToString());
                values[1] = (cbxGradeLevel.SelectedValue.ToString());
                values[2] = (txtIDTeacher.Text);
                if (teacherBUS.ExistsOfTeacher(values[2]) == 0)
                    throw new Exception();

                Load_Teacher(values[2]);

                dataGridView1.DataSource = assteacherBUS.SearchValue1(values[0], values[1], values[2]);

                Load_Display(1);
            }
            catch (Exception)
            {
                MessageBox.Show("Không đủ thông tin để thực hiện thao tác", "WARNING");
                Load_Display(2);
            }
          
        }
        #endregion

        #region Sub Events
        private void cbxYear_Click(object sender, EventArgs e)
        {
            cbxYear.DroppedDown = true;
        }

        private void cbxGradeLevel_Click(object sender, EventArgs e)
        {
            cbxGradeLevel.DroppedDown = true;
        }
        #endregion

        #region Load
        private void SearchTeacher1_Load(object sender, EventArgs e)
        {
            //Cố định header ở datagridview
            dataGridView1.AllowUserToResizeColumns = false;
            
            dataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect;

            Load_Display(2);
            Handling_Year();

        }



















        #endregion
    }
}
