using Quanlyhocsinhcap3.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quanlyhocsinhcap3.DAO
{
    class Login_UserDAO
    {
        

        // lấy ra danh sách giáo viên
        public DataTable ShowUser()
        {
            string sql = "select* from DangNhap";
            return DATA.Instance.ReadAllData(sql, null);
        }

        public DataTable SearchUserIfName(Login_User user)
        {
            string sql = string.Format("select *  from DangNhap  where HoTen like N'%{0}%' ", user.HoTen);
            
            return DATA.Instance.ReadAllData(sql, null);
        }

        public DataTable SearchUserIfId(Login_User user)
        {
            string sql = string.Format("select *  from DangNhap  where STT = '{0}' ", user.STT);

            return DATA.Instance.ReadAllData(sql, null);
        }


        // thêm mới giáo viên 
        public int InsertUser(Login_User user)
        {
            string sql = string.Format("INSERT INTO	 dbo.DangNhap ( TaiKhoan, MatKhau, HoTen, SDT, LoaiDN )VALUES  ( '{0}', '{1}', N'{2}','{3}',  '{4}'  )", user.TaiKhoan, user.MatKhau, user.HoTen, user.SDT,user.LoaiDN);

            return DATA.Instance.WriteData(sql, null);
        }


        // thêm mới giáo viên 
        public int RepearUser(Login_User user)
        {
            string sql = string.Format("UPDATE DangNhap SET TaiKhoan = @a1, MatKhau = @a2,HoTen = @a3,SDT = @a4,LoaiDN = @a5  where STT = @a6");
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", user.TaiKhoan));
            p.Add(new SqlParameter("@a2", user.MatKhau));
            p.Add(new SqlParameter("@a3", user.HoTen));
            p.Add(new SqlParameter("@a4", user.SDT));
            p.Add(new SqlParameter("@a5", user.LoaiDN));
            p.Add(new SqlParameter("@a6", user.STT));

            return DATA.Instance.WriteData(sql, p);
        }


        // xóa giáo viên theo ID
        public int DeleteUser(Login_User user)
        {
            string sql = string.Format("delete from DangNhap where STT = @a1");
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", user.STT));

            return DATA.Instance.WriteData(sql, p);
        }

        public DataTable CheckUser(Login_User user)
        {
            string sql = "EXEC CheckIDPass @a1,@a2";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", user.TaiKhoan));
            p.Add(new SqlParameter("@a2", user.MatKhau));

            return DATA.Instance.ReadAllData(sql, p);
        }

    }
}
