--������ ��ȸ
SELECT * FROM userTbl;

--������ ��ȸ ���͸�
SELECT * FROM userTbl
 WHERE userID = 'BBK';

SELECT * FROM userTbl
 WHERE name = '������';

SELECT * FROM userTbl
 WHERE name LIKE '��%';

SELECT userID, name, addr FROM userTbl
 WHERE name LIKE '%��%';

--Ư�� ���̺� ���ڵ�(DATA) ���� Ȯ��
SELECT COUNT(userID) FROM userTbl;

--���̵�, �̸�, Ű�� ��ȸ�ϼ���
SELECT userID, name, height FROM userTbl
 WHERE height >=180 AND birthYear >= 1970;

--����⵵��(��������)���� �����ؼ� ��ȸ
SELECT * FROM userTbl
 ORDER BY birthYear DESC;  -- ASC(ENDING), DESC(ENDING)

--SELECT INTO
--INSERT ���ö� INTO��� ������ ���Խ��ϴ�. ���� �̰� �߰����� ����Դϴ�.
--���ο� ���̺��� ���鶧 �ַ� ����մϴ�. ���� �׳� �� ���̺� ����� ������ �Ǵµ�....
--�׷��� PK, FK ���� ����ũ�� Ű ������ �̻����ȴ�!)
--�����ǿ��� ���̺� ���̴� �ӵ��� ���ѵ� ��쿡 ���� ��ʾ��� �ɼ��� ����. �׷���.... �̷��� ������ �ƹ��� ���Ƶ�
--�� ���̺��� ����.... �׷��� ������ �Ϸ縶�� ���̺��� �����Ŵ(�ŷ����������� ���̾�)
--�׷��� �̷� Ű���带 �ַ� ����մϴ�.

SELECT * INTO userTbl_New FROM userTbl;  --F5������ ������ ���� new_���� ���̺��� �ϳ� �� ������? sqlDB������ ���̺�(���ΰ�ħ������!)
SELECT * FROM userTbl_New;  --���� ������ ���� �Ȱ��� �� �ִٴ°��� �˼� �ִ�.

SELECT userID, name, addr INTO userTbk_Backup FROM userTbl --���̺�ȿ��� ���ϴ� �÷��� ���ܼ� ����ϴ� ����Դϴ�.
 WHERE addr = '����';

SELECT * FROM userTbk_Backup;;

