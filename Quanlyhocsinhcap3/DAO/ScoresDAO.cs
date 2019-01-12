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
    class ScoresDAO
    {

        public DataTable ShowScoresIf(Assignment assignment)
        {
            string sql = "SELECT ds.MaHS,hs.TenHS,ds.Diem15s_1,ds.Diem15s_2,ds.Diem15s_3,ds.Diem15s_4,ds.Diem1tiet_1,ds.Diem1tiet_2,ds.Diem1tiet_3,ds.Diemgiuaki,ds.Diemcuoiki FROM dbo.DIEMSO ds, dbo.PHANCONG pc,dbo.HOCSINH hs WHERE	 ds.MaPC =  pc.MaPC AND ds.mahs = hs.mahs AND	 pc.MaLH = @a1 AND pc.MaHK = @a2  AND pc.MaMH =@a3";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", assignment.MaLH));
            p.Add(new SqlParameter("@a2", assignment.MaHK));
            p.Add(new SqlParameter("@a3", assignment.MaMH));
            return DATA.Instance.ReadAllData(sql, p);
        }

        public DataTable ShowScoresIf(Scores scores)
        {
            string sql = "SELECT ds.MaHS,hs.TenHS,ds.Diem15s_1,ds.Diem15s_2,ds.Diem15s_3,ds.Diem15s_4,ds.Diem1tiet_1,ds.Diem1tiet_2,ds.Diem1tiet_3,ds.Diemgiuaki,ds.Diemcuoiki FROM dbo.DIEMSO ds, dbo.PHANCONG pc,dbo.HOCSINH hs WHERE	 ds.MaPC =  pc.MaPC AND ds.mahs = hs.mahs AND	 ds.MaPC = @a1 AND ds.MaHS = @a2 ";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", scores.MaPC));
            p.Add(new SqlParameter("@a2", scores.MaHS));
            return DATA.Instance.ReadAllData(sql, p);
        }

        public DataTable ShowScoresDetails(List<string> values)
        {
            string sql = "EXEC ViewScores @a1,@a2";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", values[0]));
            p.Add(new SqlParameter("@a2", values[1]));
            return DATA.Instance.ReadAllData(sql, p);
        }
        

        public int Update(Scores scores)
        {
            string sql = "UPDATE	dbo.DIEMSO	SET Diem15s_1 = @a1,Diem15s_2 = @a2,Diem15s_3 = @a3, Diem15s_4 = @a4,Diem1tiet_1 = @b1,Diem1tiet_2 = @b2,Diem1tiet_3 = @b3,Diemgiuaki =@c1,Diemcuoiki = @d1 WHERE MaHS = @mahs AND	MaPC = @mapc ";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", scores.Diem15s_1));
            p.Add(new SqlParameter("@a2", scores.Diem15s_2));
            p.Add(new SqlParameter("@a3", scores.Diem15s_3));
            p.Add(new SqlParameter("@a4", scores.Diem15s_4));
            p.Add(new SqlParameter("@b1", scores.Diem1tiet_1));
            p.Add(new SqlParameter("@b2", scores.Diem1tiet_2));
            p.Add(new SqlParameter("@b3", scores.Diem1tiet_3));
            p.Add(new SqlParameter("@c1", scores.Diemgiuaki));
            p.Add(new SqlParameter("@d1", scores.Diemcuoiki));
            p.Add(new SqlParameter("@mahs", scores.MaHS));
            p.Add(new SqlParameter("@mapc", scores.MaPC));
           
            return DATA.Instance.WriteData(sql, p);
        }

        public int UpdateScores( )
        {
            string sql = "EXEC dbo.UpdateScores";
           

            return DATA.Instance.WriteData(sql,null);
        }
        public DataTable SearchValue1(List<int> values)
        {
            //tham số truyền vào là MaNH,MaHK,MaHS
            string sql = "SELECT mh.TenMH, ds.Diem15s_1,ds.Diem15s_2,ds.Diem15s_3,ds.Diem15s_4,ds.Diem1tiet_1,ds.Diem1tiet_2,ds.Diem1tiet_3,ds.Diemgiuaki,ds.Diemcuoiki " +
                "FROM	dbo.DIEMSO ds,dbo.PHANCONG pc ,dbo.MONHOC mh,dbo.LOPHOC lh " +
                "WHERE	 ds.mapc = pc.MaPC AND pc.MaMH = mh.MaMH  AND pc.MaLH = lh.MaLH AND	lh.MaNH = @a1  AND pc.MaHK = @a2	AND		   ds.MaHS = @a3 ";
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@a1", values[0] ));
            p.Add(new SqlParameter("@a2", values[1]));
            p.Add(new SqlParameter("@a3", values[2]));

            return DATA.Instance.ReadAllData(sql, p);
        }


    }
}
