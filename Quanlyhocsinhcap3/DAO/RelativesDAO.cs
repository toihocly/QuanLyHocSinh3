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
    class RelativesDAO
    {


        public DataTable SearchRelativesIf(Student student)
        {
            string sql = "SELECT Row_number() over(order by MaTN) STT, MaTN,TenTN,CongViec,SDT,QuanHe FROM dbo.THANNHAN WHERE MaHS = @a1";
            List<SqlParameter> p = new List<SqlParameter>();
             p.Add(new SqlParameter("@a1", student.MaHS));

            return DATA.Instance.ReadAllData(sql, p);
        }



        // thêm mới giáo viên 
        public int InsertRelatives(Relatives relatives)
        {
            string sql = string.Format("INSERT INTO  dbo.THANNHAN(MaHS, TenTN, CongViec, SDT, QuanHe)VALUES({0}, N'{1}', N'{2}', '{3}', N'{4}')", relatives.MaHS, relatives.TenTN, relatives.CongViec, relatives.SDT, relatives.QuanHe);
            
            return DATA.Instance.WriteData(sql, null);
        }


        // thêm mới giáo viên 
        public int RepearRelatives(Relatives relatives)
        {
            string sql = string.Format("UPDATE dbo.THANNHAN SET	 TenTN = @a1,CongViec = @a2,SDT =@a3,QuanHe = @a4 WHERE MaTN = @a5");
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", relatives.TenTN));
            p.Add(new SqlParameter("@a2", relatives.CongViec));
            p.Add(new SqlParameter("@a3", relatives.SDT));
            p.Add(new SqlParameter("@a4", relatives.QuanHe));
            p.Add(new SqlParameter("@a5", relatives.MaTN));

            return DATA.Instance.WriteData(sql, p);
        }


        // xóa giáo viên theo ID
        public int DeleteRelatives(Relatives relatives)
        {
            string sql = string.Format("delete from THANNHAN where MaTN = @a1");
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", relatives.MaTN));

            return DATA.Instance.WriteData(sql, p);
        }

    }
}
