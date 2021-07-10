using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace DEV_FORM
{
    public partial class FM_ColumnChart : DEV_FORM.BaseMDIChildForm
    {
        private DataTable dtTempNon = new DataTable();
        public FM_ColumnChart()
        {
            InitializeComponent();
        }

        private void FM_ColumnChart_Load(object sender, EventArgs e)
        {
            //콤보박스 데이터 생성
            DBHelper helper = new DBHelper(false); //FALSE 트랜젝션 사용안함 선택. TRUE는 반대. 콤보박스에서 가져와서 쓸거니까 트랜젝션사용안함.
            try
            {
                DataTable dtTemp = new DataTable();
                dtTemp = helper.FillTable("SP_CHART_LKK_S1", CommandType.StoredProcedure
                                          , helper.CreateParameter("ITEMCODE", ""));
                if(dtTemp.Rows.Count == 0)
                {
                    return;
                }
                else
                {
                    comboBox1.DataSource = dtTemp;
                    comboBox1.DisplayMember = "ITEMNAME";
                    comboBox1.ValueMember = "ITEMCODE";
                }
            }
            catch
            {

            }
            finally
            {
                helper.Close();
            }

            //깡통 테이블 생성 (데이터 그리드뷰 셋팅)
            dtTempNon.Columns.Add("PRODDATE");
            dtTempNon.Columns.Add("ITEMCODE");
            dtTempNon.Columns.Add("ITEMNAME");
            dtTempNon.Columns.Add("PRODCOUNT");
            //화면이 열릴때 그리드뷰에 비어있는 데이터 테이블을 미리 등록한다.
            dataGridView1.DataSource = dtTempNon;

            //그리드 뷰의 헤드 명칭 선언
            dataGridView1.Columns["PRODDATE"].HeaderText = "생산일자";
            dataGridView1.Columns["ITEMCODE"].HeaderText = "품목코드";
            dataGridView1.Columns["ITEMNAME"].HeaderText = "품목명";
            dataGridView1.Columns["PRODCOUNT"].HeaderText = "생산수량";

            //그리드 뷰의 폭 지정
            dataGridView1.Columns[0].Width = 200;
            dataGridView1.Columns[1].Width = 200;
            dataGridView1.Columns[2].Width = 300;
            dataGridView1.Columns[3].Width = 200;

            //컬럼의 수정 여부를 지정한다.
            dataGridView1.Columns[0].ReadOnly = true;
            dataGridView1.Columns[1].ReadOnly = true;
            dataGridView1.Columns[2].ReadOnly = true;
            dataGridView1.Columns[3].ReadOnly = true;
        }
        public override void Inquire()
        {
            base.Inquire();
            DBHelper helper = new DBHelper(false);
            try
            {
                string asItemCode = comboBox1.SelectedValue.ToString();
                DataTable dtTemp = new DataTable();
                dtTemp = helper.FillTable("SP_CHART_LKK_S2", CommandType.StoredProcedure
                                            , helper.CreateParameter("ITEMCODE", asItemCode));
                if(dtTemp.Rows.Count == 0)
                {
                    dataGridView1.DataSource = dtTempNon;  //이전에 조회한 데이터가 남아있을 경우 이전에 검색한 내용초기화 목적임
                    MessageBox.Show("조회할 데이터가 없습니다.");
                }
                else
                {
                    //그리드 뷰에 데이터 삽입
                    dataGridView1.DataSource = dtTemp;

                    //컬럼차트 생성
                    MakeColumnChart(helper, asItemCode);
                }
            }
            catch(Exception ex)
            {

            }
            finally
            {
                helper.Close();
            }
        }
        private void MakeColumnChart(DBHelper helper, string sItemCode)
        {
            //컬럼차트 만들때 없는거라서 아예 하나 만들어버림.
            DataTable dtTemp = new DataTable();
            chart1.Series.Clear();  //시리즈는 일별로 품목대로생산된 데이터를 가져왔으면 각 생산수량에 대한 정보가 있는데, 이 일련의 흐름을 보여주기 위한것이 시리즈의 개념임
            dtTemp = helper.FillTable("SP_CHART_LKK_SP3"
                        , CommandType.StoredProcedure
                        , helper.CreateParameter("ITEMCODE", sItemCode));
            if(dtTemp.Rows.Count == 0)
            {
                return;
            }
            //데이터 테이블을 차에에 바인딩한다.
            chart1.DataBindTable(dtTemp.DefaultView, "PRODDATE");
            //바인딩된 시리즈의 이름을 지정한다.
            chart1.Series[0].Name = dtTemp.Rows[0]["ITEMNAME"].ToString();
            chart1.Series[0].Color               = Color.Green;
            chart1.Series[0].IsValueShownAsLabel = true;
        }
    }
}
