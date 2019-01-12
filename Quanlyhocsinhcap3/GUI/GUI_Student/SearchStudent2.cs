using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Quanlyhocsinhcap3.DTO;
using Quanlyhocsinhcap3.BUS;

namespace Quanlyhocsinhcap3.GUI.GUI_Student
{
    public partial class SearchStudent2 : UserControl
    {
        #region Call Class
        StudentBUS studentBUS = new StudentBUS();
        //
        ScoresBUS scoresBUS = new ScoresBUS();
        #endregion

        public SearchStudent2()
        {
            InitializeComponent();
        }

        List<string> values = new List<string>(new string[] { "MaHS", "MaKH"});


        #region Method
        void Load_Display(int i)
        {
            switch (i)
            {
                case 1:
                    {
                        foreach (Control item in groupBox1.Controls)
                        {
                            item.Visible = true;
                        }
                        foreach (Control item in groupBox2.Controls)
                        {
                            item.Visible = true;
                        }
                        foreach (Control item in groupBox3.Controls)
                        {
                            item.Visible = true;
                        }
                        foreach (Control item in groupBox4.Controls)
                        {
                            item.Visible = true;
                        }

                        break;
                    }
                case 2:
                    {
                        foreach (Control item in groupBox1.Controls)
                        {
                            item.Visible = false;
                        }
                        foreach (Control item in groupBox2.Controls)
                        {
                            item.Visible = false;
                        }
                        foreach (Control item in groupBox3.Controls)
                        {
                            item.Visible = false;
                        }
                        foreach (Control item in groupBox4.Controls)
                        {
                            item.Visible = false;
                        }
                        break;
                    }
                default:
                    break;
            }
        }



        void DatabiddingChild(Control a, Control b, DataTable dt)
        {
            a.DataBindings.Clear();
            a.DataBindings.Add("Text", dt, "DiemTB", true, DataSourceUpdateMode.Never);
            b.DataBindings.Clear();
            b.DataBindings.Add("Text", dt, "HocLuc", true, DataSourceUpdateMode.Never);
        }
        #endregion

        #region Events
        private void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                // chạy dữ liệu cho học sinh
                DataTable dt = new DataTable();
                DataTable dt1 = new DataTable();
                DataTable dt2 = new DataTable();
                DataTable dt3 = new DataTable();

                //values[0] : mã học sinh  | values[1] : mã khối học  
                values[0] = (txtSearch.Text);
                if (studentBUS.ExistsOfStudent(values[0]) == 0)
                    throw new Exception();

                



                dt = studentBUS.ShowStudentIf(values[0]);
                // hiển thị dữ liệu
                txtName.DataBindings.Clear();
                txtName.DataBindings.Add("Text", dt, "TenHS", true, DataSourceUpdateMode.Never);

                txtMSHS.Text = txtSearch.Text;

                //
                values[1] = "1";
                dt1 = scoresBUS.ShowScoresDetails(values);
                DatabiddingChild(txtDTB1, txtHL1, dt1);
                // 
                values[1] = "2";
                dt2 = scoresBUS.ShowScoresDetails(values);
                DatabiddingChild(txtDTB2, txtHL2, dt2);
                //
                values[1] = "3";
                dt3 = scoresBUS.ShowScoresDetails(values);
                DatabiddingChild(txtDTB3, txtHL3, dt3);
                Load_Display(1);
            }
            catch (Exception)
            {
                Load_Display(2);
            }
            

        }

        private void txtSearch_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                //enter key is down
                btnSearch_Click(null, null);
            }
        }

        private void txtSearch_Click(object sender, EventArgs e)
        {
            txtSearch.Text = "";
        }
        #endregion

        #region Sub Events

        #endregion

        #region Load
        private void SearchStudent2_Load(object sender, EventArgs e)
        {
            Load_Display(2);
        }
        #endregion

        #region Xử lý ngoại lệ
        private void panel_Item1_MouseEnter(object sender, EventArgs e)
        {
            txtSearch.Text = "MSSV....";
            groupBox1.Focus();

        }
        #endregion

       
    }
}
