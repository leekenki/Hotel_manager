-- ������ �Է�
INSERT INTO testTbl VALUES ('ȫ�浿', '����');
INSERT INTO testTBL (userName, addr) VALUES ('����', '����');
INSERT INTO testTbl (userName) VALUES ('������');
INSERT INTO testTbl (addr, userName) VALUES ('����', '������');
INSERT INTO testTbl (userName) VALUES ('ȫ���');
INSERT INTO testTbl (addr) VALUES ('����');

SELECT * FROM testTBL;

--DELETE FROM testTbl;

INSERT INTO userTbl (userID, name, birthYear, addr)
VALUES ('IU', '������', 1993, '����');

SELECT * FROM userTbl WHERE userID = 'IU';

INSERT INTO userTbl (userID, name, birthYear, addr, height)
VALUES ('JJH', '������', 1982, '�ž�', 187);

SELECT * FROM userTbl;