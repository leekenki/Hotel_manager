CREATE OR ALTER PROC usp_zodiac
	@userName NVARCHAR(10)
AS
	DECLARE @bYear INT
	DECLARE @zodiac NVARCHAR(3)  --���̸� ����
	 SELECT @bYear =  birthYear FROM userTbl
	  WHERE name = @userName;

	  SET @zodiac =
		  CASE
			  WHEN (@bYear%12 = 0) THEN '������' --��
			  WHEN (@bYear%12 = 1) THEN '��'  --��
			  WHEN (@bYear%12 = 2) THEN '��'  --��
			  WHEN (@bYear%12 = 3) THEN '����'  --��
			  WHEN (@bYear%12 = 4) THEN '��'  --��
			  WHEN (@bYear%12 = 5) THEN '��'  --��
			  WHEN (@bYear%12 = 6) THEN 'ȣ����'  --��
			  WHEN (@bYear%12 = 7) THEN '�䳢'  --��
			  WHEN (@bYear%12 = 8) THEN '��'  --��
			  WHEN (@bYear%12 = 9) THEN '��'  --��
			  WHEN (@bYear%12 = 10) THEN '��'  --��
			  ELSE '��' --��
		 END
	PRINT CONCAT(@userName, '�� ���', @zodiac, '�Դϴ�')

GO

EXEC usp_zodiac '���ð�'  --�������� �����ǿ��� Ʈ������ ���� �����ϴ� ���鿡���»��ǰ� �׿ܴ� �������� �߼�
SELECT * FROM userTbl

--�ý��� �������ν���
EXEC sp_databases;
EXEC sp_tables  'userTbl', 'dbo'