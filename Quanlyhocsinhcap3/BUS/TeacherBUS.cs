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
    class TeacherBUS
    {
        TeacherDAO teacherDAO = new TeacherDAO();

        public DataTable ShowTeacher()
        {
            try
            {
                return teacherDAO.ShowTeacher();
            }
            catch (Exception ex)
            {
                
                return null;
            }
        }

        public DataTable SearchTeacherIf(string IDTeacher)
        {
            try
            {
                Teacher teacher = new Teacher();
                teacher.MaGV = int.Parse(IDTeacher);

                return teacherDAO.SearchTeacherIf(teacher);
            }
            catch (Exception ex)
            {
                MessageBox.Show("không nhập kí tự chuỗi");
                return null;
            }
        }


        public int InsertTeacher(Teacher teacher)
        {
            try
            {
                //Xử lý chính(nghiệp vụ)

                //Xử lý dữ liệu
                return teacherDAO.InsertTeacher(teacher);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public int RepearTeacher(List<string> values)
        {
            try
            {
                //Xử lý chính(nghiệp vụ)

                Teacher teacher = new Teacher();
                teacher.MaGV = int.Parse(values[0]);
                teacher.TenGV = values[1];
                if (values[2] == "Nam")
                    teacher.GioiTinh = true;
                else
                    teacher.GioiTinh = false;

                teacher.NgaySinh = DateTime.Parse(values[3]);
                teacher.CMND = values[4];
                teacher.SDT = values[5];
                teacher.DiaChi = values[6];

                //Xử lý dữ liệu
                return teacherDAO.RepearTeacher(teacher);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi không xác định", "WARNING RepearTeacher");
                return 0;
            }

        }

        public int DeleteTeacher(string   IDTeacher)
        {
            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                strError = "Text not number";
                Teacher teacher = new Teacher();
                teacher.MaGV = int.Parse(IDTeacher);
                strError = "er2";
                //Xử lý dữ liệu
                return teacherDAO.DeleteTeacher(teacher);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "Text not number":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ", "WARNING DeleteTeacher");

                            break;
                        }
                    default:
                        MessageBox.Show("Không thể xóa thông tin giáo viên");
                        break;
                }

                return 0;
            }

        }


        public int ExistsOfTeacher(string IDTeacher)
        {

            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                Teacher teacher = new Teacher();
                strError = "Text not number";
                teacher.MaGV = int.Parse(IDTeacher);
                strError = "value not true";
                return teacherDAO.ExistsOfTeacher(teacher);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "Text not number":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ", "WARNING ExistsOfTeacher");

                            break;
                        }
                    case "value not true":
                        {
                            MessageBox.Show("Giáo viên không tồn tại", "WARNING ExistsOfTeacher");

                            break;
                        }
                    default:
                        break;
                }

                return 0;
            }
        }
    }
}
