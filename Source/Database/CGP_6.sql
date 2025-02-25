USE [CGP]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 13/05/2018 16:30:52 ******/
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
/****** Object:  Table [dbo].[AchievementDetail]    Script Date: 13/05/2018 16:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AchievementDetail](
	[MemberID] [int] NOT NULL,
	[AchievementID] [int] NOT NULL,
	[TreeID] [int] NULL,
	[DateIncurred] [date] NULL,
 CONSTRAINT [PK_AchievementDetail] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC,
	[AchievementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Address]    Script Date: 13/05/2018 16:30:52 ******/
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
/****** Object:  Table [dbo].[BirthPlace]    Script Date: 13/05/2018 16:30:52 ******/
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
/****** Object:  Table [dbo].[BurialPlace]    Script Date: 13/05/2018 16:30:52 ******/
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
/****** Object:  Table [dbo].[CauseOfDeath]    Script Date: 13/05/2018 16:30:52 ******/
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
/****** Object:  Table [dbo].[Job]    Script Date: 13/05/2018 16:30:52 ******/
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
/****** Object:  Table [dbo].[ListAchievement]    Script Date: 13/05/2018 16:30:52 ******/
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
/****** Object:  Table [dbo].[Member]    Script Date: 13/05/2018 16:30:52 ******/
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
	[IsAlive] [int] NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Relationship]    Script Date: 13/05/2018 16:30:52 ******/
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
/****** Object:  Table [dbo].[Tree]    Script Date: 13/05/2018 16:30:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tree](
	[TreeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[AccountID] [int] NULL,
 CONSTRAINT [PK_Tree] PRIMARY KEY CLUSTERED 
(
	[TreeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [Username], [Password]) VALUES (3, N'DragonWater999', N'099EBEA48EA9666A7DA2177267983138')
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[AchievementDetail] ([MemberID], [AchievementID], [TreeID], [DateIncurred]) VALUES (35, 8, 4, CAST(N'1920-02-03' AS Date))
INSERT [dbo].[AchievementDetail] ([MemberID], [AchievementID], [TreeID], [DateIncurred]) VALUES (36, 5, 4, CAST(N'1930-02-03' AS Date))
INSERT [dbo].[AchievementDetail] ([MemberID], [AchievementID], [TreeID], [DateIncurred]) VALUES (48, 4, 4, CAST(N'2010-03-03' AS Date))
INSERT [dbo].[AchievementDetail] ([MemberID], [AchievementID], [TreeID], [DateIncurred]) VALUES (49, 6, 4, CAST(N'2006-02-03' AS Date))
INSERT [dbo].[AchievementDetail] ([MemberID], [AchievementID], [TreeID], [DateIncurred]) VALUES (52, 9, 4, CAST(N'2017-05-13' AS Date))
INSERT [dbo].[AchievementDetail] ([MemberID], [AchievementID], [TreeID], [DateIncurred]) VALUES (58, 9, 4, CAST(N'2015-05-13' AS Date))
SET IDENTITY_INSERT [dbo].[BirthPlace] ON 

INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (12, N'TP.HCM', 4)
INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (13, N'Hà Nội', 4)
INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (14, N'Đà Nẳng', 4)
INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (15, N'Long An', 4)
INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (16, N'Thanh Lam', 4)
INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (17, N'Bình Định', 4)
INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (18, N'Huế', 4)
SET IDENTITY_INSERT [dbo].[BirthPlace] OFF
SET IDENTITY_INSERT [dbo].[BurialPlace] ON 

INSERT [dbo].[BurialPlace] ([BurialPlaceID], [BurialPlaceName], [TreeID]) VALUES (12, N'Nơi Mất 1', 4)
INSERT [dbo].[BurialPlace] ([BurialPlaceID], [BurialPlaceName], [TreeID]) VALUES (13, N'Nơi Mất 2', 4)
INSERT [dbo].[BurialPlace] ([BurialPlaceID], [BurialPlaceName], [TreeID]) VALUES (14, N'Nơi Mất 3', 4)
SET IDENTITY_INSERT [dbo].[BurialPlace] OFF
SET IDENTITY_INSERT [dbo].[CauseOfDeath] ON 

INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (10, N'Tai Nạn Nghê Nghiệp', 4)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (11, N'Bệnh Già', 4)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (12, N'Bệnh Dịch', 4)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (13, N'Tai Nạn Giao Thông', 4)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (14, N'Lũ Lụt', 4)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (15, N'Nạn Đói', 4)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (16, N'Chiến tranh', 4)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (17, N'Động đất', 4)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (18, N'Sóng Thần', 4)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (19, N'Sạt Lở', 4)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (20, N'Bão', 4)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (21, N'Núi Lửa Phun Trào', 4)
SET IDENTITY_INSERT [dbo].[CauseOfDeath] OFF
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (11, N'Giáo Viên', 4)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (12, N'Bác Sĩ', 4)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (13, N'Kỹ Sư', 4)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (14, N'Kinh Doanh', 4)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (15, N'Công Nhân', 4)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (16, N'Nghề Nông', 4)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (17, N'Đánh Bắt Hải Sản ', 4)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (18, N'Công An', 4)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (19, N'Y Tá', 4)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (20, N'Nội Trợ', 4)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (21, N'Thợ Mộc', 4)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (22, N'Thợ Kim Hoàng', 4)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (23, N'Thợ Điên', 4)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (24, N'Lập Trình Viên', 4)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (25, N'Kiến Trúc Sư', 4)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (26, N'Duyệt May', 4)
SET IDENTITY_INSERT [dbo].[Job] OFF
SET IDENTITY_INSERT [dbo].[ListAchievement] ON 

INSERT [dbo].[ListAchievement] ([IDAchievement], [AchievementName], [TreeID]) VALUES (4, N'Giải Thể Thao', 4)
INSERT [dbo].[ListAchievement] ([IDAchievement], [AchievementName], [TreeID]) VALUES (5, N'Giải Văn Học', 4)
INSERT [dbo].[ListAchievement] ([IDAchievement], [AchievementName], [TreeID]) VALUES (6, N'Giải Toán Học', 4)
INSERT [dbo].[ListAchievement] ([IDAchievement], [AchievementName], [TreeID]) VALUES (7, N'Doanh Nhân Giỏi', 4)
INSERT [dbo].[ListAchievement] ([IDAchievement], [AchievementName], [TreeID]) VALUES (8, N'Thành tích Địa Phương', 4)
INSERT [dbo].[ListAchievement] ([IDAchievement], [AchievementName], [TreeID]) VALUES (9, N'Đặt giải Quốc Gia', 4)
INSERT [dbo].[ListAchievement] ([IDAchievement], [AchievementName], [TreeID]) VALUES (10, N'Đỗ Tú Tài', 4)
INSERT [dbo].[ListAchievement] ([IDAchievement], [AchievementName], [TreeID]) VALUES (11, N'Đỗ Thi Hương', 4)
INSERT [dbo].[ListAchievement] ([IDAchievement], [AchievementName], [TreeID]) VALUES (12, N'Đỗ Trạng Nguyên', 4)
INSERT [dbo].[ListAchievement] ([IDAchievement], [AchievementName], [TreeID]) VALUES (13, N'Khác', 4)
SET IDENTITY_INSERT [dbo].[ListAchievement] OFF
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (35, N'Long Huyền Vu', 22, N'', NULL, -1, CAST(N'2018-05-13 14:54:00.000' AS DateTime), CAST(N'1900-09-09 14:54:00.000' AS DateTime), CAST(N'2000-02-01 00:00:00.000' AS DateTime), 16, 12, 11, 4, N'M', 1, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (36, N'Nguyễn Hoàng Dung', 11, N'', 35, 1, CAST(N'1922-09-09 14:54:00.000' AS DateTime), CAST(N'1904-12-12 14:59:00.000' AS DateTime), CAST(N'1988-02-02 02:03:00.000' AS DateTime), 15, 12, 15, 4, N'F', 1, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (37, N'Long Vũ Minh', 16, N'', 35, 0, CAST(N'2018-05-13 14:54:00.000' AS DateTime), CAST(N'1924-05-02 15:01:00.000' AS DateTime), NULL, 12, NULL, NULL, 4, N'M', 2, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (38, N'Nguyễn Hoàng Duyên', 14, N'', 37, 1, CAST(N'1944-05-02 15:01:00.000' AS DateTime), CAST(N'1926-11-09 03:04:00.000' AS DateTime), NULL, 12, NULL, NULL, 4, N'F', 2, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (39, N'Long Mỹ Dung', 21, N'', 35, 0, CAST(N'2018-05-13 14:54:00.000' AS DateTime), CAST(N'1930-03-11 07:06:00.000' AS DateTime), NULL, 12, NULL, NULL, 4, N'F', 2, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (40, N'Long Sa Chiến', 14, N'', 35, 0, CAST(N'2018-05-13 14:54:00.000' AS DateTime), CAST(N'1928-05-13 02:08:00.000' AS DateTime), NULL, 13, NULL, NULL, 4, N'M', 2, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (41, N'Nguyễn Thúy Trúc', 11, N'', 40, 1, CAST(N'1950-05-13 02:08:00.000' AS DateTime), CAST(N'1930-03-14 10:13:00.000' AS DateTime), NULL, 14, NULL, NULL, 4, N'F', 2, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (42, N'Long Hoàng Quân', 21, N'', 40, 0, CAST(N'2018-05-13 14:54:00.000' AS DateTime), CAST(N'1950-05-13 15:17:00.000' AS DateTime), NULL, 13, NULL, NULL, 4, N'M', 3, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (43, N'Long Thị Ái Mi', 20, N'', 40, 0, CAST(N'2018-05-13 14:54:00.000' AS DateTime), CAST(N'1955-05-17 15:18:00.000' AS DateTime), NULL, 13, NULL, NULL, 4, N'F', 3, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (44, N'Hoàng Cường Quân Xuyên', 16, N'', 39, 1, CAST(N'1950-03-11 07:06:00.000' AS DateTime), CAST(N'1927-05-13 15:18:00.000' AS DateTime), NULL, 13, NULL, NULL, 4, N'M', 2, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (45, N'Hoàng Thị Lan', 12, N'', 39, 0, CAST(N'2018-05-13 14:54:00.000' AS DateTime), CAST(N'1950-02-02 15:25:00.000' AS DateTime), NULL, 13, NULL, NULL, 4, N'F', 3, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (46, N'Long Xuân Nam', NULL, N'', 37, 0, CAST(N'2018-05-13 14:54:00.000' AS DateTime), CAST(N'1954-04-03 03:26:00.000' AS DateTime), NULL, 13, NULL, NULL, 4, N'M', 3, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (47, N'Chu Huyền Vi', 26, N'', 46, 1, CAST(N'1977-04-03 03:26:00.000' AS DateTime), CAST(N'1958-05-03 03:30:00.000' AS DateTime), NULL, 13, NULL, NULL, 4, N'F', 3, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (48, N'Long Hoàng Nguyên Quân', 15, N'', 46, 0, CAST(N'2018-05-13 14:54:00.000' AS DateTime), CAST(N'1980-05-13 15:32:00.000' AS DateTime), NULL, 13, NULL, NULL, 4, N'M', 4, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (49, N'Nguyễn Xuân Sơn', 17, N'', 43, 1, CAST(N'2018-05-13 14:54:00.000' AS DateTime), CAST(N'1959-05-13 15:33:00.000' AS DateTime), NULL, 15, NULL, NULL, 4, N'M', 3, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (50, N'Nguyễn Tuyên Quân', 14, N'', 43, 0, CAST(N'2018-05-13 14:54:00.000' AS DateTime), CAST(N'2018-05-13 15:35:00.000' AS DateTime), NULL, NULL, NULL, NULL, 4, N'M', 4, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (51, N'Trần Xuyên Nhung Tú', 19, N'', 42, 1, CAST(N'1976-05-17 15:18:00.000' AS DateTime), CAST(N'1958-05-13 15:36:00.000' AS DateTime), NULL, 17, NULL, NULL, 4, N'F', 3, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (52, N'Long Minh Tú Hải', 18, N'', 42, 0, CAST(N'2018-05-13 14:54:00.000' AS DateTime), CAST(N'1985-07-13 15:38:00.000' AS DateTime), NULL, 15, NULL, NULL, 4, N'M', 4, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (53, N'Ngô Sĩ  Hùng', 23, N'', 45, 1, CAST(N'1972-02-02 15:25:00.000' AS DateTime), CAST(N'1957-02-08 02:32:00.000' AS DateTime), NULL, 18, NULL, NULL, 4, N'M', 3, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (54, N'Ngô Quyền Minh Chương', NULL, N'', 45, 0, CAST(N'2018-05-13 14:54:00.000' AS DateTime), CAST(N'1984-05-13 22:33:00.000' AS DateTime), NULL, NULL, NULL, NULL, 4, N'M', 4, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (55, N'Vũ ThịHà', NULL, N'', 48, 1, CAST(N'2018-05-13 15:51:00.000' AS DateTime), CAST(N'1992-05-13 15:52:00.000' AS DateTime), NULL, NULL, NULL, NULL, 4, N'F', 4, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (56, N'Long Thị Quyên Chuyên', NULL, N'', 48, 0, CAST(N'2018-05-13 15:51:00.000' AS DateTime), CAST(N'2018-02-02 21:32:00.000' AS DateTime), NULL, NULL, NULL, NULL, 4, N'F', 5, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (57, N'Long Hà Cung Chung', NULL, N'', 48, 0, CAST(N'2018-05-13 15:51:00.000' AS DateTime), CAST(N'2017-05-19 15:56:00.000' AS DateTime), NULL, NULL, NULL, NULL, 4, N'M', 5, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (58, N'Lê Trúc Hải Duyên', NULL, N'', 52, 1, CAST(N'2010-07-13 15:38:00.000' AS DateTime), CAST(N'1988-05-13 15:56:00.000' AS DateTime), NULL, NULL, NULL, NULL, 4, N'F', 4, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (59, N'Long Minh Hoàng', NULL, N'', 52, 0, CAST(N'2018-05-13 15:51:00.000' AS DateTime), CAST(N'2015-05-13 23:02:00.000' AS DateTime), NULL, NULL, NULL, NULL, 4, N'M', 5, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Member] OFF
SET IDENTITY_INSERT [dbo].[Tree] ON 

INSERT [dbo].[Tree] ([TreeID], [Name], [CreateDate], [AccountID]) VALUES (4, N'Họ Long', CAST(N'2018-05-13 14:54:26.407' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[Tree] OFF
