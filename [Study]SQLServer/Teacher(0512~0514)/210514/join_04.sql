-- 집합(테이블 합치기)
SELECT StdName, Region FROM stdTbl
UNION
SELECT ClubName, ClubRoom FROM clubTbl 
;

-- 데이터타입이 일치해야 UNION 가능
SELECT CAST(Id AS VARCHAR), StdId FROM regInfoTbl
UNION
SELECT ClubName, ClubRoom FROM clubTbl
;

-- 중복을 허용
SELECT StdName, Region FROM stdTbl
UNION ALL
SELECT StdName, Region FROM stdTbl

-- except
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
EXCEPT -- 빼버린다.
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL

-- 뒤의 테이블 기준 만족하는 데이터만 추려내는것
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
INTERSECT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL