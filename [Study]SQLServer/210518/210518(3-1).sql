--���̰� ������ ������Լ��� �ۼ�
CREATE OR ALTER FUNCTION ufn_getAge(@bYear INT)
RETURNS INT
AS
BEGIN
	DECLARE @age INT
	SET @age = YEAR(GETDATE()) - @bYear +1  --�ѱ��ĳ���
	RETURN(@age)
END
GO

--�Լ��� EXEC�Ⱦ��� ��.... �Ʒ��� ���� �����ŵ�ϴ�. �Լ��� ����� ���̸��������� ���ɴϴ�.

SELECT userID, name
	 , birthYear, dbo.ufn_getAge(birthYear) AS '����'  --���̸� ���� ==>����
	 , addr, height, dbo.ufn_getInch(height) AS 'Ű(��ġ)'
  FROM userTbl