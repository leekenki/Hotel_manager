--���̺����
USE sampleDB;
GO

CREATE TABLE ddlTbl
(
	Id int NOT NULL PRIMARY KEY IDENTITY(1, 1),
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME
);
GO

--DDL�� ���̺� ����
ALTER TABLE ddlTbl ADD Id INT IDENTITY(1, 1);  --�̹� Id�� �־ ���� ���̺� ������ �ҵ�. �׷��� ���̺� ����� �ٽ�! ���� ������...

DROP TABLE ddlTbl

--CREATE�� �ٽ� ����� ����......��
ALTER TABLE ddlTbl ADD newColumn VARCHAR(10) NOT NULL;  --���� �߰��� ��� �̷��� �˴ϴ�.