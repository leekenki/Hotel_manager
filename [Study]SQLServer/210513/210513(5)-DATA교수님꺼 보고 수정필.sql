--UPDATE
--Ʈ����� ����
BEGIN TRANSACTION;  --1.�̰� ���� BEGIN TRAN; �̶�� �Ѵ�.

UPDATE testTbl
   SET userName = '�����'  --2.���� 2�� �巡�� �ߴµ� ���ڱ� ���� �ִ� ��� �����Ͱ� �� ��������� �ٲ�
 WHERE Id = 2;

UPDATE testTbl
   SET userName = '�����'
       addr = '�λ�';
 WHERE Id = 4;

SELECT * FROM testTbl;

COMMIT;  --4. ����� �����ϰ� ���� ������ Ȯ���ϰ� Ŀ���ؾߵ�. ����;;;;; �ٸ� ��������. �ſ� ������;;;;;;
ROLLBACK; --3. �ѹ� F5�������� �ٽ� ������� ���ƿ�

TRUNCATE TABLE testTbl; --�ִ� ������ ���θ� �����ϰ�
--�ε������� 1���ͽ����մϴ�.

--������Ʈ�� �������� ������ Ȯ���� ������ �߰��ϵ����ϼ���!