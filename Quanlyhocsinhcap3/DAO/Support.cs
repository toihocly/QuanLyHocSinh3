using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quanlyhocsinhcap3.DAO
{
    class Support
    {
        public static string ConnectString = @"Data Source=.\SQLEXPRESS;Initial Catalog=DataHocSinh;Integrated Security=True";
        public static int Locaion_Width;
        public static int Locaion_Height;
        public static int Size_Width;
        public static int Size_Height;

        public static string YearNow = DateTime.Now.Year.ToString();
        public void DeleteControlTrash(Control parent, Control children)
        {
            if (children != null)
            {
                parent.Controls.Remove(children);
                children = null;
            }
        }

        //Hàm đưa các thiết kế UserControl đến vị trị Panel đã được chỉ địn sẳn
        public void MoveDesignToPanel(UserControl sNameUsCtrl, Panel sNamePanel)
        {
            sNameUsCtrl.Location = new Point(sNamePanel.Location.X, sNamePanel.Location.Y);
            sNameUsCtrl.Height = sNamePanel.Height;
            sNameUsCtrl.Width = sNamePanel.Width;
        }


    }
}
