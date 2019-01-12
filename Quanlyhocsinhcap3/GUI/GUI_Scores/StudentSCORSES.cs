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
using Quanlyhocsinhcap3.GUI.GUI_Scores;

namespace Quanlyhocsinhcap3
{
    public partial class StudentSCORSES : UserControl
    {


        #region Call Class
        // năm
        YearBUS yearBUS = new YearBUS();
        // khối
        GradeLevelBUS gradeLevelBUS = new GradeLevelBUS();
        //học kì
        SemesterBUS semesterBUS = new SemesterBUS();
        // môn học
        SubjectBUS subjectBUS = new SubjectBUS();
        // lớp
        GradeBUS gradeBUS = new GradeBUS();
        // điểm
        ScoresBUS scoresBUS = new ScoresBUS();
        // phân công 
        AssignmentTeacherBUS assTeacherBUS = new AssignmentTeacherBUS();
        #endregion

       
      



        public StudentSCORSES()
        {
            InitializeComponent();
        }

        List<string> values = new List<string>(new string[] { "MaPC", "MaNH", "MaKH", "MaMH" });
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


        // hàm bắt sự kiện key
        protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        {

            if (keyData == Keys.F5)
            {
                // Update điểm ở dưới hệ thống
                scoresBUS.UpdateScores();
                // chạy lại btn Search để cập nhật điểm
                //btnSearch_Click(null, null);
                //// Đã cập nhật xong
                MessageBox.Show("Cập nhật!!");
            }
            return base.ProcessCmdKey(ref msg, keyData);
        }


        void ClearData()
        {
            cbxGrade.DataSource = null;
            cbxSubject.DataSource = null;
            cbxSemester.DataSource = null;
        }


        void Handling_Year()
        {
            cbxYear.DataSource = yearBUS.ShowYear();
            cbxYear.ValueMember = "MaNH";
            cbxYear.DisplayMember = "TenNH";
        }

        void Handling_GradeLevel()
        {
            // clear dữ liệu cũ
            ClearData();
            // Hiển thị khối học ví dụ : 10 , 11 , 12
            if (int.TryParse(cbxYear.SelectedValue.ToString(), out int _check))
            {
                cbxGradeLevel.DataSource = gradeLevelBUS.ShowGradeLevel(cbxYear.SelectedValue.ToString());
                cbxGradeLevel.ValueMember = "MaKH";
                cbxGradeLevel.DisplayMember = "TenKH";
            }
        }

        void Handling_Semester()
        {
            // Hiển thị khối học ví dụ : 10 , 11 , 12
            cbxSemester.DataSource = semesterBUS.ShowSemester();
            cbxSemester.ValueMember = "MaHK";
            cbxSemester.DisplayMember = "TenHK";

        }



        void Handling_Grade()
        {
            // clear dữ liệu cũ
            ClearData();
            int _check;
            if (int.TryParse(cbxYear.SelectedValue.ToString(), out _check) &&
               int.TryParse(cbxGradeLevel.SelectedValue.ToString(), out _check))
            {
                values[1] = cbxYear.SelectedValue.ToString();
                values[2] = cbxGradeLevel.SelectedValue.ToString();

                // Lấy lên toàn bộ lớp thỏa mã năm học , mã khối học
                cbxGrade.DataSource = gradeBUS.ShowClassIf(values[1], values[2]);
                cbxGrade.ValueMember = "MaLH";
                cbxGrade.DisplayMember = "TenLH";
            }

        }

        void Handling_Subject()
        {
            if (int.TryParse(cbxGrade.SelectedValue.ToString(), out int _check))
            {
                cbxSubject.DataSource = subjectBUS.ShowSubject(cbxGrade.SelectedValue.ToString());
                cbxSubject.ValueMember = "MaMH";
                cbxSubject.DisplayMember = "TenMH";
            }
        }
        #endregion

        #region Event
        private void btnSearch_Click(object sender, EventArgs e)
        {
            
            try
            {

                values[1] = (cbxGrade.SelectedValue.ToString());
                values[2] = (cbxSemester.SelectedValue.ToString());
                values[3] = (cbxSubject.SelectedValue.ToString());


                // lấy ra mã phân công

                values[0] = (assTeacherBUS.ShowOneData(values[1], values[2], values[3])).ToString();

                dtgvStudentScorses.DataSource = scoresBUS.ShowScoresIf3Parameter(values[1], values[2], values[3]);
                Load_Display(1);
            }
            catch (Exception)
            {
                Load_Display(2);
                MessageBox.Show("Không đủ thông tin để thực hiện thao tác");
            }




        }

        private void cbxYear_TextChanged(object sender, EventArgs e)
        {
            if( cbxYear.SelectedValue !=null)
            {
                Handling_GradeLevel();
            }        
        }

        private void cbxGradeLevel_TextChanged(object sender, EventArgs e)
        {
            if(cbxGradeLevel.SelectedValue != null)
            {
                Handling_Grade();
            }

        }

        private void dtgvStudentScorses_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dtgvStudentScorses.Columns[e.ColumnIndex].Name == "btnUpdate")
            {
                DataGridViewRow row = dtgvStudentScorses.SelectedCells[0].OwningRow;
                Scores scores = new Scores();
                scores.MaPC = int.Parse(values[0]);
                scores.MaHS = int.Parse(row.Cells["MaHS"].Value.ToString());


                // xét điểm
                SETTING_Scores1 set_Scores1 = new SETTING_Scores1(scores);
                set_Scores1.ShowDialog();
                //
                btnSearch_Click(null, null);
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

        private void cbxSemester_Click(object sender, EventArgs e)
        {
            cbxSemester.DroppedDown = true;
        }

        private void cbxClass_Click(object sender, EventArgs e)
        {
            cbxGrade.DroppedDown = true;
        }

        private void cbxSubject_Click(object sender, EventArgs e)
        {
            cbxSubject.DroppedDown = true;
        }

        #endregion

        #region Load
        private void StudentSCORSES_Load(object sender, EventArgs e)
        {
            Load_Display(2);

            dtgvStudentScorses.SelectionMode = DataGridViewSelectionMode.FullRowSelect;

            Handling_Year();
            

            this.Focus();

        }
        #endregion

        private void cbxGrade_TextChanged(object sender, EventArgs e)
        {
            if(cbxGrade.SelectedValue != null)
            {
                Handling_Semester();
                Handling_Subject();
            }
        }
    }
}
