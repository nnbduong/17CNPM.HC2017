USE [CGP]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 18/03/2018 23:58:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AchievementDetail]    Script Date: 18/03/2018 23:58:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AchievementDetail](
	[MemberID] [int] NOT NULL,
	[AchievementID] [int] NOT NULL,
	[TreeID] [int] NULL,
 CONSTRAINT [PK_AchievementDetail] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC,
	[AchievementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Address]    Script Date: 18/03/2018 23:58:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](350) NULL,
	[TreeID] [int] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BirthPlace]    Script Date: 18/03/2018 23:58:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BirthPlace](
	[BirthPlaceID] [int] IDENTITY(1,1) NOT NULL,
	[BirthPlaceName] [nvarchar](300) NULL,
	[TreeID] [int] NULL,
 CONSTRAINT [PK_BirthPlace] PRIMARY KEY CLUSTERED 
(
	[BirthPlaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BurialPlace]    Script Date: 18/03/2018 23:58:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BurialPlace](
	[BurialPlaceID] [int] IDENTITY(1,1) NOT NULL,
	[BurialPlaceName] [nvarchar](300) NULL,
	[TreeID] [int] NULL,
 CONSTRAINT [PK_BurialPlace] PRIMARY KEY CLUSTERED 
(
	[BurialPlaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CauseOfDeath]    Script Date: 18/03/2018 23:58:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauseOfDeath](
	[CauseOfDeathID] [int] IDENTITY(1,1) NOT NULL,
	[CauseOfDeathText] [nvarchar](350) NULL,
	[TreeID] [int] NULL,
 CONSTRAINT [PK_CauseOfDeath] PRIMARY KEY CLUSTERED 
(
	[CauseOfDeathID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Job]    Script Date: 18/03/2018 23:58:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[JobID] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](150) NULL,
	[TreeID] [int] NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ListAchievement]    Script Date: 18/03/2018 23:58:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListAchievement](
	[IDAchievement] [int] IDENTITY(1,1) NOT NULL,
	[AchievementName] [nvarchar](200) NULL,
	[TreeID] [int] NULL,
 CONSTRAINT [PK_ListAchievement] PRIMARY KEY CLUSTERED 
(
	[IDAchievement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Member]    Script Date: 18/03/2018 23:58:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](200) NULL,
	[Job] [int] NULL,
	[AddressID] [nvarchar](300) NULL,
	[Memberold] [int] NULL,
	[TypeRelationship] [int] NULL,
	[Date_Create] [datetime] NULL,
	[Birthday] [datetime] NULL,
	[DateOfDeath] [datetime] NULL,
	[BirthPlaceId] [int] NULL,
	[BurialPlaceId] [int] NULL,
	[CauseOfDeath] [int] NULL,
	[TreeID] [int] NULL,
	[Sex] [nvarchar](1) NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Relationship]    Script Date: 18/03/2018 23:58:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relationship](
	[RelationshipID] [int] IDENTITY(1,1) NOT NULL,
	[RelationshipName] [nvarchar](100) NULL,
	[TreeID] [nchar](10) NULL,
 CONSTRAINT [PK_Relationship] PRIMARY KEY CLUSTERED 
(
	[RelationshipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tree]    Script Date: 18/03/2018 23:58:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tree](
	[TreeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Tree] PRIMARY KEY CLUSTERED 
(
	[TreeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
