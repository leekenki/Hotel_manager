USE sqlDB;
GO

CREATE PROC usp_users
AS
	SELECT userID, name, birthYear, addr FROM userTbl;
GO

EXEC usp_users;

--�丸���
CREATE VIEW v_users
AS 
    SELECT userID, name, birthYear, addr FROM userTbl;
GO

SELECT * FROM v_users

--�����Ѱ� ��,���ν����� ������.... ���ν����� �ξ� ���� ���� �� ������ �ٺ������� �ٸ�.