--UPDATE
--트랜잭션 시작
BEGIN TRANSACTION;  --1.이거 실행 BEGIN TRAN; 이라고도 한다.

UPDATE testTbl
   SET userName = '성명건'  --2.위에 2줄 드래그 했는데 갑자기 원래 있던 모든 데이터가 다 성명건으로 바뀜
 WHERE Id = 2;

UPDATE testTbl
   SET userName = '성명건'
       addr = '부산';
 WHERE Id = 4;

SELECT * FROM testTbl;

COMMIT;  --4. 비긴즈 시작하고 나서 무조건 확인하고 커밋해야됨. 좆됨;;;;; 다른 방법써야함. 매우 복잡한;;;;;;
ROLLBACK; --3. 롤백 F5눌럿더니 다시 원래대로 돌아옴

TRUNCATE TABLE testTbl; --있는 데이터 전부를 삭제하고
--인덱스값을 1부터시작합니다.

--업데이트로 교수님의 파일을 확인후 내용을 추가하도록하세요!