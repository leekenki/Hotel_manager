--���ڿ��Լ�
SELECT ASCII('z'), CHAR(66);
SELECT UNICODE('��'), NCHAR(44032); --�Ϻ��� �߱�� �����ڵ� �����մϴ�. �ƽ�Ű�ڵ�� ���� ���� �� �߳������� �ʽ��ϴ�.


--���ڿ� ����
SELECT CONCAT('SQL', 'server', 2019) AS [name]; -- ���� ��! ����ȯ �ؾ������� ���ص� ��.(���� ��)
--SELECT 'SQL' + 'server' + CAST(2019 AS VARCHAR);  -- 2019�� �����̴� ����ȯ�ؾ���.

--�ܾ� ������ġ
SELECT CHARINDEX('world', 'Hello world');
-- C#, HAVA, python������ ���ڿ� 0���� ���������� (C#�� ��� �ε����� ����(������)�� 0,1,2,3 �̷��� ���۵Ǵ°���.)
-- DB������ 1���� �����մϴ�.(�׷��� db������ �ε����� �ٸ�)

-- LEFT, RIGHT, SUBTRING, LEN, LOWER, UPPER, LTRIM, RTIM (������ ���ϴ�.)
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL Server 2019'
SELECT LEFT (@STR, 3) --���ʺ��� 3�ڸ� ����
SELECT RIGHT (@STR, 4) --�����ʺ��� 4�ڸ� ����

SELECT SUBSTRING('���ѹα�����!', 5, 2); --5��°���� 2�ڸ��� �ڸ��� �ϸ� ��������

SELECT LEN('Hellow Wolrd'); --���ڱ���� Ȯ�ν� ���
SELECT LEN('���ѹα�����!');

SELECT LOWER('hELLO Wolrd') --��� ���ڸ� �ҹ��ڷ� �ٲ�
SELECT UPPER('hELLO Wolrd') --��� ���ڸ� �빮�ڷ� �ٲ�
--��ҹ��ڰ� ���⼭�� ������µ� c#���� �Ѿ�� ��쿡 �̰� ���� ���� ���� �ǹ����ϴ�.
SELECT UPPER('cd2005');


--�����̽� ���� �Լ�
SELECT '   SQL', LTRIM('   SQL');  --������ ���� �� ���� (��)
SELECT '   SQL', RTRIM('   SQL   '); -- �������� ���� �� ���� (��)
SELECT '   SQL', TRIM('   SQL   ');  --�յ� ���� �� ����   ���� ���� ����! DB�ܰ迡�� ó���ؼ� ����ϰ� ��������! (��)

--Replace (���� �ֻ�!)
SELECT REPLACE('SQL Server 2019, Server����', 'server', '����'); --server�� ������ �� ��ü!

--STR ���� ��
SELECT STR(3.141592);
SELECT STR(45);

--FORMAT ���� ��
SELECT GETDATE();
SELECT FORMAT(GETDATE(), 'yyyy-Mm-dd hh:mm:ss')  --�ѱ���
SELECT FORMAT(GETDATE(), 'mm-dd-yyyy hh:mm:ss')  --�̱���

