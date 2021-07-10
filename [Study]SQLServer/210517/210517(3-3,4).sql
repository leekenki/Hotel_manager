USE sampleDB;
GO

CREATE TABLE userTBL
(
	userID CHAR(8) NOT NULL PRIMARY KEY,  --기본키
	name NVARCHAR(10) NOT NULL,
	birthYear INT NOT NULL,
	height SMALLINT
);
--DDL buYtbl 테이블 생성
CREATE TABLE buyTBL
(
	num INT NOT NULL PRIMARY KEY, --기본키
	userID CHAR(8) NOT NULL
	  FOREIGN KEY REFERENCES userTBL(userID),  --RDB에서 가장 어려운것 중에 하나! 이게 키연결시키는 거고 데이터베이스다이어그램가서 확인!(이게 외래키임)
	prodName NCHAR(6) NOT NULL,
	price INT NOT NULL
);
GO
--2개의 프라이머리키를 만드는 경우에는 반드시 작업을 다음처럼 해야합니다.
CREATE TABLE prodTbl  --20210517(3-4)
(
	prodCode NCHAR(3) NOT NULL,
	prodID NCHAR(4) NOT NULL,
	prodDate DATETIME NOT NULL,
	prodCur NCHAR(10) NULL,
	CONSTRAINT PK_prodTbl_prodCode_prodID 
		PRIMARY KEY(prodCode, prodID)
);

--20210517(4-1)
--USERTBL에 email(유니크제약조건) 추가
--BUY TBL데이터 다 사가제, 유저테이블 데이터 다 삭제 하고, 잘못만든 이메일컬럼 삭제 한 뒤 , 밑의 쿼리 실행
ALTER TABLE userTBL
  ADD email VARCHAR(50) NOT NULL UNIQUE

--CHECK
ALTER TABLE userTBL
  ADD CONSTRAINT CK_birthYear
  CHECK (birthYEAR >= 1900 AND birthYEAR <= YEAR(GETDATE()));
--2021까지  난 2022년 넣어봣는데 나와버려????? 이상한데?


--5교시 시작
SELECT * FROM sampleDB.dbo.userTBL
SELECT * FROM sampleDB.dbo.buyTBL --이런식으로.....

SELECT * FROM AdventureWorksLT2019.SalesLT.Product
SELECT * FROM AdventureWorksLT2019.dbo.ErrorLog  --오라클같은 경우에는 많이 활용합니다.