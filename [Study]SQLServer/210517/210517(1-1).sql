--SQL 프로그래밍
DECLARE @var1 INT --변수선언
SET @var1 = 170

IF (@var1 < 170)
BEGIN
	PRINT '기준값이 작습니다.'
END
ELSE IF(@var1=180)
BEGIN
	SELECT * FROM userTbl WHERE height > @var1;
END
ELSE
BEGIN
	SELECT * FROM userTbl WHERE height > @var1;
END