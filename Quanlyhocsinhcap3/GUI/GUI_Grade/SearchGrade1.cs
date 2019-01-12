using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Quanlyhocsinhcap3.BUS;
using Quanlyhocsinhcap3.DTO;

namespace Quanlyhocsinhcap3.GUI.GUI_Grade
{
    public partial class SearchGrade1 : UserControl
    {

        #region Call Class
        // khối
        GradeLevelBUS gradeLevelBUS = new GradeLevelBUS();
        // Lớp
        GradeBUS gradeBUS = new GradeBUS();
        // năm học
        YearBUS yearBUS = new YearBUS();
        #endregion

        public SearchGrade1()
        {
            InitializeComponent();
        }


        List<string> values = new List<string>(new string[] { "MaNH", "MaKH", "MaLH" });


        #region Method

        void Load_Display(int i)
        {
            switch (i)
            {
                case 1:
                    {
                        foreach (Control item in groupBox2.Controls)
                        {
                            item.Visible = true;
                        }

                        break;
                    }
                case 2:
                    {
                        foreach (Control item in groupBox2.Controls)
                        {
                            item.Visible = false;
                        }
                        break;
                    }
                default:
                    break;
            }
        }



        void ClearData()
        {
            cbxGrade.DataSource = null;

        }
        void Handling_Year()
        {

            cbxYear.DataSource = yearBUS.ShowYear();
            cbxYear.DisplayMember = "TenNH";
            cbxYear.ValueMember = "MaNH";


        }

        void Handling_GradeLevel()
        {
            Load_Display(2);
            ClearData();
            // Hiển thị khối học ví dụ : 10 , 11 , 12
            if (int.TryParse(cbxYear.SelectedValue.ToString(), out int _check))
            {
                cbxGradeLevel.DataSource = gradeLevelBUS.ShowGradeLevel(cbxYear.SelectedValue.ToString());
                cbxGradeLevel.ValueMember = "MaKH";
                cbxGradeLevel.DisplayMember = "TenKH";
            }

        }

        void Handling_Grade()
        {
            // clear dữ liệu cũ
            ClearData();
            int _check;
            if (int.TryParse(cbxYear.SelectedValue.ToString(), out _check) &&
                int.TryParse(cbxGradeLevel.SelectedValue.ToString(), out _check))
            {
                values[0] = (cbxYear.SelectedValue.ToString());
                values[1] = (cbxGradeLevel.SelectedValue.ToString());


                // Lấy lên toàn bộ lớp thỏa mã năm học , mã khối học
                cbxGrade.DataSource = gradeBUS.ShowClassIf(values[0], values[1]);
                cbxGrade.ValueMember = "MaLH";
                cbxGrade.DisplayMember = "TenLH";
            }

        }
        #endregion

        #region Events
        private void btnSearch_Click(object sender, EventArgs e)
        {
            
            try
            {
                // values[2] : mã lớp học
                values[2] = cbxGrade.SelectedValue.ToString();


                dataGridView1.DataSource = gradeBUS.SearchValue1(values[2]);
                Load_Display(1);
            }
            catch (Exception)
            {
                MessageBox.Show("Không đủ thông tin để thực hiện thao tác", "WARNING");
                Load_Display(2);

            }

        }

        private void cbxYear_TextChanged(object sender, EventArgs e)
        {
            if (cbxYear.SelectedValue != null)
            {
                Handling_GradeLevel();
            }
        }

        private void cbxGradeLevel_TextChanged(object sender, EventArgs e)
        {
            if (cbxGradeLevel.SelectedValue != null)
            {
                Handling_Grade();
            }
        }

        #endregion

        #region Sub Events
        private void cbxYear_Click(object sender, EventArgs e)
        {
            cbxYear.DroppedDown = true;
        }

        private void cbxGrade_Click(object sender, EventArgs e)
        {
            cbxGrade.DroppedDown = true;
        }

        private void cbxGradeLevel_Click(object sender, EventArgs e)
        {
            cbxGradeLevel.DroppedDown = true;
        }


        #endregion

        #region Load
        private void SearchGrade1_Load(object sender, EventArgs e)
        {
            //Cố định header ở datagridview
            dataGridView1.AllowUserToResizeColumns = false;
            
            dataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect;

            Handling_Year();

            Load_Display(2);
        }
        #endregion

       
    }
}
