--트랜젝션 3회수행
BEGIN TRAN
UPDATE userTBL SET addr = '제주' WHERE userID = 'KBS'
COMMIT

BEGIN TRAN
UPDATE userTBL SET addr = '미국' WHERE userID = 'KKH'
ROLLBACK

BEGIN TRAN
UPDATE userTBL SET addr = '호주' WHERE userID = 'JYP'
COMMIT

SELECT * FROM userTBL

--트랜잭션 1회수행
BEGIN TRAN
UPDATE userTBL SET addr = '제주' WHERE userID = 'KBS'
UPDATE userTBL SET addr = '미국' WHERE userID = 'KKH'
UPDATE userTBL SET addr = '호주' WHERE userID = 'JYP'
COMMIT


--transaction 처리순서 시뮬레이션
USE sampleDB;
GO

CREATE TABLE testTbl (nu INT);
GO
INSERT INTO	testTbl VALUES (1), (3), (5);


--실행하지 말것.
BEGIN TRAN
UPDATE testTbl SET nu = 11 WHERE nu = 1; --1개만 실행
UPDATE testTbl SET nu = 33 WHERE nu = 3;
UPDATE testTbl SET nu = 55 WHERE nu = 5;
COMMIT

SELECT * FROM testTbl

SELECT @@TRANCOUNT;  --트랜잭션 하나 걸려있다는 뜻임 실행해보면 1개 걸려있다고 나옴. --정전 왜 강제로 안되지? 음....