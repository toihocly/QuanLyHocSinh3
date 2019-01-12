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

namespace Quanlyhocsinhcap3.GUI.GUI_Student
{
    public partial class SearchStudent1 : UserControl
    {
        #region Call Class
        // year
        YearBUS yearBUS = new YearBUS();
        //semester
        SemesterBUS semesterBUS = new SemesterBUS();
        // scores
        ScoresBUS scoresBUS = new ScoresBUS();
        // student
        StudentBUS studentBUS = new StudentBUS();
        #endregion

       



        public SearchStudent1()
        {
            InitializeComponent();
        }

        List<string> values = new List<string>(new string[] { "MaNH", "MaHK", "MaHS" });

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

        void Handling_Semester()
        {
            // Hiển thị khối học ví dụ : 10 , 11 , 12
            cbxSemester.DataSource = semesterBUS.ShowSemester();
            cbxSemester.DisplayMember = "TenHK";
            cbxSemester.ValueMember = "MaHK";

        }


        #endregion

        #region Events
        private void btnSearch_Click(object sender, EventArgs e)
        {
            //values[0] :Mã năm học  | values[1] : mã học kì | values[2] : mã học sinh
            try
            {
                values[0] = cbxYear.SelectedValue.ToString();
                values[1] = cbxSemester.SelectedValue.ToString();
                values[2] = txtMSHS.Text;
                //kiểm tra học sinh có tồn tại không
                if (studentBUS.ExistsOfStudent(values[2]) == 0)
                    throw new Exception();

                dataGridView1.DataSource = scoresBUS.SearchValue1(values[0], values[1], values[2]);

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

        private void cbxSemester_Click(object sender, EventArgs e)
        {
            cbxSemester.DroppedDown = true;
        }

        #endregion

        #region Load
        private void SearchStudent1_Load(object sender, EventArgs e)
        {
            //Cố định header ở datagridview
            dataGridView1.AllowUserToResizeColumns = false;

            dataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect;

            Load_Display(2);

            Handling_Year();
            Handling_Semester();


        }
        #endregion



     
       
    }
}
