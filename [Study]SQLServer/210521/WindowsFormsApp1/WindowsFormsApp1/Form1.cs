using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DEV_Form;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            //this.stbExit.Click += new System.EventHandler(this.stbExit_Click);  클릭안되는 사람만 이벤트 시...
            //진입점 FORM1인데 이거 한번 시행되고 나서 메모리에서 사라진 상태였고, 그러나 아까 FM_Login의 테그를 넣어뒀는데,  
            FM_Login Login = new FM_Login();
            Login.ShowDialog();  //SHOW 랑 차이고려할것. 일단 함수가 종료되면 메모리에서도 해당 지역에서 지역변수들은 사라진다.
            tssUserName.Text = Login.Tag.ToString(); //tag는 배열처럼 사용할 수는 없다.
            if(Login.Tag.ToString() == "FAIL")
            {
                System.Environment.Exit(0);
            }

            this.stbExit.Click += new System.EventHandler(this.stbExit_Click);
            M_SYSTEM.DropDownItemClicked +=  new System.Windows.Forms.ToolStripItemClickedEventHandler(this.drp);

        }



        private void MDI_TEST_Click(object sender, EventArgs e)
        {

        }
        //버튼에 이벤트 추가
           
       
        //메뉴 클릭 이벤트 추가


        private void stbExit_Click(object sender, EventArgs e)
        {
            
            this.Close();
        }

        private void timer4_tick(object sender, EventArgs e)
        {
            tssNowDate.Text = DateTime.Now.ToString();
        }
        private void drp(object sender, ToolStripItemClickedEventArgs e)
        {
            //1. 단순히 폼을 호출하는 경우....
            //DEV_Form.MDI_TEST Form = new DEV_Form.MDI_TEST();
            //Form.MdiParent = this;
            //Form.Show();

            //2. 프로그램을 호춣한다.
            Assembly assemb = Assembly.LoadFrom(Application.StartupPath + @"\" + "DEV_Form.DLL");
            Type typeForm = assemb.GetType("DEV_Form." + e.ClickedItem.Name.ToString(), true);
            Form ShowForm = (Form)Activator.CreateInstance(typeForm);

            // 해당되는 폼이 이미 오픈되어 있는지 확인 후 활성화 또는 신규오픈 한다.
            for(int i = 0; i<myTabControl1.TabPages.Count; i++)
            {
                //if (myTabControl1.TabPages[i].Name == e.ClickedItem.Name.ToString()) return;
                if(myTabControl1.TabPages[i].Name == e.ClickedItem.Name.ToString()) 
                {
                    return;
                }
            }


            //ShowForm.MdiParent = this;
            //ShowForm.Show();
            myTabControl1.AddForm(ShowForm); // 탭페이지에 폼을 추가하여 오픈한다.


        }



        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void stbClose_Click(object sender, EventArgs e)
        {
            this.stbClose.Click += new System.EventHandler(this.stbClose_Click);
            // 열려있는 화면이 있는지 확인
            if (myTabControl1.TabPages.Count == 0) return;

            // 선택된 탭 페이지를 닫는다.
            myTabControl1.SelectedTab.Dispose();

        }
    }

    public partial class MDIForm : TabPage
    {
      
    }
    public partial class MyTabControl : TabControl
    {
        public void AddForm(Form NewForm)
        {
            if (NewForm == null) return;  //인자로 받은 폼이 없는 경우 실행 중지
            NewForm.TopLevel = false;  // 인자로 받은 폼이 최상위 개체가 아님을 선언
            MDIForm page = new MDIForm();  // 탭 페이지 객체 생성( 큰 탭컨트롤 안에 하나하나 붙은거 페이지 예시 Form1)
            page.Controls.Clear();  // 페이지 초기화
            page.Controls.Add(NewForm); // 페이지에 폼 추가
            page.Text = NewForm.Text;  // 폼에서 지정한 명칭으로 탭 페이지 설정
            page.Name = NewForm.Name; // 폼에서 설정한 이름으로 탭 페이지 설정
            base.TabPages.Add(page);  // 탭 컨트롤에 페이지를 추가한다.
            NewForm.Show();  // 인자로 받은 폼을 보여준다.
            base.SelectedTab = page;  // 현재 선택된 페이지를 호출한 폼의 페이지로 설정한다.
        }
    }
}
