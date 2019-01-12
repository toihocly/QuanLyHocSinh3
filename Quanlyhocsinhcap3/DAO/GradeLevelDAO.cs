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
    class GradeLevelDAO
    {
        // lấy ra danh sách giáo viên
        public DataTable ShowGradeLevel()
        {
            string sql = "select MaKH,TenKH from KHOIHOC";
            return DATA.Instance.ReadAllData(sql, null);
        }

        public DataTable ShowGradeLevel(Grade grade)
        {
            string sql = "SELECT DISTINCT kh.MaKH,kh.TenKH FROM	dbo.LOPHOC lh , dbo.KHOIHOC kh WHERE	lh.makh = kh.MaKH AND lh.MaNH = @a1";
            List<SqlParameter> p = new List<SqlParameter>();
            // mã năm học
            p.Add(new SqlParameter("@a1", grade.MaNH));
            return DATA.Instance.ReadAllData(sql, p);
        }


    }
}
