--프로그래밍 시작!
DECLARE @varAGE INT;  --변수선언시 @반드시 넣어줍니다. C#은 컴파일 하고 빌드해야 실행이 되지만 여기는 빌드 안해도 그냥 실행됨.
SET @varAGE = 44;

-- SELECT @varAGE;  --테이블데이터처럼 나오고
-- PRINT @varAGE;  -- 이것만 넣으면 44가 나옴. 이렇게 프로그래밍을 하려면 다 선언이 되어야만 실행이 되니까!
SELECT @varAGE AS '나이';