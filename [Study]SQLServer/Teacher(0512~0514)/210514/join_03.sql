-- 외부조인
-- 우리 쇼핑몰에서 물건을 한번도 구매하지 않은 회원들을 조회
SELECT u.userID, u.name
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID;


SELECT u.userID, u.name
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
 RIGHT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID;


-- 학생 / 동아리 / 가입정보 테이블
-- OUTERJOIN
SELECT s.StdID, s.StdName, s.Region
     , c.ClubName, c.ClubRoom
	 , r.RegDate
  FROM stdTbl AS s
  FULL OUTER JOIN regInfoTbl AS r
    ON s.StdID = r.StdID
  FULL OUTER JOIN clubTbl AS c
    ON c.ClubName = r.ClubName;

SELECT s.StdID, s.StdName, s.Region
     , c.ClubName, c.ClubRoom
	 , r.RegDate
  FROM stdTbl AS s 
  LEFT OUTER JOIN regInfoTbl AS r 
    ON s.StdID = r.StdID
 RIGHT OUTER JOIN clubTbl AS c
    ON c.ClubName = r.ClubName
;

SELECT s.StdID, s.StdName, s.Region
     , r.ClubName
	 , r.RegDate
  FROM stdTbl AS s
  LEFT OUTER JOIN regInfoTbl AS r
    ON s.StdID = r.StdID
;

SELECT c.ClubName, c.ClubRoom, r.Id, r.RegDate
  FROM clubTbl AS c
  LEFT OUTER JOIN regInfoTbl AS r
    ON c.ClubName = r.ClubName;