--문자열함수
SELECT ASCII('z'), CHAR(66);
SELECT UNICODE('가'), NCHAR(44032); --일본어 중국어도 유니코드 가능합니다. 아스키코드는 가끔 뭔가 다 잘나오지는 않습니다.


--문자열 연결
SELECT CONCAT('SQL', 'server', 2019) AS [name]; -- 사용빈도 상! 형변환 해야하지만 안해도 됨.(많이 씀)
--SELECT 'SQL' + 'server' + CAST(2019 AS VARCHAR);  -- 2019가 숫자이니 형변환해야함.

--단어 시작위치
SELECT CHARINDEX('world', 'Hello world');
-- C#, HAVA, python에서는 문자열 0부터 시작하지만 (C#의 경우 인덱스의 시작(글자의)이 0,1,2,3 이렇게 시작되는것임.)
-- DB에서는 1부터 시작합니다.(그러나 db에서의 인덱스는 다름)

-- LEFT, RIGHT, SUBTRING, LEN, LOWER, UPPER, LTRIM, RTIM (개많이 씁니다.)
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL Server 2019'
SELECT LEFT (@STR, 3) --왼쪽부터 3자리 끊음
SELECT RIGHT (@STR, 4) --오른쪽부터 4자리 끊음

SELECT SUBSTRING('대한민국만세!', 5, 2); --5번째부터 2자리를 자르기 하면 만세나옴

SELECT LEN('Hellow Wolrd'); --글자길수고 확인시 사용
SELECT LEN('대한민국만세!');

SELECT LOWER('hELLO Wolrd') --모든 글자를 소문자로 바꿈
SELECT UPPER('hELLO Wolrd') --모든 글자를 대문자로 바꿈
--대소문자가 여기서는 상관없는데 c#으로 넘어가는 경우에 이게 쉽지 않은 일이 되버립니다.
SELECT UPPER('cd2005');


--스페이스 제거 함수
SELECT '   SQL', LTRIM('   SQL');  --왼쪽편 공백 다 없앰 (중)
SELECT '   SQL', RTRIM('   SQL   '); -- 오른쪽편 공백 다 없엠 (중)
SELECT '   SQL', TRIM('   SQL   ');  --앞뒤 공백 다 엎음   가장 많이 쓰임! DB단계에서 처리해서 깔끔하게 조지도록! (상)

--Replace (사용빈도 최상!)
SELECT REPLACE('SQL Server 2019, Server만쉐', 'server', '서버'); --server를 서버로 바 교체!

--STR 사용빈도 하
SELECT STR(3.141592);
SELECT STR(45);

--FORMAT 사용빈도 상
SELECT GETDATE();
SELECT FORMAT(GETDATE(), 'yyyy-Mm-dd hh:mm:ss')  --한국식
SELECT FORMAT(GETDATE(), 'mm-dd-yyyy hh:mm:ss')  --미국식

