USE [master]
GO
/****** Object:  Database [CGP]    Script Date: 4/14/2018 10:06:24 PM ******/
CREATE DATABASE [CGP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CGP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CGP.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CGP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CGP_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CGP] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CGP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CGP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CGP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CGP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CGP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CGP] SET ARITHABORT OFF 
GO
ALTER DATABASE [CGP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CGP] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CGP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CGP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CGP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CGP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CGP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CGP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CGP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CGP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CGP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CGP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CGP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CGP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CGP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CGP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CGP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CGP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CGP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CGP] SET  MULTI_USER 
GO
ALTER DATABASE [CGP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CGP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CGP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CGP] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CGP]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/14/2018 10:06:24 PM ******/
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
/****** Object:  Table [dbo].[AchievementDetail]    Script Date: 4/14/2018 10:06:24 PM ******/
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
/****** Object:  Table [dbo].[Address]    Script Date: 4/14/2018 10:06:24 PM ******/
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
/****** Object:  Table [dbo].[BirthPlace]    Script Date: 4/14/2018 10:06:24 PM ******/
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
/****** Object:  Table [dbo].[BurialPlace]    Script Date: 4/14/2018 10:06:24 PM ******/
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
/****** Object:  Table [dbo].[CauseOfDeath]    Script Date: 4/14/2018 10:06:24 PM ******/
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
/****** Object:  Table [dbo].[Job]    Script Date: 4/14/2018 10:06:24 PM ******/
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
/****** Object:  Table [dbo].[ListAchievement]    Script Date: 4/14/2018 10:06:24 PM ******/
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
/****** Object:  Table [dbo].[Member]    Script Date: 4/14/2018 10:06:24 PM ******/
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
/****** Object:  Table [dbo].[Relationship]    Script Date: 4/14/2018 10:06:24 PM ******/
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
/****** Object:  Table [dbo].[Tree]    Script Date: 4/14/2018 10:06:24 PM ******/
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
INSERT [dbo].[AchievementDetail] ([MemberID], [AchievementID], [TreeID], [DateIncurred]) VALUES (35, 3, 1, CAST(N'2018-04-01' AS Date))
SET IDENTITY_INSERT [dbo].[BirthPlace] ON 

INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (1, N'Noi sinh 1', 1)
INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (2, N'Noi sinh 2', 1)
INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (4, N'Noi sinh 4', 1)
INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (5, N'Noi sinh 5', 1)
INSERT [dbo].[BirthPlace] ([BirthPlaceID], [BirthPlaceName], [TreeID]) VALUES (6, N'Noi Sinh 1', 2)
SET IDENTITY_INSERT [dbo].[BirthPlace] OFF
SET IDENTITY_INSERT [dbo].[BurialPlace] ON 

INSERT [dbo].[BurialPlace] ([BurialPlaceID], [BurialPlaceName], [TreeID]) VALUES (1, N'Noi mat 1', 1)
INSERT [dbo].[BurialPlace] ([BurialPlaceID], [BurialPlaceName], [TreeID]) VALUES (2, N'Noi mat 2', 1)
INSERT [dbo].[BurialPlace] ([BurialPlaceID], [BurialPlaceName], [TreeID]) VALUES (3, N'Noi mat 3', 1)
INSERT [dbo].[BurialPlace] ([BurialPlaceID], [BurialPlaceName], [TreeID]) VALUES (4, N'Noi mat 4', 1)
INSERT [dbo].[BurialPlace] ([BurialPlaceID], [BurialPlaceName], [TreeID]) VALUES (5, N'Noi mat 100', 1)
INSERT [dbo].[BurialPlace] ([BurialPlaceID], [BurialPlaceName], [TreeID]) VALUES (6, N'Noi mat 69', 1)
SET IDENTITY_INSERT [dbo].[BurialPlace] OFF
SET IDENTITY_INSERT [dbo].[CauseOfDeath] ON 

INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (1, N'Nguyen nhan mat 1', 1)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (2, N'Nguyen nhan mat 2', 1)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (3, N'Nguyen nhan mat 69', 1)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (4, N'Nguyen nhan mat 169', 1)
INSERT [dbo].[CauseOfDeath] ([CauseOfDeathID], [CauseOfDeathText], [TreeID]) VALUES (5, N'Nguyen nhan mat 699', 1)
SET IDENTITY_INSERT [dbo].[CauseOfDeath] OFF
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (1, N'Ăn xin', 1)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (2, N'Thất nghiệp', 1)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (3, N'Ca sỹ', 1)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (4, N'Cài win dạo', 1)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (5, N'Bán xà bông', 1)
INSERT [dbo].[Job] ([JobID], [JobName], [TreeID]) VALUES (6, N'Bán Hàng', 2)
SET IDENTITY_INSERT [dbo].[Job] OFF
SET IDENTITY_INSERT [dbo].[ListAchievement] ON 

INSERT [dbo].[ListAchievement] ([IDAchievement], [AchievementName], [TreeID]) VALUES (1, N'thanh tich 1', 1)
INSERT [dbo].[ListAchievement] ([IDAchievement], [AchievementName], [TreeID]) VALUES (2, N'thanh tich 2', 1)
INSERT [dbo].[ListAchievement] ([IDAchievement], [AchievementName], [TreeID]) VALUES (3, N'thanh tich 3', 1)
SET IDENTITY_INSERT [dbo].[ListAchievement] OFF
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (1, N'Nguyễn Hoàng Quốc Phong', 4, N'Vô gia cư', NULL, -1, CAST(N'2017-03-06 18:51:20.857' AS DateTime), CAST(N'2005-07-15 09:30:49.000' AS DateTime), CAST(N'2018-03-06 18:51:06.000' AS DateTime), 4, 1, 2, 1, N'M', 1, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (2, N'Nguyên Hoang Lê Nguyên', 3, N'Trần Duy Hưng', 1, 0, CAST(N'2018-03-06 19:04:15.077' AS DateTime), CAST(N'2018-03-06 19:03:49.000' AS DateTime), NULL, 5, NULL, NULL, 1, N'M', 2, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (3, N'Hoàng Mỹ Tú Duyên', 2, N'Nhà trắng', 1, 1, CAST(N'2018-03-06 20:12:36.850' AS DateTime), CAST(N'1990-09-06 09:50:07.000' AS DateTime), NULL, 5, NULL, NULL, 1, N'F', 1, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (4, N'Nguyễn Thùy Linh', 1, N'Hà Nội', 1, 0, CAST(N'2018-03-25 00:00:00.000' AS DateTime), CAST(N'2018-03-25 10:36:00.000' AS DateTime), NULL, 1, NULL, NULL, 1, N'F', 2, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (19, N'Nguyễn La La', 4, N'TPHCM', 1, 0, CAST(N'2018-03-25 00:00:00.000' AS DateTime), CAST(N'2018-03-25 23:59:00.000' AS DateTime), NULL, 2, NULL, NULL, 1, N'F', 2, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (20, N'Ngô Hải Quân', 3, N'TP.HCM', 4, 0, CAST(N'2018-03-26 00:00:00.000' AS DateTime), CAST(N'2018-03-26 00:04:00.000' AS DateTime), NULL, 2, NULL, NULL, 1, N'F', 2, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (21, N'Ngô Sách Việt', 4, N'TP.HCM', 4, 1, CAST(N'2018-03-26 00:00:00.000' AS DateTime), CAST(N'1988-03-26 00:04:00.000' AS DateTime), NULL, 2, NULL, NULL, 1, N'M', 1, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (22, N'Ngô Xuân Vĩ', 5, N'TP.HCM', 4, 0, CAST(N'2018-03-26 00:00:00.000' AS DateTime), CAST(N'2018-03-26 00:07:00.000' AS DateTime), NULL, 4, NULL, NULL, 1, N'M', 2, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (32, N'Hoàng Dương', NULL, N'', NULL, -1, CAST(N'2018-04-03 00:00:00.000' AS DateTime), CAST(N'2018-04-03 00:14:00.000' AS DateTime), NULL, NULL, NULL, NULL, 2, N'M', 1, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (33, N'Hoàng Dung', NULL, N'', 32, 1, CAST(N'2018-04-03 00:00:00.000' AS DateTime), CAST(N'2018-04-03 00:15:00.000' AS DateTime), NULL, NULL, NULL, NULL, 2, N'F', 1, NULL, NULL)
INSERT [dbo].[Member] ([Id], [FullName], [Job], [AddressID], [Memberold], [TypeRelationship], [Date_Create], [Birthday], [DateOfDeath], [BirthPlaceId], [BurialPlaceId], [CauseOfDeath], [TreeID], [Sex], [Generation], [DateTimeUpdate], [IsAlive]) VALUES (34, N'Hoàng Nhã Xuyên', 6, N'', 32, 0, CAST(N'2018-04-03 00:00:00.000' AS DateTime), CAST(N'2018-04-03 00:25:00.000' AS DateTime), NULL, 6, NULL, NULL, 2, N'F', 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Member] OFF
SET IDENTITY_INSERT [dbo].[Tree] ON 

INSERT [dbo].[Tree] ([TreeID], [Name], [CreateDate]) VALUES (1, N'cay test 1', CAST(N'2018-02-09 22:59:09.307' AS DateTime))
INSERT [dbo].[Tree] ([TreeID], [Name], [CreateDate]) VALUES (2, N'test 2', CAST(N'2018-02-27 15:32:47.190' AS DateTime))
INSERT [dbo].[Tree] ([TreeID], [Name], [CreateDate]) VALUES (3, N'Họ Vui', CAST(N'2018-04-03 22:29:16.083' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tree] OFF
USE [master]
GO
ALTER DATABASE [CGP] SET  READ_WRITE 
GO
