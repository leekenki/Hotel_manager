--GROUP BY
--������� �׷����� �ֵ��� ���� ���̵��ݾ�? �������̵�� �׷����� ������ ����? ���̵� ���� �츮 ������ �� �󸶳� ������ �˰�;�
--�׷��� *(��ü����) ������ �ȳ����ٰ� ���� ���̵� ������ ����. * ����ȵ�!
--���̵𺰷� ���� � ����� ��ȸ
SELECT userID, SUM(amount) AS '�ѱ��Űټ�' FROM buyTbl 
--�Ʒ� ���� ����ϴµ� �״�� ���� ���� 12�� �ٳ���. 
--���� �����Լ��� �ܵ����� ���� ������, GROUP BY�� �� �̻� sum aver ���� �Լ��� ���� �����. 

 GROUP BY userID;  --�����Լ��� ���� ������� �׻� �̸�������. �츮�� �����������. HOW TO?



--�츮 ���θ����� ���� ������ �� �����
--���̵𺰷� ��ȸ�ϰ� �� �ݾ��� ���� ����϶�.
SELECT userID, SUM(amount * price) AS '�ѱ��űݾ�' FROM buyTbl
 GROUP BY userID
 ORDER BY SUM(amount * price) DESC;

SELECT userID, SUM(amount * price) AS '�ѱ��űݾ�' FROM buyTbl

--��ձ��űݾ�
SELECT AVG(price) AS '��ձ��űݾ�' FROM buyTbl
-- ���ٰ� ������ ����� ���ɴϴ�. TSQL���� ������. SELECT AVG(price) AS [��ձ��űݾ�] FROM buyTbl

--��������̺��� Ű�� ���� ū����ϰ� ���� ��������� ��ȸ
SELECT *FROM userTbl
 ORDER BY height DESC;

SELECT *FROM userTbl
 ORDER BY height ASC;

--����� ���̺��� Ű�� ���� ū����ϰ� ���� ������� ��ȸ�ϴ� ���
SELECT * FROM userTbl
 WHERE height = 166 OR height =186

SELECT name AS '�̸�', height AS [Ű] FROM userTbl
 WHERE height = (SELECT MAX(height) FROM userTbl)
    OR height = (SELECT MIN(height) FROM userTbl)

--GROUP BY / HAVING
SELECT userID AS '����ھ��̵�'
     , SUM(price * amount)  AS '�ѱ��űݾ�'
  FROM buyTbl
--  WHERE SUM(price*amount) >= 1000  --�̷��Դ� ����Ұ��մϴ�. �׷��� ��� HAVING���� ���ϴ�.
 GROUP BY userID
HAVING SUM(price * amount) >= 1000;


--���
--��ǰ�׷캰�� ����ڰ� �󸶸�ŭ ���Ÿ� �ߴ��� ��ȸ
SELECT groupName  --�������̵� �׷쳻�� ���� �ٲٸ� ���� �ִ°� �÷������� ������ ���ɴϴ�.
     , userID
     , SUM(price * amount)  AS '�ѱ��űݾ�'
  FROM buyTbl
 GROUP BY ROLLUP( groupName,userID) --�ٵ� �̰� �ΰ� �مf������ ������� �ٸ���? Why?

--�Ѿ� ���� �߰��հ谡 �� ���غ��� ����. Ȯ�� �ʼ�!
SELECT groupName
     , userID
     , SUM(price * amount)  AS '�ѱ��űݾ�'
  FROM buyTbl
  GROUP BY groupName, userID; --�̰� ��ȣ �ȵ��°� ����.

  --�����Ʈ ������ �������� �����ʼ�

SELECT groupName
     , userID
     , SUM(price * amount)  AS '�ѱ��űݾ�'
  FROM buyTbl
 GROUP BY CUBE( groupName,userID); --�� �׷��κ� �հ谡 �ǳ���(15�� = 16 ~19�� ��) --ť�� ������ �а� �ٽ� �ؾ߰ٳ� CLUSTERING �����ǰ�?

SELECT groupName
     , SUM(price * amount) AS [�ѱ��űݾ�]
  FROM buyTbl
 GROUP BY ROLLUP(groupName);

SELECT groupName
     , SUM(price * amount) AS [�ѱ��űݾ�]
	 , GROUPING_ID(groupName) AS 'SUM'
  FROM buyTbl
 GROUP BY ROLLUP(groupName);

 --SELECT������ ���� ����� ���� ������ �ٷ� ���! �����Դϴ�. �׳� ������ ���� �κб��� ����
 --CLUSTER�� ������ �����ϴ� ���� ������������? 232page���� 233page Ȯ���ؼ� �����ؾ��մϴ�.
 --���� ���� �غ��� NULL ���ͼ� ¥������? NULL�� ���� �̸� �ְ� ������⸦ Ȯ���ؾ���