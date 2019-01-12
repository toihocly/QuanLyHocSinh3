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
    public partial class EditStudent : Form
    {
        DataHocSinhEntities db = new DataHocSinhEntities();

        public EditStudent(int ID,string Name,string Sex,DateTime Date,string Address)
        {
            InitializeComponent();
            txtID.Text = ID.ToString();
            txtName.Text = Name;
            cbxSex.Text = Sex;
            dateTimePicker1.Value = Date;
            txtAddress.Text = Address; 

        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {

                HOCSINH hs = db.HOCSINHs.Find(int.Parse(txtID.Text));
                hs.TenHS = txtName.Text;
                if (cbxSex.Text == "Nam")
                    hs.GioiTinh = true;
                else
                    hs.GioiTinh = false;
                string[] formats = { "dd/MM/yyyy" };
                var dateTime = DateTime.ParseExact(txtDate.Text, formats, new CultureInfo("en-US"), DateTimeStyles.None);
                hs.NgaySinh = dateTime;
                hs.DiaChi = txtAddress.Text;
                db.SaveChanges();
                this.Close();
                MessageBox.Show("Edit complete.");
            }
            catch (Exception)
            {

                
            }
           
        }

        

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            txtDate.Text = dateTimePicker1.Value.ToString("dd/MM/yyyy");
           
        }

        private void cbxSex_Click(object sender, EventArgs e)
        {
            cbxSex.DroppedDown =  true;
        }

        private void EditStudent_Load(object sender, EventArgs e)
        {
            this.MinimizeBox = false;
            this.MaximizeBox = false;
        }
    }
}
