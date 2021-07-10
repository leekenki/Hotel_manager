-- GROUP BY ROLLUP
WITH cte_summary(GRP, SUMM, DIV)
AS
(
    SELECT groupName AS GRP
		 , SUM(price * amount) AS SUMM
		 , GROUPING_ID(groupName) AS DIV
	  FROM buyTbl
	 GROUP BY ROLLUP(groupName)
)

SELECT 
	   -- div = 0 �� ���̸� grp��� �ƴϸ� '���հ� ���'
	   IIF(div = 0, grp, '���հ�') AS [��ǰ�׷�2]
	   -- div �� 0�̸� grp���, 1�̸� '���հ�'��� 
	 , CASE div
	   WHEN 0 THEN grp
	   WHEN 1 THEN '���հ�' END AS [��ǰ�׷�]
     , summ AS [�׷캰���űݾ�]
	 --, div 
  FROM cte_summary;