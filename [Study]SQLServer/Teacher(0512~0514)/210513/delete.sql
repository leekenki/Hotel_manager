-- DELETE
-- WHERE�� �Ⱦ��� �������� ���Եȴ�.
BEGIN TRAN;

DELETE FROM testTbl
 WHERE Id = 4;

DELETE FROM testTbl
 WHERE userName = 'ȫ�浿';

SELECT * FROM testTbl;

COMMIT;
ROLLBACK;