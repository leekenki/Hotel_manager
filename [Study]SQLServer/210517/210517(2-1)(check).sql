--������ �ݾ׿� ���� �ֿ��/���/�Ϲݰ����� �з��ϴ�
--������ �ۼ��϶�
WITH cte_custlevel([����ھ��̵�], [ȸ����], [�ѱ��űݾ�], [�����]) --���̺� �ϳ� ��������
AS
(
SELECT u.userID AS '����ھ��̵�'
	 , u.name AS 'ȸ����'
	 , IIF (SUM(b.price*b.amount) IS NULL, 
	       0, 
	       SUM(b.price*b.amount)) AS '�ѱ��űݾ�'
	 , CASE 
			WHEN (SUM(b.price*b.amount) >=1500) THEN '�ֿ����'
			WHEN (SUM(b.price*b.amount) >=1000) THEN '�����'
			WHEN (SUM(b.price*b.amount) >=1) THEN '�Ϲݰ�'
			ELSE '���ɰ�'
	   END AS '�����' --�츮�� ���� �÷������� ���̸� �������� ���´�. ���� AS�� �ٿ��ִ°̴ϴ�.
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 GROUP BY u.userID, u.name
 --ORDER BY SUM(b.price*b.amount) DESC ���̺����� �ϳ� ���f���ϴ�.
 )

 --SELELCT  * FROM ���� ����� �����ϰ� �ʿ��ϴ°Ϳ� ���� �ϳ� �ϳ� �ϳ��� �س�������. ó������ ������ �̰� �ѹ濡 ¥�°� �ƴ�.

-- SELECT * FROM cte_custlevel
--  ORDER BY [�ѱ��űݾ�] DESC --���� ORDER BY�� ���⿡ �ؔf���ϴ�. �Ʒ��� �Ϸ��� 26 27�� ��� �����

 SELECT [����ھ��̵�], [ȸ����]
	  , FORMAT([�ѱ��űݾ�], '#,#') AS '���űݾ�'  --'C4'�� ���� '#,#'
	  , [�����]
   FROM cte_custlevel
  ORDER BY [�ѱ��űݾ�] DESC  --���� �� �ȳ������� Ȯ��!