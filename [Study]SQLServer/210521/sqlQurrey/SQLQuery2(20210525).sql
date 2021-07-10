 SELECT ITEMCODE,  
        ITEMNAME,   
        ITEMDESC,   
        ITEMDESC2,  
        CASE WHEN ENDFLAG = 'Y' THEN '����' WHEN ENDFLAG = 'N' THEN '����' END AS ENDFALG,    
        PRODDATE,   
        MAKEDATE,   
        MAKER,      
        EDITDATE,   
        EDITOR      
   FROM TB_TESTITEM_LKK WITH(NOLOCK)
  WHERE ITEMCODE LIKE '%'
    AND ITEMNAME LIKE '%'
    AND ITEMDESC LIKE '%'
    --AND ENDFLAG = ''
    --AND PRODDATE BETWEEN ''AND''