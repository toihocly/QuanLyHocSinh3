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
    class StudentBUS
    {
        StudentDAO studentDAO = new StudentDAO();
        public DataTable ShowStudentNoHaveGrade()
        {
            try
            {
                return studentDAO.ShowStudentNoHaveGrade();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable ShowStudentIf(string IDStudent)
        {
            // tạo ra biến ghi nhận lỗi
            string strError="";
            try
            {
                Student student = new Student();
                strError = "Text not number";
                student.MaHS = int.Parse(IDStudent);



                return studentDAO.ShowStudentIf(student);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "Text not number":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ", "WARNING ShowStudentIf");

                            break;
                        }
                    default:
                        break;
                }

                return null;
            }
        }

      
        public int ExistsOfStudent(string IDStudent)
        {

            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                Student student = new Student();
                strError = "Text not number";
                student.MaHS = int.Parse(IDStudent);
                strError = "value not true";
                return studentDAO.ExistsOfStudent(student);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "Text not number":
                        {
                            MessageBox.Show("Chương trình không nhận rỗng hoặc kí tự chữ", "WARNING ExistsOfStudent");

                            break;
                        }
                    case "value not true":
                        {
                            MessageBox.Show("Học sinh không tồn tại", "WARNING ExistsOfStudent");

                            break;
                        }
                    default:
                        break;
                }

                return 0;
            }
        }

        public int InsertStudent(Student student)
        {
            try
            {
                //Xử lý chính(nghiệp vụ)

                //Xử lý dữ liệu
                return studentDAO.InsertStudent(student);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }



    }
}
