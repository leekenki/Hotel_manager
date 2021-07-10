--입력한 출생년도 이후에 사용중에서 구매등급에 다른 결과를 반환

CREATE OR ALTER FUNCTION ufn_userGrade(@bYear INT)
	RETURNS @reTable TABLE
	(
		userID NVARCHAR(8), 
		name NVARCHAR(10), 
		grade NVARCHAR(5)
	)
AS
BEGIN
	DECLARE @rowCnt INT;
	SELECT @rowCnt = COUNT(*) FROM userTbl WHERE birthYear >= @bYear;

	IF @rowCnt <= 0
	BEGIN
		INSERT INTO @reTable VALUES ('없음', '없음', '없음')
		RETURN;
	END
	ELSE
	BEGIN
		--입력 구문
		INSERT INTO @reTable
		SELECT u.userID, u.name, 
		       CASE 
			    WHEN SUM(b.price * b.amount) >= 1500 THEN '최우수'
				WHEN SUM(b.price * b.amount) >= 1000 THEN '우수'
				WHEN SUM(b.price * b.amount) >= 1 THEN '일반'
				ELSE '유령'
			  END
		  FROM userTbl AS u
		 INNER JOIN buyTbl AS b
		    ON u.userID = B.userID
		 --WHERE u.birthYear >= @bYear
		 GROUP BY u.userID, u.name
		RETURN;
	END

	RETURN;
END
GO

--함수
SELECT * FROM ufn_userGrade(1975) --위의 명령을 실행시킴.
SELECT userID, birthYear, dbo.ufn_getAge(birthYear) -- 이거 내가 3교시에 미구현되서 이렇게뜨는것임. 찾아서 고쳐놓을것.
  FROM userTbl

--저장프로시저
EXEC usp_users1 '성시경'  --이건 정상가동함.