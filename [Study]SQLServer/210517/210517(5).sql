--VIEW
--���̺��� �ƴϰ� �� ������ ���ɴϴ�.
CREATE VIEW v_userTBl
AS
	SELECT userID, name, addr FROM userTbl;
GO


SELECT * FROM v_userTBl
SELECT userID, name, addr FROM userTbl;

SELECT * FROM v_buyTbl --�̷��� �׷� �� ���峪? ����� �����ִ°� �Ȱ�����....

--��� ���ȿ� �����̵�(privacy �׸��� ���� ��������)
--������ ������ �ܼ�ȭ��Ŵ

CREATE VIEW v_userbuyInfo
AS
	SELECT u.userID, u.name, b.prodName, b.price
 	  FROM userTbl as u
	 INNER JOIN buyTbl AS b
	    ON u.userID = b.userID
GO

SELECT * FROM v_userbuyInfo --(�ٷ� ���� ������ ������)
 ORDER BY price DESC

DROP VIEW v_userTBl -- �� ���ﶧ �����.