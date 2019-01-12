using Quanlyhocsinhcap3.DAO;
using Quanlyhocsinhcap3.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Quanlyhocsinhcap3.BUS
{
    class ScoresBUS
    {
        ScoresDAO scoresDAO = new ScoresDAO();
        public DataTable ShowScoresIf3Parameter(string IDGrade,string IDGradeLevel,string IDSubject )
        {
            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                Assignment assignment = new Assignment();
                strError = "Text not number1";
                assignment.MaLH = int.Parse(IDGrade);
                strError = "Text not number2";
                assignment.MaHK = int.Parse(IDGradeLevel);
                strError = "Text not number3";
                assignment.MaMH = int.Parse(IDSubject);


                return scoresDAO.ShowScoresIf(assignment);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "Text not number1":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@1", "WARNING ShowScoresIf3Parameter");

                            break;
                        }
                    case "Text not number2":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@2", "WARNING ShowScoresIf3Parameter");

                            break;
                        }
                    case "Text not number3":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@2", "WARNING ShowScoresIf3Parameter");

                            break;
                        }
                    default:
                        break;
                }

                return null;
            }
        }

        public DataTable ShowScoresIf2Parameter(string IDStudent,string IDAssignmentTeacher)
        {
            try
            {
                Scores scores = new Scores();
                scores.MaHS = int.Parse(IDStudent);
                scores.MaPC = int.Parse(IDAssignmentTeacher);

                return scoresDAO.ShowScoresIf(scores);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi không xác định ", "WARNING ShowScoresIf2Parameter");
                return null;
            }
        }

        public DataTable ShowScoresDetails(List<string> values)
        {
            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                strError = "Text not number1";
                int checkint1 = int.Parse(values[0]);
                strError = "Text not number2";
                int checkint2 = int.Parse(values[0]);

                return scoresDAO.ShowScoresDetails(values);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "Text not number1":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@1", "WARNING ShowScoresDetails");

                            break;
                        }
                    case "Text not number2":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .@2", "WARNING ShowScoresDetails");

                            break;
                        }
                    default:
                        break;
                }

                return null;
            }
        }

        int checkscores(string str)
        {
            int num = int.Parse(str);

            return (num <= 10 && num >= 0) ? num : -1;
        }




        /// <summary>
        /// Nhập điêm của học sinh
        /// </summary>
        /// <param name="values"></param>
        /// <returns></returns>
        public int Update(List<string> values)
        {
            // tạo ra biến ghi nhận lỗi
            string strError = "";
            try
            {
                Scores scores = new Scores();
                scores.MaHS = int.Parse(values[0]);
                scores.MaPC = int.Parse(values[1]);
                strError = "Text not number1";
                scores.Diem15s_1 = checkscores(values[2]);
                strError = "Text not number2";
                scores.Diem15s_2 = checkscores(values[3]);
                strError = "Text not number3";
                scores.Diem15s_3 = checkscores(values[4]);
                strError = "Text not number4";
                scores.Diem15s_4 = checkscores(values[5]);
                strError = "Text not number5";
                scores.Diem1tiet_1 = checkscores(values[6]);
                strError = "Text not number6";
                scores.Diem1tiet_2 = checkscores(values[7]);
                strError = "Text not number7";
                scores.Diem1tiet_3 = checkscores(values[8]);
                strError = "Text not number8";
                scores.Diemgiuaki = checkscores(values[9]);
                strError = "Text not number9";
                scores.Diemcuoiki = checkscores(values[10]);


                return scoresDAO.Update(scores);
            }
            catch (Exception ex)
            {
                switch (strError)
                {
                    case "Text not number1":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .Điểm 15' _ 1", "WARNING Update");

                            break;
                        }
                    case "Text not number2":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .Điểm 15' _ 2", "WARNING Update");

                            break;
                        }
                    case "Text not number3":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .Điểm 15' _ 3", "WARNING Update");

                            break;
                        }
                    case "Text not number4":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .Điểm 15' _ 4", "WARNING Update");

                            break;
                        }
                    case "Text not number5":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .Điểm 1 tiết _ 1", "WARNING Update");

                            break;
                        }
                    case "Text not number6":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .Điểm 1 tiết _ 2", "WARNING Update");

                            break;
                        }
                    case "Text not number7":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .Điểm 1 tiết _ 3", "WARNING Update");

                            break;
                        }
                    case "Text not number8":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .Điểm giữa kì", "WARNING Update");

                            break;
                        }
                    case "Text not number9":
                        {
                            MessageBox.Show("Chương trình không nhận kí tự chữ .Điểm cuối kì", "WARNING Update");

                            break;
                        }
                    
                    default:
                        {

                            MessageBox.Show("cập nhật không thành công!!!");
                            break;
                        }
                }

                return 0;
            }
        }

        public int UpdateScores( )
        {
            try
            {
                return scoresDAO.UpdateScores();
            }
            catch (Exception ex)
            {
                // không bao giờ có lỗi
                throw ex;
            }
        }
        
        public DataTable SearchValue1(string IDYear,string IDSemester , string IDStudent )
        {
            try
            {

                List<int> _values = new List<int>();
                _values.Add(int.Parse(IDYear));
                _values.Add(int.Parse(IDSemester));
                _values.Add(int.Parse(IDStudent));


                return scoresDAO.SearchValue1(_values);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi không xác định ", "WARNING SearchValue1");

                return null; 
            }
        }
    }
}
