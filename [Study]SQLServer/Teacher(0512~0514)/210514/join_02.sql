-- 3�� ���̺� ��������
SELECT s.StdID, s.StdName
     , r.ClubName
	 , c.ClubRoom, r.RegDate
  FROM stdTbl AS s
 INNER JOIN regInfoTbl AS r
    ON s.StdID = r.StdID
 INNER JOIN clubTbl AS c
    ON c.ClubName = r.ClubName
 WHERE s.StdID = 'KBS';

