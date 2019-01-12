using Quanlyhocsinhcap3.DAO;
using Quanlyhocsinhcap3.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quanlyhocsinhcap3.BUS
{
    class AssignmentTeacherBUS
    {
        AssignmentTeacherDAO ass_teacherDAO = new AssignmentTeacherDAO();

        /// <summary>
        /// hiển thị dữ liệu của bảng PHÂN CÔNG
        /// </summary>
        /// <returns>gv.MaGV,gv.TenGV,lh.TenLH , hk.TenHK, nh.TenNH,kh.TenKH, mh.TenMH</returns>
        public DataTable ShowViewData( )
        {
            try
            {
                return ass_teacherDAO.ShowViewData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// hiển thị dữ liệu của bảng PHÂN CÔNG theo mã giáo viên
        /// </summary>
        /// <param name="IDTeacher">string</param>
        /// <returns>pc.MaPC,lh.TenLH,nh.NamBatDau </returns>
        public DataTable ShowManagermentList(string IDTeacher)
        {
            try
            {
                Teacher teacher = new Teacher();
                teacher.MaGV = int.Parse(IDTeacher);

                return ass_teacherDAO.ShowManagermentList(teacher);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// hiển thị dữ liệu của bảng PHÂN CÔNG theo mã phân công
        /// </summary>
        /// <param name="assignment">string</param>
        /// <returns>gv.TenGV,nh.TenNH,kh.TenKH,lh.TenLH,mh.TenMH</returns>
        public DataTable ShowAllDataText1(string IDAssignmentTeacher)
        {
            try
            {
                Assignment assignment = new Assignment();
                assignment.MaPC = int.Parse(IDAssignmentTeacher);

                return ass_teacherDAO.ShowAllDataText1(assignment);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// hiển thị dữ liệu của bảng PHÂN CÔNG theo mã lớp học
        /// </summary>
        /// <param name="assignment">string</param>
        /// <returns>gv.TenGV,nh.TenNH,kh.TenKH,lh.TenLH,mh.TenMH</returns>
        public DataTable ShowAllDataText2(string IDGrade)
        {
            try
            {
                Assignment assignment = new Assignment();
                assignment.MaLH = int.Parse(IDGrade);

                return ass_teacherDAO.ShowAllDataText2(assignment);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        /// <summary>
        /// Hiển thị 1 dữ liệu là Mã phân công 
        /// </summary>
        /// <param name="IDGrade">string</param>
        /// <param name="IDGradeLevel">string</param>
        /// <param name="IDSubject">string</param>
        /// <returns> MaPC </returns>
        public int  ShowOneData(string IDGrade,string IDGradeLevel,string IDSubject)
        {
            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                Assignment assignment = new Assignment();
                strError = "Text not number1";
                assignment.MaLH = int.Parse(IDGrade);
                strError = "Text not number2";
                assignment.MaHK = int.Parse(IDGradeLevel);
                strError = "Text not number3";
                assignment.MaMH = int.Parse(IDSubject);

                return ass_teacherDAO.ShowOneData(assignment);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "Text not number1":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@1", "WARNING ShowOneData");

                            break;
                        }
                    case "Text not number2":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@2", "WARNING ShowOneData");

                            break;
                        }
                    case "Text not number3":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@2", "WARNING ShowOneData");

                            break;
                        }
                    default:
                        break;
                }

                return 0;
            }
        }
        /// <summary>
        /// thêm vào phân công cho giáo viên
        /// </summary>
        /// <param name="IDTeacher"></param>
        /// <param name="IDGrade"></param>
        /// <param name="Subject"></param>
        /// <returns> </returns>
        public int Insert(string IDTeacher,string IDGrade,string Subject )
        {
            try
            {
                Assignment assignment = new Assignment();
                assignment.MaGV = int.Parse(IDTeacher);
                assignment.MaLH = int.Parse(IDGrade);
                assignment.MaMH = int.Parse(Subject);

                return ass_teacherDAO.Insert(assignment);
            }
            catch (Exception ex)
            {

                MessageBox.Show("Phát hiện lỗi trùng dữ liệu", "WARNING Insert");
                return 0;
            }
        }

        


        public int Delete( string IDTeacher, string IDGrade, string IDSubject)
        {
            try
            {
                Assignment assignment = new Assignment();
                assignment.MaLH = int.Parse(IDGrade);
                assignment.MaGV = int.Parse(IDTeacher);
                assignment.MaMH = int.Parse(IDSubject); 

                return ass_teacherDAO.Delete(assignment);
            }
            catch (Exception ex)
            {

                MessageBox.Show("Lỗi không xác định ", "WARNING Insert");
                return 0;
            }
        }



        public DataTable SearchValue1(string IDYear,string IDGradeLevel,string IDTeacher)
        {
            try
            {

                List<int> _values = new List<int>();
                _values.Add(int.Parse(IDYear));
                _values.Add(int.Parse(IDGradeLevel));
                _values.Add(int.Parse(IDTeacher));

                return ass_teacherDAO.SearchValue1(_values);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi không xác định ", "WARNING SearchValue1");

                return null;
            }
        }


        public DataTable SearchValue2(string IDYear,string IDTeacher)
        {
            try
            {

                List<int> _values = new List<int>();
                _values.Add(int.Parse(IDYear));
                _values.Add(int.Parse(IDTeacher));


                return ass_teacherDAO.SearchValue2(_values);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi không xác định", "WARNING SearchValue2");

                return null;
            }
        }



       

    }
}
