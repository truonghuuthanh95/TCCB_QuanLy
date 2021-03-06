USE [master]
GO
/****** Object:  Database [tccb_v2]    Script Date: 7/29/2018 11:35:24 PM ******/
CREATE DATABASE [tccb_v2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tccb_v2', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\tccb_v2.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'tccb_v2_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\tccb_v2_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [tccb_v2] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tccb_v2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tccb_v2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tccb_v2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tccb_v2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tccb_v2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tccb_v2] SET ARITHABORT OFF 
GO
ALTER DATABASE [tccb_v2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tccb_v2] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [tccb_v2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tccb_v2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tccb_v2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tccb_v2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tccb_v2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tccb_v2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tccb_v2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tccb_v2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tccb_v2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tccb_v2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tccb_v2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tccb_v2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tccb_v2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tccb_v2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tccb_v2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tccb_v2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tccb_v2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [tccb_v2] SET  MULTI_USER 
GO
ALTER DATABASE [tccb_v2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tccb_v2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tccb_v2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tccb_v2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [tccb_v2]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [varchar](50) NULL,
	[RoleId] [int] NULL,
	[IsActive] [bit] NULL,
	[ManagementUnitId] [int] NULL,
	[Code] [nvarchar](5) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
	[DOB] [date] NULL,
	[LastedLogin] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BangTotNghiep]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangTotNghiep](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Graduation_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CapTruong]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapTruong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[Notation] [nvarchar](10) NULL,
 CONSTRAINT [PK_SchoolDegree] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChuyenNganhDaoTao]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenNganhDaoTao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Education_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[District]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Type] [nvarchar](50) NULL,
	[LatiLongTude] [nvarchar](50) NULL,
	[ProvinceId] [int] NOT NULL,
	[SortOrder] [int] NULL,
	[IsPublished] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DVQL]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DVQL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[Code] [nvarchar](50) NULL,
	[Address] [nvarchar](200) NULL,
	[FullName] [nvarchar](200) NULL,
 CONSTRAINT [PK_ManagementUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HinhThucDaoTao]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhThucDaoTao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Trainning_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [int] NULL,
	[ManagementUnitId] [int] NULL,
	[CollectContent] [nvarchar](200) NULL,
	[ValueByWord] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[DateComeToCheck] [date] NULL,
 CONSTRAINT [PK_PriceRegistration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LamViecTrongNganh]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LamViecTrongNganh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_StatusWorikingInEducation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonDuTuyen]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonDuTuyen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Code] [char](10) NULL,
	[IsActive] [bit] NULL,
	[PositionInterviewId] [int] NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonDuTuyenTheoCapHoc]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonDuTuyenTheoCapHoc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SchoolDegreeId] [int] NULL,
	[SubjectId] [int] NULL,
	[ManagementUnitId] [int] NULL,
 CONSTRAINT [PK_SubjectRequiredSchoolDegree] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NgayHetHanSuaThongTin]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgayHetHanSuaThongTin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DVQLId] [int] NULL,
	[NgayHetHan] [datetime] NULL,
 CONSTRAINT [PK_NgayHetHanSuaThongTin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguyenVongTruongTheoDVQL]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenVongTruongTheoDVQL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ManagementUnitId] [int] NULL,
	[CapTruongId] [int] NULL,
	[TruongId] [int] NULL,
 CONSTRAINT [PK_NVSchoolRequiredManagementUnitAndSchoolDegree] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Province]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Type] [nvarchar](20) NULL,
	[TelephoneCode] [int] NULL,
	[ZipCode] [nvarchar](20) NULL,
	[CountryId] [int] NOT NULL,
	[CountryCode] [nvarchar](2) NULL,
	[SortOrder] [int] NULL,
	[IsPublished] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RegistrationInterview]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrationInterview](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[DateInterview] [datetime] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
	[IdentifyCard] [nvarchar](15) NULL,
	[DOB] [date] NULL,
	[PhoneNumber] [nvarchar](12) NULL,
	[CreatedAtDVQL] [int] NULL,
	[NV01Quan] [int] NULL,
	[NV02Quan] [int] NULL,
	[NV03Quan] [int] NULL,
	[IsPass] [bit] NULL,
	[Email] [nvarchar](100) NULL,
	[MonDuTuyenId] [int] NULL,
	[TrinhDoNgoaiNguId] [int] NULL,
	[TrinhDoTinHocId] [int] NULL,
	[IsMale] [bit] NULL,
	[XepLoaiHocLucId] [int] NULL,
	[NamTotNghiep] [smallint] NULL,
	[NguoiTaoHoaDon] [int] NULL,
	[CapTruongDayId] [int] NULL,
	[TienHoaDon] [int] NULL,
	[ChuyenNganhDaoTaoId] [int] NULL,
	[IsNienChe] [bit] NULL,
	[GPA] [float] NULL,
	[CaptionProjectPoint] [float] NULL,
	[HinhThucDaoTaoId] [int] NULL,
	[TrinhDaoCaoNhatId] [int] NULL,
	[NguoiRaSoat] [int] NULL,
	[DaiHocDiaDiem] [int] NULL,
	[TenTruongDaiHoc] [nvarchar](200) NULL,
	[GraduationClassficationId] [int] NULL,
	[IsHadNghiepVuSupham] [bit] NULL,
	[LamViecTrongNganh] [int] NULL,
	[NamVaoNghanh] [nvarchar](50) NULL,
	[MaNgach] [nvarchar](50) NULL,
	[HeSoLuong] [nvarchar](50) NULL,
	[MocNangLuongLansau] [nvarchar](50) NULL,
	[NOHNWardId] [int] NULL,
	[NOHNSoNhaTenDuong] [nvarchar](200) NULL,
	[HKTTWardId] [int] NULL,
	[HKTTSoNhaTenDuong] [nvarchar](200) NULL,
	[NV01Truong] [int] NULL,
	[NV02Truong] [int] NULL,
	[NV03Truong] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Registration_Interview] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinLienHe]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinLienHe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](80) NULL,
	[Position] [nvarchar](200) NULL,
	[Email] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](12) NULL,
	[ManagementUnitId] [int] NULL,
	[Priority] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK_ContactInfomation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrinhDoCaoNhat]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoCaoNhat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HighestLevelEducation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrinhDoNgoaiNgu]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoNgoaiNgu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](70) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_ForeignLanguageCertification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrinhDoTinHoc]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoTinHoc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_InfomationTechnologyDegree] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Truong]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Truong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[DistrictId] [int] NULL,
	[Address] [nvarchar](100) NULL,
	[SchoolType] [int] NULL,
	[ProvinceId] [int] NULL,
	[SchoolCode] [nvarchar](50) NULL,
	[SchoolDegreeId] [int] NULL,
 CONSTRAINT [PK_School] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ViTriUngTuyen]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViTriUngTuyen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[IsActive] [nchar](10) NULL,
 CONSTRAINT [PK_PositionInterview] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ward]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ward](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[LatiLongTude] [nvarchar](50) NULL,
	[DistrictID] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[IsPublished] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Ward] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[XepLoaiHocLuc]    Script Date: 7/29/2018 11:35:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XepLoaiHocLuc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_DegreeClassfication] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[RegistrationInterview] ADD  CONSTRAINT [DF_RegistrationInterview_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Ward] ADD  CONSTRAINT [DF_Ward_SortOrder]  DEFAULT ((1)) FOR [SortOrder]
GO
ALTER TABLE [dbo].[Ward] ADD  CONSTRAINT [DF_Ward_IsPublished]  DEFAULT ((1)) FOR [IsPublished]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_ManagementUnit] FOREIGN KEY([ManagementUnitId])
REFERENCES [dbo].[DVQL] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_ManagementUnit]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_Province] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Province] ([Id])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_Province]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_PriceRegistration_ManagementUnit] FOREIGN KEY([ManagementUnitId])
REFERENCES [dbo].[DVQL] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_PriceRegistration_ManagementUnit]
GO
ALTER TABLE [dbo].[MonDuTuyen]  WITH CHECK ADD  CONSTRAINT [FK_Subject_PositionInterview] FOREIGN KEY([PositionInterviewId])
REFERENCES [dbo].[ViTriUngTuyen] ([Id])
GO
ALTER TABLE [dbo].[MonDuTuyen] CHECK CONSTRAINT [FK_Subject_PositionInterview]
GO
ALTER TABLE [dbo].[MonDuTuyenTheoCapHoc]  WITH CHECK ADD  CONSTRAINT [FK_SubjectRequiredSchoolDegree_SchoolDegree] FOREIGN KEY([SchoolDegreeId])
REFERENCES [dbo].[CapTruong] ([Id])
GO
ALTER TABLE [dbo].[MonDuTuyenTheoCapHoc] CHECK CONSTRAINT [FK_SubjectRequiredSchoolDegree_SchoolDegree]
GO
ALTER TABLE [dbo].[MonDuTuyenTheoCapHoc]  WITH CHECK ADD  CONSTRAINT [FK_SubjectRequiredSchoolDegree_Subject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[MonDuTuyen] ([Id])
GO
ALTER TABLE [dbo].[MonDuTuyenTheoCapHoc] CHECK CONSTRAINT [FK_SubjectRequiredSchoolDegree_Subject]
GO
ALTER TABLE [dbo].[MonDuTuyenTheoCapHoc]  WITH CHECK ADD  CONSTRAINT [FK_SubjectRequiredSchoolDegreeAndManagementUnit_ManagementUnit] FOREIGN KEY([ManagementUnitId])
REFERENCES [dbo].[DVQL] ([Id])
GO
ALTER TABLE [dbo].[MonDuTuyenTheoCapHoc] CHECK CONSTRAINT [FK_SubjectRequiredSchoolDegreeAndManagementUnit_ManagementUnit]
GO
ALTER TABLE [dbo].[NgayHetHanSuaThongTin]  WITH CHECK ADD  CONSTRAINT [FK_NgayHetHanSuaThongTin_DVQL] FOREIGN KEY([DVQLId])
REFERENCES [dbo].[DVQL] ([Id])
GO
ALTER TABLE [dbo].[NgayHetHanSuaThongTin] CHECK CONSTRAINT [FK_NgayHetHanSuaThongTin_DVQL]
GO
ALTER TABLE [dbo].[NguyenVongTruongTheoDVQL]  WITH CHECK ADD  CONSTRAINT [FK_NVSchoolRequiredManagementUnitAndSchoolDegree_ManagementUnit] FOREIGN KEY([ManagementUnitId])
REFERENCES [dbo].[DVQL] ([Id])
GO
ALTER TABLE [dbo].[NguyenVongTruongTheoDVQL] CHECK CONSTRAINT [FK_NVSchoolRequiredManagementUnitAndSchoolDegree_ManagementUnit]
GO
ALTER TABLE [dbo].[NguyenVongTruongTheoDVQL]  WITH CHECK ADD  CONSTRAINT [FK_NVSchoolRequiredManagementUnitAndSchoolDegree_SchoolDegree] FOREIGN KEY([CapTruongId])
REFERENCES [dbo].[CapTruong] ([Id])
GO
ALTER TABLE [dbo].[NguyenVongTruongTheoDVQL] CHECK CONSTRAINT [FK_NVSchoolRequiredManagementUnitAndSchoolDegree_SchoolDegree]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_Account] FOREIGN KEY([NguoiTaoHoaDon])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_Account]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_Account1] FOREIGN KEY([NguoiRaSoat])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_Account1]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_DegreeClassification] FOREIGN KEY([XepLoaiHocLucId])
REFERENCES [dbo].[XepLoaiHocLuc] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_DegreeClassification]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_District] FOREIGN KEY([NV01Quan])
REFERENCES [dbo].[District] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_District]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_District1] FOREIGN KEY([NV02Quan])
REFERENCES [dbo].[District] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_District1]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_District2] FOREIGN KEY([NV03Quan])
REFERENCES [dbo].[District] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_District2]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_ForeignLanguageCertification] FOREIGN KEY([TrinhDoNgoaiNguId])
REFERENCES [dbo].[TrinhDoNgoaiNgu] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_ForeignLanguageCertification]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_GraduationClassfication] FOREIGN KEY([GraduationClassficationId])
REFERENCES [dbo].[BangTotNghiep] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_GraduationClassfication]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_HighestLevelEducation] FOREIGN KEY([TrinhDaoCaoNhatId])
REFERENCES [dbo].[TrinhDoCaoNhat] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_HighestLevelEducation]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_InfomationTechnologyDegree] FOREIGN KEY([TrinhDoTinHocId])
REFERENCES [dbo].[TrinhDoTinHoc] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_InfomationTechnologyDegree]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_ManagementUnit] FOREIGN KEY([CreatedAtDVQL])
REFERENCES [dbo].[DVQL] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_ManagementUnit]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_Province] FOREIGN KEY([DaiHocDiaDiem])
REFERENCES [dbo].[Province] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_Province]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_SchoolDegree] FOREIGN KEY([CapTruongDayId])
REFERENCES [dbo].[CapTruong] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_SchoolDegree]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_SpecializedTraining] FOREIGN KEY([ChuyenNganhDaoTaoId])
REFERENCES [dbo].[ChuyenNganhDaoTao] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_SpecializedTraining]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_StatusWorikingInEducation] FOREIGN KEY([LamViecTrongNganh])
REFERENCES [dbo].[LamViecTrongNganh] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_StatusWorikingInEducation]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_Subject] FOREIGN KEY([MonDuTuyenId])
REFERENCES [dbo].[MonDuTuyen] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_Subject]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_TrainningCategory] FOREIGN KEY([HinhThucDaoTaoId])
REFERENCES [dbo].[HinhThucDaoTao] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_TrainningCategory]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_Ward] FOREIGN KEY([NOHNWardId])
REFERENCES [dbo].[Ward] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_Ward]
GO
ALTER TABLE [dbo].[RegistrationInterview]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationInterview_Ward1] FOREIGN KEY([HKTTWardId])
REFERENCES [dbo].[Ward] ([Id])
GO
ALTER TABLE [dbo].[RegistrationInterview] CHECK CONSTRAINT [FK_RegistrationInterview_Ward1]
GO
ALTER TABLE [dbo].[ThongTinLienHe]  WITH CHECK ADD  CONSTRAINT [FK_ContactInfomation_ManagementUnit] FOREIGN KEY([ManagementUnitId])
REFERENCES [dbo].[DVQL] ([Id])
GO
ALTER TABLE [dbo].[ThongTinLienHe] CHECK CONSTRAINT [FK_ContactInfomation_ManagementUnit]
GO
ALTER TABLE [dbo].[Truong]  WITH CHECK ADD  CONSTRAINT [FK_School_District] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([Id])
GO
ALTER TABLE [dbo].[Truong] CHECK CONSTRAINT [FK_School_District]
GO
ALTER TABLE [dbo].[Truong]  WITH CHECK ADD  CONSTRAINT [FK_School_SchoolDegree] FOREIGN KEY([SchoolDegreeId])
REFERENCES [dbo].[CapTruong] ([Id])
GO
ALTER TABLE [dbo].[Truong] CHECK CONSTRAINT [FK_School_SchoolDegree]
GO
ALTER TABLE [dbo].[Ward]  WITH CHECK ADD  CONSTRAINT [FK_Ward_District] FOREIGN KEY([DistrictID])
REFERENCES [dbo].[District] ([Id])
GO
ALTER TABLE [dbo].[Ward] CHECK CONSTRAINT [FK_Ward_District]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kinh độ, vĩ độ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'District', @level2type=N'COLUMN',@level2name=N'LatiLongTude'
GO
USE [master]
GO
ALTER DATABASE [tccb_v2] SET  READ_WRITE 
GO
