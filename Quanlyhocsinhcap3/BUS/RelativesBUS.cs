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
    class RelativesBUS
    {
        RelativesDAO relativesDAO = new RelativesDAO();
      

        public DataTable SearchRelativesIf(string IDStudent)
        {
            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                Student student = new Student();
                strError = "Text not number";
                student.MaHS = int.Parse(IDStudent);

                return relativesDAO.SearchRelativesIf(student);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "Text not number":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ", "WARNING SearchRelativesIf");

                            break;
                        }
                    default:
                        break;
                }

                return null;
            }
        }

        /// <summary>
        /// Thêm thông tin cho thân nhân
        /// </summary>
        /// <param name="TenTN"></param>
        /// <param name="CongViec"></param>
        /// <param name="SDT"></param>
        /// <param name="QuanHe"></param>
        /// <returns></returns>
        public int InsertRelatives(List<string> values)
        {
            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                Relatives relatives = new Relatives();
                relatives.MaHS = int.Parse(values[0]);
                relatives.TenTN = values[1];
                relatives.CongViec = values[2];
                relatives.SDT = values[3];
                relatives.QuanHe = values[4];
                //Xử lý dữ liệu
                return relativesDAO.InsertRelatives(relatives);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi không xác định", "WARNING InsertRelatives");
                return 0;
            }

        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="MaTN"></param>
        /// <param name="TenTN"></param>
        /// <param name="CongViec"></param>
        /// <param name="SDT"></param>
        /// <param name="QuanHe"></param>
        /// <returns></returns>
        public int RepearRelatives(List<string> values)
        {
            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                //Xử lý chính(nghiệp vụ)
                Relatives relatives = new Relatives();
                relatives.TenTN = values[1];
                relatives.CongViec = values[2];
                relatives.SDT = values[3];
                relatives.QuanHe = values[4];

                strError = "Text not number1";
                relatives.MaTN = int.Parse(values[0]);
                //Xử lý dữ liệu
                return relativesDAO.RepearRelatives(relatives);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "Text not number1":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@0", "WARNING RepearRelatives");

                            break;
                        }

                    default:
                        {
                            break;
                        }
                }

                return 0;
            }

        }

        public int DeleteRelatives(string IDRelatives)
        {
            try
            {
                Relatives relatives = new Relatives();
                relatives.MaTN = int.Parse(IDRelatives);

                //Xử lý dữ liệu
                return relativesDAO.DeleteRelatives(relatives);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }


    }
}
