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
    class ArrangeClassBUS
    {
        ArrangeClassDAO arrangeClassDAO = new ArrangeClassDAO();
        /// <summary>
        ///  nhập vào mã lớp để hiển thị danh sách học sinh có trong lớp
        /// </summary>
        /// <param name="IDClass"> typevalues : string </param>
        /// <returns>xl.MaXL , hs.TenHS</returns>
        public DataTable ShowArrangeClassIf(string IDClass)
        {
            try
            {
                Arrange_Class arrange_class = new Arrange_Class();
                arrange_class.MaLH = int.Parse(IDClass);

                return arrangeClassDAO.ShowArrangeClassIf(arrange_class);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        ///  xóa 1 dòng dữ liệu có mã xếp lớp được chọn từ bảng XẾP LỚP
        /// </summary>
        /// <param name="IDArrangeClass"> typevalues : string </param>
        /// <returns> delete MaXL </returns>
        public int DeleteStudentFromGrade(string IDArrangeClass)
        {
            try
            {

                Arrange_Class arrange_class = new Arrange_Class();
                arrange_class.MaXL = int.Parse(IDArrangeClass);

                return arrangeClassDAO.DeleteStudentFromGrade(arrange_class);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        ///  thêm 1 dòng dữ liệu mới gồm mã học sinh,mã lớp vào bảng XẾP LỚP
        /// </summary>
        /// <param name="IDStudent"> string </param>
        /// <param name="IDGrade"> string</param>
        /// <returns></returns>
        public int AddStudentToGrade(string IDStudent,string IDGrade)
        {
            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                Arrange_Class arrange_class = new Arrange_Class();
                arrange_class.MaHS = int.Parse(IDStudent);
                arrange_class.MaLH = int.Parse(IDGrade);
                return arrangeClassDAO.AddStudentToGrade(arrange_class);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    default:
                        {
                            string str = "Học sinh đã tồn tại. Xin kiểm tra lại!!\nHãy chắc rằng học sinh chưa tồn tại ở một lớp nào khác";
                            MessageBox.Show(str, "WARNING ArrangeClass");
                            break;
                        }
                }

                return 0;
            }
        }
        
    }
}
