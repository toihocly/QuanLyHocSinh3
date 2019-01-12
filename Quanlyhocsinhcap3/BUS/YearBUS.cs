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
    class YearBUS
    {
        YearDAO yearDAO = new YearDAO();
        public DataTable ShowYear()
        {
            try
            {
                return yearDAO.ShowYear();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int CheckNextYear(Grade grade)
        {
            try
            {
                return yearDAO.CheckNextYear(grade);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        
        public int CreateNextYear(Grade grade)
        {
            try
            {
                return yearDAO.CreateNextYear(grade);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
