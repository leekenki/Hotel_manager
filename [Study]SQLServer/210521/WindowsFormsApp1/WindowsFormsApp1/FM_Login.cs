using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class FM_Login : Form
    {
        public FM_Login()
        {
            InitializeComponent();
            this.Tag = "FAIL";
        }
        private SqlConnection Connect = null;  // 데이터 베이스 접속정보 함수
        private SqlTransaction Tran;  // 데이터 베이스 관리 권환 함수(이걸 SQL이 아닌 C#에서 하겠다!)
        private SqlCommand cmd = new SqlCommand(); // 데이터 베이스 명령 전달
        private int PwFailCount = 0;
        

        private void button1_Click(object sender, EventArgs e)
        {
            // 비밀번호 변경화면 팝업을 호출한다.
            FM_PassWord fM_PassWord = new FM_PassWord();
            fM_PassWord.Show(); //* 윈폼창에서 작업이가능함. showdialog면 내가 화면 닫지않는이상 다른작업못함.
        }
        private void btnPWChang_Click(object sender, EventArgs e)
        {
            //비밀번호 변경 화면 팝업을 호출한다.
            this.Visible = false; // 로그인 화면을 보이지 않게 한다.
            FM_PassWord fM_PassWord = new FM_PassWord();
            fM_PassWord.ShowDialog();
            this.Visible = true;  // 로그인 화면을 보이게 한다.
        }

        private void label1_Click(object sender, EventArgs e)
        {
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                    //비밀번호를 변경한다.
                  string strCon = "Data Source=61.105.9.203; Initial Catalog=AppDev; User ID=kfqs1; Password=1234;";  //로컬로 이렇게 들어가서 합니다.
                Connect = new SqlConnection(strCon);

                Connect.Open(); // 데이터 베이스에 접속한다.

                //DB접속이 되지 않았을 경우 메세지 리턴 후 이벤트 종료
                if (Connect.State != System.Data.ConnectionState.Open)
                {
                    MessageBox.Show("데이터 베이스 연결에 실패하였습니다.");
                    return;
                }

                string sLoinid = string.Empty;  //로그인 아이디
                string sPerPw = string.Empty;  // 비밀번호 비번

                sLoinid = nowID.Text;  //지금 아이디!
                sPerPw = nowPW.Text;  //지금 비번!

                SqlDataAdapter Adapter = new SqlDataAdapter("SELECT PW,USERNAME FROM TB_USER_LKK WHERE USERID = '" + sLoinid + "'", Connect);

                //Data를 담을 그릇
                DataTable DtTemp = new DataTable();

                //어뎁터 실행 후 그릇에 데이터 담기
                Adapter.Fill(DtTemp);

                //교수님꺼 중에서 flow chart 가져왓서 붙혀야 겠지?


                if (DtTemp.Rows.Count == 0)                                  
                {
                    MessageBox.Show("로그인 ID 가 잘못 되었습니다.");
                    //txtUserID.Text = "";
                    nowPW.Focus();
                    return;
                }

                // 기존 비밀 번호 비교 
                else if (sPerPw != DtTemp.Rows[0]["PW"].ToString())
                {

                    nowPW.Text = "";
                    nowPW.Focus();
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
                    this.Tag = DtTemp.Rows[0]["USERNAME"].ToString(); // 유저 명을 메인화면으로 보냄
                    this.Close();
                }
            }
                catch (Exception ex)
                {
                    MessageBox.Show("로그인 작업중 오류가 발생하였습니다." + ex.ToString());
                }
                finally
                {
                    Connect.Close();
                }
        }

        private void nowPW_KeyDown(object sender, KeyEventArgs e)
        {
            if( e.KeyCode == Keys.Enter)
            {
                button2_Click(null, null);
            }
        }
    }
}
