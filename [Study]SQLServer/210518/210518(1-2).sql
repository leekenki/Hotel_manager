--파라미터(매게변수)가 들어가는 프로시저
SELECT * FROM userTbl

CREATE PROC usp_users1
	@userName NVARCHAR(10)

AS
  --로직
  SELECT userID, name, birthYear FROM userTbl
   WHERE name = @userName;
GO

EXEC usp_users1'성시경' -- SELECT * FROM v_userbuyInfo WHERE name = '성시경' 이거에 비해서 위에께 훨씬 깔끔하긩.


--파라미터(매게변수)가 2개 들어가는 프로시저
CREATE PROC usp_users2
	@userBirthYear INT,
	@userHeight int
AS
	SELECT userID, name, birthYear, height, mDate FROM userTbl
     WHERE birthYear >= @userBirthYear
	   AND height >= @userHeight
GO

EXEC usp_users2 1970, 178  --VOID 타입의 메소드 생각하면 되요.

--프로시저나 함수 코딩때는
--CREATE OR ALTER PROC(FUNC)생성과 수정을 동시에

CREATE OR ALTER PROC usp_user3
	@lastName NVARCHAR(2)
	@outCount INT OUTPUT -- OUTPUT은 결과를 돌려 받는것임. 리턴생각하면됨. 아웃풋은 리턴받는값임.
AS
	SELECT @outCount = COUNT(*) FROM userTbl WHERE name LIKE @lastName + '%'
GO

DECLARE @myValue INT;
EXEC usp_users3 '김', @myValue OUTPUT;
PRINT CONCAT('김씨 성을 가진 사용자 수는 ' , @myValue);

SELECT * FROM userTbl