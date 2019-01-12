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
    class TeacherDAO
    {

        // lấy ra danh sách giáo viên
        public DataTable ShowTeacher()
        {
            try
            {
            string sql = "select* from giaovien";
            return DATA.Instance.ReadAllData(sql,null);

            }
            catch (Exception)
            {

                throw;
            }
        }

        public DataTable SearchTeacherIf(Teacher teacher)
        {
            string sql = "select* from giaovien where MaGV = @a1";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1" , teacher.MaGV));
           
            return DATA.Instance.ReadAllData(sql, p);
        }



        // thêm mới giáo viên 
        public int InsertTeacher(Teacher teacher )
        {
            string sql = string.Format("Insert Into GIAOVIEN(TenGV, GioiTinh,NgaySinh,CMND,SDT,DiaChi) Values(N'{0}','{1}','{2}','{3}','{4}',N'{5}')", teacher.TenGV,teacher.GioiTinh,teacher.NgaySinh,teacher.CMND,teacher.SDT,teacher.DiaChi);

            return DATA.Instance.WriteData(sql,null);
        }


        // thêm mới giáo viên 
        public int RepearTeacher(Teacher teacher)
        {
            string sql = string.Format("UPDATE GIAOVIEN SET TenGV = @a1, GioiTinh = @a2,NgaySinh = @a3,CMND = @a4,SDT = @a5,DiaChi = @a6  where MaGV = @a7");
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", teacher.TenGV));
            p.Add(new SqlParameter("@a2", teacher.GioiTinh));
            p.Add(new SqlParameter("@a3", teacher.NgaySinh));
            p.Add(new SqlParameter("@a4", teacher.CMND));
            p.Add(new SqlParameter("@a5", teacher.SDT));
            p.Add(new SqlParameter("@a6", teacher.DiaChi));
            p.Add(new SqlParameter("@a7", teacher.MaGV));

            return DATA.Instance.WriteData(sql,p);
        }


        // xóa giáo viên theo ID
        public int DeleteTeacher(Teacher teacher)
        {
            string sql = string.Format("delete from GIAOVIEN where MaGV = @a1");
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", teacher.MaGV));

            return DATA.Instance.WriteData(sql,p);
        }

        public int ExistsOfTeacher(Teacher teacher)
        {
            string sql = "EXEC dbo.ExistsOfTeacher @a1";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", teacher.MaGV));
            return DATA.Instance.WriteData(sql, p);
        }

    }
}
