--VIEW
--테이블은 아니고 뷰 들어가보면 나옵니다.
CREATE VIEW v_userTBl
AS
	SELECT userID, name, addr FROM userTbl;
GO


SELECT * FROM v_userTBl
SELECT userID, name, addr FROM userTbl;

SELECT * FROM v_buyTbl --이런걸 그럼 왜 만드나? 결과값 보여주는거 똑같은데....

--뷰는 보안에 도움이됨(privacy 항목은 빼고 볼수있음)
--복잡한 쿼리를 단순화시킴

CREATE VIEW v_userbuyInfo
AS
	SELECT u.userID, u.name, b.prodName, b.price
 	  FROM userTbl as u
	 INNER JOIN buyTbl AS b
	    ON u.userID = b.userID
GO

SELECT * FROM v_userbuyInfo --(바로 위의 구문과 동일함)
 ORDER BY price DESC

DROP VIEW v_userTBl -- 뷰 지울때 사용함.