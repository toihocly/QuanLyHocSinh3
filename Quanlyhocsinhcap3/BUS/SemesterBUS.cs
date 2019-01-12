using Quanlyhocsinhcap3.DAO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quanlyhocsinhcap3.BUS
{
    class SemesterBUS
    {

        SemesterDAO semesterDAO = new SemesterDAO();
        public DataTable ShowSemester( )
        {
            try
            {
                return semesterDAO.ShowSemester();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
