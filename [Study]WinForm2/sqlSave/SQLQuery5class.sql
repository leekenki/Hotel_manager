SELECT B.RoomType,       B.PeoNum,       B.roomNum,       
B.ResFlag   ,       A.noShow,       B.MAKEDATE,       B.MAKER,    
B.EDITDATE,       B.EDITOR ,      B.RoomPrice 
FROM TB_2_RESV A LEFT JOIN TB_2_ROOM B ON A.roomNum = B.roomNum  
WHERE B.roomType LIKE '%디럭스%'   
AND B.peoNum   LIKE '%3~4인%'   
AND B.ResFlag  = 'N'   
AND RoomPrice BETWEEN  0  AND   100000000  

SELECT * FROM TB_2_ROOM
SELECT * FROM TB_2_RESV


SELECT B.RoomType,
       B.PeoNum,
       B.roomNum, 
       B.ResFlag,
       B.MAKEDATE,
       B.MAKER,
       B.EDITDATE,
       B.EDITOR,
       B.RoomPrice
  FROM TB_2_RESV A RIGHT JOIN TB_2_ROOM B ON A.roomNum = B.roomNum
 WHERE B.roomType LIKE '%" + sRoomType + "%'
   AND B.peoNum   LIKE '%" + sPeoNum + "%'
   AND B.ResFlag  = '" + sresFlag + "'
   AND RoomPrice BETWEEN  0  AND   100000000