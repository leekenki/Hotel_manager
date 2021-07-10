-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		이근기
-- Create date: 2021-06-01
-- Description:	컬럼차트 데이터 표현
-- =============================================
CREATE PROCEDURE SP_CHART_LKK_S2
	@ITEMCODE VARCHAR(30)
AS
BEGIN
	SELECT A.PRODDATE,
		   A.ITEMCODE,
		   B.ITEMNAME,
		   SUM(PRODCOUNT) AS PRODCOUNT
	  FROM TB_PRODPERDAY A WITH(NOLOCK) LEFT JOIN TB_TESTITEM_LKK B WITH(NOLOCK)
											   ON A.ITEMCODE = B.ITEMCODE
	 WHERE A.ITEMCODE = @ITEMCODE
	 GROUP BY A.PRODDATE, A.ITEMCODE, B.ITEMNAME
	
END
GO
