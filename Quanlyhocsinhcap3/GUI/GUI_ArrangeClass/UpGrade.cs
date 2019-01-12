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

namespace Quanlyhocsinhcap3.GUI.GUI_ArrangeClass
{
    public partial class UpGrade : Form
    {
        // năm
        YearBUS yearBUS = new YearBUS();
        // khối
        GradeLevelBUS gradeLevelBUS = new GradeLevelBUS();
        //
        GradeBUS gradeBUS = new GradeBUS();

        public UpGrade()
        {
            InitializeComponent();
        }

        #region Method
        void Handling_Year()
        {
            cbxYear.DataSource = yearBUS.ShowYear();
            cbxYear.DisplayMember = "TenNH";
            cbxYear.ValueMember = "MaNH";
        }

        void Handling_GradeLevel()
        {
            // Hiển thị khối học ví dụ : 10 , 11 , 12
            cbxGradeLevel.DataSource = gradeLevelBUS.ShowGradeLevel();
            cbxGradeLevel.DisplayMember = "TenKH";
            cbxGradeLevel.ValueMember = "MaKH";
        }
        #endregion
        #region Event

        #endregion

        

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void UpGrade_Load(object sender, EventArgs e)
        {
            
            this.MinimizeBox = false;
            this.MaximizeBox = false;

            Handling_Year();
            Handling_GradeLevel();
        }




        private void btnOke_Click(object sender, EventArgs e)
        {
            int _year, _gradelevel;

            int.TryParse(cbxYear.SelectedValue.ToString(), out _year);
            int.TryParse(cbxGradeLevel.SelectedValue.ToString(), out _gradelevel);
            // khai báo đối tượng lớp học
            Grade grade = new Grade();
            grade.MaNH = _year;
            grade.MaKH = _gradelevel;

            // B1. kiểm tra năm học mới + tạo mới nếu chưa có
            try
            {
                // kiểm tra năm mới có tồn tại không
                yearBUS.CheckNextYear(grade);
                // nếu năm tiếp theo đã tồn tại
                // thực hiện tiếp ở dưới
            }
            catch (Exception)
            {
                // nếu có lỗi
                // xuất ra thông báo bạn có muốn tạo ra cái năm học mới luôn không
                
                DialogResult result = MessageBox.Show("Năm học tiếp theo chưa được khởi tạo trong CSDL\nBạn có muốn chúng tôi tạo giúp bạn\nOKE : để tiêp tục  CANCEL: để hủy bỏ", "WARNING", MessageBoxButtons.OKCancel);
                if (result == DialogResult.OK)
                {
                    // nếu lựa chọn là có
                    yearBUS.CreateNextYear(grade);
                    MessageBox.Show("Thêm thành công năm học mới!!");
                }
                if (result == DialogResult.Cancel)
                {
                    // nếu lựa chọn là không
                    // kết thúc luôn tiến trình
                    return;
                }

            }

            // B2. tạo ra bảng sao lên lớp của các lớp trong 1 năm
            try
            {
                gradeBUS.DuplicateUpClass(grade);
                MessageBox.Show("Hoàn tất!!");
            }
            catch (Exception)
            {
            }

        }

        private void cbxYear_Click(object sender, EventArgs e)
        {
            cbxYear.DroppedDown = true;
        }

        private void cbxGradeLevel_Click(object sender, EventArgs e)
        {
            cbxGradeLevel.DroppedDown = true;
        }
    }
}
