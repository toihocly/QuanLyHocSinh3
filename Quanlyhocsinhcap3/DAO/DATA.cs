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
    class DATA
    {
        //writer: Nguyễn Minh Đồng content: áp dụng mẫu singleton
        private static DATA instance; // Ctrl + R + E

        internal static DATA Instance { get { if (instance == null) instance = new DATA(); return DATA.instance; } private set => instance = value; }
        private DATA() { }

        public int ReadOneDataINT(string sql, List<SqlParameter> p)
        {

            
            using (SqlConnection conn = new SqlConnection(Support.ConnectString))
            {

                try
                {
                    // Mở kết nối
                    conn.Open();
                    SqlCommand com = new SqlCommand(sql, conn);// chúng ta bắt đầu truy vấn
                    if (p != null && p.Any())
                        com.Parameters.AddRange(p.ToArray());

                    //com.ExecuteNonQuery();
                    //SqlDataAdapter da = new SqlDataAdapter(com);// vận chuyển dữ liệu về

                    // tạo một kho ảo để lưu trữ dữ liệu
                   // da.Fill(dt);
                    int value = (int)com.ExecuteScalar();
                    conn.Close();// đóng kết nối
                    return value;
                }
                catch (System.Exception ex)
                {
                    throw ex;
                }

            }


        }

        public string ReadOneDataSTRING(string sql, List<SqlParameter> p)
        {


            using (SqlConnection conn = new SqlConnection(Support.ConnectString))
            {

                try
                {
                    // Mở kết nối
                    conn.Open();
                    SqlCommand com = new SqlCommand(sql, conn);// chúng ta bắt đầu truy vấn
                    if (p != null && p.Any())
                        com.Parameters.AddRange(p.ToArray());

                    //com.ExecuteNonQuery();
                    //SqlDataAdapter da = new SqlDataAdapter(com);// vận chuyển dữ liệu về

                    // tạo một kho ảo để lưu trữ dữ liệu
                    // da.Fill(dt);
                    string value = (string)com.ExecuteScalar();
                    conn.Close();// đóng kết nối
                    return value;
                }
                catch (System.Exception ex)
                {
                    throw ex;
                }

            }


        }



        public DataTable ReadAllData(string sql, List<SqlParameter> p)
        {
            
            DataTable dt = new DataTable();
            using (SqlConnection conn = new SqlConnection(Support.ConnectString))
            {

                try
                {
                    // Mở kết nối
                    conn.Open();
                    SqlCommand com = new SqlCommand(sql, conn);// chúng ta bắt đầu truy vấn
                    if (p != null && p.Any())
                        com.Parameters.AddRange(p.ToArray());

                    //com.ExecuteNonQuery();
                    SqlDataAdapter da = new SqlDataAdapter(com);// vận chuyển dữ liệu về

                    // tạo một kho ảo để lưu trữ dữ liệu
                    da.Fill(dt);
                    conn.Close();// đóng kết nối
                    return dt;
                }
                catch (System.Exception ex)
                {
                    throw ex;
                }

            }


        }

        public int WriteData(string sql, List<SqlParameter> p)
        {
            using (SqlConnection conn = new SqlConnection(Support.ConnectString))
            {

                try
                {
                    // Mở kết nối
                    conn.Open();


                    SqlCommand lenh = new SqlCommand(sql, conn);
                    if (p != null && p.Any())
                    {
                        lenh.Parameters.AddRange(p.ToArray());
                    }

                    int kq = lenh.ExecuteNonQuery();
                    conn.Close();

                    return 1;
                }
                catch (System.Exception ex)
                {
                    throw ex;
                }

            }


        }

       
    }
}
