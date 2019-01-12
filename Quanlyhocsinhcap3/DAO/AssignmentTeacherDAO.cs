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
    class AssignmentTeacherDAO
    {

        public DataTable ShowViewData()
        {
            string sql = "SELECT gv.MaGV,gv.TenGV,lh.TenLH , hk.TenHK, nh.TenNH,kh.TenKH, mh.TenMH FROM	 dbo.PHANCONG pc, dbo.GIAOVIEN gv, dbo.LOPHOC lh , dbo.HOCKY hk , dbo.MONHOC mh, dbo.NAMHOC nh , dbo.KHOIHOC kh WHERE	 pc.MaGV = gv.MaGV AND pc.MaLH = lh.MaLH AND pc.MaHK = hk.MaHK AND pc.MaMH = mh.MaMH AND	lh.MaNH = nh.MaNH AND	lh.MaKH = kh.MaKH ";


            return DATA.Instance.ReadAllData(sql, null);
        }

        // hiển thị list công việc của giáo viên
        public DataTable ShowManagermentList(Teacher teacher)
        {
            
            string sql = "SELECT DISTINCT pc.MaPC,lh.TenLH,nh.NamBatDau " +
                "FROM	dbo.PHANCONG pc , dbo.LOPHOC lh ,dbo.NAMHOC nh " +
                "WHERE pc.MaLH = lh.MaLH AND	lh.MaNH = nh.MaNH AND	MaGV = @a1  AND	pc.MaHK = 1 " +
                "ORDER BY nh.NamBatDau DESC	";
           
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", teacher.MaGV));

            return DATA.Instance.ReadAllData(sql, p);
        }
        
        // hiển thị toàn bộ thông tin lưu trên bảng PHÂN CÔNG theo mã phân công
         public DataTable ShowAllDataText1(Assignment assignment)
        {
            string sql = "SELECT gv.TenGV,nh.TenNH,kh.TenKH,lh.TenLH,mh.TenMH " +
                "FROM 	 dbo.PHANCONG pc ,dbo.LOPHOC lh , dbo.NAMHOC nh , dbo.KHOIHOC kh , dbo.GIAOVIEN gv, dbo.MONHOC mh " +
                "WHERE	pc.MaLH =  lh.MaLH AND lh.MaNH = nh.MaNH AND	 lh.MaKH = kh.MaKH AND	pc.MaGV = gv.MaGV AND pc.MaMH = mh.MaMH AND	MaPC =@a1";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", assignment.MaPC));

            return DATA.Instance.ReadAllData(sql, p);
        }

        // hiển thị toàn bộ thông tin lưu trên bảng PHÂN CÔNG theo mã lớp học
        public DataTable ShowAllDataText2(Assignment assignment)
        {
            string sql = "SELECT  ROW_NUMBER() OVER(ORDER BY gv.TenGV) STT,gv.MaGV,lh.MaLH,mh.MaMH,  gv.TenGV,nh.TenNH,kh.TenKH,lh.TenLH,mh.TenMH "+
                        "FROM dbo.PHANCONG pc, dbo.LOPHOC lh, dbo.NAMHOC nh, dbo.KHOIHOC kh, dbo.GIAOVIEN gv, dbo.MONHOC mh "+
                        "WHERE pc.MaLH = lh.MaLH AND lh.MaNH = nh.MaNH AND lh.MaKH = kh.MaKH AND pc.MaGV = gv.MaGV AND pc.MaMH = mh.MaMH  AND pc.MaHK = 1 AND lh.MaLH = @a1";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", assignment.MaLH));

            return DATA.Instance.ReadAllData(sql, p);
        }


        public int ShowOneData(Assignment assignment)
        {
            string sql = "SELECT MaPC FROM	 dbo.PHANCONG WHERE	 MaLH = @a1 AND	MaHK =@a2 AND MaMH = @a3";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", assignment.MaLH));
            p.Add(new SqlParameter("@a2", assignment.MaHK));
            p.Add(new SqlParameter("@a3", assignment.MaMH));

            return DATA.Instance.ReadOneDataINT(sql, p);
        }


        public int Insert(Assignment assignment)
        {
            string sql = "EXEC dbo.InsertPHANCONG @a1, @a2, @a3";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", assignment.MaGV));
            p.Add(new SqlParameter("@a2", assignment.MaLH));
            p.Add(new SqlParameter("@a3", assignment.MaMH));

            return DATA.Instance.WriteData(sql, p);
        }

        public int Delete(Assignment assignment)
        {
            string sql = "DELETE FROM	dbo.PHANCONG WHERE MaLH = @a1 AND MaGV = @a2 AND MaMH = @a3";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", assignment.MaLH));
            p.Add(new SqlParameter("@a2", assignment.MaGV));
            p.Add(new SqlParameter("@a3", assignment.MaMH));

            return DATA.Instance.WriteData(sql, p);
        }

        public DataTable SearchValue1(List<int> value)
        {
            string sql = "SELECT DISTINCT nh.TenNH,lh.TenLH,mh.TenMH FROM dbo.PHANCONG pc , dbo.LOPHOC lh,dbo.NAMHOC nh,dbo.MONHOC mh  WHERE	pc.MaLH = lh.MaLH AND lh.MaNH = nh.MaNH AND pc.MaMH = mh.MaMH		 AND	lh.MaNH = @a1  AND		lh.MaKH = @a2 AND	 pc.MaGV = @a3 ";
            List<SqlParameter> p = new List<SqlParameter>();
            for (int i = 0; i < value.Count; i++)
            {
                p.Add(new SqlParameter("@a" + (i+1).ToString(), value[i]));
            }

            return DATA.Instance.ReadAllData(sql, p);
        }

        public DataTable SearchValue2(List<int> value)
        {
            string sql = "SELECT DISTINCT nh.TenNH,lh.TenLH,mh.TenMH FROM dbo.PHANCONG pc , dbo.LOPHOC lh,dbo.NAMHOC nh,dbo.MONHOC mh  WHERE	pc.MaLH = lh.MaLH AND lh.MaNH = nh.MaNH AND pc.MaMH = mh.MaMH		 AND	lh.MaNH = @a1   AND	 pc.MaGV = @a2 ";
            List<SqlParameter> p = new List<SqlParameter>();
            for (int i = 0; i < value.Count; i++)
            {
                p.Add(new SqlParameter("@a" + (i + 1).ToString(), value[i]));
            }

            return DATA.Instance.ReadAllData(sql, p);
        }
    }
}
