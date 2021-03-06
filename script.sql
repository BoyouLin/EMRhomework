USE [master]
GO
/****** Object:  Database [EMR]    Script Date: 2020/11/8 下午 10:38:14 ******/
CREATE DATABASE [EMR]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EMR', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EMR.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EMR_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EMR_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EMR] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EMR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EMR] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EMR] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EMR] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EMR] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EMR] SET ARITHABORT OFF 
GO
ALTER DATABASE [EMR] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EMR] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EMR] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EMR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EMR] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EMR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EMR] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EMR] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EMR] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EMR] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EMR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EMR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EMR] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EMR] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EMR] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EMR] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EMR] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EMR] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EMR] SET  MULTI_USER 
GO
ALTER DATABASE [EMR] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EMR] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EMR] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EMR] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EMR] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EMR] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [EMR] SET QUERY_STORE = OFF
GO
USE [EMR]
GO
/****** Object:  Table [dbo].[科別$]    Script Date: 2020/11/8 下午 10:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[科別$](
	[科別] [nvarchar](255) NULL,
	[科別代號] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[員工基本檔]    Script Date: 2020/11/8 下午 10:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[員工基本檔](
	[員工編號] [nvarchar](20) NOT NULL,
	[員工姓名] [nvarchar](50) NULL,
	[職稱] [nvarchar](50) NULL,
	[到職日] [datetime2](7) NOT NULL,
	[離職日] [datetime2](7) NULL,
	[科室] [nvarchar](20) NULL,
 CONSTRAINT [PK_員工基本檔] PRIMARY KEY CLUSTERED 
(
	[員工編號] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[病人基本檔]    Script Date: 2020/11/8 下午 10:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[病人基本檔](
	[病歷號] [nvarchar](20) NOT NULL,
	[身分證] [nvarchar](20) NOT NULL,
	[姓名] [nvarchar](50) NOT NULL,
	[生日] [datetime2](7) NULL,
	[性別] [nvarchar](5) NULL,
	[初診日] [datetime2](7) NULL,
	[地址] [nvarchar](250) NULL,
	[血型] [nvarchar](2) NULL,
	[星座] [nchar](10) NULL,
 CONSTRAINT [PK_病人基本檔] PRIMARY KEY CLUSTERED 
(
	[病歷號] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[病毒1號]    Script Date: 2020/11/8 下午 10:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[病毒1號](
	[部位] [nvarchar](20) NOT NULL,
	[亂數產生] [int] NULL,
 CONSTRAINT [PK_病毒1號] PRIMARY KEY CLUSTERED 
(
	[部位] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[病毒2號]    Script Date: 2020/11/8 下午 10:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[病毒2號](
	[看診號] [nvarchar](20) NULL,
	[亂數2號] [nchar](10) NOT NULL,
 CONSTRAINT [PK_病毒2號] PRIMARY KEY CLUSTERED 
(
	[亂數2號] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[病患資料$]    Script Date: 2020/11/8 下午 10:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[病患資料$](
	[病歷號] [nvarchar](50) NULL,
	[姓名] [nvarchar](255) NULL,
	[性別] [nvarchar](255) NULL,
	[年齡] [float] NULL,
	[出生日期] [datetime] NULL,
	[身分證] [nvarchar](20) NULL,
	[血型] [nvarchar](2) NULL,
	[過敏史] [nvarchar](255) NULL,
	[重大傷病史] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[病歷索引檔]    Script Date: 2020/11/8 下午 10:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[病歷索引檔](
	[看診號] [nvarchar](20) NOT NULL,
	[報到號] [int] NULL,
	[看診醫師員編] [nvarchar](20) NOT NULL,
	[病歷號] [nvarchar](20) NOT NULL,
	[看診日期] [datetime2](7) NULL,
	[重大傷病] [nvarchar](200) NULL,
	[過敏史] [nvarchar](200) NULL,
	[診斷] [nvarchar](1000) NULL,
	[主觀描述] [nvarchar](1000) NULL,
	[客觀描述] [nvarchar](1000) NULL,
	[評估] [nvarchar](1000) NULL,
	[緊急聯絡人] [nchar](10) NULL,
 CONSTRAINT [PK_看診索引檔] PRIMARY KEY CLUSTERED 
(
	[看診號] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[掛號資料$]    Script Date: 2020/11/8 下午 10:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[掛號資料$](
	[病歷號碼] [float] NULL,
	[科別代號] [float] NULL,
	[看診編號] [float] NULL,
	[門診日期] [datetime] NULL,
	[醫師代號] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[處方內容]    Script Date: 2020/11/8 下午 10:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[處方內容](
	[處方項次] [int] IDENTITY(1,1) NOT NULL,
	[處方箋種類註記] [nvarchar](50) NULL,
	[藥品代碼] [nvarchar](50) NOT NULL,
	[藥品商品名稱] [nvarchar](100) NOT NULL,
	[劑型] [nvarchar](10) NULL,
	[劑量] [nvarchar](10) NULL,
	[給藥日數] [int] NOT NULL,
	[看診號] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_處方內容] PRIMARY KEY CLUSTERED 
(
	[處方項次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[處置項目]    Script Date: 2020/11/8 下午 10:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[處置項目](
	[處置項次] [int] IDENTITY(1,1) NOT NULL,
	[處置代碼] [nvarchar](50) NOT NULL,
	[處置名稱] [nvarchar](50) NOT NULL,
	[頻率] [nvarchar](50) NULL,
	[數量] [int] NOT NULL,
	[單位] [decimal](16, 2) NULL,
	[virus] [nchar](10) NULL,
	[部位] [nvarchar](20) NOT NULL,
	[註記] [nvarchar](50) NULL,
	[看診號] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[醫師$]    Script Date: 2020/11/8 下午 10:38:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[醫師$](
	[科別代號] [float] NULL,
	[醫師名稱] [nvarchar](255) NULL,
	[醫師職稱] [nvarchar](255) NULL,
	[醫師代號] [float] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[科別$] ([科別], [科別代號]) VALUES (N'家醫科', 1)
INSERT [dbo].[科別$] ([科別], [科別代號]) VALUES (N'小兒科', 2)
INSERT [dbo].[科別$] ([科別], [科別代號]) VALUES (N'胸腔內科', 3)
INSERT [dbo].[科別$] ([科別], [科別代號]) VALUES (N'一般外科', 4)
INSERT [dbo].[科別$] ([科別], [科別代號]) VALUES (N'骨科', 5)
INSERT [dbo].[科別$] ([科別], [科別代號]) VALUES (N'身心科', 6)
INSERT [dbo].[科別$] ([科別], [科別代號]) VALUES (N'皮膚科', 7)
INSERT [dbo].[科別$] ([科別], [科別代號]) VALUES (N'復健科', 8)
INSERT [dbo].[科別$] ([科別], [科別代號]) VALUES (N'牙科', 9)
GO
INSERT [dbo].[員工基本檔] ([員工編號], [員工姓名], [職稱], [到職日], [離職日], [科室]) VALUES (N'132136', N'15663', N'1254354', CAST(N'2020-10-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-07T00:00:00.0000000' AS DateTime2), N'36155')
GO
INSERT [dbo].[病人基本檔] ([病歷號], [身分證], [姓名], [生日], [性別], [初診日], [地址], [血型], [星座]) VALUES (N'1213213', N'1451436513', N'jjm', CAST(N'2020-10-03T00:00:00.0000000' AS DateTime2), N'b', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[病患資料$] ([病歷號], [姓名], [性別], [年齡], [出生日期], [身分證], [血型], [過敏史], [重大傷病史]) VALUES (N'1e+006', N'Jack', N'男', 16, CAST(N'2004-09-27T00:00:00.000' AS DateTime), N'A125526745', N'A', N'無', N'無')
INSERT [dbo].[病患資料$] ([病歷號], [姓名], [性別], [年齡], [出生日期], [身分證], [血型], [過敏史], [重大傷病史]) VALUES (N'1e+006', N'林國宏', N'女', 17, CAST(N'2003-04-06T00:00:00.000' AS DateTime), N'F237895333', N'O', N'無', N'甲狀腺惡性腫瘤')
INSERT [dbo].[病患資料$] ([病歷號], [姓名], [性別], [年齡], [出生日期], [身分證], [血型], [過敏史], [重大傷病史]) VALUES (N'1e+006', N'張三', N'男', 12, CAST(N'2007-12-20T00:00:00.000' AS DateTime), N'A135587426', N'B', N'無', N'無')
INSERT [dbo].[病患資料$] ([病歷號], [姓名], [性別], [年齡], [出生日期], [身分證], [血型], [過敏史], [重大傷病史]) VALUES (N'1e+006', N'李小春', N'女', 28, CAST(N'1993-11-15T00:00:00.000' AS DateTime), N'A226548623', N'O', N'花生過敏', N'甲狀腺惡性腫瘤')
INSERT [dbo].[病患資料$] ([病歷號], [姓名], [性別], [年齡], [出生日期], [身分證], [血型], [過敏史], [重大傷病史]) VALUES (N'1.00001e+006', N'吳智堯', N'男', 60, CAST(N'1960-05-07T00:00:00.000' AS DateTime), N'B112585634', N'A', N'無', N'冠狀動脈硬化')
INSERT [dbo].[病患資料$] ([病歷號], [姓名], [性別], [年齡], [出生日期], [身分證], [血型], [過敏史], [重大傷病史]) VALUES (N'1.00001e+006', N'林泊佑', N'男', 32, CAST(N'1987-11-11T00:00:00.000' AS DateTime), N'F138566974', N'B', N'無', N'甲狀腺惡性腫瘤')
INSERT [dbo].[病患資料$] ([病歷號], [姓名], [性別], [年齡], [出生日期], [身分證], [血型], [過敏史], [重大傷病史]) VALUES (N'1.00001e+006', N'潭愛寧', N'女', 67, CAST(N'1953-07-24T00:00:00.000' AS DateTime), N'P215977332', N'O', N'堅果過敏', N'冠狀動脈硬化')
INSERT [dbo].[病患資料$] ([病歷號], [姓名], [性別], [年齡], [出生日期], [身分證], [血型], [過敏史], [重大傷病史]) VALUES (N'1.00001e+006', N'廖仲媛', N'女', 10, CAST(N'2009-11-23T00:00:00.000' AS DateTime), N'A243582145', N'AB', N'無', N'遺傳性溶血性貧血')
INSERT [dbo].[病患資料$] ([病歷號], [姓名], [性別], [年齡], [出生日期], [身分證], [血型], [過敏史], [重大傷病史]) VALUES (N'1.00001e+006', N'謝鐘合', N'女', 19, CAST(N'2001-01-09T00:00:00.000' AS DateTime), N'F235428289', N'A', N'無', N'無')
INSERT [dbo].[病患資料$] ([病歷號], [姓名], [性別], [年齡], [出生日期], [身分證], [血型], [過敏史], [重大傷病史]) VALUES (N'1.00001e+006', N'邱睿科', N'男', 58, CAST(N'1962-03-27T00:00:00.000' AS DateTime), N'A105323544', N'O', N'花粉過粉', N'無')
INSERT [dbo].[病患資料$] ([病歷號], [姓名], [性別], [年齡], [出生日期], [身分證], [血型], [過敏史], [重大傷病史]) VALUES (N'1.00001e+006', N'沒興', N'男', 46, CAST(N'1974-06-30T00:00:00.000' AS DateTime), N'F116325785', N'O', N'花生過敏', N'遺傳性溶血性貧血')
INSERT [dbo].[病患資料$] ([病歷號], [姓名], [性別], [年齡], [出生日期], [身分證], [血型], [過敏史], [重大傷病史]) VALUES (N'1.00001e+006', N'李曉奇', N'女', 69, CAST(N'1951-08-05T00:00:00.000' AS DateTime), N'B201368741', N'B', N'無', N'無')
INSERT [dbo].[病患資料$] ([病歷號], [姓名], [性別], [年齡], [出生日期], [身分證], [血型], [過敏史], [重大傷病史]) VALUES (N'1.00001e+006', N'林可宣', N'女', 31, CAST(N'1989-10-06T00:00:00.000' AS DateTime), N'A221579520', N'A', N'甲殼類過敏', N'甲狀腺惡性腫瘤')
INSERT [dbo].[病患資料$] ([病歷號], [姓名], [性別], [年齡], [出生日期], [身分證], [血型], [過敏史], [重大傷病史]) VALUES (N'1.00001e+006', N'Hank', N'男', 66, CAST(N'1954-02-28T00:00:00.000' AS DateTime), N'F102567746', N'A', N'花粉過粉', N'冠狀動脈硬化')
INSERT [dbo].[病患資料$] ([病歷號], [姓名], [性別], [年齡], [出生日期], [身分證], [血型], [過敏史], [重大傷病史]) VALUES (N'1.00002e+006', N'江漢升', N'男', 34, CAST(N'1986-07-04T00:00:00.000' AS DateTime), N'F121256744', N'O', N'白蛋白過敏', N'無')
GO
INSERT [dbo].[病歷索引檔] ([看診號], [報到號], [看診醫師員編], [病歷號], [看診日期], [重大傷病], [過敏史], [診斷], [主觀描述], [客觀描述], [評估], [緊急聯絡人]) VALUES (N'001', 0, N'132136', N'1213213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[掛號資料$] ([病歷號碼], [科別代號], [看診編號], [門診日期], [醫師代號]) VALUES (1000001, 2, 1, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[掛號資料$] ([病歷號碼], [科別代號], [看診編號], [門診日期], [醫師代號]) VALUES (1000002, 3, 2, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[掛號資料$] ([病歷號碼], [科別代號], [看診編號], [門診日期], [醫師代號]) VALUES (1000003, 2, 3, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[掛號資料$] ([病歷號碼], [科別代號], [看診編號], [門診日期], [醫師代號]) VALUES (1000004, 1, 4, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[掛號資料$] ([病歷號碼], [科別代號], [看診編號], [門診日期], [醫師代號]) VALUES (1000005, 4, 5, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[掛號資料$] ([病歷號碼], [科別代號], [看診編號], [門診日期], [醫師代號]) VALUES (1000006, 8, 6, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[掛號資料$] ([病歷號碼], [科別代號], [看診編號], [門診日期], [醫師代號]) VALUES (1000007, 7, 7, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[掛號資料$] ([病歷號碼], [科別代號], [看診編號], [門診日期], [醫師代號]) VALUES (1000008, 5, 8, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[掛號資料$] ([病歷號碼], [科別代號], [看診編號], [門診日期], [醫師代號]) VALUES (1000009, 6, 9, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[掛號資料$] ([病歷號碼], [科別代號], [看診編號], [門診日期], [醫師代號]) VALUES (1000010, 5, 10, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[掛號資料$] ([病歷號碼], [科別代號], [看診編號], [門診日期], [醫師代號]) VALUES (1000011, 7, 11, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[掛號資料$] ([病歷號碼], [科別代號], [看診編號], [門診日期], [醫師代號]) VALUES (1000012, 1, 12, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[掛號資料$] ([病歷號碼], [科別代號], [看診編號], [門診日期], [醫師代號]) VALUES (1000013, 6, 13, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[掛號資料$] ([病歷號碼], [科別代號], [看診編號], [門診日期], [醫師代號]) VALUES (1000014, 6, 14, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[掛號資料$] ([病歷號碼], [科別代號], [看診編號], [門診日期], [醫師代號]) VALUES (1000015, 5, 15, CAST(N'2020-10-14T00:00:00.000' AS DateTime), 7)
GO
INSERT [dbo].[醫師$] ([科別代號], [醫師名稱], [醫師職稱], [醫師代號]) VALUES (1, N'王大明', N'主治醫師', 1)
INSERT [dbo].[醫師$] ([科別代號], [醫師名稱], [醫師職稱], [醫師代號]) VALUES (1, N'陳小華', N'住院醫師', 2)
INSERT [dbo].[醫師$] ([科別代號], [醫師名稱], [醫師職稱], [醫師代號]) VALUES (1, N'黃伊芙', N'住院醫師', 3)
INSERT [dbo].[醫師$] ([科別代號], [醫師名稱], [醫師職稱], [醫師代號]) VALUES (2, N'陳新興', N'主治醫師', 4)
INSERT [dbo].[醫師$] ([科別代號], [醫師名稱], [醫師職稱], [醫師代號]) VALUES (3, N'吳美麗', N'主治醫師', 5)
INSERT [dbo].[醫師$] ([科別代號], [醫師名稱], [醫師職稱], [醫師代號]) VALUES (4, N'劉燕琨', N'主治醫師', 6)
INSERT [dbo].[醫師$] ([科別代號], [醫師名稱], [醫師職稱], [醫師代號]) VALUES (5, N'方曉慧', N'主治醫師', 7)
INSERT [dbo].[醫師$] ([科別代號], [醫師名稱], [醫師職稱], [醫師代號]) VALUES (6, N'鄭誠意', N'主治醫師', 8)
INSERT [dbo].[醫師$] ([科別代號], [醫師名稱], [醫師職稱], [醫師代號]) VALUES (7, N'謝雲生', N'主治醫師', 9)
INSERT [dbo].[醫師$] ([科別代號], [醫師名稱], [醫師職稱], [醫師代號]) VALUES (8, N'呂伊', N'主治醫師', 10)
INSERT [dbo].[醫師$] ([科別代號], [醫師名稱], [醫師職稱], [醫師代號]) VALUES (9, N'林柏與', N'主治醫師', 11)
GO
ALTER TABLE [dbo].[病毒2號]  WITH CHECK ADD  CONSTRAINT [FK_病毒2號_病歷索引檔] FOREIGN KEY([看診號])
REFERENCES [dbo].[病歷索引檔] ([看診號])
GO
ALTER TABLE [dbo].[病毒2號] CHECK CONSTRAINT [FK_病毒2號_病歷索引檔]
GO
ALTER TABLE [dbo].[病歷索引檔]  WITH CHECK ADD  CONSTRAINT [FK_病歷索引檔_員工基本檔] FOREIGN KEY([看診醫師員編])
REFERENCES [dbo].[員工基本檔] ([員工編號])
GO
ALTER TABLE [dbo].[病歷索引檔] CHECK CONSTRAINT [FK_病歷索引檔_員工基本檔]
GO
ALTER TABLE [dbo].[病歷索引檔]  WITH CHECK ADD  CONSTRAINT [FK_病歷索引檔_病人基本檔] FOREIGN KEY([病歷號])
REFERENCES [dbo].[病人基本檔] ([病歷號])
GO
ALTER TABLE [dbo].[病歷索引檔] CHECK CONSTRAINT [FK_病歷索引檔_病人基本檔]
GO
ALTER TABLE [dbo].[處方內容]  WITH CHECK ADD  CONSTRAINT [FK_處方內容_病歷索引檔] FOREIGN KEY([看診號])
REFERENCES [dbo].[病歷索引檔] ([看診號])
GO
ALTER TABLE [dbo].[處方內容] CHECK CONSTRAINT [FK_處方內容_病歷索引檔]
GO
ALTER TABLE [dbo].[處置項目]  WITH CHECK ADD  CONSTRAINT [FK_處置項目_病毒1號] FOREIGN KEY([部位])
REFERENCES [dbo].[病毒1號] ([部位])
GO
ALTER TABLE [dbo].[處置項目] CHECK CONSTRAINT [FK_處置項目_病毒1號]
GO
ALTER TABLE [dbo].[處置項目]  WITH CHECK ADD  CONSTRAINT [FK_處置項目_病歷索引檔] FOREIGN KEY([看診號])
REFERENCES [dbo].[病歷索引檔] ([看診號])
GO
ALTER TABLE [dbo].[處置項目] CHECK CONSTRAINT [FK_處置項目_病歷索引檔]
GO
USE [master]
GO
ALTER DATABASE [EMR] SET  READ_WRITE 
GO
