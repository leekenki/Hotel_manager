-- JOIN : INNER JOIN(내부조인)
SELECT u.userID
     , u.name
	 , u.addr
	 , CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.num
	 , b.prodName
	 , b.price
	 , b.amount
  FROM userTbl AS u
 INNER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE u.userID = 'JYP';

