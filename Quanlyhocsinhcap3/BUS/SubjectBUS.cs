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
    class SubjectBUS
    {

        SubjectDAO subjectDAO = new SubjectDAO();


        public DataTable ShowSubject()
        {
            try
            {
                return subjectDAO.ShowSubject();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }




        public DataTable SearchSubjectIf(string IDSubject)
        {
            try
            {
                Subject subject = new Subject();
                subject.MaMH = int.Parse(IDSubject);

                return subjectDAO.SearchSubjectIf(subject);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable ShowSubject(string IDClass)
        {
            try
            {
                Grade grade = new Grade();
                grade.MaLH = int.Parse(IDClass);

                return subjectDAO.ShowSubject(grade);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable ShowSubjectNotRegister(string IDClass)
        {
            try
            {
                Grade grade = new Grade();
                grade.MaLH = int.Parse(IDClass);

                return subjectDAO.ShowSubjectNotRegister(grade);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
