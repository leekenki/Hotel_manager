USE sqlDB;
GO

SELECT * FROM userTbl
 WHERE userID = 'KKH';
--사용자 테이블에서 출생년도 1970에서 1980 사이
--이고 키가 180이상인 사람을 조회.
SELECT * FROM userTbl
 WHERE birthYear >= 1970 AND birthYear <= 1980
   AND height >=180

--출생년도가 1970년 이후이거나 키가 182이상인 사람조회
SELECT * FROM userTbl
 WHERE birthYear >= 1970 OR birthYear >=1980
   AND height >=180;
SELECT * FROM userTbl
 WHERE birthYear BETWEEN 1970 AND 1980
   AND height >=180;
--사용자 중에 지역이 경남, 전남, 경북인 사람만 조회
SELECT [name], userID, addr FROM userTbl
 WHERE addr = '경남' OR addr = '전남' OR addr ='경북'

SELECT [name], userID, addr FROM userTbl
 WHERE addr IN ('경남','경북','전남');

-- LIKE절(문자열에서 속하는 문자열이 있는(contain))
SELECT name, height, addr FROM userTbl
 WHERE name LIKE '김%';

SELECT name, height, addr FROM userTbl
 WHERE name LIKE '김__';  --글자수가 이 경우엔 3자리로 맞아야합니다.

SELECT name, height, addr FROM userTbl
 WHERE name LIKE '_비킴'; --글자수가 이 경우엔 3자리로 맞아야합니다.

SELECT name, height, addr FROM userTbl
 WHERE name LIKE '%용%';  --이 글자 들어간 사람 다나옴. 갯수가 많을땐 효율이 떨어질수 있습니다.

--SubQuery
--키가 175보다 큰사람들 조회
SELECT * FROM userTBL 
 WHERE height > 175;

 --김경호보다 키가 큰사람을 조회 괄호 안에 들어가는게 subquery라고함. 이거 자주 나오는 경우임
SELECT * FROM userTBL
 WHERE height > (SELECT height FROM userTBL WHERE name = '김경호');

 --경남에 사는 사람들보다 키가 큰 사람들 조회
SELECT * FROM userTBL
 WHERE height > ANY (SELECT height FROM userTBL WHERE addr = '경남'); --2개 이상의 값이 나오는 경우는 이렇게 해야겠지.

 --IN은 서브쿼리에서 나온 결과와 일치하는 결과만 조회
 SELECT * FROM userTBL
 WHERE height IN (SELECT height FROM userTBL WHERE addr = '경남'); --2개 이상의 값이 나오는 경우는 이렇게 해야겠지.

 SELECT * FROM userTBL
 WHERE height = ANY (SELECT height FROM userTBL WHERE addr = '경남'); --이거랑 바로 위꺼 결과가 동일합니다.

 --ORDERBY

SELECT * FROM userTBL  --유저아이디 PK걸면 자동으로 오름차순 정렬되지롱
 ORDER BY name;

SELECT * FROM userTBL  --DESC; 붙히면 거꾸로
 ORDER BY name DESC;

  --키로 내림차순 정렬 후 같은 값이 있으면 이름으로 오름차순
 SELECT * FROM userTBL  --DESC; 붙히면 거꾸로
 ORDER BY height DESC, name ASC

 --mobile1으로 오름차순 뒤 같은값이면 mobile2로 내림차순
SELECT * FROM userTBL
 ORDER BY mobile1 ASC, mobile2 DESC


 --userTbl에 몇개의 데이터(레코드)가 있는지 확인
SELECT COUNT(*) FROM userTbl;
SELECT COUNT(*) FROM buyTbl;

--DISTINCT (중복제거)
SELECT DISTINCT addr FROM userTbl --중복이 제거되었습니다.

SELECT addr FROM userTbl

--TOP
USE AdventureWorksLT2019;
GO

SELECT TOP 10 * FROM SalesLT.Customer;
SELECT TOP(10) * FROM SalesLT.Customer;  --동일합니다.
SELECT TOP(1) PERCENT * 
  FROM SalesLT.Customer 
  WHERE Title = 'Ms.' --이거 빠지고 넣고의 차이!
  ORDER BY CustomerID DESC;

-- 10% 샘플링결과 조회(쓸일이 없당)
SELECT * FROM SalesLT.Customer
TABLESAMPLE(10 PERCENT);  --10프로 내외에서 샘플링을 해서 결과를 달라는 것입니다.

SELECT * FROM SalesLT.Customer
 ORDER BY FirstName
OFFSET 5 ROW  --앞에 5개를 빼고 출력함. 이걸 여기 왜 넣은거지?(초기 5개 샘플 배제)
FETCH NEXT 3 ROWS ONLY; --이건 쓴다고하네. 프로시저/함수할때는 많이 쓰게 됩니다.
