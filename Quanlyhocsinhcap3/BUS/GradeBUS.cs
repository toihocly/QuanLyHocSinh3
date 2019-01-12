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
    class GradeBUS
    {
        GradeDAO classDAO = new GradeDAO();


        public DataTable ShowClassIfDetails(string IDYear,string IDGradeLevel)
        {
            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                Grade grade = new Grade();
                strError = "er1";
                grade.MaNH = int.Parse(IDYear);
                strError = "er2";
                grade.MaKH = int.Parse(IDGradeLevel);

                return classDAO.ShowClassIfDetails(grade);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "er1":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@1", "WARNING ShowClassIfDetails");

                            break;
                        }
                    case "er2":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@2", "WARNING ShowClassIfDetails");

                            break;
                        }

                    default:
                        {
                            break;
                        }
                }

                return null;
            }
        }

        public DataTable ShowStudentInClass(string IDGrade)
        {
            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                Grade grade = new Grade();
                strError = "er1";
                grade.MaLH = int.Parse(IDGrade);

                return classDAO.ShowStudentInClass(grade);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "er1":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@1", "WARNING ShowStudentInClass");

                            break;
                        }
                   
                    default:
                        {
                            break;
                        }
                }

                return null;
            }
        }






        public DataTable ShowClassIf(string IDGrade)
        {
            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                Grade grade = new Grade();
                strError = "er1";
                grade.MaLH = int.Parse(IDGrade);

                return classDAO.ShowClassIf_1prmr(grade);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "er1":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@1", "WARNING ShowClassIf(string IDGrade)");

                            break;
                        }
                    
                    default:
                        {
                            break;
                        }
                }

                return null;
            }
        }






        public DataTable ShowClassIf(string IDYear, string IDGradeLevel)
        {
            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                Grade grade = new Grade();
                strError = "er1";
                grade.MaNH = int.Parse(IDYear);
                strError = "er2";
                grade.MaKH = int.Parse(IDGradeLevel);

                return classDAO.ShowClassIf_2prmr(grade);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "er1":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@1", "WARNING ShowClassIf(string IDYear, string IDGradeLevel)");

                            break;
                        }
                    case "er2":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@2", "WARNING ShowClassIf(string IDYear, string IDGradeLevel)");

                            break;
                        }

                    default:
                        {
                            break;
                        }
                }

                return null;
            }
        }

        public int UpGrade(string IDYear,string IDGradeLevel)
        {
            try
            {
                Grade grade = new Grade();
                grade.MaNH = int.Parse(IDYear);
                grade.MaKH = int.Parse(IDGradeLevel);

                return classDAO.UpGrade(grade);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi không xác định", "WARNING UpGrade");
                return 0;
            }
        }

        public int Insert(string IDYear, string IDGradeLevel,string IDTeacher,string NameGrade)
        {
            string strError = "";
            try
            {
                Grade grade = new Grade();
                grade.MaNH = int.Parse(IDYear);
                grade.MaKH = int.Parse(IDGradeLevel);
                grade.GVCN = int.Parse(IDTeacher);
                strError = "er1";
                grade.TenLH = NameGrade;
                strError = "er";
                return classDAO.Insert(grade);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "er1":
                        MessageBox.Show("Tên của lớp học phải khác rỗng", "WARNING Insert");
                        break;
                    default:
                        MessageBox.Show("Một năm giáo viên chỉ được quản lý một lớp", "WARNING Insert");
                        break;
                }
               
                return 0;
            }
        }



        public int Delete(string IDGrade)
        {
            try
            {
                Grade grade = new Grade();
                grade.MaLH = int.Parse(IDGrade);

                return classDAO.Delete(grade);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Không thể xóa được dữ liệu đang được sử dụng", "WARNING Delete");
                return 0;
            }
        }

        
        public int DuplicateUpClass(Grade grade)
        {
            try
            {
                return classDAO.DuplicateUpClass(grade);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Dữ liệu dẫ tồn tại rồi!", "WARNING");
                throw;
            }
        }



        public DataTable SearchValue1(string IDGrade)
        {
            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {

                Grade grade = new Grade();
                strError = "Text not number1";
                grade.MaLH = int.Parse(IDGrade);

                return classDAO.SearchValue1(grade);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "Text not number1":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@1", "WARNING SearchValue1");

                            break;
                        }

                    default:
                        {
                            break;
                        }
                }

                return null;
            }
        }
    }
}
