--�����Լ�
SELECT RANK() OVER(ORDER BY SUM(price * amount) DESC) AS '���ż���'
     , TRIM(userID), SUM(price * amount) AS '����ں����űݾ�'
  FROM buyTbl
 GROUP BY userID
   FOR JSON AUTO;  --FOR XML AUTO
 

SELECT name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL --���� ���ǻ� ���̴ϴ�.
 ORDER BY height DESC;

 --���߿� �����Լ��� ���ؼ� ��� �İ�� ���� �ð̴ϴ�.

SELECT ROW_NUMBER() OVER(ORDER BY height DESC) AS 'Ű����'
     , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL --���� ���ǻ� ���̴ϴ�.
 ;

SELECT RANK() OVER(ORDER BY height DESC) AS 'Ű����'
     , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL --���� ���ǻ� ���̴ϴ�.
 ;

SELECT DENSE_RANK() OVER(ORDER BY height DESC) AS 'Ű����'
     , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL --���� ���ǻ� ���̴ϴ�.
 ;

SELECT ROW_NUMBER() OVER(PARTITION BY addr ORDER BY height DESC) AS 'Ű����'
     , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL --���� ���ǻ� ���̴ϴ�.
 ;

SELECT DENSE_RANK() OVER(PARTITION BY addr ORDER BY height DESC) AS 'Ű����'
     , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL --���� ���ǻ� ���̴ϴ�.
 ;

--���ġ�� ���� �������� �Ҷ��� �ſ� ���� ���� �ֽ��ϴ�.