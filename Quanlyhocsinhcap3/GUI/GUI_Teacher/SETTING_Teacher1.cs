using Quanlyhocsinhcap3.DAO;
using Quanlyhocsinhcap3.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quanlyhocsinhcap3.GUI
{
    public partial class SETTING_Teacher1 : Form
    {
        Support support = new Support();
        // Add
        SETTING_Teacher2 set_teacher2 = null;
        // Edit
        SETTING_Teacher3 set_teacher3 = null;

        Teacher gTeacher = new Teacher();
        public SETTING_Teacher1(Point point,Teacher teacher)
        {
            InitializeComponent();
            Location = new Point(point.X, point.Y);
            gTeacher.MaGV = teacher.MaGV;
        }

        void DeletePanel()
        {
            support.DeleteControlTrash(this, set_teacher2);
            support.DeleteControlTrash(this, set_teacher3);
        }
        


        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            // giải phóng bộ nhớ
            DeletePanel();

            set_teacher3 = new SETTING_Teacher3(gTeacher);
            
            set_teacher3.ShowDialog();
            this.Close();

        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            // giải phóng bộ nhớ
            DeletePanel();

            set_teacher2 = new SETTING_Teacher2(gTeacher);

            set_teacher2.ShowDialog();
        }
    }
}
