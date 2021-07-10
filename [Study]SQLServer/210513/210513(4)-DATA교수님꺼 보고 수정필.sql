--데이터 입력
INSERT INTO testTbl VALUES ('홍길동', '서울');  --1지웟는데 IDENTITY ON 시키니까 아래의 설명과 다르게 그냥 되네?
INSERT INTO testTbl (Id, userName, addr) VALUES (2, '설현', '서울');
INSERT INTO testTbl (Id, userName) VALUES (3, '아이유'); --이건 컬럼갯수가 안맞춰져서 안들어가지는걸 2개 컬럼만 넣겟다고 설정 따로 해줌(앞)
INSERT INTO testTbl (addr, Id, userName) VALUES ('세종', 4, '김형옥'); --좌우변의 대응이 동일(행에 열이 부합하면!)하면 들어가짐.


INSERT INTO testTbl (userName, Id) VALUES ('홍길순', 5); --뒤집어서 굳이 이렇게 쓰지는 않습니다.
SELECT * FROM testTBL;

DELETE FROM testTbl; --IDENTITY를 숫자로 자동으로 1씩 더해지게 해놨기 때문에 명시적인 수치인 ID를 다 빼주기는 해야합니다. 여기서 부턴.....
--그래야 들어갑니다.
--아아댄티티(1씩 자동증가), 메인키 설정! 이두가지만 확실해 해주면 , 같은 데이터를 더 집어넣는내용은 일어나지 않습니다. 아이덴티티는 무조건
--숫자만 가능한겁니다.
--메인키는 고유값이긴 하지만 아이덴티티와 완전히 동일한 대상은 아닙니다.(뇌피셜)


INSERT INTO userTbl (userID, name, birthYear, addr)
VALUES ('IU','아이유',1993,'서울');

SELECT * FROM userTbl WHERE userID = 'IU';

INSERT INTO userTbl (userID, birthYear, addr, height)
VALUES ('JJH', '주지훈', 1982, '신안', 187);

SELECT * FROM userTbl;

