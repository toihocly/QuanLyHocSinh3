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

namespace Quanlyhocsinhcap3.GUI.GUI_Teacher
{
    public partial class SearchTeacher2 : UserControl
    {
        #region Call Class
        // năm
        YearBUS yearBUS = new YearBUS();
        // phân công
        AssignmentTeacherBUS assteacherBUS = new AssignmentTeacherBUS();
        #endregion
        // Teacher
        TeacherBUS teacherBUS = new TeacherBUS();



        public SearchTeacher2()
        {
            InitializeComponent();
        }

        List<string> values = new List<string>(new string[] { "MaNH", "MaHS" });




        #region method
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



        #endregion

        #region Events
        private void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                //values[0] : mã năm học  | values[1] : mã giáo viên
                // biến toàn cục khai báo ở trên
                values[0] = cbxYear.SelectedValue.ToString();
                values[1] = txtIDTeacher.Text;
                if (teacherBUS.ExistsOfTeacher(values[1]) == 0)
                    throw new Exception();

                Load_Teacher(values[1]);

                dataGridView1.DataSource = assteacherBUS.SearchValue2(values[0], values[1]);

                Load_Display(1);
            }
            catch (Exception)
            {
                Load_Display(2);
            }
           
        }
        #endregion

        #region Sub Events
        private void cbxYear_Click(object sender, EventArgs e)
        {
            cbxYear.DroppedDown = true;
        }
        #endregion


        #region Load
        private void SearchTeacher2_Load(object sender, EventArgs e)
        {
            //Cố định header ở datagridview
            dataGridView1.AllowUserToResizeColumns = false;

            dataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            
            Load_Display(2);
            Handling_Year();

        }





        #endregion

        private void txtIDTeacher_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                //enter key is down
                btnSearch_Click(null, null);
            }

        }
    }
}
