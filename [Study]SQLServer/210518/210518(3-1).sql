--나이가 나오는 사용자함수의 작성
CREATE OR ALTER FUNCTION ufn_getAge(@bYear INT)
RETURNS INT
AS
BEGIN
	DECLARE @age INT
	SET @age = YEAR(GETDATE()) - @bYear +1  --한국식나이
	RETURN(@age)
END
GO

--함수는 EXEC안쓰고 잘.... 아래와 같이 실행시킵니다. 함수의 결과는 열이름없음으로 나옵니다.

SELECT userID, name
	 , birthYear, dbo.ufn_getAge(birthYear) AS '나이'  --열이름 없음 ==>나이
	 , addr, height, dbo.ufn_getInch(height) AS '키(인치)'
  FROM userTbl