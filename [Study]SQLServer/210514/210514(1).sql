--프로그래밍 시작
USE sqlDB;
GO

DECLARE @myVar1 INT;
DECLARE @myVar2 DECIMAL(5,2);
DECLARE @myVar3 NCHAR(20);

SET @myVar1 = 4000;
SET @myVar2 = 3.14;
SET @myVar3 = '가수이름 ==>';

--SELECT @myVar1, @myVar2;
--SELECT @myVar3 AS 'string', name FROM userTbl WHERE height > 180;