--CASE(CASE WHEN THEN)으로 많이 씀
DECLARE @point INT, @credit CHAR(1)
SET @point = 40

--SELECT --이거 안넣으면 출력이 안나옴. PRINT도 가능합니다. END까지 같음
SET @credit = --아래 케이스 엔드의 값을 크레딧에 넣는다. 
CASE
	WHEN (@point >= 90) THEN 'A'
	WHEN (@point >= 80) THEN 'B'
	WHEN (@point >= 70) THEN 'C'
    WHEN (@point >= 60) THEN 'D'
	ELSE 'F'
END

PRINT CONCAT('취득점수 ==> '  ,@point) --인트니까 CONCAT으로 형변환 걸음
PRINT CONCAT('학점 ==> '  ,@credit)