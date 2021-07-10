SELECT * FROM memberTBL;
SELECT memberID, memberName
  FROM memberTBL
  WHERE memberID = 'jae';

--조회 명령문
SELECT * FROM productTBL;

--SELECT productName, cost, company FROM productTBL --주석

--입력명령문
INSERT INTO memberTBL
VALUES ('Bang', '방문식', '부산시 진구');