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
    public partial class SETTING_Teacher3 : Form
    {
        #region Call Class
        AssignmentTeacherBUS assignmentTeacherBUS = new AssignmentTeacherBUS();
        Teacher gteacher = new Teacher();
        #endregion
        public SETTING_Teacher3(Teacher teacher)
        {
            InitializeComponent();
            values[0] = teacher.MaGV.ToString();
        }

        List<string> values = new List<string>(new string[] { "MaGV", "MaPC" });


        #region Method
        void Handling_Assignment()
        {

            lsbAssignment.DataSource = assignmentTeacherBUS.ShowManagermentList(values[0]);
            lsbAssignment.ValueMember = "MaPC";
            lsbAssignment.DisplayMember = "TenLH";

        }
        void Biding_Assignment()
        {
            int _id;
            if (int.TryParse(lsbAssignment.SelectedValue.ToString(), out _id))
            {
                values[1] = lsbAssignment.SelectedValue.ToString();
                DataTable dt = new DataTable();
                dt = assignmentTeacherBUS.ShowAllDataText1(values[1]);

                // databiding
                txtYear.DataBindings.Clear();
                txtYear.DataBindings.Add("Text", dt, "TenNH", true, DataSourceUpdateMode.Never);

                txtGradeLevel.DataBindings.Clear();
                txtGradeLevel.DataBindings.Add("Text", dt, "TenKH", true, DataSourceUpdateMode.Never);

                txtGrade.DataBindings.Clear();
                txtGrade.DataBindings.Add("Text", dt, "TenLH", true, DataSourceUpdateMode.Never);

                txtSubject.DataBindings.Clear();
                txtSubject.DataBindings.Add("Text", dt, "TenMH", true, DataSourceUpdateMode.Never);
            }

        }
        #endregion

        #region Events
        private void lsbAssignment_SelectedIndexChanged(object sender, EventArgs e)
        {
            Biding_Assignment();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {

            // hiển thị form add
            SETTING_Teacher2 set_teacher2 = new SETTING_Teacher2(gteacher);
            set_teacher2.ShowDialog();
            this.Close();
        }

        private void btnRemove_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Dữ liệu xẽ được xóa !!!");
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        #endregion

        #region Sub Events

        #endregion

        #region Load
        private void SETTING_Teacher3_Load(object sender, EventArgs e)
        {
            this.MinimizeBox = false;
            this.MaximizeBox = false;

            Handling_Assignment();
        }
        #endregion




        



       

        
    }
}
