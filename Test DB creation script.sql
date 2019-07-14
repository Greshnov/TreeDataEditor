set language english;

USE [master]
GO
/****** Object:  Database [sales]    Script Date: 15.07.2019 2:12:11 ******/
CREATE DATABASE [sales] ON  PRIMARY 
( NAME = N'sales', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\sales.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sales_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\sales_log.LDF' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [sales] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sales].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sales] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sales] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sales] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sales] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sales] SET ARITHABORT OFF 
GO
ALTER DATABASE [sales] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sales] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sales] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sales] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sales] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sales] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sales] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sales] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sales] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sales] SET  ENABLE_BROKER 
GO
ALTER DATABASE [sales] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sales] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sales] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sales] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sales] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sales] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [sales] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sales] SET RECOVERY FULL 
GO
ALTER DATABASE [sales] SET  MULTI_USER 
GO
ALTER DATABASE [sales] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sales] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'sales', N'ON'
GO
USE [sales]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 15.07.2019 2:12:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConditionKinds]    Script Date: 15.07.2019 2:12:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConditionKinds](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Retro] [int] NULL,
	[RetroDistr] [int] NULL,
	[Rku] [int] NULL,
	[RkuDistr] [int] NULL,
	[Product_Id] [int] NULL,
 CONSTRAINT [PK_dbo.ConditionKinds] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contracts]    Script Date: 15.07.2019 2:12:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contracts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContractNumber] [int] NOT NULL,
	[Customer] [nvarchar](max) NULL,
	[CommercialNetwork] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Contracts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 15.07.2019 2:12:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Contract_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201907141540135_InitialCreate', N'TreeDataEditor.DataModels.DataBaseContext', 0x1F8B0800000000000400ED5A6D6FDB3610FE3E60FF41D0A76D48ADA4FDD205768BD64986A0CD0BE2B4D8B78091CE8E5089D2482AB331EC97EDC37ED2FEC28E7AA128EADD76B360280A1436CD7B78777CEEC8E3E59FBFFE9EBE5D8781F5088CFB119DD9479343DB02EA469E4F57333B11CB17AFEDB76FBEFF6E7AEA856BEB7331EF959C879294CFEC0721E263C7E1EE0384844F42DF65118F9662E246A143BCC8797978F8B37374E40042D8886559D39B840A3F84F40B7E9D47D485582424B8883C08783E8EBF2C5254EB9284C063E2C2CCBE650027449053CF17119BC88F99906DBD0B7C820A2D2058DA16A1341244A0BAC79F382C048BE86A11E300096E3731E0BC250938E4661C97D3875A74F8525AE4948205949B70118523018F5EE52E724CF1AD1C6D2B17A2134FD1D96223AD4E1D39B3D1DF821157D896B9D8F13C607262879F2785F481559D73A0F8813492FF0EAC79128884C18C428222C181759DDC07BEFB0136B7D117A0339A0481AE2A2A8BBF550670E89A453130B1B981656EC0B9675B4E55CE31059598269399764EC5AB97B675898B93FB00141334372CD01EF805283022C0BB264200A31203525FD65637D62A5C749984F7C0FAD6EDC14AB7A844412A6370DAD605597F04BA120F331B3FDAD699BF06AF18C9913F511F631985044BFA178A425CC6C500B904F17BC4BE7CF51517E8ED843FC5324C204FA158497EBEC5FC337A2F4EA9B71DCE2579F45729B50C44FCEA25AE4027DC40904EE00F7E9C2531156977E5AC3316853751A0714CFD78B78812E64AE5A2B619B784AD4054B59B3A657EE8CC1A39CA76492317FE96335AD792FFEF3F145A8987E4C01D907C6BA45EBE5F77FAB4927BF55F6BE46B98B213FB14CE079F7A5B1F5C25C437263E31138D456E00AF64864D03244E7C2ECC03B547EC4B32767EDF226DA47DC77984E7A7DC836ACED4C3A8BA389E28567F4C655BA1C5256E0892D38F918EA8C7CC3E9C4C8E6A86756217C1A8611B21565DE127D3059AB1DD3EA89F626D6A761C69152DF3CBEB2817B41F86FDDE1D6A7BC60AB912F131F872FB658E794F38C87158379D9F58A0E4E98BE7C1635A217117200C8F624E2E8958734FCD155590F24E51C3506EE881A810A645199D51069CE6C59A5A9583479BD87E3C9979775064298B747F38A3A00A1A6950A65FCC645F357C80531A2E82759FF4C4D9C048AB9A51D0ACC325ED8135C0B91DBE2892AC0AA7F255C0C99E058AE703A7E5FD607A41E2184F2FED3D211FB116D963C2FCC5627C791D66188ECB1BAA6CA5AD5A09CF62B202E357E9360FCE7CC6656142EE893C3FE75E589B66268F96802C5633F3437DDB8A082D24E4E74CAABFE237E14A879EA18D21DE2E5273A1814375D1F47587048435DC74E6519084B4EDB6D4256D56DE3A92F9DB0854558357F0D4E818FD6A457655C5DACFC3B18B725A072CC646A114D5B201540C0FC752F5B28EA406EB3853C7E093C95FA74660239D981131285E3A12E636E1521C9FE3A3A555F2EB044B76D1D7E5B39167B331C641BAB76CA65D4AB64A695DF2FFF556B521E405970E910F8DC4C8ABA31A503E3E024D5666151839304ABE491735FAF434AE5E661A934CE5623B229B54E4465152DED59A5F1D1B6EC475970D227301D8446AE934A5C056BAE517CA2D751BAD935AD93AE7F299453D700CB3D8BCD38E664AC36D7FCC2D4D131B78BE34EC426B81B0E52628BC3D30A4B5E2785604E9B0B89F21B5E2C79CA232992A828C62679A171EFD1DD55A25924DB12D34FFD1F76415B2D87001614AB6C9E2B7601EF8983BCB091784FA4BE0227B16B5B1507A6D74639F4F67D4E1DC0B06B6479FFC6DD7975EED7DBD1DDB406C6C46A64BEDD88AA48F84B90F84FD1092F58F3ADA4EEDC69D50AB2DC55DA1AA6D430F3F8B3DB40D07E28C6ECCFD3FE8AA771F762498968035856BCFAFE7D483F5CCFE23953BB6CE7FBDD3440FAC2B8629EED83AB4FEECD660CB56D6B75D6BEF0B19496AB07CA581B30D48D933DA4E7A5705F4DBE538EA9692BB33771FFDAC3D74AF8C2EC2961D2B84C4080226094E0294C41DC2AB55AD04BC663E75FD9804861DF5CBE590C094CE5588E62F2710039511D768E89005BBEB2E856FE48A3E3F7CD5E6DE3E9A7923B8B52716743C81EF9D066318D75357ED9D01CD2DCE7A33A3B771986F7B47FF322B43F0BA742FCF832C77B5B6A4DADA9B5DDDCDA6055A1B559DBDCFFED6678B315D6DC2276E8F36F5EBFA1A7F750F343C473DE3F66763BB7348037888B3F6D3DBAC97F118BDDA9F4F63F6E0FEAA84908F1314DC4ADCAA39E774191539C4D0A898625C442E4010AC57C83B26FC253A077F7681F3F46F823E932091D50D9695DE39BD4A449C083419C2FBA0F23746320D75AD9F3670AB3A4FAFE294B6FB3001D5F465C97545DF277EE029BDCF1A4AAE160899DFF2CBB2DC4B212FCDAB8D42BA8CE840A0DC7D2A2DDF42180708C6AFE8823CC236BA7DE2F01156C4DD14AF31ED20FD1B5175FBF4C4272B46429E6394F2F81539EC85EB37FF027DF34C1645300000, N'6.2.0-61023')
SET IDENTITY_INSERT [dbo].[ConditionKinds] ON 

INSERT [dbo].[ConditionKinds] ([Id], [Name], [Retro], [RetroDistr], [Rku], [RkuDistr], [Product_Id]) VALUES (1, N'Объем', 10, 12, 5, 7, 1)
INSERT [dbo].[ConditionKinds] ([Id], [Name], [Retro], [RetroDistr], [Rku], [RkuDistr], [Product_Id]) VALUES (2, N'Передача данных', 9, 11, 5, 7, 1)
INSERT [dbo].[ConditionKinds] ([Id], [Name], [Retro], [RetroDistr], [Rku], [RkuDistr], [Product_Id]) VALUES (4, N'Объем', 20, 30, 40, 10, 3)
INSERT [dbo].[ConditionKinds] ([Id], [Name], [Retro], [RetroDistr], [Rku], [RkuDistr], [Product_Id]) VALUES (5, N'Передача данных', 19, 30, 38, 10, 3)
INSERT [dbo].[ConditionKinds] ([Id], [Name], [Retro], [RetroDistr], [Rku], [RkuDistr], [Product_Id]) VALUES (6, N'Объем', 10, 15, 5, 6, 4)
INSERT [dbo].[ConditionKinds] ([Id], [Name], [Retro], [RetroDistr], [Rku], [RkuDistr], [Product_Id]) VALUES (7, N'Передача данных', 10, 15, 5, 6, 4)
INSERT [dbo].[ConditionKinds] ([Id], [Name], [Retro], [RetroDistr], [Rku], [RkuDistr], [Product_Id]) VALUES (8, N'Объем', 100, 150, 50, 60, 5)
INSERT [dbo].[ConditionKinds] ([Id], [Name], [Retro], [RetroDistr], [Rku], [RkuDistr], [Product_Id]) VALUES (9, N'Передача данных', 100, 150, 50, 60, 5)
INSERT [dbo].[ConditionKinds] ([Id], [Name], [Retro], [RetroDistr], [Rku], [RkuDistr], [Product_Id]) VALUES (10, N'Объем', 5, 10, 3, 9, 6)
INSERT [dbo].[ConditionKinds] ([Id], [Name], [Retro], [RetroDistr], [Rku], [RkuDistr], [Product_Id]) VALUES (11, N'Передача данных', 2, 7, 3, 9, 6)
INSERT [dbo].[ConditionKinds] ([Id], [Name], [Retro], [RetroDistr], [Rku], [RkuDistr], [Product_Id]) VALUES (12, N'Объем', 11, 22, 33, 44, 7)
INSERT [dbo].[ConditionKinds] ([Id], [Name], [Retro], [RetroDistr], [Rku], [RkuDistr], [Product_Id]) VALUES (13, N'Передача данных', 12, 20, 30, 44, 7)
INSERT [dbo].[ConditionKinds] ([Id], [Name], [Retro], [RetroDistr], [Rku], [RkuDistr], [Product_Id]) VALUES (14, N'Объем', 99, 80, 70, 77, 8)
INSERT [dbo].[ConditionKinds] ([Id], [Name], [Retro], [RetroDistr], [Rku], [RkuDistr], [Product_Id]) VALUES (15, N'Передача данных', 60, 50, 70, 40, 8)
INSERT [dbo].[ConditionKinds] ([Id], [Name], [Retro], [RetroDistr], [Rku], [RkuDistr], [Product_Id]) VALUES (16, N'Объем', 22, 33, 44, 55, 9)
SET IDENTITY_INSERT [dbo].[ConditionKinds] OFF
SET IDENTITY_INSERT [dbo].[Contracts] ON 

INSERT [dbo].[Contracts] ([Id], [ContractNumber], [Customer], [CommercialNetwork], [Status], [StartDate], [EndDate]) VALUES (1, 111, N'Тестовый', N'Сеть', N'Согласован', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(N'2018-12-31 00:00:00.000' AS DateTime))
INSERT [dbo].[Contracts] ([Id], [ContractNumber], [Customer], [CommercialNetwork], [Status], [StartDate], [EndDate]) VALUES (4, 102000, N'604579 - ИП Гапеев', N'Ромашка', N'Согласовано', CAST(N'2019-01-01 00:00:00.000' AS DateTime), CAST(N'2019-12-31 00:00:00.000' AS DateTime))
INSERT [dbo].[Contracts] ([Id], [ContractNumber], [Customer], [CommercialNetwork], [Status], [StartDate], [EndDate]) VALUES (5, 102000, N'604588 - ИП Ласточки', N'Лютик', N'Согласовано частично', CAST(N'2020-01-01 00:00:00.000' AS DateTime), CAST(N'2022-12-31 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Contracts] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Contract_Id]) VALUES (1, N'Продукт 1', 1)
INSERT [dbo].[Products] ([Id], [Name], [Contract_Id]) VALUES (3, N'Продукт 2', 1)
INSERT [dbo].[Products] ([Id], [Name], [Contract_Id]) VALUES (4, N'EPICA 130г.', 4)
INSERT [dbo].[Products] ([Id], [Name], [Contract_Id]) VALUES (5, N'ALL', 4)
INSERT [dbo].[Products] ([Id], [Name], [Contract_Id]) VALUES (6, N'Гранд десерт', 4)
INSERT [dbo].[Products] ([Id], [Name], [Contract_Id]) VALUES (7, N'EPICA 130г.', 5)
INSERT [dbo].[Products] ([Id], [Name], [Contract_Id]) VALUES (8, N'ALL', 5)
INSERT [dbo].[Products] ([Id], [Name], [Contract_Id]) VALUES (9, N'Гранд десерт', 5)
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Index [IX_Product_Id]    Script Date: 15.07.2019 2:12:11 ******/
CREATE NONCLUSTERED INDEX [IX_Product_Id] ON [dbo].[ConditionKinds]
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Contract_Id]    Script Date: 15.07.2019 2:12:11 ******/
CREATE NONCLUSTERED INDEX [IX_Contract_Id] ON [dbo].[Products]
(
	[Contract_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ConditionKinds]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConditionKinds_dbo.Products_Product_Id] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ConditionKinds] CHECK CONSTRAINT [FK_dbo.ConditionKinds_dbo.Products_Product_Id]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Contracts_Contract_Id] FOREIGN KEY([Contract_Id])
REFERENCES [dbo].[Contracts] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Contracts_Contract_Id]
GO
USE [master]
GO
ALTER DATABASE [sales] SET  READ_WRITE 
GO
