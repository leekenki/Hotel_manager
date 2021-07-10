--구매한 금액에 따라서 최우수/우수/일반고객으로 분류하는
--쿼리를 작성하라
WITH cte_custlevel([사용자아이디], [회원명], [총구매금액], [고객등급]) --테이블 하나 만들어버림
AS
(
SELECT u.userID AS '사용자아이디'
	 , u.name AS '회원명'
	 , IIF (SUM(b.price*b.amount) IS NULL, 
	       0, 
	       SUM(b.price*b.amount)) AS '총구매금액'
	 , CASE 
			WHEN (SUM(b.price*b.amount) >=1500) THEN '최우수고객'
			WHEN (SUM(b.price*b.amount) >=1000) THEN '우수고객'
			WHEN (SUM(b.price*b.amount) >=1) THEN '일반고객'
			ELSE '유령고객'
	   END AS '고객등급' --우리가 만든 컬럼임으로 열이름 없음으로 나온다. 따라서 AS를 붙여주는겁니다.
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 GROUP BY u.userID, u.name
 --ORDER BY SUM(b.price*b.amount) DESC 테이블만들기라서 하나 빼봣습니다.
 )

 --SELELCT  * FROM 부터 만들고 조인하고 필요하는것에 따라서 하나 하나 하나씩 해나가야함. 처음부터 끝까지 이걸 한방에 짜는게 아님.

-- SELECT * FROM cte_custlevel
--  ORDER BY [총구매금액] DESC --못쓴 ORDER BY를 여기에 해봣습니다. 아래꺼 하려고 26 27번 잠깐 지운것

 SELECT [사용자아이디], [회원명]
	  , FORMAT([총구매금액], '#,#') AS '구매금액'  --'C4'도 같음 '#,#'
	  , [고객등급]
   FROM cte_custlevel
  ORDER BY [총구매금액] DESC  --나만 왜 안나오는지 확인!