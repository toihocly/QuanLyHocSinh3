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
    class Login_UserBUS
    {

        Login_UserDAO login_UserDAO = new Login_UserDAO();
        public DataTable ShowUser()
        {
            try
            {
                return login_UserDAO.ShowUser();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable SearchUserIfName(Login_User user)
        {
            try
            {
                return login_UserDAO.SearchUserIfName(user);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable SearchUserIfId(string IDUser)
        {
            try
            {
                Login_User user = new Login_User();
                user.STT = int.Parse(IDUser);


                return login_UserDAO.SearchUserIfId(user);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public int InsertUser(Login_User user)
        {
            try
            {
                //Xử lý chính(nghiệp vụ)

                //Xử lý dữ liệu
                return login_UserDAO.InsertUser(user);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        /// <summary>
        /// sửa thông tin đăng nhập 
        /// </summary>
        /// <param name="STT"></param>
        /// <param name="TaiKhoan"></param>
        /// <param name="MatKhau"></param>
        /// <param name="HoTen"></param>
        /// <param name="SDT"></param>
        /// <param name="LoaiDN"></param>
        /// <returns></returns>
        public int RepearUser(List<string>  values)
        {
            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                //Xử lý chính(nghiệp vụ)
                Login_User user = new Login_User();
                user.TaiKhoan = values[1];
                user.MatKhau = values[2];
                user.HoTen = values[3];
                user.SDT = values[4];
                user.LoaiDN = values[5];
                strError = "Text not number1"; 
                user.STT = int.Parse(values[0]);

                //Xử lý dữ liệu
                return login_UserDAO.RepearUser(user);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "Text not number1":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@0", "WARNING RepearUser");

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

        public int DeleteUser(string STT)
        {
            try
            {
                Login_User user = new Login_User();
                user.STT = int.Parse(STT);

                //Xử lý dữ liệu
                return login_UserDAO.DeleteUser(user);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public DataTable CheckUser(string User , string Pass)
        {
            try
            {
                Login_User user = new Login_User();
                user.TaiKhoan = User;
                user.MatKhau = Pass;

                //Xử lý dữ liệu
                return login_UserDAO.CheckUser(user);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}
