--SQL ���α׷���
DECLARE @var1 INT --��������
SET @var1 = 170

IF (@var1 < 170)
BEGIN
	PRINT '���ذ��� �۽��ϴ�.'
END
ELSE IF(@var1=180)
BEGIN
	SELECT * FROM userTbl WHERE height > @var1;
END
ELSE
BEGIN
	SELECT * FROM userTbl WHERE height > @var1;
END