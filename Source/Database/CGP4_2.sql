USE [CGP]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/19/2018 6:59:09 PM ******/
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
/****** Object:  Table [dbo].[AchievementDetail]    Script Date: 3/19/2018 6:59:09 PM ******/
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
/****** Object:  Table [dbo].[Address]    Script Date: 3/19/2018 6:59:09 PM ******/
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
/****** Object:  Table [dbo].[BirthPlace]    Script Date: 3/19/2018 6:59:09 PM ******/
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
/****** Object:  Table [dbo].[BurialPlace]    Script Date: 3/19/2018 6:59:09 PM ******/
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
/****** Object:  Table [dbo].[CauseOfDeath]    Script Date: 3/19/2018 6:59:09 PM ******/
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
/****** Object:  Table [dbo].[Job]    Script Date: 3/19/2018 6:59:09 PM ******/
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
/****** Object:  Table [dbo].[ListAchievement]    Script Date: 3/19/2018 6:59:09 PM ******/
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
/****** Object:  Table [dbo].[Member]    Script Date: 3/19/2018 6:59:09 PM ******/
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
	[Generation] [int] NULL,
	[DateTimeUpdate] [datetime] NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Relationship]    Script Date: 3/19/2018 6:59:09 PM ******/
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
/****** Object:  Table [dbo].[Tree]    Script Date: 3/19/2018 6:59:09 PM ******/
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
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [Username], [Password]) VALUES (1, N'sss', N'sss')
INSERT [dbo].[Account] ([ID], [Username], [Password]) VALUES (2, N'qqq', N'qqq')
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[BirthPlace] ON 

INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (1, N'Noi sinh 1', NULL)
INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (2, N'Noi sinh 2', NULL)
INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (4, N'Noi sinh 4', NULL)
INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (5, N'Noi sinh 5', NULL)
SET IDENTITY_INSERT [dbo].[BirthPlace] OFF
SET IDENTITY_INSERT [dbo].[BurialPlace] ON 

INSERT [dbo].[BurialPlace] ([BurialPlaceID], [BurialPlaceName], [TreeID]) VALUES (1, N'Noi mat 1', NULL)
INSERT [dbo].[BurialPlace] ([BurialPlaceID], [BurialPlaceName], [TreeID]) VALUES (2, N'Noi mat 2', NULL)
INSERT [dbo].[BurialPlace] ([BurialPlaceID], [BurialPlaceName], [TreeID]) VALUES (3, N'Noi mat 3', NULL)
INSERT [dbo].[BurialPlace] ([BurialPlaceID], [BurialPlaceName], [TreeID]) VALUES (4, N'Noi mat 4', NULL)
INSERT [dbo].[BurialPlace] ([BurialPlaceID], [BurialPlaceName], [TreeID]) VALUES (5, N'Noi mat 100', NULL)
INSERT [dbo].[BurialPlace] ([BurialPlaceID], [BurialPlaceName], [TreeID]) VALUES (6, N'Noi mat 69', NULL)
SET IDENTITY_INSERT [dbo].[BurialPlace] OFF
SET IDENTITY_INSERT [dbo].[CauseOfDeath] ON 

INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (1, N'Nguyen nhan mat 1', NULL)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (2, N'Nguyen nhan mat 2', NULL)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (3, N'Nguyen nhan mat 69', NULL)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (4, N'Nguyen nhan mat 169', NULL)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (5, N'Nguyen nhan mat 699', NULL)
SET IDENTITY_INSERT [dbo].[CauseOfDeath] OFF
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (1, N'Ăn xin', NULL)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (2, N'Thất nghiệp', NULL)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (3, N'Ca sỹ', NULL)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (4, N'Cài win dạo', NULL)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (5, N'Bán xà bông', NULL)
SET IDENTITY_INSERT [dbo].[Job] OFF
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate]) VALUES (1, N'Nguyễn Văn A', 4, N'Vô gia cư', 1, 1, CAST(N'2018-03-06 18:51:20.857' AS DateTime), CAST(N'2005-07-15 09:30:49.000' AS DateTime), CAST(N'2018-03-06 18:51:06.000' AS DateTime), 4, 1, 5, 1, N'F', NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate]) VALUES (2, N'Bé Xu', 3, N'Trần Duy Hưng', 1, 1, CAST(N'2018-03-06 19:04:15.077' AS DateTime), CAST(N'2018-03-06 19:03:49.000' AS DateTime), CAST(N'2041-11-29 15:30:07.000' AS DateTime), 5, 6, 5, 1, N'M', NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate]) VALUES (3, N'bạn xu', 2, N'Nhà trắng', 1, 1, CAST(N'2018-03-06 20:12:36.850' AS DateTime), CAST(N'1990-09-06 09:50:07.000' AS DateTime), CAST(N'2018-03-06 20:12:07.000' AS DateTime), 5, 6, 5, 1, N'F', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Member] OFF
SET IDENTITY_INSERT [dbo].[Tree] ON 

INSERT [dbo].[Tree] ([TreeID], [Name], [CreateDate]) VALUES (1, N'cay test 1', CAST(N'2018-02-09 22:59:09.307' AS DateTime))
INSERT [dbo].[Tree] ([TreeID], [Name], [CreateDate]) VALUES (2, N'test 2', CAST(N'2018-02-27 15:32:47.190' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tree] OFF
