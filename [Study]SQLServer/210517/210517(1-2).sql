--CASE(CASE WHEN THEN)���� ���� ��
DECLARE @point INT, @credit CHAR(1)
SET @point = 40

--SELECT --�̰� �ȳ����� ����� �ȳ���. PRINT�� �����մϴ�. END���� ����
SET @credit = --�Ʒ� ���̽� ������ ���� ũ������ �ִ´�. 
CASE
	WHEN (@point >= 90) THEN 'A'
	WHEN (@point >= 80) THEN 'B'
	WHEN (@point >= 70) THEN 'C'
    WHEN (@point >= 60) THEN 'D'
	ELSE 'F'
END

PRINT CONCAT('������� ==> '  ,@point) --��Ʈ�ϱ� CONCAT���� ����ȯ ����
PRINT CONCAT('���� ==> '  ,@credit)