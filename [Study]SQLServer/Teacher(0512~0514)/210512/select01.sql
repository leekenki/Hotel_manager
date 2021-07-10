USE sqlDB;
GO

SELECT * FROM userTbl
 WHERE userID = 'KKH';

-- ����� ���̺��� ����⵵ 1970���� 1980�����
-- �̰� Ű�� 180�̻��� ����� ��ȸ.
SELECT * FROM userTbl
 WHERE birthYear >= 1970 AND birthYear <= 1980
   AND height >= 180;

SELECT * FROM userTbl
 WHERE birthYear BETWEEN 1970 AND 1980
   AND height >= 180;

-- ����⵵�� 1970�� �����̰ų� Ű�� 182�̻��� �����ȸ
SELECT * FROM userTbl
 WHERE birthYear >= 1970 OR height >= 180;

-- ����� �߿� ������ �泲, ����, ����� ����� ��ȸ (�� 10��)
SELECT [name], userID, addr FROM userTbl
 WHERE addr = '�泲' OR addr = '����' OR addr = '���';

SELECT [name], userID, addr FROM userTbl
 WHERE addr IN ('�泲', '���', '����');

-- LIKE ��(���ڿ����� ���ϴ� ���ڿ��� �ִ�(contain))
SELECT name, height, addr FROM userTbl
 WHERE name LIKE '��%';

SELECT name, height, addr FROM userTbl
 WHERE name LIKE '��______';

SELECT name, height, addr FROM userTbl
 WHERE name LIKE '_��Ŵ';

SELECT name, height, addr FROM userTbl
 WHERE name LIKE '%��%';

-- SubQuery
-- Ű�� 177���� ū����� ��ȸ
SELECT * FROM userTBL
 WHERE height > 177;

-- ���ȣ���� Ű�� ū����� ��ȸ
SELECT * FROM userTBL
 WHERE height > (SELECT height FROM userTBL WHERE name = '���ȣ');

-- �泲�� ��� ����麸�� Ű�� ū ����� ��ȸ
SELECT * FROM userTBL
 WHERE height > ANY (SELECT height FROM userTBL WHERE addr = '�泲');

-- (= ANY) == (IN)�� ������������ ���� ����� ��ġ�ϴ� ����� ��ȸ
SELECT * FROM userTBL
 WHERE height = ANY (SELECT height FROM userTBL WHERE addr = '�泲');

SELECT * FROM userTBL
 WHERE height IN (SELECT height FROM userTBL WHERE addr = '�泲');

-- ORDERBY
-- Ű�� ������������ �� ���� ���� ������ �̸����� ��������
SELECT * FROM userTBL
 ORDER BY height DESC, name ASC;

-- mobile1���� �������� �� �������̸� mobile2�� ��������
SELECT * FROM userTbl
 ORDER BY mobile1 ASC, mobile2 ASC;

-- userTbl�� ��� ������(���ڵ�)�� �ִ��� Ȯ��
SELECT COUNT(*) FROM userTBL;
SELECT COUNT(*) FROM buyTBL;

-- DISTINCT (�ߺ�����)
SELECT DISTINCT addr FROM userTbl;

-- TOP
USE AdventureWorksLT2019;
GO

SELECT * FROM SalesLT.Customer;
SELECT TOP(10) * FROM SalesLT.Customer;

SELECT TOP(10) PERCENT * 
  FROM SalesLT.Customer 
 ORDER BY CustomerID DESC;

-- 10% ���ø���� ��ȸ(?? �����?)
SELECT * FROM SalesLT.Customer
TABLESAMPLE(10 PERCENT);

-- ���� ����
SELECT * FROM SalesLT.Customer
 ORDER BY FirstName
OFFSET 5 ROW -- ���� ��??
FETCH NEXT 3 ROWS ONLY; -- ���ν���/�Լ� 


