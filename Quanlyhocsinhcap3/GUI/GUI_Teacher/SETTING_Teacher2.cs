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

namespace Quanlyhocsinhcap3.GUI
{
    public partial class SETTING_Teacher2 : Form
    {

        #region Call Class
        // khối 
        GradeLevelBUS gradeLevelBUS = new GradeLevelBUS();
        // lớp học
        GradeBUS gradeBUS = new GradeBUS();
        // năm học
        YearBUS yearBUS = new YearBUS();
        // môn học
        SubjectBUS subjectBUS = new SubjectBUS();
        // giáo viên
        AssignmentTeacherBUS assTeacherBUS = new AssignmentTeacherBUS();

        #endregion

        


        public SETTING_Teacher2(Teacher teacher) 
        {
            InitializeComponent();
            values[0] = teacher.MaGV.ToString() ;
        }

        List<string> values = new List<string>(new string[] { "MaGV", "MaNH", "MaKH","MaLH","MaMH" });

        #region Method
        void ClearData()
        {
            cbxGrade.DataSource = null;

        }

        void Handling_GradeLevel()
        {
            // Hiển thị khối học ví dụ : 10 , 11 , 12
            cbxGradeLevel.DataSource = gradeLevelBUS.ShowGradeLevel();
            cbxGradeLevel.DisplayMember = "TenKH";
            cbxGradeLevel.ValueMember = "MaKH";

        }

        void Handling_Subject()
        {
            // Hiển thị khối học ví dụ : 10 , 11 , 12
            cbxSubject.DataSource = subjectBUS.ShowSubject();
            cbxSubject.DisplayMember = "TenMH";
            cbxSubject.ValueMember = "MaMH";

        }


        void Handling_Grade()
        {
            // clear dữ liệu cũ
            ClearData();

            values[1] = (cbxYear.SelectedValue.ToString());
            values[2] = (cbxGradeLevel.SelectedValue.ToString());

            // Lấy lên toàn bộ lớp thỏa mã năm học , mã khối học
            cbxGrade.DataSource = gradeBUS.ShowClassIf(values[1], values[2]);
            cbxGrade.ValueMember = "MaLH";
            cbxGrade.DisplayMember = "TenLH";

        }


        void Handling_Year()
        {

            cbxYear.DataSource = yearBUS.ShowYear();
            cbxYear.DisplayMember = "TenNH";
            cbxYear.ValueMember = "MaNH";

        }


        #endregion

        #region Events
        private void cbxYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            // hiển thị khối
            Handling_GradeLevel();
        }

        private void cbxGradeLevel_SelectedIndexChanged(object sender, EventArgs e)
        {
            // hiển thị lớp
            Handling_Grade();
        }



        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            values[3] = (cbxGrade.SelectedValue.ToString());
            values[4] = (cbxSubject.SelectedValue.ToString());


            try
            {
                assTeacherBUS.Insert(values[0], values[3], values[4]);
                MessageBox.Show("Ghi nhận dữ liệu và cập nhật !!");
            }
            catch (Exception)
            {
                MessageBox.Show("Dữ liệu đã tồn tại");
            }




        }
        #endregion

        #region Sub Events

        #endregion

        #region Load
        private void SETTING_Teacher2_Load(object sender, EventArgs e)
        {
            this.MinimizeBox = false;
            this.MaximizeBox = false;
            // hiển thị năm học
            Handling_Year();
            // hiển thị khối
            Handling_GradeLevel();
            //
            Handling_Subject();

        }
        #endregion

        

    }
}
