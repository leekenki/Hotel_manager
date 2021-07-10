--DELETE
--WHERE절을 안쓰면 사유서를 쓰게된다.
--통합
BEGIN TRAN;

DELETE FROM testTbl
 WHERE Id = ;

SELECT * FROM testTbl

--데이터 입력
insert into testTbl VALUES ('최우식', '캐낟');


--데이터 수정
UPDATE testTbl
   SET userName = '이지은'
     , addr = '서울'
 WHERE Id = 3;

--데이터 삭제
DELETE FROM testTbl WHERE userName = '홍길순'


COMMIT;
ROLLBACK;