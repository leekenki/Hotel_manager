--�Է��� ����⵵ ���Ŀ� ����߿��� ���ŵ�޿� �ٸ� ����� ��ȯ

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
		INSERT INTO @reTable VALUES ('����', '����', '����')
		RETURN;
	END
	ELSE
	BEGIN
		--�Է� ����
		INSERT INTO @reTable
		SELECT u.userID, u.name, 
		       CASE 
			    WHEN SUM(b.price * b.amount) >= 1500 THEN '�ֿ��'
				WHEN SUM(b.price * b.amount) >= 1000 THEN '���'
				WHEN SUM(b.price * b.amount) >= 1 THEN '�Ϲ�'
				ELSE '����'
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

--�Լ�
SELECT * FROM ufn_userGrade(1975) --���� ����� �����Ŵ.
SELECT userID, birthYear, dbo.ufn_getAge(birthYear) -- �̰� ���� 3���ÿ� �̱����Ǽ� �̷��Զߴ°���. ã�Ƽ� ���ĳ�����.
  FROM userTbl

--�������ν���
EXEC usp_users1 '���ð�'  --�̰� ���󰡵���.