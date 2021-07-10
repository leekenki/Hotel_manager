CREATE OR ALTER PROC usp_zodiac
	@userName NVARCHAR(10)
AS
	DECLARE @bYear INT
	DECLARE @zodiac NVARCHAR(3)  --띠이름 변수
	 SELECT @bYear =  birthYear FROM userTbl
	  WHERE name = @userName;

	  SET @zodiac =
		  CASE
			  WHEN (@bYear%12 = 0) THEN '원숭이' --신
			  WHEN (@bYear%12 = 1) THEN '닭'  --유
			  WHEN (@bYear%12 = 2) THEN '개'  --술
			  WHEN (@bYear%12 = 3) THEN '돼지'  --해
			  WHEN (@bYear%12 = 4) THEN '쥐'  --자
			  WHEN (@bYear%12 = 5) THEN '소'  --축
			  WHEN (@bYear%12 = 6) THEN '호랑이'  --인
			  WHEN (@bYear%12 = 7) THEN '토끼'  --묘
			  WHEN (@bYear%12 = 8) THEN '용'  --진
			  WHEN (@bYear%12 = 9) THEN '뱀'  --사
			  WHEN (@bYear%12 = 10) THEN '말'  --오
			  ELSE '양' --미
		 END
	PRINT CONCAT(@userName, '의 띠는', @zodiac, '입니다')

GO

EXEC usp_zodiac '성시경'  --아직까지 금융권에서 트랜젝션 많이 들어가야하는 곳들에서는사용되고 그외는 없어지는 추세
SELECT * FROM userTbl

--시스템 저장프로시저
EXEC sp_databases;
EXEC sp_tables  'userTbl', 'dbo'