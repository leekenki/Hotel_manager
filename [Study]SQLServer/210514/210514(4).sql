--순위함수
SELECT RANK() OVER(ORDER BY SUM(price * amount) DESC) AS '구매순위'
     , TRIM(userID), SUM(price * amount) AS '사용자별구매금액'
  FROM buyTbl
 GROUP BY userID
   FOR JSON AUTO;  --FOR XML AUTO
 

SELECT name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL --널은 편의상 뺀겁니다.
 ORDER BY height DESC;

 --나중에 순위함수에 대해서 깊게 파고들 날이 올겁니다.

SELECT ROW_NUMBER() OVER(ORDER BY height DESC) AS '키순위'
     , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL --널은 편의상 뺀겁니다.
 ;

SELECT RANK() OVER(ORDER BY height DESC) AS '키순위'
     , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL --널은 편의상 뺀겁니다.
 ;

SELECT DENSE_RANK() OVER(ORDER BY height DESC) AS '키순위'
     , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL --널은 편의상 뺀겁니다.
 ;

SELECT ROW_NUMBER() OVER(PARTITION BY addr ORDER BY height DESC) AS '키순위'
     , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL --널은 편의상 뺀겁니다.
 ;

SELECT DENSE_RANK() OVER(PARTITION BY addr ORDER BY height DESC) AS '키순위'
     , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL --널은 편의상 뺀겁니다.
 ;

--통계치를 내고 리포팅을 할때는 매우 많이 쓸수 있습니다.