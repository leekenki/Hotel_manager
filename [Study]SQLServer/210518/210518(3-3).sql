CREATE OR ALTER FUNCTION ufn_getZodiac(@bYear INT)
	RETURNS NVARCHAR(3)
AS
BEGIN
	DECLARE @result NVARCHAR(3)

	SET @result =
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
    RETURN @result  --이줄 제대로 못봄..... 아씨발 진짜...
GO