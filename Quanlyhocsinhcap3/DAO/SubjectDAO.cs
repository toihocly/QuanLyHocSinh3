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
    class SubjectDAO
    {
        // lấy ra danh sách giáo viên
        public DataTable ShowSubject()
        {
            string sql = "select MaMH,TenMH from MONHOC";
            return DATA.Instance.ReadAllData(sql, null);
        }

        public DataTable ShowSubject(Grade grade)
        {
            string sql = "SELECT DISTINCT mh.MaMH,mh.TenMH FROM dbo.PHANCONG pc, dbo.MONHOC mh WHERE pc.MaMH = mh.MaMH AND	pc.MaLH = @a1";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", grade.MaLH));
            return DATA.Instance.ReadAllData(sql, p);
        }

        public DataTable SearchSubjectIf(Subject subject)
        {
            string sql = "select* from monhoc where MaMH = @a1";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", subject.MaMH));

            return DATA.Instance.ReadAllData(sql, p);
        }

        public DataTable ShowSubjectNotRegister(Grade grade)
        {
            string sql = "SELECT mh1.MaMH, mh1.TenMH  FROM dbo.MONHOC mh1 WHERE	 NOT EXISTS (SELECT pc.MaMH  FROM dbo.PHANCONG pc WHERE pc.MaMH = mh1.MaMH AND	pc.MaLH = @a1	)";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", grade.MaLH));

            return DATA.Instance.ReadAllData(sql, p);
        }

    }
}
