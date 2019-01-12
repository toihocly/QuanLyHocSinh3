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
using Quanlyhocsinhcap3.DAO;

namespace Quanlyhocsinhcap3.GUI.GUI_Grade
{
    public partial class ADDGrade : UserControl
    {
        #region Call Class
        // năm
        YearBUS yearBUS = new YearBUS();
        // khối
        GradeLevelBUS gradeLevelBUS = new GradeLevelBUS();
        //học kì
        TeacherBUS teacherBUS = new TeacherBUS();
        // Lớp
        GradeBUS gradeBUS = new GradeBUS();
        #endregion

      

        public ADDGrade()
        {
            InitializeComponent();
        }



        List<string> values = new List<string>(new string[] { "MaNH", "MaKH", "MaGV", "TenLH" });

        #region Method
        void resetvalue()
        {

            txtNameGrade.Text = "";
        }


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
                        break;
                    }
                default:
                    break;
            }
        }



        void Handling_Year()
        {
            cbxYear.DataSource = yearBUS.ShowYear();
            cbxYear.DisplayMember = "TenNH";
            cbxYear.ValueMember = "MaNH";
        }

        void Handling_GradeLevel()
        {
            // Hiển thị khối học ví dụ : 10 , 11 , 12
            if (int.TryParse(cbxYear.SelectedValue.ToString(), out int _check))
            {
                cbxGradeLevel.DataSource = gradeLevelBUS.ShowGradeLevel();
                cbxGradeLevel.ValueMember = "MaKH";
                cbxGradeLevel.DisplayMember = "TenKH";
            }
        }

        void Load_Grade()
        {
            if(int.TryParse(cbxYear.SelectedValue.ToString(), out int _check1) &&
                int.TryParse(cbxGradeLevel.SelectedValue.ToString(), out int _check2))
            {
                try
                {
                    values[0] = cbxYear.SelectedValue.ToString();
                    values[1] = cbxGradeLevel.SelectedValue.ToString();

                    dtgvGrade.DataSource = gradeBUS.ShowClassIfDetails(values[0], values[1]);

                    Load_Display(1);
                }
                catch (Exception)
                {
                    Load_Display(2);
                }
            }
          
        }




        void Handling_Teacher()
        {
            // Hiển thị khối học ví dụ : 10 , 11 , 12
            cbxTeacher.DataSource = teacherBUS.ShowTeacher();
            cbxTeacher.DisplayMember = "TenGV";
            cbxTeacher.ValueMember = "MaGV";

        }
        #endregion

        #region Events
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
                Load_Grade();
            }
            
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                values[0] = cbxYear.SelectedValue.ToString();
                values[1] = cbxGradeLevel.SelectedValue.ToString();

                dtgvGrade.DataSource = gradeBUS.ShowClassIfDetails(values[0], values[1]);

                Load_Display(1);
            }
            catch (Exception)
            {
                Load_Display(2);
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            //values[0] : Year ,values[1] :gradelevel, values[2]:IDteacher , values[3]: Namegrade
            try
            {
                values[2] = cbxTeacher.SelectedValue.ToString();
                // xử lý tên
                // thêm tiền tố ở trước

                values[3] = string.Format("[K{0}]{1}{2}", cbxYear.Text.Substring(2, 2),cbxGradeLevel.Text.Substring(5,2), txtNameGrade.Text);
                //thêm vào lớp mới
                gradeBUS.Insert(values[0], values[1], values[2], values[3]);
                // load lại dữ liệu
                btnSearch_Click(null, null);

            }
            catch (Exception)
            {

            }
            resetvalue();
        }

        private void dtgvGrade_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
        {

            if (e.KeyCode == Keys.F8)
            {
                DialogResult dialogResult = MessageBox.Show("Bạn có chắc là muốn làm việc này", "WARNING", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    DataGridViewRow row = dtgvGrade.SelectedCells[0].OwningRow;
                    string _MaLH = row.Cells["MaLH"].Value.ToString();
                    try
                    {

                        gradeBUS.Delete(_MaLH);

                        btnSearch_Click(null, null);
                        MessageBox.Show("Delete complete.");
                    }
                    catch (Exception)
                    {
                    }
                }
                else if (dialogResult == DialogResult.No)
                {
                    //do something else
                }
                
            }

        }
        #endregion

        #region Sub Events

        #endregion

        #region Load
        private void ADDGrade_Load(object sender, EventArgs e)
        {
            //Cố định header ở datagridview
            dtgvGrade.AllowUserToResizeColumns = false;

            dtgvGrade.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            Load_Display(2);

            Handling_Year();
            Handling_GradeLevel();
            Handling_Teacher();
        }








        #endregion

        
    }
}
