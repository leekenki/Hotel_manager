using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace WindowsFormsApp1
{
    public partial class FM_PassWord : Form
    {
        private SqlConnection Connect = null;  // 데이터 베이스 접속정보 함수
        private SqlTransaction Tran;  // 데이터 베이스 관리 권환 함수(이걸 SQL이 아닌 C#에서 하겠다!)
        private SqlCommand cmd = new SqlCommand(); // 데이터 베이스 명령 전달
        public FM_PassWord()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //비밀번호를 변경한다.
            string strCon = "Data Source=61.105.9.203; Initial Catalog=AppDev; User ID=kfqs; Password=1234;";  //로컬로 이렇게 들어가서 합니다.
            Connect = new SqlConnection(strCon);

            Connect.Open(); // 데이터 베이스에 접속한다.

            //DB접속이 되지 않았을 경우 메세지 리턴 후 이벤트 종료
            if(Connect.State !=System.Data.ConnectionState.Open)
            {
                MessageBox.Show("데이터 베이스 연결에 실패하였습니다.");
                return;
            }
            // 1. ID 존재 여부 확인
            string sLoinid = string.Empty;  //로그인 아이디
            string sPerPw = string.Empty;  // 이전 비밀번호
            string sNewPw = string.Empty;  // 신규비밀번호

            sLoinid = USERID.Text;  //이게 정확히 뭐랑 같아야함?
            sPerPw = PW.Text;
            sNewPw = NEWPW.Text;

            //sql 조회문을 실행시키기 위한 어댑터
            SqlDataAdapter Adapter = new SqlDataAdapter("SELECT PW FROM TB_USER_LKK WHERE USERID = '" + sLoinid + "'", Connect);

            //Data를 담을 그릇
            DataTable DtTemp = new DataTable();

            //어뎁터 실행 후 그릇에 데이터 담기
            Adapter.Fill(DtTemp);

            //데이터가 없는 경우 사용자가 없다고 메세지 및 리턴
            if(DtTemp.Rows.Count == 0)
            {
                MessageBox.Show("등록되지 않음");
                return;
            }

            // 2. 이전 비밀번호가 일치하는지 확인
            else if(DtTemp.Rows[0]["PW"].ToString()!=sPerPw)
            {
                MessageBox.Show("이전 비밀번호가 일치하지 않습니다.");
                return;
            }

            // 3. 바뀔 비밀번호로 등록
            else
            {
                if(MessageBox.Show("해당 비밀번호로 변경 하시겠습니까?",
                    "비밀번호 변경", MessageBoxButtons.YesNo)==DialogResult.No)
                {
                    return;
                }

                Tran = Connect.BeginTransaction("TEST_tran"); //트랜잭션 선언

                cmd.Transaction = Tran;  //커맨드에 트랜젝션 사용여부 등록
                cmd.Connection = Connect;  //커맨드에 접속정보 입력
                cmd.CommandText = "UPDATE Table_USER_LKK SET PW = '" + sNewPw + "'WHERE USERID = '" + sLoinid+"'";
                cmd.ExecuteNonQuery(); //C,U,D 실행 함수 실행 (create update delete)

                Tran.Commit(); //변경 내용 승인
                MessageBox.Show("정상적으로 변경 하였습니다.");
                this.Close();
            }

            // 4. 변경여부 메세지 처리
        }
    }
}
