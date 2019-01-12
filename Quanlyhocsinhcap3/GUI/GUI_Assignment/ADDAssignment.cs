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

namespace Quanlyhocsinhcap3.GUI.GUI_Assignment
{
    public partial class ADDAssignment : UserControl
    {
        #region Call Class

        // khối 
        GradeLevelBUS gradeLevelBUS = new GradeLevelBUS();
        // lớp học
        GradeBUS gradeBUS = new GradeBUS();
        // năm học
        YearBUS yearBUS = new YearBUS();
        // xếp lớp
        AssignmentTeacherBUS assBUS = new AssignmentTeacherBUS();
        // học sinh
        TeacherBUS teacherBUS = new TeacherBUS();
        // môn học
        SubjectBUS subjectBUS = new SubjectBUS();
        #endregion



        public ADDAssignment()
        {
            InitializeComponent();
        }

        List<string> values = new List<string>(new string[] { "MaPC", "MaNH", "MaKH", "MaLH", "MaGV", "MaMH" });

        #region Method

        void Reset_value()
        {
            txtMaGV.Text = "";
        }


        void Load_Display(int i)
        {
            switch (i)
            {
                case 1:
                    {
                        foreach (Control item in groupBox1.Controls)
                        {
                            item.Visible = true;
                        }
                        foreach (Control item in groupBox2.Controls)
                        {
                            item.Visible = true;
                        }
                       
                        break;
                    }
                case 2:
                    {
                        foreach (Control item in groupBox1.Controls)
                        {
                            item.Visible = false;
                        }
                        foreach (Control item in groupBox2.Controls)
                        {
                            item.Visible = false;
                        }
                       // groupBox1.Visible = false;
                       // groupBox2.Visible = false;
                        break;
                    }
                default:
                    break;
            }
        }



        void ClearData()
        {
            cbxGrade.DataSource = null;

        }

        void Handling_Year()
        {
            cbxYear.DataSource = yearBUS.ShowYear();
            cbxYear.DisplayMember = "TenNH";
            cbxYear.ValueMember = "MaNH";
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

        void Handling_Grade()
        {
            // values[1] : mã năm học | values[2] : mã khối học
            // clear dữ liệu cũ
            ClearData();
            int _check;
            if (int.TryParse(cbxYear.SelectedValue.ToString(), out _check) &&
                int.TryParse(cbxGradeLevel.SelectedValue.ToString(), out _check))
            {
                values[1] = (cbxYear.SelectedValue.ToString());
                values[2] = (cbxGradeLevel.SelectedValue.ToString());

                // Lấy lên toàn bộ lớp thỏa mã năm học , mã khối học
                try
                {

                    cbxGrade.DataSource = gradeBUS.ShowClassIf(values[1], values[2]);
                    cbxGrade.ValueMember = "MaLH";
                    cbxGrade.DisplayMember = "TenLH";



                }
                catch (Exception)
                {
                }
            }

        }

        void Load_Assignment()
        {
            if (cbxGrade.SelectedValue != null)
            {
                // values[3] : mã lớp học
                int _check;
                if (int.TryParse(cbxGrade.SelectedValue.ToString(), out _check))
                {
                    values[3] = cbxGrade.SelectedValue.ToString();
                    try
                    {
                        dtgvGrade.DataSource = assBUS.ShowAllDataText2(values[3]);
                        // hiển thị dữ liệu
                        Load_Display(1);
                    }
                    catch (Exception)
                    {
                        Load_Display(2);
                    }

                }
            }
            else
            {
                Load_Display(2);
            }

        }

        void Handling_Subject()
        {
            if(int.TryParse(cbxGrade.SelectedValue.ToString(),out int _check))
            { 
                // Hiển thị khối học ví dụ : 10 , 11 , 12
                cbxSubject.DataSource = subjectBUS.ShowSubjectNotRegister(cbxGrade.SelectedValue.ToString());
                cbxSubject.DisplayMember = "TenMH";
                cbxSubject.ValueMember = "MaMH";
            }
           

        }
        #endregion

        #region Events
        private void cbxYear_TextChanged(object sender, EventArgs e)
        {
                Handling_GradeLevel();
            //if (cbxYear.SelectedValue != null)
            //{
            //}
        }

        private void cbxGradeLevel_TextChanged(object sender, EventArgs e)
        {
            if (cbxGradeLevel.SelectedValue != null)
            {
                Handling_Grade();
            }
        }



        private void cbxGrade_TextChanged(object sender, EventArgs e)
        {
            if (cbxGrade.SelectedValue != null)
            {
                Handling_Subject();
                Load_Assignment();

            }
        }

        private void dtgvGrade_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
        {

            if (e.KeyCode == Keys.F8)
            {
                DialogResult dialogResult = MessageBox.Show("Bạn có chắc là muốn làm việc này", "WARNING", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    // values[3] : mã lớp học | values[4] : mã giáo viên | values[5] : mã môn học 
                    DataGridViewRow row = dtgvGrade.SelectedCells[0].OwningRow;
                    values[3] = (row.Cells["MaLH"].Value.ToString());
                    values[4] = (row.Cells["MaGV"].Value.ToString());
                    values[5] = (row.Cells["MaMH"].Value.ToString());
                    try
                    {
                        // gọi đến BUS để xử lý (thêm vào CSDL)
                        //assBUS.de(mapc);
                        //
                        assBUS.Delete(values[4], values[3], values[5]);

                        MessageBox.Show("Delete complete.");
                        // load lại đữ liệu
                        Load_Assignment();
                    }
                    catch (Exception)
                    {

                    }

                }
            }
        }


        private void btnSave_Click(object sender, EventArgs e)
        {
            // values[3] : mã lớp học | values[4] : mã giáo viên  | values[5] : mã môn học

            try
            {
                values[4] = (txtMaGV.Text);
                values[3] = cbxGrade.SelectedValue.ToString();
                values[5] = cbxSubject.SelectedValue.ToString();
                if (teacherBUS.ExistsOfTeacher(values[4]) == 0)
                    throw new Exception();

                // xác nhận
                OKEAssignment oke = new OKEAssignment(values[3], values[4], values[5]);
                oke.ShowDialog();
                //diaglog xác nhận
                cbxGrade_TextChanged(null, null);
            }
            catch (Exception)
            {
                MessageBox.Show("Không đủ thông tin để thực hiện thao tác", "WARNING");
            }
           
                Reset_value();
        }
        #endregion

        #region Sub Events

        #endregion

        #region Load

        private void ADDAssignments_Load(object sender, EventArgs e)
        {
            Load_Display(2);

            // cố định header
            dtgvGrade.AllowUserToResizeColumns = false;
            dtgvGrade.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            

            Handling_Year();
            Handling_GradeLevel();
        }





        #endregion

        private void txtMaGV_KeyDown(object sender, KeyEventArgs e)
        {
          if(e.KeyCode == Keys.Enter)
            {
                btnSave_Click(null, null);
            }
        }
    }

}
