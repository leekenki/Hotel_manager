USE sqlDB;
GO

SELECT * FROM userTbl
 WHERE userID = 'KKH';
--����� ���̺��� ����⵵ 1970���� 1980 ����
--�̰� Ű�� 180�̻��� ����� ��ȸ.
SELECT * FROM userTbl
 WHERE birthYear >= 1970 AND birthYear <= 1980
   AND height >=180

--����⵵�� 1970�� �����̰ų� Ű�� 182�̻��� �����ȸ
SELECT * FROM userTbl
 WHERE birthYear >= 1970 OR birthYear >=1980
   AND height >=180;
SELECT * FROM userTbl
 WHERE birthYear BETWEEN 1970 AND 1980
   AND height >=180;
--����� �߿� ������ �泲, ����, ����� ����� ��ȸ
SELECT [name], userID, addr FROM userTbl
 WHERE addr = '�泲' OR addr = '����' OR addr ='���'

SELECT [name], userID, addr FROM userTbl
 WHERE addr IN ('�泲','���','����');

-- LIKE��(���ڿ����� ���ϴ� ���ڿ��� �ִ�(contain))
SELECT name, height, addr FROM userTbl
 WHERE name LIKE '��%';

SELECT name, height, addr FROM userTbl
 WHERE name LIKE '��__';  --���ڼ��� �� ��쿣 3�ڸ��� �¾ƾ��մϴ�.

SELECT name, height, addr FROM userTbl
 WHERE name LIKE '_��Ŵ'; --���ڼ��� �� ��쿣 3�ڸ��� �¾ƾ��մϴ�.

SELECT name, height, addr FROM userTbl
 WHERE name LIKE '%��%';  --�� ���� �� ��� �ٳ���. ������ ������ ȿ���� �������� �ֽ��ϴ�.

--SubQuery
--Ű�� 175���� ū����� ��ȸ
SELECT * FROM userTBL 
 WHERE height > 175;

 --���ȣ���� Ű�� ū����� ��ȸ ��ȣ �ȿ� ���°� subquery�����. �̰� ���� ������ �����
SELECT * FROM userTBL
 WHERE height > (SELECT height FROM userTBL WHERE name = '���ȣ');

 --�泲�� ��� ����麸�� Ű�� ū ����� ��ȸ
SELECT * FROM userTBL
 WHERE height > ANY (SELECT height FROM userTBL WHERE addr = '�泲'); --2�� �̻��� ���� ������ ���� �̷��� �ؾ߰���.

 --IN�� ������������ ���� ����� ��ġ�ϴ� ����� ��ȸ
 SELECT * FROM userTBL
 WHERE height IN (SELECT height FROM userTBL WHERE addr = '�泲'); --2�� �̻��� ���� ������ ���� �̷��� �ؾ߰���.

 SELECT * FROM userTBL
 WHERE height = ANY (SELECT height FROM userTBL WHERE addr = '�泲'); --�̰Ŷ� �ٷ� ���� ����� �����մϴ�.

 --ORDERBY

SELECT * FROM userTBL  --�������̵� PK�ɸ� �ڵ����� �������� ���ĵ�����
 ORDER BY name;

SELECT * FROM userTBL  --DESC; ������ �Ųٷ�
 ORDER BY name DESC;

  --Ű�� �������� ���� �� ���� ���� ������ �̸����� ��������
 SELECT * FROM userTBL  --DESC; ������ �Ųٷ�
 ORDER BY height DESC, name ASC

 --mobile1���� �������� �� �������̸� mobile2�� ��������
SELECT * FROM userTBL
 ORDER BY mobile1 ASC, mobile2 DESC


 --userTbl�� ��� ������(���ڵ�)�� �ִ��� Ȯ��
SELECT COUNT(*) FROM userTbl;
SELECT COUNT(*) FROM buyTbl;

--DISTINCT (�ߺ�����)
SELECT DISTINCT addr FROM userTbl --�ߺ��� ���ŵǾ����ϴ�.

SELECT addr FROM userTbl

--TOP
USE AdventureWorksLT2019;
GO

SELECT TOP 10 * FROM SalesLT.Customer;
SELECT TOP(10) * FROM SalesLT.Customer;  --�����մϴ�.
SELECT TOP(1) PERCENT * 
  FROM SalesLT.Customer 
  WHERE Title = 'Ms.' --�̰� ������ �ְ��� ����!
  ORDER BY CustomerID DESC;

-- 10% ���ø���� ��ȸ(������ ����)
SELECT * FROM SalesLT.Customer
TABLESAMPLE(10 PERCENT);  --10���� ���ܿ��� ���ø��� �ؼ� ����� �޶�� ���Դϴ�.

SELECT * FROM SalesLT.Customer
 ORDER BY FirstName
OFFSET 5 ROW  --�տ� 5���� ���� �����. �̰� ���� �� ��������?(�ʱ� 5�� ���� ����)
FETCH NEXT 3 ROWS ONLY; --�̰� ���ٰ��ϳ�. ���ν���/�Լ��Ҷ��� ���� ���� �˴ϴ�.
