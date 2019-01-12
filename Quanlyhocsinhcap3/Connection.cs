using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quanlyhocsinhcap3
{
    class Connection
    {
        
            //public string connectionString = "Server = .\\SQLEXPRESS; " +
            //                    "Database = DataSonDung;" ;
            public static string connectionString = @"Data Source=.\SQLEXPRESS;Initial Catalog=DataHocSinh;Integrated Security=True";
        

            public void LoadDataGrid(DataGridView data, string sql)
            {
                DataTable dt = new DataTable();
                dt = DataQuery1(connectionString, sql, null, null);

                data.DataSource = dt;
            }

        public DataTable DataQuery1(string connectionstring, string sql, string parameterName, string value)
        {
            DataTable dt = new DataTable();
            using (SqlConnection conn = new SqlConnection(connectionstring))
            {

                try
                {
                    // Mở kết nối
                    conn.Open();
                }
                catch (System.Exception ex)
                {
                    return null;
                }
                SqlCommand com = new SqlCommand(sql, conn);// chúng ta bắt đầu truy vấn
                if (parameterName != null && value != null)
                    com.Parameters.AddWithValue(parameterName, value);

                SqlDataAdapter da = new SqlDataAdapter(com);// vận chuyển dữ liệu về

                // tạo một kho ảo để lưu trữ dữ liệu
                da.Fill(dt);
                conn.Close();// đóng kết nối
            }

            return dt;
        }









    }
}
