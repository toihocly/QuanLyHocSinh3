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

namespace Quanlyhocsinhcap3.GUI.GUI_ArrangeClass
{
    public partial class OKEArrabgeClass : Form
    {
        #region Call Class
        //student
        StudentBUS studentBUS = new StudentBUS();
        //Grade
        GradeBUS gradeBUS = new GradeBUS();
       
        //ArrangeClass
        ArrangeClassBUS arrBUS = new ArrangeClassBUS();
        #endregion


        public OKEArrabgeClass(string IDStudent,string IDGrade)
        {
            InitializeComponent();
            values[0] = IDStudent;
            values[1] = IDGrade;
        }

        List<string> values = new List<string>(new string[] { "MaHS", "MaLH" });
        

        #region Method


        void Load_Student(string mahs)
        {

            DataTable dt = new DataTable();
            try
            {
                dt = studentBUS.ShowStudentIf(mahs);
                txtNameStudent.DataBindings.Clear();
                txtNameStudent.DataBindings.Add("Text", dt, "TenHS", true, DataSourceUpdateMode.Never);
                //values[0] : mã học sinh
                txtIDStudent.Text = values[0];

                txtDateStudent.DataBindings.Clear();
                txtDateStudent.DataBindings.Add("Text", dt, "NgaySinh", true, DataSourceUpdateMode.Never);

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
               // tham số chuyền vào hoàn toán chính xác
                arrBUS.AddStudentToGrade(values[0], values[1]);
                this.Close();
            }
            catch (Exception)
            {

            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        #endregion

        #region Sub Events

        #endregion

        #region Load
        private void OKEArrabgeClass_Load(object sender, EventArgs e)
        {
            this.MaximizeBox = false;
            this.MinimizeBox = false;

            Load_Student(values[0]);
            Load_Grade(values[1]);
        }
        #endregion








    }
}
