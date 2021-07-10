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
-- Description:	컬럼 차트 데이터 조회
-- =============================================
CREATE PROCEDURE SP_CHART_LKK_SP3
	@ITEMCODE VARCHAR(30)
	
AS
BEGIN
	SELECT A.PRODDATE,
		   B.ITEMNAME,
		   A.PRODCOUNT
	  FROM (
	SELECT PRODDATE,
		   ITEMCODE,
		   SUM(PRODCOUNT) AS PRODCOUNT
	  FROM TB_PRODPERDAY A WITH(NOLOCK)
	 WHERE ITEMCODE = @ITEMCODE
	GROUP BY A.PRODDATE,A.ITEMCODE) A 
							LEFT JOIN TB_TESTITEM_LKK B WITH(NOLOCK)
								   ON A.ITEMCODE = B.ITEMCODE

END
GO
