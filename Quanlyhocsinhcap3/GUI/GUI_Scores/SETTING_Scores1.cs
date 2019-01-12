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

namespace Quanlyhocsinhcap3.GUI.GUI_Scores
{
    public partial class SETTING_Scores1 : Form
    {
        #region Call Class
        ScoresBUS scoresBUS = new ScoresBUS();

        #endregion

        public SETTING_Scores1(Scores scores)
        {
            InitializeComponent();
            values[0] =  (scores.MaHS.ToString());
            values[1] = ( scores.MaPC.ToString());

            
        }
        List<string> values = new List<string>(new string[] { "MaHS", "MaPC","a_1", "a_2", "a_3", "a_4", "b_1", "b_2", "b_3", "c_1", "d_1"});


        #region Method
        void databiding(DataTable dt)
        {
            txtName.DataBindings.Add("Text", dt, "TenHS", true, DataSourceUpdateMode.Never);
            a_1.DataBindings.Add("Text", dt, "Diem15s_1", true, DataSourceUpdateMode.Never);
            a_2.DataBindings.Add("Text", dt, "Diem15s_2", true, DataSourceUpdateMode.Never);
            a_3.DataBindings.Add("Text", dt, "Diem15s_3", true, DataSourceUpdateMode.Never);
            a_4.DataBindings.Add("Text", dt, "Diem15s_4", true, DataSourceUpdateMode.Never);
            b_1.DataBindings.Add("Text", dt, "Diem1tiet_1", true, DataSourceUpdateMode.Never);
            b_2.DataBindings.Add("Text", dt, "Diem1tiet_2", true, DataSourceUpdateMode.Never);
            b_3.DataBindings.Add("Text", dt, "Diem1tiet_3", true, DataSourceUpdateMode.Never);
            c_1.DataBindings.Add("Text", dt, "Diemgiuaki", true, DataSourceUpdateMode.Never);
            d_1.DataBindings.Add("Text", dt, "Diemcuoiki", true, DataSourceUpdateMode.Never);
        }


        #endregion

        #region Events

        private void btnSave_Click(object sender, EventArgs e)
        {
            // cập nhật value

            values[2] = (a_1.Text);
            values[3] = (a_2.Text);
            values[4] = (a_3.Text);
            values[5] = (a_4.Text);
            values[6] = (b_1.Text);
            values[7] = (b_2.Text);
            values[8] = (b_3.Text);
            values[9] = (c_1.Text);
            values[10] = (d_1.Text);


            try
            {
                scoresBUS.Update(values);
                MessageBox.Show("cập nhật thành công!!!");
                this.Close();
            }
            catch (Exception)
            {
            }

        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        #endregion

        #region Sub Events

        #endregion

        #region Load
        private void SETTING_Scores1_Load(object sender, EventArgs e)
        {
            this.MinimizeBox = false;
            this.MaximizeBox = false;

            DataTable dt = new DataTable();
            try
            {
                dt = scoresBUS.ShowScoresIf2Parameter(values[0], values[1]);
                databiding(dt);
            }
            catch (Exception)
            {
            }

        }
        #endregion
        
    }
}
