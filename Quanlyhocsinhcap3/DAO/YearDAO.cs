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
    class YearDAO
    {
        // lấy ra danh sách giáo viên
        public DataTable ShowYear()
        {
            string sql = "select MaNH,TenNH from NAMHOC order by MaNH desc";
            return DATA.Instance.ReadAllData(sql, null);
        }

        
        // kiểm tra năm tiếp theo để tạo ra năm học mới
        public int CheckNextYear(Grade grade)
        {
            string sql = "EXEC CheckNextNAMHOC @a1";
            List<SqlParameter> p = new List<SqlParameter>();
                p.Add(new SqlParameter("@a1",grade.MaNH));
                return DATA.Instance.WriteData(sql, p);
        }
        
        // tạo ra năm học mới
        public int CreateNextYear(Grade grade)
        {
            string sql = "EXEC CreateNewNAMHOC @a1";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", grade.MaNH));
            return DATA.Instance.WriteData(sql, p);
        }
    }
}
