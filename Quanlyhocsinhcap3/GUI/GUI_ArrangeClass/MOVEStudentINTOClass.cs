using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Threading;
using System.Data.Entity.SqlServer;
using Quanlyhocsinhcap3.BUS;
using Quanlyhocsinhcap3.DTO;

namespace Quanlyhocsinhcap3
{
    public partial class MOVEStudentINTOClass : UserControl
    {
        DataHocSinhEntities db = new DataHocSinhEntities();
        #region Call Class
        // khối 
        GradeLevelBUS gradeLevelBUS = new GradeLevelBUS();
        // lớp học
        GradeBUS gradeBUS = new GradeBUS();
        // năm học
        YearBUS yearBUS = new YearBUS();
        // xếp lớp
        ArrangeClassBUS ArrangeClassBUS = new ArrangeClassBUS();
        // học sinh
        StudentBUS studentBUS = new StudentBUS();
        #endregion

        public MOVEStudentINTOClass()
        {
            InitializeComponent();

        }

        List<string> values = new List<string>(new string[] { "MaXL", "MaNH", "MaKH","MaLH","MaHS" });


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


        void ClearData()
        {
            cbxGrade.DataSource = null;
            lsbStudentOFClass.DataSource = null;

        }


        void Handling_StudentNotHaveClass()
        {

            lsbStudentNotHaveClass.DataSource = studentBUS.ShowStudentNoHaveGrade();
            lsbStudentNotHaveClass.ValueMember = "MaHS";
            lsbStudentNotHaveClass.DisplayMember = "TenHS";


            #region Code cách 2 .Entity
            //try
            //{
            //    int yearold = int.Parse(cbxGradeLevel.SelectedValue.ToString());

            //    if (yearold == 1) yearold = 18;
            //    else if (yearold == 2) yearold = 17;
            //    else if (yearold == 3) yearold = 16;

            //    int nowyear = int.Parse(DateTime.Now.Year.ToString());

            //    int idyear = int.Parse(cbxYear.SelectedValue.ToString());

            //    int xxx = nowyear - yearold;
            //    var result1 = from xl in db.XEPLOPs
            //                  join hs in db.HOCSINHs on xl.MaHS equals hs.MaHS
            //                  join lh in db.LOPHOCs on xl.MaLH equals lh.MaLH
            //                  join nh in db.NAMHOCs on lh.MaNH equals nh.MaNH
            //                  where lh.MaNH == idyear
            //                  select new { hs.MaHS, hs.TenHS };

            //    var result2 = from hs in db.HOCSINHs
            //                  where !result1.Any(e => e.MaHS == hs.MaHS) && SqlFunctions.DatePart("year", hs.NgaySinh) == xxx
            //                  select new { hs.MaHS, hs.TenHS };


            //    if (result2.Any())// nếu câu lệnh đúng
            //    {
            //        lsbStudentNotHaveClass.DataSource = result2.ToList();
            //        lsbStudentNotHaveClass.ValueMember = "MaHS";
            //        lsbStudentNotHaveClass.DisplayMember = "TenHS";
            //    }
            //    else
            //    {
            //        lsbStudentNotHaveClass.DataSource = null;
            //    }


            //}
            //catch (Exception)
            //{


            //}
            #endregion

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
            // clear dữ liệu cũ
            ClearData();

            values[1] = (cbxYear.SelectedValue.ToString());
            values[2] = (cbxGradeLevel.SelectedValue.ToString());

            // Lấy lên toàn bộ lớp thỏa mã năm học , mã khối học
            cbxGrade.DataSource = gradeBUS.ShowClassIf(values[1], values[2]);
            cbxGrade.ValueMember = "MaLH";
            cbxGrade.DisplayMember = "TenLH";

        }

        void Handling_StudentOfClass()
        {

            // Parse giá trí  về kiểu int
            int _grade;
            if (int.TryParse(cbxGrade.SelectedValue.ToString(), out _grade))
            {
                // nạp dữ liệu vào đối tượng
                values[3] = cbxGrade.SelectedValue.ToString();

                lsbStudentOFClass.DataSource = ArrangeClassBUS.ShowArrangeClassIf(values[3]);
                lsbStudentOFClass.DisplayMember = "TenHS";
                lsbStudentOFClass.ValueMember = "MaXL";
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
                // xử lý dữ liệu ở lớp
                Handling_Grade();

                Handling_StudentNotHaveClass();

                Load_Display(1);
            }
            catch (Exception)
            {
                MessageBox.Show("Không đủ thông tin để thực hiện thao tác", "WARNING");
                Load_Display(2);
            }
           

        }

        private void cbxGrade_TextChanged(object sender, EventArgs e)
        {
            // Khi mà thay đổi lớp 
            // ==> xuất ra danh sách học sinh tương ứng trong lớp
            if (cbxGrade.Text != "")
                Handling_StudentOfClass();
        }

        private void btnRightToLeft_Click(object sender, EventArgs e)
        {
            try
            {
                //values[0]: mã xếp loại
                values[0] = (lsbStudentOFClass.SelectedValue.ToString());
                // xóa sinh viên ra khổi danh sách của lớp hiện hành
                ArrangeClassBUS.DeleteStudentFromGrade(values[0]);

                #region Code cách 2 . Entity
                //int _id;
                //int.TryParse(lsbStudentOFClass.Text, out _id);
                //XEPLOP xl = db.XEPLOPs.Find(_id);
                //db.XEPLOPs.Remove(xl);
                //db.SaveChanges();
                #endregion


                btnSearch_Click(null, null);
            }
            catch (Exception)
            {
                MessageBox.Show("Thao tác sai", "WARNING");
            }
            
        }

        private void btnLeftToRight_Click(object sender, EventArgs e)
        {
            
            try
            {
                //values[3]: mã lớp học | //values[4]: mã học sinh
                values[4] = (lsbStudentNotHaveClass.SelectedValue.ToString());
                values[3] = cbxGrade.SelectedValue.ToString();

                ArrangeClassBUS.AddStudentToGrade(values[4], values[3]);


                #region Code cách 2 . Entity
                //int idstudent = int.Parse(lsbStudentNotHaveClass.SelectedValue.ToString());
                //int idclass = int.Parse(cbxGrade.SelectedValue.ToString());
                //db.XEPLOPs.Add(new XEPLOP() { MaHS = idstudent, MaLH = idclass });
                //db.SaveChanges();
                #endregion


                btnSearch_Click(null, null);
            }
            catch (Exception)
            {
                MessageBox.Show("Thao tác sai", "WARNING");
            }

            

        }

        private void cbxYear_TextChanged(object sender, EventArgs e)
        {
            if (cbxYear.SelectedValue != null)
            {
                Handling_GradeLevel();
            }
        }
        #endregion

        #region Sub Events
        private void cbxYear_Click(object sender, EventArgs e)
        {
            cbxYear.DroppedDown = true;
        }

        private void cbxGrade_Click(object sender, EventArgs e)
        {
            cbxGrade.DroppedDown = true;
        }



        private void cbxGradeLevel_Click(object sender, EventArgs e)
        {
            cbxGradeLevel.DroppedDown = true;
        }
        #endregion

        #region Load
        private void MOVEStudentINTOClass_Load(object sender, EventArgs e)
        {
            Load_Display(2);

            Handling_Year();
            Handling_GradeLevel();
        }
        #endregion
        

    }
}
