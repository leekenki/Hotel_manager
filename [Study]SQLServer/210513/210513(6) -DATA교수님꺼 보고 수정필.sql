--DELETE
--WHERE���� �Ⱦ��� �������� ���Եȴ�.
--����
BEGIN TRAN;

DELETE FROM testTbl
 WHERE Id = ;

SELECT * FROM testTbl

--������ �Է�
insert into testTbl VALUES ('�ֿ��', 'ĳ��');


--������ ����
UPDATE testTbl
   SET userName = '������'
     , addr = '����'
 WHERE Id = 3;

--������ ����
DELETE FROM testTbl WHERE userName = 'ȫ���'


COMMIT;
ROLLBACK;