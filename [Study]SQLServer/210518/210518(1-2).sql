--�Ķ����(�ŰԺ���)�� ���� ���ν���
SELECT * FROM userTbl

CREATE PROC usp_users1
	@userName NVARCHAR(10)

AS
  --����
  SELECT userID, name, birthYear FROM userTbl
   WHERE name = @userName;
GO

EXEC usp_users1'���ð�' -- SELECT * FROM v_userbuyInfo WHERE name = '���ð�' �̰ſ� ���ؼ� ������ �ξ� ����σm.


--�Ķ����(�ŰԺ���)�� 2�� ���� ���ν���
CREATE PROC usp_users2
	@userBirthYear INT,
	@userHeight int
AS
	SELECT userID, name, birthYear, height, mDate FROM userTbl
     WHERE birthYear >= @userBirthYear
	   AND height >= @userHeight
GO

EXEC usp_users2 1970, 178  --VOID Ÿ���� �޼ҵ� �����ϸ� �ǿ�.

--���ν����� �Լ� �ڵ�����
--CREATE OR ALTER PROC(FUNC)������ ������ ���ÿ�

CREATE OR ALTER PROC usp_user3
	@lastName NVARCHAR(2)
	@outCount INT OUTPUT -- OUTPUT�� ����� ���� �޴°���. ���ϻ����ϸ��. �ƿ�ǲ�� ���Ϲ޴°���.
AS
	SELECT @outCount = COUNT(*) FROM userTbl WHERE name LIKE @lastName + '%'
GO

DECLARE @myValue INT;
EXEC usp_users3 '��', @myValue OUTPUT;
PRINT CONCAT('�达 ���� ���� ����� ���� ' , @myValue);

SELECT * FROM userTbl