USE sqlDB;
GO

CREATE PROC usp_users
AS
	SELECT userID, name, birthYear, addr FROM userTbl;
GO

EXEC usp_users;

--뷰만들기
CREATE VIEW v_users
AS 
    SELECT userID, name, birthYear, addr FROM userTbl;
GO

SELECT * FROM v_users

--동일한걸 뷰,프로시저로 했으나.... 프로시저는 훨씬 많은 걸할 수 잇으며 근본적으로 다름.