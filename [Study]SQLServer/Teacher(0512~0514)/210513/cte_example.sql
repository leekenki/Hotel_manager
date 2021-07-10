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
	   -- div = 0 이 참이면 grp출력 아니면 '총합계 출력'
	   IIF(div = 0, grp, '총합계') AS [상품그룹2]
	   -- div 가 0이면 grp출력, 1이면 '총합계'출력 
	 , CASE div
	   WHEN 0 THEN grp
	   WHEN 1 THEN '총합계' END AS [상품그룹]
     , summ AS [그룹별구매금액]
	 --, div 
  FROM cte_summary;