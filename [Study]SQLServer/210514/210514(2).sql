--시스템함수(SQL서버가 기본으로 제공해주는 함수들)
--SELECT AVG(amount) FROM buyTbl;  --amount는 스몰인트라서 정수값으로 결과가 나옴. 그래서 형변환을 해줘야하만함.
--SELECT AVG(CAST(amount AS float)) FROM buyTbl;

SELECT CAST(AVG(CAST(amount AS float)) AS DECIMAL(4, 3)) FROM buyTbl;

SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS INT);  -- 예외발생하면 퀘리가 비정상 종료됨.
SELECT TRY_PARSE('3.14' AS INT);  -- 값 변환을 못하면 NULL로 값 대체하고 정상적으로 수행됩니다.


SELECT name, height FROM userTbl
 WHERE height IS NOT NULL;  --NULL값은 =로 비교하지 않고 IS로 비교합니다. 같을때는 IS고 같지않을때는 IS NOT을 사용합니다.키가 널인사람제거함.
 --HEIGHT SMALLINT -->VARCHAR, CHAR 형변환

SELECT name, CAST(height AS VARCHAR) + ' cm' FROM userTbl
 WHERE height IS NOT NULL;

SELECT PARSE('2021년 5월 14일 10시 27분' AS DATETIME);
SELECT TRY_PARSE('2021년 5월 14일 10시 27분' AS DATETIME);
SELECT PARSE('2021-05-14 10:28:10' AS DATETIME); --이게 한국표준입니다. 바로 윗줄은 잘 안씁니다.

SELECT GETDATE(); --시스템 시간이 나옵니다. INSERT 현재 년월일시분초 제일 많이 사용

SELECT @@VERSION;

--날자 및 시간 함수
SELECT YEAR(GETDATE()) AS '현재년도';
SELECT MONTH(GETDATE()) AS '현재월';
SELECT DAY(GETDATE()) AS '오늘';
--SELECT HOUR(GETDATE()) AS '오늘'; 이건 안되넹 ^^

--수치함수
SELECT ABS(-100); --절대값
SELECT ROUND(3.141692, 2) -- 소수 2째자리 이하인 3째자리에서 반올림한다.
SELECT FLOOR(RAND() * 100); -- 랜덤 + 내림(플로어)
SELECT RAND(); --랜덤 소숫점 나오게하기

--논리함수
SELECT IIF(100 > 200, '참','거짓') --잘쓰면 코딩량이 확 줄어듭니다.
