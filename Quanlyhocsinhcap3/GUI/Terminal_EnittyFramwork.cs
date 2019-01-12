using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using Quanlyhocsinhcap3.GUI.GUI_Student;

namespace Quanlyhocsinhcap3
{
    public partial class Terminal_EnittyFramwork : UserControl
    {
        #region Call Usercontrol
        Connection conn = new Connection();

        Connection connection = new Connection();

        SqlConnection connect = null;
        #endregion

        public Terminal_EnittyFramwork()
        {
            InitializeComponent();
        }



        #region Method
        void Load_Display(int i)
        {
            switch (i)
            {
                case 1:
                    {
                        groupBox2.Enabled = true;
                        break;
                    }
                case 2:
                    {
                        groupBox2.Enabled = false;
                        break;
                    }
                default:
                    break;
            }
        }
        #endregion

        #region Events
        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                var result = textBox1.Text;

                conn.LoadDataGrid(dataGridView1, result);
            }
            catch (Exception)
            {
                MessageBox.Show("Mã không hợp lệ", "WARNING");
            }

        }

        private void textBox1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                //enter key is down
                button1_Click(null, null);
            }
        }
        #endregion

        #region Sub Events

        #endregion

        #region Load
        private void Terminal_EnittyFramwork_Load(object sender, EventArgs e)
        {
            textBox1.Focus();

        }






        #endregion

        private void label2_Click(object sender, EventArgs e)
        {
            SetRoot_IDStudent set_idstudent = new SetRoot_IDStudent();
            set_idstudent.ShowDialog();
        }
    }
}
