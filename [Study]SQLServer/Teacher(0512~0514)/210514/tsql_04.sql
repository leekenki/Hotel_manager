-- 순위함수
SELECT RANK() OVER(ORDER BY SUM(price * amount) DESC) AS '구매순위'
     , TRIM(userID) as userID, SUM(price * amount) AS '사용자별구매금액'
  FROM buyTbl
 GROUP BY userID
   FOR JSON AUTO; -- FOR XML AUTO








SELECT ROW_NUMBER() OVER(ORDER BY height DESC) AS '키순위'
     , name, height, addr 
  FROM userTbl
 WHERE height IS NOT NULL;

SELECT RANK() OVER(ORDER BY height DESC) AS '키순위'
     , name, height, addr 
  FROM userTbl
 WHERE height IS NOT NULL;

SELECT DENSE_RANK() OVER(ORDER BY height DESC) AS '키순위'
     , name, height, addr 
  FROM userTbl
 WHERE height IS NOT NULL;


SELECT DENSE_RANK() OVER(PARTITION BY addr ORDER BY height DESC) AS '키순위'
     , name, height, addr 
  FROM userTbl
 WHERE height IS NOT NULL;