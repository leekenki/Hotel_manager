--������ �Է�
INSERT INTO testTbl VALUES ('ȫ�浿', '����');  --1���m�µ� IDENTITY ON ��Ű�ϱ� �Ʒ��� ����� �ٸ��� �׳� �ǳ�?
INSERT INTO testTbl (Id, userName, addr) VALUES (2, '����', '����');
INSERT INTO testTbl (Id, userName) VALUES (3, '������'); --�̰� �÷������� �ȸ������� �ȵ����°� 2�� �÷��� �ְٴٰ� ���� ���� ����(��)
INSERT INTO testTbl (addr, Id, userName) VALUES ('����', 4, '������'); --�¿캯�� ������ ����(�࿡ ���� �����ϸ�!)�ϸ� ����.


INSERT INTO testTbl (userName, Id) VALUES ('ȫ���', 5); --����� ���� �̷��� ������ �ʽ��ϴ�.
SELECT * FROM testTBL;

DELETE FROM testTbl; --IDENTITY�� ���ڷ� �ڵ����� 1�� �������� �س��� ������ ������� ��ġ�� ID�� �� ���ֱ�� �ؾ��մϴ�. ���⼭ ����.....
--�׷��� ���ϴ�.
--�ƾƴ�ƼƼ(1�� �ڵ�����), ����Ű ����! �̵ΰ����� Ȯ���� ���ָ� , ���� �����͸� �� ����ִ³����� �Ͼ�� �ʽ��ϴ�. ���̵�ƼƼ�� ������
--���ڸ� �����Ѱ̴ϴ�.
--����Ű�� �������̱� ������ ���̵�ƼƼ�� ������ ������ ����� �ƴմϴ�.(���Ǽ�)


INSERT INTO userTbl (userID, name, birthYear, addr)
VALUES ('IU','������',1993,'����');

SELECT * FROM userTbl WHERE userID = 'IU';

INSERT INTO userTbl (userID, birthYear, addr, height)
VALUES ('JJH', '������', 1982, '�ž�', 187);

SELECT * FROM userTbl;

