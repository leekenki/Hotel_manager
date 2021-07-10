--3개 테이블 내부조인

SELECT s.StDID, s.StdName, s.StdName
     , r.ClubName
	 , c.ClubRoom, r.RegDate
  FROM stdTbl AS s
 INNER JOIN reginfoTbl AS r
    ON s.StDID = r.StDID
 INNER JOIN clubTbl AS c
    ON C.ClubName = r.ClubName
 WHERE s.StDID = 'KBS'
	