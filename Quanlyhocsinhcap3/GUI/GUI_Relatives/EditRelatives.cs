using Quanlyhocsinhcap3.BUS;
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

namespace Quanlyhocsinhcap3.GUI.GUI_Relatives
{
    public partial class EditRelatives : Form
    {
        #region Call Class
        // thân nhân
        RelativesBUS relativesBUS = new RelativesBUS();

        #endregion
        public EditRelatives(Relatives relatives)
        {
            InitializeComponent();

            // cập nhật thông tin hiển thị
            values.Add(relatives.MaTN.ToString()) ;
            values.Add(relatives.TenTN);
            values.Add(relatives.CongViec);
            values.Add(relatives.SDT);
            values.Add(relatives.QuanHe);
            // load dữ liệu vào các textbox
            Load_Data(values);

        }

        // ID
        List<string> values = new List<string>();


        #region Method

        #endregion

        #region Events
        void Load_Data(List<string> values)
        {
            txtName.Text = values[1];
            txtJob.Text = values[2];
            txtPhone.Text = values[3];
            cbxRelative.Text = values[4];
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Bạn có chắc muốn tiếp tục", "WARNING", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                try
                {
                    values[1] = txtName.Text;
                    values[2] = txtJob.Text;
                    values[3] = txtPhone.Text;
                    values[4] = cbxRelative.Text;


                    relativesBUS.RepearRelatives(values);

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
        #endregion

        #region Sub Events

        #endregion

        #region Load
        private void EditRelatives_Load(object sender, EventArgs e)
        {
            this.MinimizeBox = false;
            this.MaximizeBox = false;
        }
        #endregion






    }
}
