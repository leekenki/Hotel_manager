--GROUP BY ROLLUP
WITH cte_summary(GRP,SUMM,[DIV])
AS
(
	SELECT groupName AS 'GRP'  --GRP=��ǰ�׷�
		 , SUM(price * amount) AS 'SUMM' --SUMM�׷캰���űݾ��հ�
		 , GROUPING_ID(groupName) AS 'DIV'
	  FROM buyTbl
	 GROUP BY ROLLUP(groupName)
) --ť�� �Ѿ��� �׷� 1���ۿ��������� ����� ���̰� �ȳ�

SELECT 
       CASE div
	   WHEN 0 THEN grp
	   WHEN 1 THEN '���հ�' END AS [��ǰ�׷�]
     , summ AS [�׷캰���űݾ�]
  --	 , div
  FROM cte_summary;  --� ���հ迡 ���Դ� ������ ���հ�� �مf��? �̰�쿡 �ٷ� ���� div�������� ������ ����� ���ɴϴ�.