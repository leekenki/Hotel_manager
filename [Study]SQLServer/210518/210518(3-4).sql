CREATE OR ALTER FUNCTION ufn_getUsers(@height INT)
	RETURNS TABLE
AS

	RETURN(
		SELECT * FROM userTbl
		 WHERE height > @height  --한줄짜리라서 비긴엔드를 안넣음
	)
GO

SELECT * FROM dbo.ufn_getUsers(180) 