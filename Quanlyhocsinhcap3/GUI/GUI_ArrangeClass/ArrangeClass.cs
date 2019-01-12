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

namespace Quanlyhocsinhcap3.GUI.GUI_ArrangeClass
{
    public partial class ArrangeClass : UserControl
    {
        #region Call Class

        // khối 
        GradeLevelBUS gradeLevelBUS = new GradeLevelBUS();
        // lớp học
        GradeBUS gradeBUS = new GradeBUS();
        // năm học
        YearBUS yearBUS = new YearBUS();
        // xếp lớp
        ArrangeClassBUS ArrangeClassBUS = new ArrangeClassBUS();
        // học sinh
        StudentBUS studentBUS = new StudentBUS();
        #endregion

       





        public ArrangeClass()
        {
            InitializeComponent();
            ArrangeClass_Load(null, null);

        }


        List<string> values = new List<string>(new string[] { "MaNH", "MaKH","MaLH", "MaHS" });

        #region Method
        void resetvalue()
        {

            txtMaHS.Text = "";
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




        void ClearData()
        {
            cbxGrade.DataSource = null;
        }

        void Handling_Year()
        {
            cbxYear.DataSource = yearBUS.ShowYear();
            cbxYear.ValueMember = "MaNH";
            cbxYear.DisplayMember = "TenNH";
        }


        void Handling_GradeLevel()
        {
            // clear dữ liệu cũ
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
            //values[0]  : mã năm học  | values[1]  : mã khối học 
            ClearData();
            int _check;
            if (int.TryParse(cbxYear.SelectedValue.ToString(),out _check) &&
                int.TryParse(cbxGradeLevel.SelectedValue.ToString(), out _check))
            {
                values[0] = (cbxYear.SelectedValue.ToString());
                values[1] = (cbxGradeLevel.SelectedValue.ToString());

                // Lấy lên toàn bộ lớp thỏa mã năm học , mã khối học
                try
                {
                    cbxGrade.DataSource = gradeBUS.ShowClassIf(values[0], values[1]);
                    cbxGrade.ValueMember = "MaLH";
                    cbxGrade.DisplayMember = "TenLH";
                    
                }
                catch (Exception)
                {
                }
            }
            
        }

        void Load_ArrangeClass()
        {
            // xữ lý trường hợp không có dữ liệu return null
            if(cbxGrade.SelectedValue  != null)
            {
               // groupBox2.Visible = true;
                //values[2]  : mã lớp học  
                int _check;
                if (int.TryParse(cbxGrade.SelectedValue.ToString(), out _check))
                {
                    values[2] = cbxGrade.SelectedValue.ToString();
                    dtgvGrade.DataSource = gradeBUS.ShowStudentInClass(values[2]);
                    Load_Display(1);
                }
                
            }
           else
            {
                Load_Display(2);
            }
            
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
                Handling_Grade();
            }
        }


        private void cbxGrade_TextChanged(object sender, EventArgs e)
        {
            Load_ArrangeClass();
        }

        private void txtMaHS_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                //enter key is down
                btnSave_Click(null, null);
            }

        }


        private void btnSave_Click(object sender, EventArgs e)
        {
            //values[2]  : mã lớp học  | values[2]  :  mã học sinh
            try
            {
                values[3] = (txtMaHS.Text);
                if (studentBUS.ExistsOfStudent(values[3]) == 0)
                    throw new Exception();
                values[2] = cbxGrade.SelectedValue.ToString();
                // xác nhận
                OKEArrabgeClass oke = new OKEArrabgeClass(values[3],values[2]);
                oke.ShowDialog();
                //diaglog xác nhận
                Load_ArrangeClass();
                
            }
            catch (Exception)
            {
            }
            resetvalue();
        }

        private void dtgvGrade_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
        {
            // xóa 
            if (e.KeyCode == Keys.F8)
            {
                DialogResult dialogResult = MessageBox.Show("Bạn có chắc là muốn làm việc này", "WARNING", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {

                    DataGridViewRow row = dtgvGrade.SelectedCells[0].OwningRow;
                    string maxl = (row.Cells["MaXL"].Value.ToString());

                    try
                    {
                        // gọi đến BUS để xử lý (thêm vào CSDL)
                        ArrangeClassBUS.DeleteStudentFromGrade(maxl);

                        // load lại dữ liệu
                        Load_ArrangeClass();
                        MessageBox.Show("Delete complete.");
                    }
                    catch (Exception)
                    {

                    }

                }
            }
        }
        #endregion

        #region Sub Events

        #endregion

        #region Load
        private void ArrangeClass_Load(object sender, EventArgs e)
        {
            Load_Display(2);
            //Cố định header ở datagridview
            dtgvGrade.AllowUserToResizeColumns = false;
            dtgvGrade.SelectionMode = DataGridViewSelectionMode.FullRowSelect;

            Handling_Year();
            
           
        }

        
        #endregion

       
    }
}
