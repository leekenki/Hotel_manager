--JOIN : INNER JOIN(��������)

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

 --���ν�Ű�°� ���̾�׷����� �ߴµ� �̰� �ٽ� �����ҵ�.