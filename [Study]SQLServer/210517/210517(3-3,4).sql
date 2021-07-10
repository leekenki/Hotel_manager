USE sampleDB;
GO

CREATE TABLE userTBL
(
	userID CHAR(8) NOT NULL PRIMARY KEY,  --�⺻Ű
	name NVARCHAR(10) NOT NULL,
	birthYear INT NOT NULL,
	height SMALLINT
);
--DDL buYtbl ���̺� ����
CREATE TABLE buyTBL
(
	num INT NOT NULL PRIMARY KEY, --�⺻Ű
	userID CHAR(8) NOT NULL
	  FOREIGN KEY REFERENCES userTBL(userID),  --RDB���� ���� ������ �߿� �ϳ�! �̰� Ű�����Ű�� �Ű� �����ͺ��̽����̾�׷����� Ȯ��!(�̰� �ܷ�Ű��)
	prodName NCHAR(6) NOT NULL,
	price INT NOT NULL
);
GO
--2���� �����̸Ӹ�Ű�� ����� ��쿡�� �ݵ�� �۾��� ����ó�� �ؾ��մϴ�.
CREATE TABLE prodTbl  --20210517(3-4)
(
	prodCode NCHAR(3) NOT NULL,
	prodID NCHAR(4) NOT NULL,
	prodDate DATETIME NOT NULL,
	prodCur NCHAR(10) NULL,
	CONSTRAINT PK_prodTbl_prodCode_prodID 
		PRIMARY KEY(prodCode, prodID)
);

--20210517(4-1)
--USERTBL�� email(����ũ��������) �߰�
--BUY TBL������ �� �簡��, �������̺� ������ �� ���� �ϰ�, �߸����� �̸����÷� ���� �� �� , ���� ���� ����
ALTER TABLE userTBL
  ADD email VARCHAR(50) NOT NULL UNIQUE

--CHECK
ALTER TABLE userTBL
  ADD CONSTRAINT CK_birthYear
  CHECK (birthYEAR >= 1900 AND birthYEAR <= YEAR(GETDATE()));
--2021����  �� 2022�� �־�f�µ� ���͹���????? �̻��ѵ�?


--5���� ����
SELECT * FROM sampleDB.dbo.userTBL
SELECT * FROM sampleDB.dbo.buyTBL --�̷�������.....

SELECT * FROM AdventureWorksLT2019.SalesLT.Product
SELECT * FROM AdventureWorksLT2019.dbo.ErrorLog  --����Ŭ���� ��쿡�� ���� Ȱ���մϴ�.