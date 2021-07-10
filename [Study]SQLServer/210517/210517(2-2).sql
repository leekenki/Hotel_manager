--1부터 100까지의 수를 반복하면서 7의 배수를 합산하지 않고 나머지만 합산
DECLARE @i INT, @hap BIGINT

SET @i = 0
SET @hap = 0

WHILE (@i <= 100)
BEGIN
	IF (@i % 7 = 0) --BEGIN엔드를 나중에 짜야함.
	BEGIN
		PRINT CONCAT('7의 배수 : ' , @i)
		SET @i = @i +1
		CONTINUE -- 
	END

	SET @hap = @hap + @i
	IF (@hap > 1000) BREAK
	SET @i = @i + 1;
END

PRINT CONCAT('1~100 합 ==>' , @hap)

