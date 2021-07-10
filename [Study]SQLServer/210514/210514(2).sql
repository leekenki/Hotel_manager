--�ý����Լ�(SQL������ �⺻���� �������ִ� �Լ���)
--SELECT AVG(amount) FROM buyTbl;  --amount�� ������Ʈ�� ���������� ����� ����. �׷��� ����ȯ�� ������ϸ���.
--SELECT AVG(CAST(amount AS float)) FROM buyTbl;

SELECT CAST(AVG(CAST(amount AS float)) AS DECIMAL(4, 3)) FROM buyTbl;

SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS INT);  -- ���ܹ߻��ϸ� ������ ������ �����.
SELECT TRY_PARSE('3.14' AS INT);  -- �� ��ȯ�� ���ϸ� NULL�� �� ��ü�ϰ� ���������� ����˴ϴ�.


SELECT name, height FROM userTbl
 WHERE height IS NOT NULL;  --NULL���� =�� ������ �ʰ� IS�� ���մϴ�. �������� IS�� ������������ IS NOT�� ����մϴ�.Ű�� ���λ��������.
 --HEIGHT SMALLINT -->VARCHAR, CHAR ����ȯ

SELECT name, CAST(height AS VARCHAR) + ' cm' FROM userTbl
 WHERE height IS NOT NULL;

SELECT PARSE('2021�� 5�� 14�� 10�� 27��' AS DATETIME);
SELECT TRY_PARSE('2021�� 5�� 14�� 10�� 27��' AS DATETIME);
SELECT PARSE('2021-05-14 10:28:10' AS DATETIME); --�̰� �ѱ�ǥ���Դϴ�. �ٷ� ������ �� �Ⱦ��ϴ�.

SELECT GETDATE(); --�ý��� �ð��� ���ɴϴ�. INSERT ���� ����Ͻú��� ���� ���� ���

SELECT @@VERSION;

--���� �� �ð� �Լ�
SELECT YEAR(GETDATE()) AS '����⵵';
SELECT MONTH(GETDATE()) AS '�����';
SELECT DAY(GETDATE()) AS '����';
--SELECT HOUR(GETDATE()) AS '����'; �̰� �ȵǳ� ^^

--��ġ�Լ�
SELECT ABS(-100); --���밪
SELECT ROUND(3.141692, 2) -- �Ҽ� 2°�ڸ� ������ 3°�ڸ����� �ݿø��Ѵ�.
SELECT FLOOR(RAND() * 100); -- ���� + ����(�÷ξ�)
SELECT RAND(); --���� �Ҽ��� �������ϱ�

--���Լ�
SELECT IIF(100 > 200, '��','����') --�߾��� �ڵ����� Ȯ �پ��ϴ�.
