--Ʈ������ 3ȸ����
BEGIN TRAN
UPDATE userTBL SET addr = '����' WHERE userID = 'KBS'
COMMIT

BEGIN TRAN
UPDATE userTBL SET addr = '�̱�' WHERE userID = 'KKH'
ROLLBACK

BEGIN TRAN
UPDATE userTBL SET addr = 'ȣ��' WHERE userID = 'JYP'
COMMIT

SELECT * FROM userTBL

--Ʈ����� 1ȸ����
BEGIN TRAN
UPDATE userTBL SET addr = '����' WHERE userID = 'KBS'
UPDATE userTBL SET addr = '�̱�' WHERE userID = 'KKH'
UPDATE userTBL SET addr = 'ȣ��' WHERE userID = 'JYP'
COMMIT


--transaction ó������ �ùķ��̼�
USE sampleDB;
GO

CREATE TABLE testTbl (nu INT);
GO
INSERT INTO	testTbl VALUES (1), (3), (5);


--�������� ����.
BEGIN TRAN
UPDATE testTbl SET nu = 11 WHERE nu = 1; --1���� ����
UPDATE testTbl SET nu = 33 WHERE nu = 3;
UPDATE testTbl SET nu = 55 WHERE nu = 5;
COMMIT

SELECT * FROM testTbl

SELECT @@TRANCOUNT;  --Ʈ����� �ϳ� �ɷ��ִٴ� ���� �����غ��� 1�� �ɷ��ִٰ� ����. --���� �� ������ �ȵ���? ��....