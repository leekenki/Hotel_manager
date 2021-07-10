 SELECT ITEMCODE,  
        ITEMNAME,  
        ITEMDESC,  
        ITEMDESC2, 
        ENDFLAG,   
        PRODDATE,  
        MAKEDATE,  
        MAKER,     
        EDITDATE,  
        EDITOR     
   FROM TB_TESTITEM_LKK WITH(NOLOCK)  
  WHERE ITEMCODE LIKE '%'
    AND ITEMNAME LIKE '%'
    AND ITEMDESC LIKE '%'
    AND ENDFLAG  = 'N'