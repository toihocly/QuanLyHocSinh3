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
    class ArrangeClassDAO
    {
        

        public DataTable ShowArrangeClassIf(Arrange_Class arrange_class)
        {
            string sql = "SELECT xl.MaXL , hs.TenHS FROM dbo.XEPLOP xl  ,dbo.HOCSINH hs WHERE	hs.MaHS = xl.MaHS AND  xl.MaLH = @a1";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", arrange_class.MaLH));
            return DATA.Instance.ReadAllData(sql, p);
        }

        // xóa giáo viên theo ID
        public int DeleteStudentFromGrade(Arrange_Class arrange_class)
        {
            string sql = string.Format("EXEC dbo.DeleteStudentFromXEPLOP  @a1", arrange_class.MaXL);
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", arrange_class.MaXL));

            return DATA.Instance.WriteData(sql, p);
        }
        
        public int AddStudentToGrade(Arrange_Class arrange_class)
        {
            string sql = string.Format("EXEC dbo.InsertXEPLOP @id_student = {0}, @id_class = {1}", arrange_class.MaHS, arrange_class.MaLH);
           
            return DATA.Instance.WriteData(sql, null);
        }
    }
}
