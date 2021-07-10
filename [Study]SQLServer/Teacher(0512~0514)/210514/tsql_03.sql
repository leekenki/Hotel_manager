-- 문자열 함수
SELECT ASCII('+'), CHAR(47);  -- 사용빈도 하
SELECT UNICODE('가'), NCHAR(44035); -- 사용빈도 하
SELECT UNICODE('あ'), NCHAR(12354); 
SELECT ASCII('あ'), CHAR(170);

-- 문자열 연결
SELECT CONCAT('SQL ', 'server ', 2019); -- 사용빈도 상
SELECT 'SQL ' + 'server ' + CAST(2019 AS VARCHAR);

-- 단어 시작위치
SELECT CHARINDEX('w', 'Hello world!');
-- C#, java, python 문자열 0부터 시작, DB 1부터 시작

-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL Server 2019';
SELECT LEFT(@STR, 3), RIGHT(@STR, 4);

SELECT SUBSTRING('대한민국만세!', 5, 2);

SELECT LEN('Hello World'); -- 11
SELECT LEN('대한민국만세!');  -- 7

SELECT LOWER('hELLO World!'), UPPER('hELLO World!');
-- CD1001, CD2005, cd2005
SELECT UPPER('cd2005');

-- 스페이스 제거 함수
SELECT '   SQL', LTRIM('   SQL    '); -- 중
SELECT '   SQL   ', RTRIM('   SQL   '); -- 중
SELECT '   SQL   ', TRIM('   SQL   '); -- 상

-- Replace 사용빈도 최상
SELECT REPLACE('SQL Server 2019, Server만쉐', 'Server', '서버');

-- STR 사용빈도 하
SELECT STR(3.141592);
SELECT STR(45);

-- FORMAT 사용빈도 상
SELECT GETDATE();
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss'); -- 한국식
SELECT FORMAT(GETDATE(), 'MM/dd/yyyy hh:mm:ss'); -- 미국식



