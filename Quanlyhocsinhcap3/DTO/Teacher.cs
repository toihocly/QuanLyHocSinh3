using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quanlyhocsinhcap3.DTO
{
    public class Teacher
    {
        public int MaGV { set; get; }
        public string TenGV { set; get; }
        public bool GioiTinh { set; get; }
        public DateTime NgaySinh { set; get; }
        public string CMND { set; get; }
        public string SDT { set; get; }
        public string DiaChi { set; get; }

        public Teacher()
        {
        }

        public Teacher(int maGV, string tenGV, bool gioiTinh, DateTime ngaySinh, string cMND, string sDT, string diaChi)
        {
            MaGV = maGV;
            TenGV = tenGV;
            GioiTinh = gioiTinh;
            NgaySinh = ngaySinh;
            CMND = cMND;
            SDT = sDT;
            DiaChi = diaChi;
        }
    }
}
