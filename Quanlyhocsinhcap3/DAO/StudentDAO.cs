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
    class StudentDAO
    {

        public DataTable ShowStudentNoHaveGrade()
        {
            string sql = "SELECT hs.MaHS,hs.TenHS FROM	dbo.HOCSINH hs WHERE	NOT	 EXISTS ( SELECT * FROM	 dbo.XEPLOP xl WHERE xl.MaHS = hs.MaHS)";
            
            return DATA.Instance.ReadAllData(sql,null);
        }

        public DataTable ShowStudentIf(Student student)
        {
            string sql = "SELECT TenHS,NgaySinh,DiaChi FROM	 dbo.HOCSINH WHERE MaHS = @a1";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", student.MaHS));
            return DATA.Instance.ReadAllData(sql, p);
        }

        
        public int ExistsOfStudent(Student student)
        {
            string sql = "EXEC dbo.ExistsOfStudent @a1";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", student.MaHS));
            return DATA.Instance.WriteData(sql, p);
        }
        
        // thêm mới học sinh 
        public int InsertStudent(Student student)
        {
            string sql = string.Format("EXEC dbo.InsertStudent @year = '{0}', @name = N'{1}',  @sex = '{2}',  @date = '{3}', @address = N'{4}' ", Support.YearNow, student.TenHS, student.GioiTinh, student.NgaySinh, student.DiaChi);

            return DATA.Instance.WriteData(sql, null);
        }

    }
}
