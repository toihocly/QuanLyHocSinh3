using Quanlyhocsinhcap3.BUS;
using Quanlyhocsinhcap3.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quanlyhocsinhcap3
{
    public partial class EditTeacher : Form
    {
      
        TeacherBUS teacherBUS = new TeacherBUS();
        public EditTeacher(Teacher teacher )
        {
            InitializeComponent();

            gmagv = teacher.MaGV;
            txtName.Text = teacher.TenGV ;
            if(teacher.GioiTinh == true)
                cbxSex.Text = "Nam";
            else
                cbxSex.Text = "Nữ";

            dateTimePicker1.Value = teacher.NgaySinh;
            txtIdentityCard.Text = teacher.CMND;
            txtPhone.Text = teacher.SDT;
            txtAddress.Text = teacher.DiaChi;
        }
        // ID
        int gmagv;

        #region Methon
        #endregion



        #region Events

        private void cbxSex_Click(object sender, EventArgs e)
        {
            cbxSex.DroppedDown = true;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Bạn có chắc là muốn làm việc này", "WARNING", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                try
                {
                    List<string> values = new List<string>();
                    values.Add(gmagv.ToString());
                    values.Add(txtName.Text);
                    values.Add(cbxSex.Text);
                    values.Add(dateTimePicker1.Value.ToString());
                    values.Add(txtIdentityCard.Text);
                    values.Add(txtPhone.Text);
                    values.Add(txtAddress.Text);

                    teacherBUS.RepearTeacher(values);

                    this.Close();
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

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            txtDate.Text = dateTimePicker1.Value.ToString("dd/MM/yyyy");
        }



        #endregion

        private void EditTeacher_Load(object sender, EventArgs e)
        {
            this.MinimizeBox = false;
            this.MaximizeBox = false;
        }
    }
}
