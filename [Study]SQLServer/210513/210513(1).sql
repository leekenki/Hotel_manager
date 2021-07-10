--데이터 조회
SELECT * FROM userTbl;

--데이터 조회 필터링
SELECT * FROM userTbl
 WHERE userID = 'BBK';

SELECT * FROM userTbl
 WHERE name = '조용필';

SELECT * FROM userTbl
 WHERE name LIKE '김%';

SELECT userID, name, addr FROM userTbl
 WHERE name LIKE '%용%';

--특정 테이블 레코드(DATA) 갯수 확인
SELECT COUNT(userID) FROM userTbl;

--아이디, 이름, 키를 조회하세요
SELECT userID, name, height FROM userTbl
 WHERE height >=180 AND birthYear >= 1970;

--출생년도순(오름차순)으로 정렬해서 조회
SELECT * FROM userTbl
 ORDER BY birthYear DESC;  -- ASC(ENDING), DESC(ENDING)

--SELECT INTO
--INSERT 나올때 INTO라는 내용이 나왔습니다. 따라서 이건 추가적인 기능입니다.
--새로운 테이블을 만들때 주로 사용합니다. 보통 그냥 새 테이블 만들기 누르면 되는뎅....
--그런데 PK, FK 같은 유니크한 키 정보는 미생성된다!)
--금융권에서 테이블 쌓이는 속도가 어마어마한데 경우에 따라서 몇십억이 될수도 있음. 그런데.... 이러면 성능이 아무리 좋아도
--그 테이블이 터짐.... 그래서 은행은 하루마다 테이블을 백업시킴(거래내역같은거 말이야)
--그럴때 이런 키워드를 주로 사용합니다.

SELECT * INTO userTbl_New FROM userTbl;  --F5눌러서 시행해 보니 new_붙은 테이블이 하나 더 생겻지? sqlDB내부의 테이블에(새로고침누르고!)
SELECT * FROM userTbl_New;  --기존 내용이 전부 똑같이 들어가 있다는것을 알수 있다.

SELECT userID, name, addr INTO userTbk_Backup FROM userTbl --테이블안에서 원하는 컬럼만 땡겨서 백업하는 방법입니다.
 WHERE addr = '서울';

SELECT * FROM userTbk_Backup;;

