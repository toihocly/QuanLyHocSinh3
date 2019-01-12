using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Quanlyhocsinhcap3.DTO;
using Quanlyhocsinhcap3.BUS;

namespace Quanlyhocsinhcap3.GUI.GUI_Login
{
    public partial class AboutMe : UserControl
    {
        Login_UserBUS login_UserBUS = new Login_UserBUS();


        public AboutMe(string STT)
        {

            InitializeComponent();
            DataTable dt = new DataTable();
            dt = login_UserBUS.SearchUserIfId(STT);

            txtUser.Text = dt.Rows[0]["TaiKhoan"].ToString();
            txtName.Text = dt.Rows[0]["HoTen"].ToString();
            txtPhone.Text = dt.Rows[0]["SDT"].ToString();
            txtUserRights.Text = dt.Rows[0]["LoaiDN"].ToString();



        }
        


    }
}
