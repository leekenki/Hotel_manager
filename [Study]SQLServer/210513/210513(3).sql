--GROUP BY ROLLUP
WITH cte_summary(GRP,SUMM,[DIV])
AS
(
	SELECT groupName AS 'GRP'  --GRP=제품그룹
		 , SUM(price * amount) AS 'SUMM' --SUMM그룹별구매금액합계
		 , GROUPING_ID(groupName) AS 'DIV'
	  FROM buyTbl
	 GROUP BY ROLLUP(groupName)
) --큐브 롤업은 그룹 1개밖에없을때는 결과가 차이가 안남

SELECT 
       CASE div
	   WHEN 0 THEN grp
	   WHEN 1 THEN '총합계' END AS [상품그룹]
     , summ AS [그룹별구매금액]
  --	 , div
  FROM cte_summary;  --운래 총합계에 나왔던 내용이 총합계로 바꿧지? 이경우에 바로 윗줄 div없어져도 동일한 결과로 나옵니다.