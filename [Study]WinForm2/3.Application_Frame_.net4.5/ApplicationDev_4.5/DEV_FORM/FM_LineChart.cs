using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;

namespace DEV_FORM
{
    public partial class FM_LineChart : DEV_FORM.BaseMDIChildForm
    {
        public FM_LineChart()
        {
            InitializeComponent();
        }

        private void FM_LineChart_Load(object sender, EventArgs e)
        {
            chart1.Series.Clear();
            //첫번째 시시즈 생성
            Series Series1 = new Series();  //시리즈1 객체 생성
            Series1.Name = "TEST_Series1";
            Series1.ChartType = SeriesChartType.Line; //라인차트
            chart1.Series.Add(Series1);

            int[] ivalue = new int[] { 100, 110, 90, 80, 100, 150, 130, 120, 110, 120 };
            string[] sText = new string[] {"05-01", "05-02" , "05-03" , "05-04" , "05-05"
                                        , "05-06" , "05-07" , "05-08" , "05-09" , "05-10" };

            int x = 0;
            //값을 차트에 하나씩 대입 한다.
            foreach(var v in ivalue)
            {
                chart1.Series[0].Points.AddXY(sText[x], v);
                x++;
            }
            Series1.IsValueShownAsLabel = true;


            //두번째 시리즈 생성 
            Series Series2 = new Series();  //시리즈1 객체 생성
            Series2.Name = "TEST_Series2";
            Series2.ChartType = SeriesChartType.Line; //라인차트
            chart1.Series.Add(Series2);

            ivalue = new int[] { 90, 120, 90, 100, 100, 120, 130, 100, 110, 120 };
            sText = new string[] {"05-01", "05-02" , "05-03" , "05-04" , "05-05"
                                        , "05-06" , "05-07" , "05-08" , "05-09" , "05-10" };

            x = 0;
            //값을 차트에 하나씩 대입 한다.
            foreach (var v in ivalue)
            {
                chart1.Series[1].Points.AddXY(sText[x], v);
                x++;
            }
            Series2.IsValueShownAsLabel = true;
            chart1.ChartAreas["ChartArea1"].AxisX.LabelStyle.Interval = 1; // 차트간격 지정
        }
    }
}
