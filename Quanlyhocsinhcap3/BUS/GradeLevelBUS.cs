using Quanlyhocsinhcap3.DAO;
using Quanlyhocsinhcap3.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quanlyhocsinhcap3.BUS
{
    class GradeLevelBUS
    {
        GradeLevelDAO gradeLevelDAO = new GradeLevelDAO();
        public DataTable ShowGradeLevel()
        {
            try
            {
                return gradeLevelDAO.ShowGradeLevel();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable ShowGradeLevel(string IDYear)
        {
            try
            {
                Grade grade = new Grade();
                grade.MaNH = int.Parse(IDYear);
                return gradeLevelDAO.ShowGradeLevel(grade);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
