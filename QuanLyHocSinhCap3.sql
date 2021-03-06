USE [master]
GO
/****** Object:  Database [DataHocSinh]    Script Date: 06/09/2018 22:05:37 ******/
CREATE DATABASE [DataHocSinh] ON  PRIMARY 
( NAME = N'DataHocSinh', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DataHocSinh.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DataHocSinh_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DataHocSinh_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DataHocSinh] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DataHocSinh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DataHocSinh] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DataHocSinh] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DataHocSinh] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DataHocSinh] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DataHocSinh] SET ARITHABORT OFF
GO
ALTER DATABASE [DataHocSinh] SET AUTO_CLOSE ON
GO
ALTER DATABASE [DataHocSinh] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DataHocSinh] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DataHocSinh] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DataHocSinh] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DataHocSinh] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DataHocSinh] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DataHocSinh] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DataHocSinh] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DataHocSinh] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DataHocSinh] SET  ENABLE_BROKER
GO
ALTER DATABASE [DataHocSinh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DataHocSinh] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DataHocSinh] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DataHocSinh] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DataHocSinh] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DataHocSinh] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DataHocSinh] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DataHocSinh] SET  READ_WRITE
GO
ALTER DATABASE [DataHocSinh] SET RECOVERY SIMPLE
GO
ALTER DATABASE [DataHocSinh] SET  MULTI_USER
GO
ALTER DATABASE [DataHocSinh] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DataHocSinh] SET DB_CHAINING OFF
GO
USE [DataHocSinh]
GO
/****** Object:  Table [dbo].[KHOIHOC]    Script Date: 06/09/2018 22:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOIHOC](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KHOIHOC] ON
INSERT [dbo].[KHOIHOC] ([MaKH], [TenKH]) VALUES (1, N'Khối 10')
INSERT [dbo].[KHOIHOC] ([MaKH], [TenKH]) VALUES (2, N'Khối 11')
INSERT [dbo].[KHOIHOC] ([MaKH], [TenKH]) VALUES (3, N'Khối 12')
SET IDENTITY_INSERT [dbo].[KHOIHOC] OFF
/****** Object:  Table [dbo].[HOCSINH]    Script Date: 06/09/2018 22:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCSINH](
	[MaHS] [int] NOT NULL,
	[TenHS] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (150000, N'Hồ Lê Anh Thư', 0, CAST(0xFE230B00 AS Date), N'G8')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (150001, N'Nguyễn Ngô Anh Thư', 0, CAST(0xF4230B00 AS Date), N'G8')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (150002, N'Võ Minh Thư', 0, CAST(0x01240B00 AS Date), N'G8')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (150003, N'Nguyễn Ngọc Trân', 0, CAST(0xF3230B00 AS Date), N'G8')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (150004, N'Nguyễn Minh Triều', 1, CAST(0xFE230B00 AS Date), N'G8')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (150005, N'Nguyễn Thị Kim Uyên', 0, CAST(0xEC230B00 AS Date), N'G8')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (150006, N'Hồ Thị Thủy Vân', 0, CAST(0xF8230B00 AS Date), N'G8')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (150007, N'Lê Trần Quý', 1, CAST(0xFB230B00 AS Date), N'G8')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (150008, N'Ngô Quyền', 1, CAST(0xF2230B00 AS Date), N'G8')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (150009, N'Lê Minh Trí', 1, CAST(0xEA230B00 AS Date), N'G8')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (160000, N'Nguyễn Minh Đồng', 1, CAST(0xCA240B00 AS Date), N'Lâm Đồng')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (160001, N'Ngô Văn Việt Anh', 1, CAST(0x8F240B00 AS Date), N'Lâm Đồng')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (160002, N'Nguyễn Chí Cường', 1, CAST(0x26240B00 AS Date), N'Lâm Đồng')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (160003, N'Nguyễn Tấn Đức', 1, CAST(0x8A240B00 AS Date), N'Lâm Đồng')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (160004, N'Nguyễn Tấn Đạt', 1, CAST(0x8A240B00 AS Date), N'Lâm Đồng')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (160005, N'Đinh Văn Tuấn Hải', 1, CAST(0x07240B00 AS Date), N'Đăk Lăk')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (160006, N'Huỳnh Phạm Hải Đăng', 0, CAST(0x8F240B00 AS Date), N'Lâm Đồng')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (160007, N'Phạm Thị Oanh', 0, CAST(0x0A250B00 AS Date), N'Lâm Đồng')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (160008, N'Phạm Nhật Huy', 1, CAST(0xEB240B00 AS Date), N'Lâm Đồng')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (160009, N'Nguyễn Tấn Đạt', 1, CAST(0x11240B00 AS Date), N'Lâm Đồng')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (170000, N'Phạm Văn Hậu', 1, CAST(0x77250B00 AS Date), N'G9')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (170001, N'Bùi Xuân Hiếu', 1, CAST(0x7D250B00 AS Date), N'G9')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (170002, N'Lâm Khả Hân', 0, CAST(0x85250B00 AS Date), N'G9')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (170003, N'Huỳnh Phạm Hải Đăng', 0, CAST(0x1C260B00 AS Date), N'G9')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (170004, N'Hoàng Trung Hiếu', 1, CAST(0x16260B00 AS Date), N'G9')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (170005, N'Dương Văn Minh Hiếu', 1, CAST(0x20260B00 AS Date), N'G9')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (170006, N'Trần Thị Thanh Hằng', 0, CAST(0x32260B00 AS Date), N'G9')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (170007, N'Trần Gia Huy', 1, CAST(0x34260B00 AS Date), N'G9')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (170008, N'Vũ Thế Huy', 1, CAST(0x71260B00 AS Date), N'G9')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (170009, N'Trần Quang Huy', 1, CAST(0x7C260B00 AS Date), N'G9')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (180000, N'Nguyễn Thế Phong', 1, CAST(0x9E3E0B00 AS Date), N'G10')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (180001, N'Lệ Thị Ngọc Nữ', 0, CAST(0x973E0B00 AS Date), N'G10')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (180002, N'Trần Tiến Phát', 1, CAST(0x9C3E0B00 AS Date), N'G10')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (180003, N'Hoàng Thanh Phúc', 1, CAST(0xA63E0B00 AS Date), N'G10')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (180004, N'Đoàn Thị Như Oanh', 0, CAST(0x9D3E0B00 AS Date), N'G10')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (180005, N'Nguyễn Thị Mỹ Oanh', 0, CAST(0xA43E0B00 AS Date), N'G10')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (180006, N'Trịnh Thị Hoàng Oanh', 0, CAST(0xA13E0B00 AS Date), N'G10')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (180007, N'Long Thị Quý', 0, CAST(0xA33E0B00 AS Date), N'G10')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (180008, N'Lương Kim Quỳnh', 0, CAST(0xA53E0B00 AS Date), N'G10')
INSERT [dbo].[HOCSINH] ([MaHS], [TenHS], [GioiTinh], [NgaySinh], [DiaChi]) VALUES (180009, N'Nguyễn Thị Như Quỳnh', 0, CAST(0x953E0B00 AS Date), N'G10')
/****** Object:  Table [dbo].[HOCKY]    Script Date: 06/09/2018 22:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCKY](
	[MaHK] [int] IDENTITY(1,1) NOT NULL,
	[TenHK] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HOCKY] ON
INSERT [dbo].[HOCKY] ([MaHK], [TenHK]) VALUES (1, N'Học Kì I')
INSERT [dbo].[HOCKY] ([MaHK], [TenHK]) VALUES (2, N'Học Kì II')
SET IDENTITY_INSERT [dbo].[HOCKY] OFF
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 06/09/2018 22:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MaGV] [int] IDENTITY(20000,1) NOT NULL,
	[TenGV] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[CMND] [varchar](10) NULL,
	[SDT] [varchar](20) NULL,
	[DiaChi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[GIAOVIEN] ON
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [CMND], [SDT], [DiaChi]) VALUES (20000, N'Hoàng Lệ Phương', 0, CAST(0x7E070B00 AS Date), N'123456789', N'0988776677', N'Ea Phê')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [CMND], [SDT], [DiaChi]) VALUES (20001, N'Nguyễn Thị Hà', 0, CAST(0x7E070B00 AS Date), N'123456789', N'098875577', N'Ea Phê')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [CMND], [SDT], [DiaChi]) VALUES (20002, N'Nguyễn Tuấn Nhung', 1, CAST(0x7E070B00 AS Date), N'123456789', N'0988776633', N'Ea Phê')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [CMND], [SDT], [DiaChi]) VALUES (20003, N'Nguyễn Thị Phương', 0, CAST(0x7E070B00 AS Date), N'123456789', N'01688776633', N'Ea Phê')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [CMND], [SDT], [DiaChi]) VALUES (20004, N'Triệu Vy Hùng', 1, CAST(0x7E070B00 AS Date), N'123456789', N'0988776621', N'Ea Phê')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [CMND], [SDT], [DiaChi]) VALUES (20005, N'Nguyễn Thị Lệ Uyên', 0, CAST(0x7E070B00 AS Date), N'123456789', N'0988776777', N'Ea Phê')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [CMND], [SDT], [DiaChi]) VALUES (20006, N'Phương Thị Dung', 0, CAST(0x7E070B00 AS Date), N'123456789', N'01668776621', N'Ea Phê')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [CMND], [SDT], [DiaChi]) VALUES (20007, N'Nguyễn Thị Dung', 0, CAST(0x7E070B00 AS Date), N'123456789', N'01668776444', N'Ea Phê')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [CMND], [SDT], [DiaChi]) VALUES (20008, N'Nguyễn Ngọc Ánh', 1, CAST(0x7E070B00 AS Date), N'123456789', N'01668776621', N'Ea Phê')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [CMND], [SDT], [DiaChi]) VALUES (20009, N'Lê Cường', 1, CAST(0x7E070B00 AS Date), N'123456789', N'09968776621', N'Ea Phê')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [CMND], [SDT], [DiaChi]) VALUES (20010, N'Bá Cao Ánh', 1, CAST(0x7E070B00 AS Date), N'123456789', N'01666776621', N'Ea Phê')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [CMND], [SDT], [DiaChi]) VALUES (20011, N'Song Cường Toàn', 1, CAST(0x7E070B00 AS Date), N'123456789', N'01681236621', N'Ea Phê')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [CMND], [SDT], [DiaChi]) VALUES (20012, N'Bá Cao Vũ', 1, CAST(0x7E070B00 AS Date), N'123456789', N'01666776335', N'Ea Phê')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [GioiTinh], [NgaySinh], [CMND], [SDT], [DiaChi]) VALUES (20014, N'xxx', 1, CAST(0x443E0B00 AS Date), N'ssss', N'ssss', N'ssss')
SET IDENTITY_INSERT [dbo].[GIAOVIEN] OFF
/****** Object:  Table [dbo].[DangNhap]    Script Date: 06/09/2018 22:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DangNhap](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[SDT] [varchar](20) NULL,
	[LoaiDN] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DangNhap] ON
INSERT [dbo].[DangNhap] ([STT], [TaiKhoan], [MatKhau], [HoTen], [SDT], [LoaiDN]) VALUES (1, N'admin1', N'admin1', N'Đinh Văn Tuấn hải', N'0981864335', N'Admin')
INSERT [dbo].[DangNhap] ([STT], [TaiKhoan], [MatKhau], [HoTen], [SDT], [LoaiDN]) VALUES (2, N'admin2', N'admin2', N'Nguyễn Minh Đồng', N'123456789', N'Admin')
INSERT [dbo].[DangNhap] ([STT], [TaiKhoan], [MatKhau], [HoTen], [SDT], [LoaiDN]) VALUES (3, N'employee1', N'employee1', N'nguyễn văn aa', N'123456789', N'Employee')
INSERT [dbo].[DangNhap] ([STT], [TaiKhoan], [MatKhau], [HoTen], [SDT], [LoaiDN]) VALUES (4, N'viewer1', N'viewer1', N'nguyễn văn bb', N'123456789', N'Viewer')
INSERT [dbo].[DangNhap] ([STT], [TaiKhoan], [MatKhau], [HoTen], [SDT], [LoaiDN]) VALUES (6, N'23423', N'234234', N'234', N'111111', N'Viewer')
INSERT [dbo].[DangNhap] ([STT], [TaiKhoan], [MatKhau], [HoTen], [SDT], [LoaiDN]) VALUES (7, N'aaaa', N'bbbbbb', N'ddd', N'23131', N'Employee')
SET IDENTITY_INSERT [dbo].[DangNhap] OFF
/****** Object:  Table [dbo].[NAMHOC]    Script Date: 06/09/2018 22:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NAMHOC](
	[MaNH] [int] IDENTITY(1,1) NOT NULL,
	[TenNH] [nvarchar](50) NULL,
	[NamBatDau] [int] NULL,
	[NamKetThuc] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NAMHOC] ON
INSERT [dbo].[NAMHOC] ([MaNH], [TenNH], [NamBatDau], [NamKetThuc]) VALUES (1, N'2015-2016', 2015, 2016)
INSERT [dbo].[NAMHOC] ([MaNH], [TenNH], [NamBatDau], [NamKetThuc]) VALUES (2, N'2016-2017', 2016, 2017)
INSERT [dbo].[NAMHOC] ([MaNH], [TenNH], [NamBatDau], [NamKetThuc]) VALUES (3, N'2017-2018', 2017, 2018)
INSERT [dbo].[NAMHOC] ([MaNH], [TenNH], [NamBatDau], [NamKetThuc]) VALUES (7, N'2018-2019', 2018, 2019)
SET IDENTITY_INSERT [dbo].[NAMHOC] OFF
/****** Object:  Table [dbo].[MONHOC]    Script Date: 06/09/2018 22:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MaMH] [int] IDENTITY(10000,1) NOT NULL,
	[TenMH] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MONHOC] ON
INSERT [dbo].[MONHOC] ([MaMH], [TenMH]) VALUES (10000, N'Toán học')
INSERT [dbo].[MONHOC] ([MaMH], [TenMH]) VALUES (10001, N'Ngữ văn')
INSERT [dbo].[MONHOC] ([MaMH], [TenMH]) VALUES (10002, N'Anh văn')
INSERT [dbo].[MONHOC] ([MaMH], [TenMH]) VALUES (10003, N'Lịch sử')
INSERT [dbo].[MONHOC] ([MaMH], [TenMH]) VALUES (10004, N'Địa lý')
INSERT [dbo].[MONHOC] ([MaMH], [TenMH]) VALUES (10005, N'Sinh học')
INSERT [dbo].[MONHOC] ([MaMH], [TenMH]) VALUES (10006, N'Hóa học')
INSERT [dbo].[MONHOC] ([MaMH], [TenMH]) VALUES (10007, N'Tin học')
INSERT [dbo].[MONHOC] ([MaMH], [TenMH]) VALUES (10008, N'Thể dục')
INSERT [dbo].[MONHOC] ([MaMH], [TenMH]) VALUES (10009, N'Giáo dục quốc phòng')
INSERT [dbo].[MONHOC] ([MaMH], [TenMH]) VALUES (10010, N'Công nghệ')
INSERT [dbo].[MONHOC] ([MaMH], [TenMH]) VALUES (10011, N'Giáo dục công dân')
INSERT [dbo].[MONHOC] ([MaMH], [TenMH]) VALUES (10012, N'Vật lý')
SET IDENTITY_INSERT [dbo].[MONHOC] OFF
/****** Object:  Table [dbo].[LOPHOC]    Script Date: 06/09/2018 22:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOPHOC](
	[MaLH] [int] IDENTITY(1,1) NOT NULL,
	[TenLH] [nvarchar](50) NULL,
	[MaNH] [int] NULL,
	[MaKH] [int] NULL,
	[GVCN] [int] NULL,
	[TinhTrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LOPHOC] ON
INSERT [dbo].[LOPHOC] ([MaLH], [TenLH], [MaNH], [MaKH], [GVCN], [TinhTrang]) VALUES (1, N'[K15]10A1', 1, 1, 20000, NULL)
INSERT [dbo].[LOPHOC] ([MaLH], [TenLH], [MaNH], [MaKH], [GVCN], [TinhTrang]) VALUES (2, N'[K15]10A2', 1, 1, 20001, NULL)
INSERT [dbo].[LOPHOC] ([MaLH], [TenLH], [MaNH], [MaKH], [GVCN], [TinhTrang]) VALUES (13, N'[K15]11A1', 2, 2, 20000, NULL)
INSERT [dbo].[LOPHOC] ([MaLH], [TenLH], [MaNH], [MaKH], [GVCN], [TinhTrang]) VALUES (14, N'[K15]11A2', 2, 2, 20001, NULL)
INSERT [dbo].[LOPHOC] ([MaLH], [TenLH], [MaNH], [MaKH], [GVCN], [TinhTrang]) VALUES (17, N'[K15]12A1', 3, 3, 20000, NULL)
INSERT [dbo].[LOPHOC] ([MaLH], [TenLH], [MaNH], [MaKH], [GVCN], [TinhTrang]) VALUES (18, N'[K15]12A2', 3, 3, 20001, NULL)
INSERT [dbo].[LOPHOC] ([MaLH], [TenLH], [MaNH], [MaKH], [GVCN], [TinhTrang]) VALUES (26, N'[K18]10A2', 7, 1, 20001, NULL)
INSERT [dbo].[LOPHOC] ([MaLH], [TenLH], [MaNH], [MaKH], [GVCN], [TinhTrang]) VALUES (27, N'[K18]10A1', 7, 1, 20000, NULL)
INSERT [dbo].[LOPHOC] ([MaLH], [TenLH], [MaNH], [MaKH], [GVCN], [TinhTrang]) VALUES (32, N'[K17]10A1', 3, 1, 20003, NULL)
INSERT [dbo].[LOPHOC] ([MaLH], [TenLH], [MaNH], [MaKH], [GVCN], [TinhTrang]) VALUES (34, N'[K17]10A2', 3, 1, 20004, NULL)
INSERT [dbo].[LOPHOC] ([MaLH], [TenLH], [MaNH], [MaKH], [GVCN], [TinhTrang]) VALUES (35, N'[K16]10A1', 2, 1, 20004, NULL)
INSERT [dbo].[LOPHOC] ([MaLH], [TenLH], [MaNH], [MaKH], [GVCN], [TinhTrang]) VALUES (36, N'[K16]10A2', 2, 1, 20007, NULL)
INSERT [dbo].[LOPHOC] ([MaLH], [TenLH], [MaNH], [MaKH], [GVCN], [TinhTrang]) VALUES (37, N'[K16]11A1', 3, 2, 20004, NULL)
INSERT [dbo].[LOPHOC] ([MaLH], [TenLH], [MaNH], [MaKH], [GVCN], [TinhTrang]) VALUES (38, N'[K16]11A2', 3, 2, 20007, NULL)
SET IDENTITY_INSERT [dbo].[LOPHOC] OFF
/****** Object:  StoredProcedure [dbo].[CreateNewNAMHOC]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CreateNewNAMHOC](@manh INT)
AS
BEGIN
	-- kiểm tra xem năm học tiếp theo có trong CSDL chưa
	SET @manh  += 1
	-- nếu năm tiếp theo không có trong CSDL thì oke
	IF NOT EXISTS(SELECT 1 FROM dbo.NAMHOC WHERE MaNH = @manh)
	BEGIN
		DECLARE @start INT
		DECLARE @finish INT
		SELECT TOP 1 @start = NamBatDau + 1 , @finish = NamKetThuc +1 FROM	 dbo.NAMHOC ORDER BY	MaNH DESC
		
		DECLARE @str  VARCHAR(20)
	
		SET @str = CONVERT(VARCHAR(10),@start) + '-'+ CONVERT(VARCHAR(10),@finish) 

		INSERT INTO	dbo.NAMHOC( TenNH, NamBatDau, NamKetThuc )
		VALUES  ( @str,@start,@finish  )	
	END
	ELSE	
	BEGIN
		PRINT	'do not anything'
	END
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[CheckNextNAMHOC]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CheckNextNAMHOC](@manh INT)
AS
BEGIN
	-- kiểm tra xem năm học tiếp theo có trong CSDL chưa
	SET @manh  += 1
	-- nếu năm tiếp theo có trong CSDL thì oke
	IF EXISTS(SELECT 1 FROM dbo.NAMHOC WHERE MaNH = @manh)
	BEGIN
		PRINT	N'đã tồn tại'
	END
	ELSE
	BEGIN
		-- nếu chưa tồn tại thì ở đây tạo ra lỗi để mình xuất ra thông báo
		SELECT * FROM abc
	END
END
GO
/****** Object:  StoredProcedure [dbo].[CheckIDPass]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CheckIDPass](@taikhoan VARCHAR(50) , @matkhau VARCHAR(50))
AS
BEGIN
	-- nếu năm tiếp theo có trong CSDL thì oke
	IF EXISTS(SELECT 1 FROM dbo.DangNhap WHERE TaiKhoan = @taikhoan AND		MatKhau = @matkhau)
	BEGIN
		PRINT	N'đã tồn tại'
		SELECT *  FROM dbo.DangNhap WHERE	TaiKhoan = @taikhoan AND		MatKhau = @matkhau
	END
	ELSE
	BEGIN
		-- nếu chưa tồn tại thì ở đây tạo ra lỗi để mình xuất ra thông báo
		SELECT * FROM abc
	END
END
GO
/****** Object:  StoredProcedure [dbo].[ExistsOfTeacher]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ExistsOfTeacher](@magv INT)
AS
BEGIN
	IF EXISTS(SELECT 1 FROM dbo.GIAOVIEN WHERE MaGV = @magv)
	BEGIN
		PRINT 'giao vien co ton tai' 
	END
	ELSE
	BEGIN
		SELECT * FROM abc
	END
END
GO
/****** Object:  StoredProcedure [dbo].[ExistsOfStudent]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ExistsOfStudent](@mahs INT)
AS
BEGIN
	IF EXISTS(SELECT 1 FROM dbo.HOCSINH WHERE MaHS = @mahs)
	BEGIN
		PRINT 'hoc sinh co ton tai' 
	END
	ELSE
	BEGIN
		SELECT * FROM abc
	END
END
GO
/****** Object:  StoredProcedure [dbo].[InsertStudent]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertStudent](@year VARCHAR(4),@name NVARCHAR(50),@sex BIT , @date DATE,@address NVARCHAR(50))
  AS
  BEGIN
	-- chuyển năm về định dạng ví dụ 2016 chuyển thành 16
	DECLARE @year_1 VARCHAR(4) = RIGHT(@year,2)
	
	-- kiểm tra có tồn tại học sinh đầu tiên hay không
	-- chưa có thì tạo mới
	IF EXISTS(SELECT 1 FROM dbo.HOCSINH WHERE MaHS LIKE  @year_1 + '%' )
	BEGIN -- nếu tìm thấy
	-- tìm id_ cuối cùng + 1 là xong
	DECLARE @id_1 INT
	
	SELECT TOP 1 @id_1 = MaHS FROM dbo.HOCSINH  WHERE MaHS LIKE  @year_1 + '%'  ORDER BY MaHS DESC
	SET @id_1 +=1
	
		INSERT INTO	dbo.HOCSINH( MaHS ,TenHS , GioiTinh ,NgaySinh ,DiaChi)
  	VALUES  ( @id_1,@name , @sex ,  @date ,  @address  )
	END
	ELSE	-- nếu không có
	BEGIN
	--tạo mới id
	DECLARE @id_2 INT  = @year_1 * 10000
    	INSERT INTO	dbo.HOCSINH( MaHS ,TenHS , GioiTinh ,NgaySinh ,DiaChi)
  	VALUES  ( @id_2 , @name , @sex ,  @date ,   @address  )
    END
	
  END
GO
/****** Object:  Table [dbo].[THANNHAN]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THANNHAN](
	[MaTN] [int] IDENTITY(1,1) NOT NULL,
	[MaHS] [int] NOT NULL,
	[TenTN] [nvarchar](50) NULL,
	[CongViec] [nvarchar](50) NULL,
	[SDT] [varchar](20) NULL,
	[QuanHe] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTN] ASC,
	[MaHS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[THANNHAN] ON
INSERT [dbo].[THANNHAN] ([MaTN], [MaHS], [TenTN], [CongViec], [SDT], [QuanHe]) VALUES (1, 160000, N'Đinh Đức Thông', N'Công nhân', N'091234123', N'Cha')
INSERT [dbo].[THANNHAN] ([MaTN], [MaHS], [TenTN], [CongViec], [SDT], [QuanHe]) VALUES (2, 160001, N'Nguyễn Thanh Phi', N'Công nhân', N'0912312323', N'Cha')
INSERT [dbo].[THANNHAN] ([MaTN], [MaHS], [TenTN], [CongViec], [SDT], [QuanHe]) VALUES (3, 160002, N'Trần Thị Kim Ngân', N'Công nhân', N'091234123', N'Mẹ')
INSERT [dbo].[THANNHAN] ([MaTN], [MaHS], [TenTN], [CongViec], [SDT], [QuanHe]) VALUES (4, 160003, N'Trần Thị Thu Trang', N'Công nhân', N'091234777', N'Mẹ')
INSERT [dbo].[THANNHAN] ([MaTN], [MaHS], [TenTN], [CongViec], [SDT], [QuanHe]) VALUES (5, 160004, N'Huỳnh Bá Huy', N'Công nhân', N'096634123', N'Cha')
INSERT [dbo].[THANNHAN] ([MaTN], [MaHS], [TenTN], [CongViec], [SDT], [QuanHe]) VALUES (6, 160005, N'Hoàng Kha Hoà', N'Công nhân', N'091234123', N'Cha')
INSERT [dbo].[THANNHAN] ([MaTN], [MaHS], [TenTN], [CongViec], [SDT], [QuanHe]) VALUES (7, 160006, N'Đỗ Hoàng Minh Thơ', N'Công nhân', N'0912312323', N'Cha')
INSERT [dbo].[THANNHAN] ([MaTN], [MaHS], [TenTN], [CongViec], [SDT], [QuanHe]) VALUES (8, 160007, N'Phan Thị Bích Trâm', N'Công nhân', N'091234123', N'Mẹ')
INSERT [dbo].[THANNHAN] ([MaTN], [MaHS], [TenTN], [CongViec], [SDT], [QuanHe]) VALUES (9, 160008, N'Lương Nguyễn Phương Linh', N'Công nhân', N'091234777', N'Mẹ')
INSERT [dbo].[THANNHAN] ([MaTN], [MaHS], [TenTN], [CongViec], [SDT], [QuanHe]) VALUES (10, 160009, N'Lưu Đức Hiếu', N'Công nhân', N'096634123', N'Cha')
INSERT [dbo].[THANNHAN] ([MaTN], [MaHS], [TenTN], [CongViec], [SDT], [QuanHe]) VALUES (15, 160000, N'aaaa', N'âsss', N'aaaaa', N'Mẹ')
SET IDENTITY_INSERT [dbo].[THANNHAN] OFF
/****** Object:  Table [dbo].[XEPLOP]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XEPLOP](
	[MaXL] [int] IDENTITY(1,1) NOT NULL,
	[MaHS] [int] NULL,
	[MaLH] [int] NULL,
	[TinhTrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaXL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[XEPLOP] ON
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (33, 160000, 17, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (34, 160001, 17, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (35, 160002, 17, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (36, 160003, 17, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (37, 160004, 17, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (38, 160005, 18, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (39, 160006, 18, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (40, 160007, 18, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (41, 160008, 18, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (42, 160009, 18, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (85, 150000, 1, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (86, 150001, 1, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (87, 150002, 1, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (88, 150003, 1, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (89, 150004, 1, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (90, 150005, 2, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (91, 150006, 2, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (92, 150007, 2, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (93, 150008, 2, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (94, 150009, 2, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (95, 160000, 35, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (99, 160001, 35, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (100, 160002, 35, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (101, 160003, 35, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (102, 160004, 35, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (103, 160005, 36, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (104, 160006, 36, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (105, 160007, 36, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (106, 160008, 36, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (107, 160009, 36, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (108, 170000, 32, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (109, 170001, 32, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (110, 170002, 32, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (111, 170003, 32, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (112, 170004, 32, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (113, 170005, 34, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (114, 170006, 34, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (115, 170008, 34, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (116, 170009, 34, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (117, 180000, 26, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (118, 180001, 26, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (119, 180002, 26, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (120, 180003, 26, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (121, 180004, 26, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (122, 180005, 27, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (123, 180006, 27, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (124, 180007, 27, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (125, 180008, 27, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (126, 180009, 27, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (127, 160000, 37, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (128, 160001, 37, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (129, 160002, 37, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (130, 160003, 37, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (131, 160004, 37, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (132, 160005, 38, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (133, 160006, 38, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (134, 160007, 38, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (135, 160008, 38, NULL)
INSERT [dbo].[XEPLOP] ([MaXL], [MaHS], [MaLH], [TinhTrang]) VALUES (136, 160009, 38, NULL)
SET IDENTITY_INSERT [dbo].[XEPLOP] OFF
/****** Object:  StoredProcedure [dbo].[InsertClass]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertClass] (@name_class VARCHAR(10),@id_year INT ,@id_gradelevel INT , @id_teacher int)
AS
BEGIN
	-- giáo viên chỉ được chủ nhiệm 1 lớp trong 1 năm
	-- nếu tìm thấy thì không thêm lớp mới với giáo viên đó được
	IF EXISTS(SELECT 1 FROM dbo.LOPHOC WHERE GVCN = @id_teacher AND	MaNH = @id_year  )
	BEGIN -- nếu tìm thấy
	 SET @id_teacher = -1 -- gây lỗi ở mã giáo viên
	END


INSERT INTO	dbo.LOPHOC( TenLH, MaNH, MaKH, GVCN )
VALUES  ( @name_class, @id_year,@id_gradelevel, @id_teacher  )
	
END
GO
/****** Object:  Table [dbo].[PHANCONG]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANCONG](
	[MaPC] [int] IDENTITY(1,1) NOT NULL,
	[MaGV] [int] NULL,
	[MaLH] [int] NULL,
	[MaHK] [int] NULL,
	[MaMH] [int] NULL,
	[TinhTrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PHANCONG] ON
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (15, 20000, 1, 1, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (16, 20000, 1, 2, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (17, 20000, 2, 1, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (18, 20000, 2, 2, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (19, 20001, 1, 1, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (20, 20001, 1, 2, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (21, 20001, 2, 1, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (22, 20001, 2, 2, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (23, 20000, 17, 1, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (24, 20000, 17, 2, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (25, 20000, 18, 1, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (26, 20000, 18, 2, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (27, 20002, 1, 1, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (28, 20002, 1, 2, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (51, 20003, 1, 1, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (52, 20003, 1, 2, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (55, 20004, 1, 1, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (56, 20004, 1, 2, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (57, 20005, 1, 1, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (58, 20005, 1, 2, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (59, 20006, 1, 1, 10006, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (60, 20006, 1, 2, 10006, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (61, 20007, 1, 1, 10007, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (62, 20007, 1, 2, 10007, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (63, 20008, 1, 1, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (64, 20008, 1, 2, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (65, 20009, 1, 1, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (66, 20009, 1, 2, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (71, 20010, 1, 1, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (72, 20010, 1, 2, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (75, 20011, 1, 1, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (76, 20011, 1, 2, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (77, 20012, 1, 1, 10012, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (78, 20012, 1, 2, 10012, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (79, 20000, 35, 1, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (80, 20000, 35, 2, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (81, 20001, 35, 1, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (82, 20001, 35, 2, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (83, 20002, 35, 1, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (84, 20002, 35, 2, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (85, 20003, 35, 1, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (86, 20003, 35, 2, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (87, 20004, 35, 1, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (88, 20004, 35, 2, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (89, 20005, 35, 1, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (90, 20005, 35, 2, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (91, 20006, 35, 1, 10006, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (92, 20006, 35, 2, 10006, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (93, 20007, 35, 1, 10007, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (94, 20007, 35, 2, 10007, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (95, 20008, 35, 1, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (96, 20008, 35, 2, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (99, 20009, 35, 1, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (100, 20009, 35, 2, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (101, 20010, 35, 1, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (102, 20010, 35, 2, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (103, 20011, 35, 1, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (104, 20011, 35, 2, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (105, 20012, 35, 1, 10012, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (106, 20012, 35, 2, 10012, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (107, 20000, 32, 1, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (108, 20000, 32, 2, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (111, 20001, 32, 1, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (112, 20001, 32, 2, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (113, 20002, 32, 1, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (114, 20002, 32, 2, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (115, 20003, 32, 1, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (116, 20003, 32, 2, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (117, 20004, 32, 1, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (118, 20004, 32, 2, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (119, 20005, 32, 1, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (120, 20005, 32, 2, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (121, 20006, 32, 1, 10006, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (122, 20006, 32, 2, 10006, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (125, 20007, 32, 1, 10007, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (126, 20007, 32, 2, 10007, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (127, 20008, 32, 1, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (128, 20008, 32, 2, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (129, 20009, 32, 1, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (130, 20009, 32, 2, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (131, 20010, 32, 1, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (132, 20010, 32, 2, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (133, 20011, 32, 1, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (134, 20011, 32, 2, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (135, 20012, 32, 1, 10012, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (136, 20012, 32, 2, 10012, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (137, 20000, 34, 1, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (138, 20000, 34, 2, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (139, 20001, 34, 1, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (140, 20001, 34, 2, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (141, 20002, 34, 1, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (142, 20002, 34, 2, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (143, 20003, 34, 1, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (144, 20003, 34, 2, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (145, 20004, 34, 1, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (146, 20004, 34, 2, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (147, 20005, 34, 1, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (148, 20005, 34, 2, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (149, 20006, 34, 1, 10006, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (150, 20006, 34, 2, 10006, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (151, 20007, 34, 1, 10007, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (152, 20007, 34, 2, 10007, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (153, 20008, 34, 1, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (154, 20008, 34, 2, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (155, 20009, 34, 1, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (156, 20009, 34, 2, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (157, 20010, 34, 1, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (158, 20010, 34, 2, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (159, 20011, 34, 1, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (160, 20011, 34, 2, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (161, 20012, 34, 1, 10012, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (162, 20012, 34, 2, 10012, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (163, 20000, 36, 1, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (164, 20000, 36, 2, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (165, 20001, 36, 1, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (166, 20001, 36, 2, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (167, 20002, 36, 1, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (168, 20002, 36, 2, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (169, 20003, 36, 1, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (170, 20003, 36, 2, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (171, 20004, 36, 1, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (172, 20004, 36, 2, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (173, 20005, 36, 1, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (174, 20005, 36, 2, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (175, 20006, 36, 1, 10006, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (176, 20006, 36, 2, 10006, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (177, 20007, 36, 1, 10007, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (178, 20007, 36, 2, 10007, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (179, 20008, 36, 1, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (180, 20008, 36, 2, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (181, 20009, 36, 1, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (182, 20009, 36, 2, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (183, 20010, 36, 1, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (184, 20010, 36, 2, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (185, 20011, 36, 1, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (186, 20011, 36, 2, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (187, 20012, 36, 1, 10012, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (188, 20012, 36, 2, 10012, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (189, 20002, 2, 1, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (190, 20002, 2, 2, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (191, 20003, 2, 1, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (192, 20003, 2, 2, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (193, 20004, 2, 1, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (194, 20004, 2, 2, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (195, 20005, 2, 1, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (196, 20005, 2, 2, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (197, 20006, 2, 1, 10006, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (198, 20006, 2, 2, 10006, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (199, 20007, 2, 1, 10007, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (200, 20007, 2, 2, 10007, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (201, 20008, 2, 1, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (202, 20008, 2, 2, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (203, 20009, 2, 1, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (204, 20009, 2, 2, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (205, 20010, 2, 1, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (206, 20010, 2, 2, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (207, 20011, 2, 1, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (208, 20011, 2, 2, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (209, 20012, 2, 1, 10012, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (210, 20012, 2, 2, 10012, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (211, 20000, 26, 1, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (212, 20000, 26, 2, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (213, 20001, 26, 1, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (214, 20001, 26, 2, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (215, 20002, 26, 1, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (216, 20002, 26, 2, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (217, 20003, 26, 1, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (218, 20003, 26, 2, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (219, 20004, 26, 1, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (220, 20004, 26, 2, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (221, 20005, 26, 1, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (222, 20005, 26, 2, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (225, 20006, 26, 1, 10006, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (226, 20006, 26, 2, 10006, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (227, 20007, 26, 1, 10007, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (228, 20007, 26, 2, 10007, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (229, 20008, 26, 1, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (230, 20008, 26, 2, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (231, 20009, 26, 1, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (232, 20009, 26, 2, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (233, 20010, 26, 1, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (234, 20010, 26, 2, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (235, 20011, 26, 1, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (236, 20011, 26, 2, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (237, 20012, 26, 1, 10012, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (238, 20012, 26, 2, 10012, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (239, 20000, 27, 1, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (240, 20000, 27, 2, 10000, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (241, 20001, 27, 1, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (242, 20001, 27, 2, 10001, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (243, 20002, 27, 1, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (244, 20002, 27, 2, 10002, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (245, 20003, 27, 1, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (246, 20003, 27, 2, 10003, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (247, 20004, 27, 1, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (248, 20004, 27, 2, 10004, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (249, 20005, 27, 1, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (250, 20005, 27, 2, 10005, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (251, 20006, 27, 1, 10006, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (252, 20006, 27, 2, 10006, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (253, 20007, 27, 1, 10007, NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (254, 20007, 27, 2, 10007, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (255, 20008, 27, 1, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (256, 20008, 27, 2, 10008, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (257, 20009, 27, 1, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (258, 20009, 27, 2, 10009, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (259, 20010, 27, 1, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (260, 20010, 27, 2, 10010, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (261, 20011, 27, 1, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (262, 20011, 27, 2, 10011, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (263, 20012, 27, 1, 10012, NULL)
INSERT [dbo].[PHANCONG] ([MaPC], [MaGV], [MaLH], [MaHK], [MaMH], [TinhTrang]) VALUES (264, 20012, 27, 2, 10012, NULL)
SET IDENTITY_INSERT [dbo].[PHANCONG] OFF
/****** Object:  Table [dbo].[DIEMSO]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIEMSO](
	[MaHS] [int] NOT NULL,
	[MaPC] [int] NOT NULL,
	[Diem15s_1] [int] NULL,
	[Diem15s_2] [int] NULL,
	[Diem15s_3] [int] NULL,
	[Diem15s_4] [int] NULL,
	[Diem1tiet_1] [int] NULL,
	[Diem1tiet_2] [int] NULL,
	[Diem1tiet_3] [int] NULL,
	[Diemgiuaki] [int] NULL,
	[Diemcuoiki] [int] NULL,
	[TinhTrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC,
	[MaPC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150000, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150001, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150002, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150003, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150004, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150005, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150006, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 200 total records'
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150007, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150008, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (150009, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 23, 5, 7, 8, 8, 9, 8, 7, 9, 8, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 24, 8, 8, 8, 9, 7, 8, 7, 7, 8, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160000, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 23, 8, 8, 7, 6, 8, 9, 7, 8, 8, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 24, 8, 8, 8, 7, 8, 9, 6, 8, 7, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 300 total records'
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160001, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 23, 8, 6, 5, 6, 5, 6, 8, 8, 5, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 24, 8, 8, 8, 8, 4, 6, 7, 6, 7, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160002, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 23, 10, 7, 8, 9, 10, 10, 10, 8, 10, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 24, 7, 8, 9, 9, 9, 9, 9, 9, 9, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160003, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 23, 8, 6, 7, 8, 9, 8, 8, 9, 7, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 24, 7, 8, 9, 5, 6, 7, 8, 9, 8, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160004, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 25, 7, 8, 9, 8, 10, 10, 8, 8, 8, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 26, 4, 5, 6, 8, 9, 7, 5, 8, 8, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 400 total records'
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160005, 188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 25, 5, 8, 8, 9, 5, 6, 8, 7, 7, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 26, 8, 9, 7, 6, 8, 9, 5, 8, 9, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160006, 188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 25, 7, 8, 9, 7, 8, 8, 7, 8, 9, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 26, 7, 8, 9, 8, 7, 8, 6, 7, 8, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160007, 188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 25, 9, 9, 9, 8, 8, 6, 5, 5, 6, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 26, 7, 8, 9, 8, 9, 7, 8, 8, 7, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 500 total records'
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160008, 188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 25, 4, 5, 5, 5, 4, 5, 4, 5, 4, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 26, 7, 8, 8, 8, 4, 8, 7, 8, 7, 1)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (160009, 188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170000, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170001, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 600 total records'
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170002, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170003, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170004, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170005, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 700 total records'
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170006, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170008, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (170009, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 211, 10, 6, 8, 9, 6, 6, 6, 6, 6, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 212, 7, 5, 5, 5, 7, 7, 7, 6, 6, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 213, 7, 7, 7, 7, 8, 8, 8, 7, 7, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180000, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 211, 7, 7, 7, 7, 7, 7, 7, 7, 7, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 212, 7, 7, 7, 7, 7, 7, 7, 7, 7, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 213, 7, 7, 7, 7, 7, 7, 7, 5, 5, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 800 total records'
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180001, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 211, 7, 7, 7, 7, 7, 7, 7, 7, 7, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 212, 7, 7, 7, 7, 7, 7, 7, 5, 5, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180002, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 211, 7, 7, 7, 7, 6, 6, 6, 7, 7, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 212, 6, 6, 6, 6, 8, 8, 8, 6, 6, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180003, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 211, 8, 8, 8, 8, 7, 7, 7, 9, 9, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 212, 9, 9, 9, 9, 4, 4, 4, 7, 7, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180004, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 900 total records'
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180005, 264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180006, 264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180007, 264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180008, 264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
print 'Processed 1000 total records'
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DIEMSO] ([MaHS], [MaPC], [Diem15s_1], [Diem15s_2], [Diem15s_3], [Diem15s_4], [Diem1tiet_1], [Diem1tiet_2], [Diem1tiet_3], [Diemgiuaki], [Diemcuoiki], [TinhTrang]) VALUES (180009, 264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  StoredProcedure [dbo].[InsertXEPLOP]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertXEPLOP](@id_student INT, @id_class INT)
AS	
BEGIN
	

	DECLARE @id_year INT
	SELECT @id_year = lh.MaNH  FROM dbo.XEPLOP xl, dbo.LOPHOC lh WHERE xl.MaLH = lh.MaLH
	-- trong 1 năm 1 học sinh chỉ có 1 lớp
	-- nếu tồn tại trong 1 năm có 1 học sinh ở trong 1 lớp thì [đúng ] không được thêm nữa
	IF EXISTS( SELECT 1 FROM dbo.XEPLOP xl, dbo.LOPHOC lh WHERE	 xl.MaLH = lh.MaLH AND	lh.MaNH = @id_year AND	xl.MaHS = @id_student)
	BEGIN
		PRINT	N'không làm gì'
		SET @id_student = -1 -- gây ra lỗi
	END
	-- main chính
		
		INSERT INTO	dbo.XEPLOP( MaHS, MaLH )
		VALUES  ( @id_student, @id_class)
	

	
END
GO
/****** Object:  StoredProcedure [dbo].[InsertPHANCONG]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertPHANCONG] (@magv INT ,@malh INT,@mamh INT)
AS
BEGIN
	-- kiễm tra xem có dữ liệu tồn tại hay chưa
	-- kiễm tra mã giáo viên và mã lớp học
	IF EXISTS(SELECT 1 FROM dbo.PHANCONG WHERE MaGV = @magv AND MaLH = @malh )
	BEGIN
		PRINT	N'đã tồn tại'
		SET @malh = -1 -- tạo lỗi
	END
	
	-- kiễm tra mã môn học và mã giáo viên
	IF EXISTS(SELECT 1 FROM dbo.PHANCONG WHERE MaLH = @malh AND	MaMH = @mamh)
	BEGIN
		PRINT	N'đã tồn tại'
		SET @malh = -1 -- tạo lỗi
	END
	
	
	
		-- vì có 2 học kì nên ta có vòng lặp for
		DECLARE @i INT = 1
		WHILE @i <= 2
		BEGIN
			INSERT INTO dbo.PHANCONG( MaGV, MaLH, MaHK, MaMH )
			VALUES  ( @magv, @malh, @i,  @mamh )
			SET @i += 1
		END
	
	

END
GO
/****** Object:  StoredProcedure [dbo].[UpClassXEPLOP]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpClassXEPLOP](@manh INT ,@makh INT)
AS
BEGIN
	-- nếu dữ liệu tiếp theo đã có rồi thì không tạo nữa
	IF  EXISTS(SELECT 1 FROM dbo.LOPHOC WHERE MaNH = @manh +1 AND	MaKH = @makh +1 )
	BEGIN
		PRINT 'do not thing!!'
		SELECT * FROM abc
	
	END
	ELSE
	BEGIN
			-- tạo con trỏ để thêm các lớp mới tương ứng
		-- con trỏ
		DECLARE curValue CURSOR
		FOR SELECT MaLH, TenLH,GVCN	FROM dbo.LOPHOC WHERE	MaNH = @manh AND	 MaKH = @makh

		-- khái báo biến để lưu trữ dữ liệu
		DECLARE	@malh INT
		DECLARE	@tenlh VARCHAR(50)
		DECLARE @gvcn INT

		
		-- open con trỏ
		OPEN curValue

		FETCH NEXT FROM curValue INTO @malh,@tenlh,@gvcn
		WHILE(@@FETCH_STATUS =0) -- nếu trỏ thành công
		BEGIN
			IF	(@makh = 1)
			BEGIN
				 SELECT @tenlh = STUFF (@tenlh,6,2,'11')--lớp 11
			END
			
			IF	(@makh = 2)
			BEGIN
				SELECT @tenlh = STUFF (@tenlh,6,2,'12')--lớp 11
			END
			
			-- đã tạo được lớp mới
			INSERT INTO	dbo.LOPHOC ( TenLH, MaNH, MaKH, GVCN, TinhTrang )
			VALUES  ( @tenlh	, @manh	+ 1, @makh +1,@gvcn, NULL  )
			
			DECLARE @id INT -- mã lớp mới
			SELECT @id = MaLH FROM	dbo.LOPHOC WHERE	TenLH = @tenlh
			-- con trỏ thứ 2 ... lấy hết mã học sinh chuyển vào lớp mới
			
					 -- con trỏ
			 DECLARE curValue2 CURSOR
			 FOR SELECT	MaHS FROM dbo.XEPLOP WHERE malh = @malh

			-- khái báo biến để lưu trữ dữ liệu
			DECLARE	@mahs INT

			-- open con trỏ
			OPEN curValue2

			FETCH NEXT FROM curValue2 INTO @mahs
			WHILE(@@FETCH_STATUS =0) -- nếu trỏ thành công
			BEGIN
				INSERT INTO	dbo.XEPLOP( MaHS, MaLH, TinhTrang )
				VALUES  ( @mahs,  @id ,NULL  )
				
				
				FETCH NEXT FROM curValue2 INTO @mahs
			END

			-- đóng con trỏ
			CLOSE curValue2
			-- hủy con trỏ
			DEALLOCATE curValue2
			
			
			
			
			
			FETCH NEXT FROM curValue INTO @malh,@tenlh,@gvcn
		END
			
		-- đóng con trỏ
		CLOSE curValue
		-- hủy con trỏ
		DEALLOCATE curValue
		
		
		
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[ViewScores]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ViewScores](@mahs INT , @makh INT)
AS
BEGIN
	DECLARE @DTB FLOAT
	DECLARE @XEPLOAI NVARCHAR(50)
	SELECT  @DTB = (( SUM(ds.Diem15s_1) + SUM(ds.Diem15s_2) + SUM(ds.Diem15s_3) + SUM(ds.Diem15s_4) + SUM(ds.Diem1tiet_1)*2 + SUM(ds.Diem1tiet_2)*2 + SUM(ds.Diem1tiet_3)* 2 + SUM(ds.Diemgiuaki)* 3 + SUM(ds.Diemcuoiki)* 3 ) /16.0 )
	FROM dbo.DIEMSO ds,dbo.PHANCONG pc,dbo.LOPHOC lh 
	WHERE ds.MaPC = pc.MaPC AND	pc.MaLH = lh.MaLH AND	MaHS = @mahs AND	lh.MaKH = @makh 
	GROUP BY ds.MaHS,ds.Diem15s_1,ds.Diem15s_2,ds.Diem15s_3,ds.Diem15s_4,ds.Diem1tiet_1,ds.Diem1tiet_2,ds.Diem1tiet_3,ds.Diemgiuaki,ds.Diemcuoiki

	IF(@DTB <5.0 )
	SET @XEPLOAI =N'Trung bình'
	ELSE IF	(@DTB >=5.0  AND	 @DTB < 8)
	SET @XEPLOAI =N'Tiên tiến'
	ELSE IF	(@DTB >=8)
	SET @XEPLOAI =N'Xuất sắc'
	ELSE
	SET @XEPLOAI =N'Không xếp loại'
	
	SELECT @DTB AS DiemTB , @XEPLOAI AS	HocLuc

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateScores]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateScores]
AS
BEGIN


 -- con trỏ
 DECLARE curValue CURSOR
 FOR SELECT	pc.MaPC,xl.MaHS FROM	dbo.PHANCONG pc, dbo.XEPLOP xl 
							WHERE	pc.MaLH = xl.MaLH

-- khái báo biến để lưu trữ dữ liệu
DECLARE	@mapc INT
DECLARE @mahs INT

DECLARE @_mahs INT
DECLARE @_mapc INT

-- open con trỏ
OPEN curValue

FETCH NEXT FROM curValue INTO @mapc,@mahs
WHILE(@@FETCH_STATUS =0) -- nếu trỏ thành công
BEGIN
	-- kiễm tra xem có dữ liệu tồn tại hay chưa
	-- nếu chưa thì thêm vào
	IF NOT EXISTS(SELECT 1  FROM	dbo.DIEMSO WHERE	MaPC = @mapc AND	MaHS = @mahs)
	BEGIN
		PRINT	N'chưa tồn tại'
		PRINT N'giá trị : ' + CONVERT(VARCHAR(10),@mapc) + '  , ' + CONVERT(VARCHAR(10),@mahs)
			INSERT INTO	 dbo.DIEMSO
			        ( MaHS ,MaPC )
			VALUES  ( @mahs ,  @mapc  )
			
	END
	ELSE
		BEGIN
			PRINT 'No doing!!'
		END
	
	
	FETCH NEXT FROM curValue INTO @mapc,@mahs
END

-- đóng con trỏ
CLOSE curValue
-- hủy con trỏ
DEALLOCATE curValue

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteStudentFromXEPLOP]    Script Date: 06/09/2018 22:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE	PROC [dbo].[DeleteStudentFromXEPLOP](@maxl INT )
AS
BEGIN
	DECLARE  @malh INT
	DECLARE @mahs INT
	-- lấy được mã lớp và mã học sinh
	SELECT @malh = MaLH , @mahs = MaHS  FROM	dbo.XEPLOP WHERE	MaXL = @maxl
	-- 1 : xóa điểm học sinh trước
	
	DELETE FROM	 dbo.DIEMSO WHERE MaPC IN (	SELECT	 MaPC FROM	 dbo.DIEMSO WHERE	MaPC IN (SELECT MaPC FROM	dbo.PHANCONG WHERE	 MaLH = @malh) ) AND	MaHS = @mahs
		
	-- 2: xóa học sinh ra khỏi lớp
	DELETE	 FROM dbo.XEPLOP WHERE	 MaXL = @maxl
END
GO
/****** Object:  ForeignKey [FK_LH_GV]    Script Date: 06/09/2018 22:05:39 ******/
ALTER TABLE [dbo].[LOPHOC]  WITH CHECK ADD  CONSTRAINT [FK_LH_GV] FOREIGN KEY([GVCN])
REFERENCES [dbo].[GIAOVIEN] ([MaGV])
GO
ALTER TABLE [dbo].[LOPHOC] CHECK CONSTRAINT [FK_LH_GV]
GO
/****** Object:  ForeignKey [FK_LH_KH]    Script Date: 06/09/2018 22:05:39 ******/
ALTER TABLE [dbo].[LOPHOC]  WITH CHECK ADD  CONSTRAINT [FK_LH_KH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHOIHOC] ([MaKH])
GO
ALTER TABLE [dbo].[LOPHOC] CHECK CONSTRAINT [FK_LH_KH]
GO
/****** Object:  ForeignKey [FK_LH_NH]    Script Date: 06/09/2018 22:05:39 ******/
ALTER TABLE [dbo].[LOPHOC]  WITH CHECK ADD  CONSTRAINT [FK_LH_NH] FOREIGN KEY([MaNH])
REFERENCES [dbo].[NAMHOC] ([MaNH])
GO
ALTER TABLE [dbo].[LOPHOC] CHECK CONSTRAINT [FK_LH_NH]
GO
/****** Object:  ForeignKey [FK_TN_HS]    Script Date: 06/09/2018 22:05:41 ******/
ALTER TABLE [dbo].[THANNHAN]  WITH CHECK ADD  CONSTRAINT [FK_TN_HS] FOREIGN KEY([MaHS])
REFERENCES [dbo].[HOCSINH] ([MaHS])
GO
ALTER TABLE [dbo].[THANNHAN] CHECK CONSTRAINT [FK_TN_HS]
GO
/****** Object:  ForeignKey [FK_XL_HS]    Script Date: 06/09/2018 22:05:41 ******/
ALTER TABLE [dbo].[XEPLOP]  WITH CHECK ADD  CONSTRAINT [FK_XL_HS] FOREIGN KEY([MaHS])
REFERENCES [dbo].[HOCSINH] ([MaHS])
GO
ALTER TABLE [dbo].[XEPLOP] CHECK CONSTRAINT [FK_XL_HS]
GO
/****** Object:  ForeignKey [FK_XL_LH]    Script Date: 06/09/2018 22:05:41 ******/
ALTER TABLE [dbo].[XEPLOP]  WITH CHECK ADD  CONSTRAINT [FK_XL_LH] FOREIGN KEY([MaLH])
REFERENCES [dbo].[LOPHOC] ([MaLH])
GO
ALTER TABLE [dbo].[XEPLOP] CHECK CONSTRAINT [FK_XL_LH]
GO
/****** Object:  ForeignKey [FK_PC_GC]    Script Date: 06/09/2018 22:05:41 ******/
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PC_GC] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GIAOVIEN] ([MaGV])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PC_GC]
GO
/****** Object:  ForeignKey [FK_PC_HK]    Script Date: 06/09/2018 22:05:41 ******/
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PC_HK] FOREIGN KEY([MaHK])
REFERENCES [dbo].[HOCKY] ([MaHK])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PC_HK]
GO
/****** Object:  ForeignKey [FK_PC_LH]    Script Date: 06/09/2018 22:05:41 ******/
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PC_LH] FOREIGN KEY([MaLH])
REFERENCES [dbo].[LOPHOC] ([MaLH])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PC_LH]
GO
/****** Object:  ForeignKey [FK_PC_MH]    Script Date: 06/09/2018 22:05:41 ******/
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PC_MH] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MONHOC] ([MaMH])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PC_MH]
GO
/****** Object:  ForeignKey [FK_DS_HS]    Script Date: 06/09/2018 22:05:41 ******/
ALTER TABLE [dbo].[DIEMSO]  WITH CHECK ADD  CONSTRAINT [FK_DS_HS] FOREIGN KEY([MaHS])
REFERENCES [dbo].[HOCSINH] ([MaHS])
GO
ALTER TABLE [dbo].[DIEMSO] CHECK CONSTRAINT [FK_DS_HS]
GO
/****** Object:  ForeignKey [FK_DS_PC]    Script Date: 06/09/2018 22:05:41 ******/
ALTER TABLE [dbo].[DIEMSO]  WITH CHECK ADD  CONSTRAINT [FK_DS_PC] FOREIGN KEY([MaPC])
REFERENCES [dbo].[PHANCONG] ([MaPC])
GO
ALTER TABLE [dbo].[DIEMSO] CHECK CONSTRAINT [FK_DS_PC]
GO
