using Quanlyhocsinhcap3.BUS;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quanlyhocsinhcap3.GUI.GUI_Assignment
{
    public partial class OKEAssignment : Form
    {
        #region Call Class
        //student
        TeacherBUS teacherBUS = new TeacherBUS();
        //Grade
        GradeBUS gradeBUS = new GradeBUS();
        //Subject
        SubjectBUS subjectBUS = new SubjectBUS();
        //AssignmentTeacher
        AssignmentTeacherBUS assBUS = new AssignmentTeacherBUS();
        #endregion



        public OKEAssignment(string IDGrade, string IDTeacher, string IDSubject)
        {
            InitializeComponent();
            values[0] = IDGrade;
            values[1] = IDTeacher;
            values[2] = IDSubject;
        }

        List<string> values = new List<string>(new string[] { "MaLH", "MaGV","MaMH" });

        #region Method
        void Load_Teacher(string magv)
        {
            DataTable dt = new DataTable();
            try
            {
                dt = teacherBUS.SearchTeacherIf(magv);
                txtNameTeacher.DataBindings.Clear();
                txtNameTeacher.DataBindings.Add("Text", dt, "TenGV", true, DataSourceUpdateMode.Never);
                
                // binding more
            }
            catch (Exception)
            {

            }
        }

        void Load_Grade(string malh)
        {
            DataTable dt = new DataTable();
            try
            {
                dt = gradeBUS.ShowClassIf(malh);

                txtGrade.DataBindings.Clear();
                txtGrade.DataBindings.Add("Text", dt, "TenLH", true, DataSourceUpdateMode.Never);
                // binding more
            }
            catch (Exception)
            {

            }
        }

        void Load_Subject(string mamh)
        {
            DataTable dt = new DataTable();
            try
            {
                dt = subjectBUS.SearchSubjectIf(mamh);

                txtSubject.DataBindings.Clear();
                txtSubject.DataBindings.Add("Text", dt, "TenMH", true, DataSourceUpdateMode.Never);
                // binding more
            }
            catch (Exception)
            {

            }
        }




        #endregion

        #region Events
        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                //values[0]  : mã lớp học | values[1] : mã học sinh | values[2]: mã môn học
                assBUS.Insert(values[1], values[0], values[2]);
                this.Close();
            }
            catch (Exception)
            {
            }

        }

        private void OKEAssignment_Load(object sender, EventArgs e)
        {
            // values[0] : mã lớp | values[1] : mã giáo viên | values[2] : mã môn học
            Load_Grade(values[0]);
            Load_Teacher(values[1]);
            Load_Subject(values[2]);
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }




        #endregion

        #region Sub Events

        #endregion

        #region Load

        #endregion


    }
}
