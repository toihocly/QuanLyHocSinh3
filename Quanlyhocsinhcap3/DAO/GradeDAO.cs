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
    class GradeDAO
    {

        public DataTable ShowClassIfDetails(Grade grade)
        {
            string sql = "SELECT Row_number() over(order by lh.MaLH) STT, lh.MaLH,lh.TenLH,kh.TenKH,nh.TenNH,gv.TenGV FROM	dbo.LOPHOC lh , dbo.NAMHOC nh,dbo.KHOIHOC kh, dbo.GIAOVIEN gv WHERE	lh.MaNH = nh.MaNH AND	lh.MaKH = kh.MaKH AND	lh.GVCN = gv.MaGV  AND	lh.manh = @a1 AND	lh.MaKH =@a2 ";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", grade.MaNH));
            p.Add(new SqlParameter("@a2", grade.MaKH));
            return DATA.Instance.ReadAllData(sql, p);
        }

        public DataTable ShowStudentInClass(Grade grade)
        {
            string sql = "SELECT  Row_number() over(order by xl.MaXL) STT,xl.MaXL,hs.MaHS,hs.TenHS FROM	dbo.LOPHOC lh,dbo.XEPLOP xl,dbo.HOCSINH hs WHERE lh.MaLH = xl.MaLH AND	 xl.MaHS = hs.MaHS AND	 lh.MaLH = @a1";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", grade.MaLH));
            return DATA.Instance.ReadAllData(sql, p);
        }




        public DataTable ShowClassIf_1prmr(Grade grade)
        {
            string sql = "select MaLH,TenLH from LOPHOC where MaLH = @a1 ";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", grade.MaLH));
            return DATA.Instance.ReadAllData(sql, p);
        }



        public DataTable ShowClassIf_2prmr(Grade grade)
        {
            string sql = "select MaLH,TenLH from LOPHOC where MaNH = @a1 and MaKH = @a2 ";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", grade.MaNH));
            p.Add(new SqlParameter("@a2", grade.MaKH));
            return DATA.Instance.ReadAllData(sql, p);
        }
        

        public int DuplicateUpClass(Grade grade)
        {
            string sql = "EXEC dbo.UpClassXEPLOP @manh = @a1, @makh = @a2";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", grade.MaNH));
            p.Add(new SqlParameter("@a2", grade.MaKH));
            return DATA.Instance.WriteData(sql, p);
        }

        public int UpGrade(Grade grade)
        {
            string sql = "EXEC dbo.UpClassXEPLOP @manh = @a1, @makh = @a2";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", grade.MaNH));
            p.Add(new SqlParameter("@a2", grade.MaKH));
            return DATA.Instance.WriteData(sql, p);
        }
        public int Insert(Grade grade)
        {
            string sql = string.Format("EXEC dbo.InsertClass @name_class = '{0}', @id_year = '{1}',  @id_gradelevel = '{2}',  @id_teacher = '{3}'", grade.TenLH, grade.MaNH, grade.MaKH, grade.GVCN);

            return DATA.Instance.WriteData(sql, null);
        }


        public int Delete(Grade grade)
        {
            string sql = "DELETE FROM dbo.LOPHOC WHERE	MaLH = @a1";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", grade.MaLH));
            return DATA.Instance.WriteData(sql, p);
        }



        public DataTable SearchValue1(Grade grade)
        {
            string sql = "SELECT DISTINCT mh.TenMH,gv.TenGV FROM	 dbo.PHANCONG pc ,dbo.MONHOC mh, dbo.GIAOVIEN gv WHERE	pc.MaGV = gv.MaGV AND	pc.MaMH = mh.MaMH AND	pc.MaLH = @a1";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", grade.MaLH));
            return DATA.Instance.ReadAllData(sql, p);

            
        }
    }
}
