using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quanlyhocsinhcap3.DAO
{
    class SemesterDAO
    {

        public DataTable ShowSemester( )
        {
            string sql = "SELECT MaHK,TenHK FROM HOCKY";
           
            return DATA.Instance.ReadAllData(sql,null);
        }

    }
}
