USE [AppDev]
GO

/****** Object:  Table [dbo].[TB_USER_LKK]    Script Date: 2021-05-24 ¿ÀÈÄ 4:41:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TB_USER_LKK](
	[USERID] [varchar](30) NULL,
	[USERNAME] [varchar](30) NULL,
	[PW] [varchar](30) NULL,
	[MAKEDATE] [datetime] NULL,
	[MAKER] [varchar](30) NULL,
	[EDITDATE] [datetime] NULL,
	[EDITOR] [varchar](30) NULL
) ON [PRIMARY]
GO


