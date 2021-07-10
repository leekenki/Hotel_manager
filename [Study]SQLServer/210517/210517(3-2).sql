--테이블생성
USE sampleDB;
GO

CREATE TABLE ddlTbl
(
	Id int NOT NULL PRIMARY KEY IDENTITY(1, 1),
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME
);
GO

--DDL로 테이블 수정
ALTER TABLE ddlTbl ADD Id INT IDENTITY(1, 1);  --이미 Id가 있어서 새로 테이블 만들어야 할듯. 그래서 테이블 지우고 다시! 위에 구절로...

DROP TABLE ddlTbl

--CREATE로 다시 만들고 나서......는
ALTER TABLE ddlTbl ADD newColumn VARCHAR(10) NOT NULL;  --새로 추가는 계속 이렇게 됩니다.