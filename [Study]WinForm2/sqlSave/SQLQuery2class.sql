USE [AppDev]
GO
/****** Object:  StoredProcedure [dbo].[SP_CHART_DSH_S1]    Script Date: 2021-06-01 오전 9:45:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		동상현
-- Create date: 2021-06-01
-- Description: 차트 콤보박스 생성.
-- =============================================
CREATE PROCEDURE [dbo].[SP_CHART_LKK_S1]
	@ITEMCODE VARCHAR(30)
AS
BEGIN
	
	SELECT ''     AS ITEMCODE ,
	       '전체' AS ITEMNAME
		   
	UNION ALL

	SELECT A.ITEMCODE
	      ,'[' + A.ITEMCODE + ']  ' + B.ITEMNAME AS ITEMNAME
	  FROM TB_PRODPERDAY A WITH(NOLOCK) LEFT JOIN TB_TESTITEM_DSH B WITH(NOLOCK)
											   ON A.ITEMCODE = B.ITEMCODE
	GROUP BY A.ITEMCODE,B.ITEMNAME
	
END
