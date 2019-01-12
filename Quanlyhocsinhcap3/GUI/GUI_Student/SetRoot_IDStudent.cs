using Quanlyhocsinhcap3.DAO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quanlyhocsinhcap3.GUI.GUI_Student
{
    public partial class SetRoot_IDStudent : Form
    {
        public SetRoot_IDStudent()
        {
            InitializeComponent();
            int maxyear = DateTime.Now.Year;
            while (maxyear >= 2015)
            {
                cbxDate.Items.Add(maxyear.ToString());
                maxyear--;
            }

            if (Support.YearNow != "")
                cbxDate.Text = Support.YearNow;
        }
        

        private void btnRest_Click(object sender, EventArgs e)
        {
            cbxDate.Text = DateTime.Now.Year.ToString();
        }

        private void cbxDate_TextChanged(object sender, EventArgs e)
        {
            if (int.TryParse(cbxDate.Text, out int i))
            {
                Support.YearNow = cbxDate.Text;
            }
        }

        private void SetRoot_IDStudent_Load(object sender, EventArgs e)
        {
            MaximizeBox = false;
            MinimizeBox = false;
           
        }
    }
}
