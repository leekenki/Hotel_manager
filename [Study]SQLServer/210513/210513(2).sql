--GROUP BY
--예를들어 그룹핑한 애들이 유저 아이디잖아? 유저아이디로 그룹핑한 목적이 뭐야? 아이디 별로 우리 몰에서 돈 얼마나 썻는지 알고싶어
--그래서 *(전체집합) 넣으면 안나오다가 유저 아이디 넣으면 나옴. * 쓰면안됨!
--아이디별로 물건 몇개 샀는지 조회
SELECT userID, SUM(amount) AS '총구매겟수' FROM buyTbl 
--아래 같이 써야하는데 그대로 같이 쓰면 12개 다나옴. 
--따라서 집계함수는 단독으로 쓸수 있으나, GROUP BY가 들어간 이상 sum aver 같은 함수랑 같이 써야함. 

 GROUP BY userID;  --집계함수로 나온 결과값은 항상 이름없음임. 우리가 지정해줘야함. HOW TO?



--우리 쇼핑몰에서 가장 돈많이 쓴 사람을
--아이디별로 조회하고 그 금액을 같이 출력하라.
SELECT userID, SUM(amount * price) AS '총구매금액' FROM buyTbl
 GROUP BY userID
 ORDER BY SUM(amount * price) DESC;

SELECT userID, SUM(amount * price) AS '총구매금액' FROM buyTbl

--평균구매금액
SELECT AVG(price) AS '평균구매금액' FROM buyTbl
-- 윗줄과 동일한 결과가 나옵니다. TSQL에서 가능함. SELECT AVG(price) AS [평균구매금액] FROM buyTbl

--사용자테이블에서 키가 가장 큰사람하고 가장 작은사람을 조회
SELECT *FROM userTbl
 ORDER BY height DESC;

SELECT *FROM userTbl
 ORDER BY height ASC;

--사용자 테이블에서 키가 가장 큰사람하고 가장 작은사람 조회하는 경우
SELECT * FROM userTbl
 WHERE height = 166 OR height =186

SELECT name AS '이름', height AS [키] FROM userTbl
 WHERE height = (SELECT MAX(height) FROM userTbl)
    OR height = (SELECT MIN(height) FROM userTbl)

--GROUP BY / HAVING
SELECT userID AS '사용자아이디'
     , SUM(price * amount)  AS '총구매금액'
  FROM buyTbl
--  WHERE SUM(price*amount) >= 1000  --이렇게는 절대불가합니다. 그래서 대신 HAVING절을 씁니다.
 GROUP BY userID
HAVING SUM(price * amount) >= 1000;


--통계
--제품그룹별로 사용자가 얼마만큼 구매를 했는지 조회
SELECT groupName  --유저아이디 그룹내임 순서 바꾸면 위에 있는게 컬럼순서상 앞으로 나옵니다.
     , userID
     , SUM(price * amount)  AS '총구매금액'
  FROM buyTbl
 GROUP BY ROLLUP( groupName,userID) --근데 이거 두개 바꿧을때는 결과값이 다르네? Why?

--롤업 쓰먄 중간합계가 각 기준별로 나옴. 확인 필수!
SELECT groupName
     , userID
     , SUM(price * amount)  AS '총구매금액'
  FROM buyTbl
  GROUP BY groupName, userID; --이거 괄호 안들어가는게 맞음.

  --통계파트 무조건 집에가서 복습필수

SELECT groupName
     , userID
     , SUM(price * amount)  AS '총구매금액'
  FROM buyTbl
 GROUP BY CUBE( groupName,userID); --각 그룹핑별 합계가 또나옴(15행 = 16 ~19항 합) --큐브 설명좀 읽고 다시 해야겟네 CLUSTERING 같은건가?

SELECT groupName
     , SUM(price * amount) AS [총구매금액]
  FROM buyTbl
 GROUP BY ROLLUP(groupName);

SELECT groupName
     , SUM(price * amount) AS [총구매금액]
	 , GROUPING_ID(groupName) AS 'SUM'
  FROM buyTbl
 GROUP BY ROLLUP(groupName);

 --SELECT구문이 가장 어려워 지는 이유가 바로 통계! 때문입니다. 그냥 어려울것 없이 부분군의 갯수
 --CLUSTER의 개념을 이해하는 편이 빠르지않을까? 232page에서 233page 확인해서 직접해야합니다.
 --위의 것을 해보니 NULL 나와서 짜증나지? NULL에 이제 이름 넣고 값만들기를 확인해야지