using Quanlyhocsinhcap3.BUS;
using Quanlyhocsinhcap3.DAO;
using Quanlyhocsinhcap3.DTO;
using Quanlyhocsinhcap3.GUI.GUI_ArrangeClass;
using Quanlyhocsinhcap3.GUI.GUI_Assignment;
using Quanlyhocsinhcap3.GUI.GUI_Grade;
using Quanlyhocsinhcap3.GUI.GUI_Login;
using Quanlyhocsinhcap3.GUI.GUI_Student;
using Quanlyhocsinhcap3.GUI.GUI_Teacher;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quanlyhocsinhcap3
{
    public partial class MainProcess : Form
    {


        #region Call Class
        Login_UserBUS userBUS = new Login_UserBUS();
        #endregion

        #region Include Usercontrol
        AboutUs aboutUs = null;
        AboutMe aboutMe = null;

        // phần quyền
        //Admin
        //  Employee
        ADDStudent student = null;
        ADDTeacher teacher = null;
        ADDGrade grade = null;
        ADDAssignment ass = null;
        ArrangeClass arr = null;
        MOVEStudentINTOClass sortclass = null;
        StudentSCORSES studentscores = null;
        RelativesOfStudent relatives = null;
        //  Viewer
        //
        SearchTeacher1 searteacher1 = null;
        SearchTeacher2 searteacher2 = null;
        //
        SearchGrade1 seargrade1 = null;
        //
        SearchStudent1 searstudent1 = null;
        SearchStudent2 searstudent2 = null;


        RegisterMember registerMember = null;
        #endregion

        #region Support
        Support support = new Support();

        Terminal_EnittyFramwork terminal = null;
        #endregion


        public MainProcess(string IDLogin )
        {
            InitializeComponent();
            AuthorizeTheUser(IDLogin);
            values[0] = IDLogin;

        }

        List<string> values = new List<string>(new string[] { "STT"});

        #region Method
        void DeleteTrash()
        {
            #region Delete Usercontrol
            support.DeleteControlTrash(this, aboutUs);
            support.DeleteControlTrash(this, aboutMe);



            support.DeleteControlTrash(this, student);
            support.DeleteControlTrash(this, grade);
            support.DeleteControlTrash(this, arr);
            support.DeleteControlTrash(this, relatives);
            support.DeleteControlTrash(this, teacher);
            support.DeleteControlTrash(this, sortclass);

            //
            support.DeleteControlTrash(this, searteacher1);
            support.DeleteControlTrash(this, searteacher2);
            //
            support.DeleteControlTrash(this, seargrade1);

            //
            support.DeleteControlTrash(this, searstudent1);
            support.DeleteControlTrash(this, searstudent2);

            //
            support.DeleteControlTrash(this, terminal);
            support.DeleteControlTrash(this, registerMember);
            #endregion
            
            #region Delete Checkedbutton
            ribbon_btnStudent.Checked = false;
            ribbon_btnSortClass.Checked = false;
            ribbon_btnTeacherAssigment.Checked = false;
            btnUpClass.Checked = false;
            ribbon_btnTeacher.Checked = false;
            ribbon_btnScorse.Checked = false;
            ribbonButton1.Checked = false;
            ribbonbtnRelatives.Checked = false;
            ribbonButton8.Checked = false;
            ribbonButton9.Checked = false;
            ribbonButton6.Checked = false;
            ribbonButton3.Checked = false;
            ribbonButton10.Checked = false;
            ribbonButton4.Checked = false;
            ribbon_Class.Checked = false;
            ribbon_btnSortClass2.Checked = false;

            #endregion


        }


        void AuthorizeTheUser(string IDLogin)
        {
            // search all by idlogin
            DataTable dt = new DataTable();
            try
            {
                dt = userBUS.SearchUserIfId(IDLogin);
                string MaDN = dt.Rows[0]["LoaiDN"].ToString();
                switch (MaDN)
                {
                    case "Admin":
                        {
                            break;
                        }
                    case "Employee":
                        {
                            ribbonPanel6.Visible = false;
                            ribbonPanel10.Visible = false;
                            break;
                        }
                    case "Viewer":
                        {
                            ribbonTab1.Visible = false;
                            // thiết lập tab hiển thị
                            ribbon1.ActiveTab = ribbonTab2;
                            break;
                        }
                    default:
                        break;
                }
            }
            catch (Exception)
            {

            }


        }
        #endregion

        
        #region Event

        // nút học bấm học sinh
        private void ribbon_btnStudent_Click(object sender, EventArgs e)
        {
            DeleteTrash();
            ribbon_btnStudent.Checked = true;

            student = new ADDStudent();
            this.Controls.Add(student);
            support.MoveDesignToPanel(student, panelMain);
            student.BringToFront();

        }



        private void ribbon_btnSortClass_Click(object sender, EventArgs e)
        {
            DeleteTrash();
            ribbon_btnSortClass.Checked = true;

            sortclass = new MOVEStudentINTOClass();
            support.MoveDesignToPanel(sortclass, panelMain);
            this.Controls.Add(sortclass);
            sortclass.BringToFront();
        }

        private void ribbon_btnTeacherAssigment_Click(object sender, EventArgs e)
        {

            DeleteTrash();
            ribbon_btnTeacherAssigment.Checked = true;

            ass = new ADDAssignment();
            support.MoveDesignToPanel(ass, panelMain);
            this.Controls.Add(ass);
            ass.BringToFront();

        }

        private void ribbon_btnTeacher_Click(object sender, EventArgs e)
        {
            //oke
            DeleteTrash();
            ribbon_btnTeacher.Checked = true;

            teacher = new ADDTeacher();
            support.MoveDesignToPanel(teacher, panelMain);
            this.Controls.Add(teacher);
            teacher.BringToFront();
        }

        private void ribbon_btnScorse_Click(object sender, EventArgs e)
        {
            //oke
            DeleteTrash();
            ribbon_btnScorse.Checked = true;

            studentscores = new StudentSCORSES();
            support.MoveDesignToPanel(studentscores, panelMain);
            this.Controls.Add(studentscores);
            studentscores.BringToFront();
        }

        private void ribbonButton1_Click(object sender, EventArgs e)
        {
            //oke
            DeleteTrash();
            ribbonButton1.Checked = true;

            terminal = new Terminal_EnittyFramwork();
            support.MoveDesignToPanel(terminal, panelMain);
            this.Controls.Add(terminal);
            terminal.BringToFront();

        }

        private void btnUpClass_Click(object sender, EventArgs e)
        {

            DeleteTrash();
            btnUpClass.Checked = true;

            UpGrade upgrade = new UpGrade();
            upgrade.Show();
        }

       
        private void ribbonbtnRelatives_Click(object sender, EventArgs e)
        {
            //oke
            DeleteTrash();
            ribbonbtnRelatives.Checked = true;

            relatives = new RelativesOfStudent();
            support.MoveDesignToPanel(relatives, panelMain);
            this.Controls.Add(relatives);
            relatives.BringToFront();
        }

        private void ribbonButton8_Click(object sender, EventArgs e)
        {
            // oke
            DeleteTrash();
            ribbonButton8.Checked = true;

            searteacher1 = new SearchTeacher1();
            support.MoveDesignToPanel(searteacher1, panelMain);
            this.Controls.Add(searteacher1);
            searteacher1.BringToFront();
        }

        private void ribbonButton9_Click(object sender, EventArgs e)
        {
            //oke
            DeleteTrash();
            ribbonButton9.Checked = true;

            searteacher2 = new SearchTeacher2();
            support.MoveDesignToPanel(searteacher2, panelMain);
            this.Controls.Add(searteacher2);
            searteacher2.BringToFront();
        }

        private void ribbonButton6_Click(object sender, EventArgs e)
        {
            DeleteTrash();
            ribbonButton6.Checked = true;

            seargrade1 = new SearchGrade1();
            support.MoveDesignToPanel(seargrade1, panelMain);
            this.Controls.Add(seargrade1);
            seargrade1.BringToFront();
        }

        private void ribbonButton3_Click(object sender, EventArgs e)
        {
            DeleteTrash();
            ribbonButton3.Checked = true;

            searstudent1 = new SearchStudent1();
            support.MoveDesignToPanel(searstudent1, panelMain);
            this.Controls.Add(searstudent1);
            searstudent1.BringToFront();
        }

        private void ribbonButton10_Click(object sender, EventArgs e)
        {
            DeleteTrash();
            ribbonButton10.Checked = true;

            registerMember = new RegisterMember();
            support.MoveDesignToPanel(registerMember, panelMain);
            this.Controls.Add(registerMember);
            registerMember.BringToFront();
        }
        // Trở lại màn hình đăng nhập
        private void ribbonOrbMenuItem2_Click(object sender, EventArgs e)
        {
            // quay trở lại màn hình đăng nhập
            this.Close();
            // mở lại 
            Process.Start("Quanlyhocsinhcap3.exe");


        }
        // thông tin về nhóm, tên ứng dụng
        private void ribbonOrbMenuItem1_Click(object sender, EventArgs e)
        {
            DeleteTrash();

            aboutUs = new AboutUs();
            support.MoveDesignToPanel(aboutUs, panelMain);
            this.Controls.Add(aboutUs);
            aboutUs.BringToFront();
        }

        private void ribbonOrbMenuItem3_Click(object sender, EventArgs e)
        {
            DeleteTrash();

            aboutMe = new AboutMe(values[0]);
            support.MoveDesignToPanel(aboutMe, panelMain);
            this.Controls.Add(aboutMe);
            aboutMe.BringToFront();
        }

        private void ribbonButton4_Click(object sender, EventArgs e)
        {
            DeleteTrash();
            ribbonButton4.Checked = true;

            searstudent2 = new SearchStudent2();
            support.MoveDesignToPanel(searstudent2, panelMain);
            this.Controls.Add(searstudent2);
            searstudent2.BringToFront();
        }

        private void ribbon_Class_Click(object sender, EventArgs e)
        {
            DeleteTrash();
            ribbon_Class.Checked = true;

            grade = new ADDGrade();
            this.Controls.Add(grade);
            support.MoveDesignToPanel(grade, panelMain);
            grade.BringToFront();
        }

        private void ribbon_btnSortClass2_Click(object sender, EventArgs e)
        {
            DeleteTrash();
            ribbon_btnSortClass2.Checked = true;

            arr = new ArrangeClass();
            this.Controls.Add(arr);
            support.MoveDesignToPanel(arr, panelMain);
            arr.BringToFront();
        }

        #endregion

        #region Load
        private void MainProcess_Load(object sender, EventArgs e)
        {
            this.MinimizeBox = true;
            this.MaximizeBox = false;


            Support.Locaion_Width = this.Location.X;
            Support.Locaion_Height = this.Location.Y;

            Support.Size_Width = this.Size.Width;
            Support.Size_Height = this.Size.Height;

            ribbonOrbMenuItem1_Click(null, null);

        }



        #endregion

      
    }
}
