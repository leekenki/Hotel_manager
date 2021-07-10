--JOIN : INNER JOIN(내부조인)

SELECT * FROM buyTbl;

SELECT * FROM userTbl;

SELECT userTbl.userID
     , userTbl.name
	 , userTbl.addr
	 , CONCAT(userTbl.mobile1, userTbl.mobile2) AS mobile
	 , buyTbl.num
	 , buyTbl.prodName
	 , buyTbl.price
	 , buyTbl amount
  FROM buyTbl AS u
 INNER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE u.userID = 'jyp';

 --조인시키는거 다이어그램에서 했는데 이거 다시 봐야할듯.