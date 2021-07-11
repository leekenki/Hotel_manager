using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Windows.Forms;
using Hotel_Sub;



namespace Hotel 
{
    public partial class Hotel_LogIn : Form
    {
        private  SqlConnection connect = null;

        public Hotel_LogIn()
        {
            InitializeComponent();
            this.Tag = "FAIL";
        }

        private void label1_Click(object sender, EventArgs e)
        {        }

        private int PwFailCount = 0;

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                string strConn = "Data Source=222.235.141.8; Initial Catalog=AppDev;User ID=kfqs1;Password=1234";
                connect = new SqlConnection(strConn);

                connect.Open();
                if (connect.State != System.Data.ConnectionState.Open) MessageBox.Show("데이터 베이스 연결에 실패 하였습니다.");

                string sLogInId = txtID.Text;
                string sPassWord = textBox1.Text;

                SqlDataAdapter Adapter = new SqlDataAdapter("SELECT * FROM TB_2_IDPW WHERE ID = '" + sLogInId + "'", connect);
                DataTable DtTemp = new DataTable();

                Adapter.Fill(DtTemp);

                if (DtTemp.Rows.Count == 0)
                {
                    MessageBox.Show("로그인 ID 가 잘못 되었습니다.");
                    txtPW.Focus();
                    return;
                }

                else if (sPassWord != DtTemp.Rows[0]["PW"].ToString())
                {
                    txtPW.Text = "";
                    txtPW.Focus();
                    PwFailCount += 1;
                    MessageBox.Show("비밀번호 가 잘못 되었습니다. 누적 횟수 : " + PwFailCount.ToString());
                    if (PwFailCount == 3)
                    {
                        MessageBox.Show("3회 이상 비밀번호를 잘못입력하여 프로그램을 종료 합니다.");
                        this.Close();
                    }
                    return;
                }
                else
                {
                    Common.LogInId = txtID.Text;
                    Common.LogInName = DtTemp.Rows[0]["ID"].ToString();
                    this.Tag = DtTemp.Rows[0]["ID"].ToString();
                    this.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("로그인 작업중 오류가 발생하였습니다." + ex.ToString());
            }
            finally
            {
                connect.Close();
            }

        }

        private void textBox1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                button1_Click(null, null);
            }
        }

        private void txtID_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {


        }
    }
}
