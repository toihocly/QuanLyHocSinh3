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
using Quanlyhocsinhcap3.GUI.GUI_Relatives;

namespace Quanlyhocsinhcap3
{
    public partial class RelativesOfStudent : UserControl
    {
        #region Call Class
        // học sinh
        StudentBUS studentBUS = new StudentBUS();
        // thân nhân
        RelativesBUS relativesBUS = new RelativesBUS();
        #endregion


        public RelativesOfStudent()
        {
            InitializeComponent();
        }

        List<string> values = new List<string>(new string[] { "MaHS", "MaTN" });


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
                        break;
                    }
                default:
                    break;
            }
        }



        void Load_Student(DataTable dt)
        {
            txtName.DataBindings.Clear();
            txtName.DataBindings.Add("Text", dt, "TenHS", true, DataSourceUpdateMode.Never);
            txtDate.DataBindings.Clear();
            txtDate.DataBindings.Add("Text", dt, "NgaySinh", true, DataSourceUpdateMode.Never);
            txtAddress.DataBindings.Clear();
            txtAddress.DataBindings.Add("Text", dt, "DiaChi", true, DataSourceUpdateMode.Never);
        }

        void Load_Relatives()
        {
            try
            {
                dtgvRelatives.DataSource = relativesBUS.SearchRelativesIf(values[1]);
            }
            catch (Exception)
            { }
            
        }



        #endregion

        #region Events
        private void txtSearch_Click(object sender, EventArgs e)
        {
            txtSearch.Text = "";
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            // chạy dữ liệu cho học sinh
            DataTable dt = new DataTable();
            try
            {
                values[1] = (txtSearch.Text);

                if (studentBUS.ExistsOfStudent(values[1]) == 0)
                    throw new Exception();

                dt = studentBUS.ShowStudentIf(values[1]);
                // hiển thị dữ liệu của học sinh
                Load_Student(dt);
                Load_Relatives();

                // nếu đúng.
                Load_Display(1);

            }
            catch (Exception)
            {
                Load_Display(2);
            }

        }

        private void dtgvRelatives_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
        {
            // F4 : Sửa
            if (e.KeyCode == Keys.F4)
            {

                DataGridViewRow row = dtgvRelatives.SelectedCells[0].OwningRow;
                Relatives relatives = new Relatives();
                relatives.MaTN = int.Parse(row.Cells["MaTN"].Value.ToString());
                relatives.TenTN = row.Cells["TenTN"].Value.ToString();
                relatives.CongViec = row.Cells["CongViec"].Value.ToString();
                relatives.SDT = row.Cells["SDT"].Value.ToString();
                relatives.QuanHe = row.Cells["QuanHe"].Value.ToString();

                EditRelatives editRelatives = new EditRelatives(relatives);
                editRelatives.ShowDialog();
                // load lại dữ liệu hiển thị
                Load_Relatives();
            }
            // F8 : xóa
            else if (e.KeyCode == Keys.F8)
            {
                //values[0] : mã thân nhân
                DialogResult dialogResult = MessageBox.Show("Bạn có chắc muốn thực hiện việc này", "WARNING", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    DataGridViewRow row = dtgvRelatives.SelectedCells[0].OwningRow;
                    values[0] = row.Cells["MaTN"].Value.ToString();


                    // gọi đến BUS để xử lý (thêm vào CSDL)
                    relativesBUS.DeleteRelatives(values[0]);

                    MessageBox.Show("Delete complete.");
                    // load lại dữ liệu hiển thị
                    Load_Relatives();
                }
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

        private void btnSave2_Click(object sender, EventArgs e)
        {
            // values[1]: mã học sinh
            List<string> _values = new List<string>();

            _values.Add(values[1]);
            _values.Add(txtName2.Text);
            _values.Add(txtJob2.Text);
            _values.Add(txtPhone2.Text);
            _values.Add(cbxRelatives2.Text);
            try
            {
                relativesBUS.InsertRelatives(_values);

                Load_Relatives();
            }
            catch (Exception)
            {

            }
        }
        #endregion

        #region Sub Events

        #endregion

        #region Load
        private void RelativesOfStudent_Load(object sender, EventArgs e)
        {
            //Cố định header ở datagridview
            dtgvRelatives.AllowUserToResizeColumns = false;

            dtgvRelatives.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            Load_Display(2);
        }
        #endregion

        #region Xử lý ngoại lệ
        private void panel_Item2_MouseEnter(object sender, EventArgs e)
        {
            txtSearch.Text = "MSSV....";
            groupBox1.Focus();
        }



        #endregion

        
    }
}
