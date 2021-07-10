-- ����(���̺� ��ġ��)
SELECT StdName, Region FROM stdTbl
UNION
SELECT ClubName, ClubRoom FROM clubTbl 
;

-- ������Ÿ���� ��ġ�ؾ� UNION ����
SELECT CAST(Id AS VARCHAR), StdId FROM regInfoTbl
UNION
SELECT ClubName, ClubRoom FROM clubTbl
;

-- �ߺ��� ���
SELECT StdName, Region FROM stdTbl
UNION ALL
SELECT StdName, Region FROM stdTbl

-- except
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
EXCEPT -- ��������.
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL

-- ���� ���̺� ���� �����ϴ� �����͸� �߷����°�
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
INTERSECT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL