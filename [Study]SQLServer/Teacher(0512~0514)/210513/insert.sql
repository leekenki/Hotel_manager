-- 데이터 입력
INSERT INTO testTbl VALUES ('홍길동', '서울');
INSERT INTO testTBL (userName, addr) VALUES ('설현', '서울');
INSERT INTO testTbl (userName) VALUES ('아이유');
INSERT INTO testTbl (addr, userName) VALUES ('세종', '김형욱');
INSERT INTO testTbl (userName) VALUES ('홍길순');
INSERT INTO testTbl (addr) VALUES ('제주');

SELECT * FROM testTBL;

--DELETE FROM testTbl;

INSERT INTO userTbl (userID, name, birthYear, addr)
VALUES ('IU', '아이유', 1993, '서울');

SELECT * FROM userTbl WHERE userID = 'IU';

INSERT INTO userTbl (userID, name, birthYear, addr, height)
VALUES ('JJH', '주지훈', 1982, '신안', 187);

SELECT * FROM userTbl;