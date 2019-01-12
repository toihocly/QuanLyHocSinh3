using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quanlyhocsinhcap3.GUI.GUI_Login
{
    public partial class AboutUs : UserControl
    {
        public AboutUs()
        {
            InitializeComponent();
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {

            // Navigate to a URL.
            System.Diagnostics.Process.Start("https://www.youtube.com/watch?v=hTgVhM62dbM&list=PLgOYRxISNUqVc9b_EBHGTW8-ue6s1N-xE");
        }
    }
}
