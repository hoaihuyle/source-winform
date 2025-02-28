USE [master]
GO
/****** Object:  Database [QLBANGIAY]    Script Date: 25-Dec-18 02:22:43 PM ******/
CREATE DATABASE [QLBANGIAY]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBANGIAY', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER\MSSQL\DATA\QLBANGIAY.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLBANGIAY_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER\MSSQL\DATA\QLBANGIAY_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLBANGIAY] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBANGIAY].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBANGIAY] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBANGIAY] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBANGIAY] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBANGIAY] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBANGIAY] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBANGIAY] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBANGIAY] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBANGIAY] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBANGIAY] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBANGIAY] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBANGIAY] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBANGIAY] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBANGIAY] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBANGIAY] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBANGIAY] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBANGIAY] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBANGIAY] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBANGIAY] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBANGIAY] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBANGIAY] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBANGIAY] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBANGIAY] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBANGIAY] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBANGIAY] SET  MULTI_USER 
GO
ALTER DATABASE [QLBANGIAY] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBANGIAY] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBANGIAY] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBANGIAY] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLBANGIAY] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLBANGIAY]
GO
USE [QLBANGIAY]
GO
/****** Object:  Sequence [dbo].[HOADON_Seq]    Script Date: 25-Dec-18 02:22:43 PM ******/
CREATE SEQUENCE [dbo].[HOADON_Seq] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [QLBANGIAY]
GO
/****** Object:  Sequence [dbo].[KHACHHANG_Seq]    Script Date: 25-Dec-18 02:22:43 PM ******/
CREATE SEQUENCE [dbo].[KHACHHANG_Seq] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [QLBANGIAY]
GO
/****** Object:  Sequence [dbo].[NHANVIEN_Seq]    Script Date: 25-Dec-18 02:22:43 PM ******/
CREATE SEQUENCE [dbo].[NHANVIEN_Seq] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [QLBANGIAY]
GO
/****** Object:  Sequence [dbo].[SANPHAM_Seq]    Script Date: 25-Dec-18 02:22:43 PM ******/
CREATE SEQUENCE [dbo].[SANPHAM_Seq] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
/****** Object:  Table [dbo].[AUD_CHITIETHOADON]    Script Date: 25-Dec-18 02:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUD_CHITIETHOADON](
	[SoLuong] [int] NULL,
	[MaHD] [nchar](10) NOT NULL,
	[MaSP] [nchar](10) NOT NULL,
	[Action] [nchar](10) NULL,
	[Time] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AUD_HOADON]    Script Date: 25-Dec-18 02:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUD_HOADON](
	[MaHD] [nchar](10) NOT NULL,
	[ThoiGianLap] [datetime] NULL,
	[MaNV] [nchar](10) NOT NULL,
	[MaKH] [nchar](10) NOT NULL,
	[Action] [nchar](10) NULL,
	[Time] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AUD_KHACHHANG]    Script Date: 25-Dec-18 02:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUD_KHACHHANG](
	[MaKH] [nchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[Sdt] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Action] [nchar](10) NULL,
	[Time] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AUD_NHANVIEN]    Script Date: 25-Dec-18 02:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUD_NHANVIEN](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[Sdt] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Action] [nchar](10) NULL,
	[Time] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AUD_SANPHAM]    Script Date: 25-Dec-18 02:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUD_SANPHAM](
	[MaSP] [nchar](10) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[DonGiaBan] [float] NULL,
	[SoLuongCon] [int] NULL,
	[Action] [nchar](10) NULL,
	[Time] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AUD_TAIKHOAN]    Script Date: 25-Dec-18 02:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUD_TAIKHOAN](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](10) NULL,
	[Ten] [nvarchar](50) NULL,
	[VaiTro] [nvarchar](50) NULL,
	[Action] [nchar](10) NULL,
	[Time] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 25-Dec-18 02:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[SoLuong] [int] NULL,
	[MaHD] [nchar](10) NOT NULL,
	[MaSP] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 25-Dec-18 02:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [nchar](10) NOT NULL CONSTRAINT [DF_HOADON_MaHD]  DEFAULT (format(NEXT VALUE FOR [dbo].[HOADON_Seq],'HD000#')),
	[ThoiGianLap] [datetime] NULL,
	[MaNV] [nchar](10) NOT NULL,
	[MaKH] [nchar](10) NOT NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 25-Dec-18 02:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [nchar](10) NOT NULL CONSTRAINT [DF_KHACHHANG_MaKH]  DEFAULT (format(NEXT VALUE FOR [dbo].[KHACHHANG_Seq],'KH000#')),
	[TenKH] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[Sdt] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 25-Dec-18 02:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nchar](10) NOT NULL CONSTRAINT [DF_NHANVIEN_MaNV]  DEFAULT (format(NEXT VALUE FOR [dbo].[NhanVien_Seq],'NV000#')),
	[TenNV] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[Sdt] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 25-Dec-18 02:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [nchar](10) NOT NULL CONSTRAINT [DF_SANPHAM_MaSP]  DEFAULT (format(NEXT VALUE FOR [dbo].[SANPHAM_Seq],'GH000#')),
	[TenSP] [nvarchar](50) NULL,
	[DonGiaBan] [float] NULL,
	[SoLuongCon] [int] NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 25-Dec-18 02:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](10) NULL,
	[Ten] [nvarchar](50) NULL,
	[VaiTro] [nvarchar](50) NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (1, N'HD0081    ', N'GH0011    ', N'I         ', CAST(N'2018-05-29 16:34:54.230' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (2, N'HD0082    ', N'GH0015    ', N'U         ', CAST(N'2018-05-29 16:41:58.783' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (3, N'HD0084    ', N'GH0013    ', N'I         ', CAST(N'2018-05-30 12:28:28.457' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (1, N'HD0085    ', N'GH0006    ', N'I         ', CAST(N'2018-05-30 12:28:59.280' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (2, N'HD0086    ', N'GH0020    ', N'U         ', CAST(N'2018-05-30 13:03:28.477' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (2, N'HD0088    ', N'GH0010    ', N'I         ', CAST(N'2018-05-30 15:05:38.840' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (2, N'HD0089    ', N'GH0013    ', N'I         ', CAST(N'2018-05-30 15:05:55.097' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (1, N'HD0080    ', N'GH0009    ', N'I         ', CAST(N'2018-05-29 16:32:42.003' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (4, N'HD0080    ', N'GH0009    ', N'I         ', CAST(N'2018-05-29 16:32:57.273' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (3, N'HD0081    ', N'GH0010    ', N'I         ', CAST(N'2018-05-29 16:33:31.610' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (2, N'HD0082    ', N'GH0015    ', N'I         ', CAST(N'2018-05-29 16:34:38.937' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (1, N'HD0081    ', N'GH0011    ', N'D         ', CAST(N'2018-05-29 16:35:08.117' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (1, N'HD0089    ', N'GH0009    ', N'I         ', CAST(N'2018-05-30 15:06:25.173' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (1, N'HD0087    ', N'GH0012    ', N'I         ', CAST(N'2018-05-30 13:10:54.607' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (2, N'HD0083    ', N'GH0016    ', N'I         ', CAST(N'2018-05-29 16:40:55.920' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (2, N'HD0084    ', N'GH0011    ', N'I         ', CAST(N'2018-05-30 12:28:01.737' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (4, N'HD0080    ', N'GH0009    ', N'D         ', CAST(N'2018-05-29 16:33:45.620' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (1, N'HD0080    ', N'GH0009    ', N'D         ', CAST(N'2018-05-29 16:33:45.620' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (3, N'HD0084    ', N'GH0013    ', N'I         ', CAST(N'2018-05-30 12:28:07.873' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (1, N'HD0087    ', N'GH0012    ', N'U         ', CAST(N'2018-05-30 13:11:09.823' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (7, N'HD0082    ', N'GH0013    ', N'I         ', CAST(N'2018-05-29 16:34:31.390' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (3, N'HD0081    ', N'GH0010    ', N'D         ', CAST(N'2018-05-29 16:35:01.230' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (2, N'HD0086    ', N'GH0013    ', N'I         ', CAST(N'2018-05-30 12:32:00.230' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (1, N'HD0086    ', N'GH0020    ', N'I         ', CAST(N'2018-05-30 12:32:11.247' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (1, N'HD0086    ', N'GH0020    ', N'U         ', CAST(N'2018-05-30 13:03:12.983' AS DateTime))
INSERT [dbo].[AUD_CHITIETHOADON] ([SoLuong], [MaHD], [MaSP], [Action], [Time]) VALUES (1, N'HD0081    ', N'GH0011    ', N'I         ', CAST(N'2018-05-29 17:03:06.283' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0082    ', CAST(N'2018-05-29 16:34:24.433' AS DateTime), N'NV0010    ', N'KH0013    ', N'I         ', CAST(N'2018-05-29 16:34:24.443' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0081    ', CAST(N'2018-05-29 16:33:18.960' AS DateTime), N'NV0011    ', N'KH0019    ', N'I         ', CAST(N'2018-05-29 17:02:58.620' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0086    ', CAST(N'2018-05-30 12:31:54.607' AS DateTime), N'NV0063    ', N'KH0077    ', N'I         ', CAST(N'2018-05-30 12:31:54.663' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0087    ', CAST(N'2018-05-30 13:10:52.463' AS DateTime), N'NV0008    ', N'KH0008    ', N'I         ', CAST(N'2018-05-30 13:10:52.520' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0088    ', CAST(N'2018-05-30 15:05:26.263' AS DateTime), N'NV0008    ', N'KH0015    ', N'I         ', CAST(N'2018-05-30 15:05:26.347' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0089    ', CAST(N'2018-05-30 15:05:53.057' AS DateTime), N'NV0010    ', N'KH0012    ', N'I         ', CAST(N'2018-05-30 15:05:53.057' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0080    ', CAST(N'2018-05-29 16:32:21.777' AS DateTime), N'NV0001    ', N'KH0001    ', N'D         ', CAST(N'2018-05-29 16:34:08.303' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0081    ', CAST(N'2018-05-29 16:33:18.960' AS DateTime), N'NV0011    ', N'KH0019    ', N'D         ', CAST(N'2018-05-29 16:35:08.117' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0084    ', CAST(N'2018-05-30 12:27:53.687' AS DateTime), N'NV0008    ', N'KH0009    ', N'I         ', CAST(N'2018-05-30 12:27:53.820' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0079    ', CAST(N'2018-05-29 16:32:09.290' AS DateTime), N'NV0001    ', N'KH0001    ', N'I         ', CAST(N'2018-05-29 16:32:12.323' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0080    ', CAST(N'2018-05-29 16:32:21.777' AS DateTime), N'NV0001    ', N'KH0001    ', N'I         ', CAST(N'2018-05-29 16:32:21.830' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0081    ', CAST(N'2018-05-29 16:33:18.960' AS DateTime), N'NV0011    ', N'KH0019    ', N'I         ', CAST(N'2018-05-29 16:33:18.963' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0079    ', CAST(N'2018-05-29 16:32:09.290' AS DateTime), N'NV0001    ', N'KH0001    ', N'D         ', CAST(N'2018-05-29 16:34:03.923' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0085    ', CAST(N'2018-05-30 12:28:54.853' AS DateTime), N'NV0006    ', N'KH0018    ', N'I         ', CAST(N'2018-05-30 12:28:54.850' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0083    ', CAST(N'2018-05-29 16:40:39.817' AS DateTime), N'NV0004    ', N'KH0017    ', N'I         ', CAST(N'2018-05-29 16:40:39.820' AS DateTime))
INSERT [dbo].[AUD_HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH], [Action], [Time]) VALUES (N'HD0086    ', CAST(N'2018-05-30 12:31:54.607' AS DateTime), N'NV0063    ', N'KH0077    ', N'U         ', CAST(N'2018-05-30 13:01:40.263' AS DateTime))
INSERT [dbo].[AUD_KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'KH0075    ', N'Na dog', CAST(N'1997-05-28' AS Date), N'098765432', N'Trước cửa', N'U         ', CAST(N'2018-05-29 18:08:51.900' AS DateTime))
INSERT [dbo].[AUD_KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'KH0076    ', N'khhkh', CAST(N'1997-05-29' AS Date), N'09284327483', N'09897867646', N'I         ', CAST(N'2018-05-29 22:04:23.923' AS DateTime))
INSERT [dbo].[AUD_KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'KH0077    ', N'KHKH', CAST(N'2018-05-30' AS Date), N'02935789357', N'gfdgdf', N'U         ', CAST(N'2018-05-30 12:30:30.347' AS DateTime))
INSERT [dbo].[AUD_KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'KH0075    ', N'Na dogg', CAST(N'1997-05-28' AS Date), N'098765432', N'Trước cửa', N'U         ', CAST(N'2018-05-28 19:14:45.033' AS DateTime))
INSERT [dbo].[AUD_KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'KH0073    ', N'xuanlary', CAST(N'1997-05-06' AS Date), N'0546513187', N'Quảng trị', N'I         ', CAST(N'2018-05-26 15:59:26.743' AS DateTime))
INSERT [dbo].[AUD_KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'KH0074    ', N'Ly Na', CAST(N'2017-09-05' AS Date), N'019283242384', N'Đông Hà', N'I         ', CAST(N'2018-05-28 16:57:42.483' AS DateTime))
INSERT [dbo].[AUD_KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'KH0075    ', N'Na Chó', CAST(N'1997-05-28' AS Date), N'098765432', N'Trước cửa', N'I         ', CAST(N'2018-05-28 17:16:28.150' AS DateTime))
INSERT [dbo].[AUD_KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'KH0075    ', N'Na Chó', CAST(N'1997-05-28' AS Date), N'098765432', N'Trước cửa', N'U         ', CAST(N'2018-05-28 17:26:17.070' AS DateTime))
INSERT [dbo].[AUD_KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'KH0075    ', N'Na dog', CAST(N'1997-05-28' AS Date), N'098765432', N'Trước cửa', N'U         ', CAST(N'2018-05-28 17:31:06.903' AS DateTime))
INSERT [dbo].[AUD_KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'KH0077    ', N'KHKH', CAST(N'2018-05-30' AS Date), N'02935789357', N'gfdgdf', N'I         ', CAST(N'2018-05-30 10:59:02.703' AS DateTime))
INSERT [dbo].[AUD_NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'NV0014    ', N'fgh', 1, CAST(N'1997-05-25' AS Date), N'87654', N'hjdhsh', N'I         ', CAST(N'2018-05-28 19:11:48.613' AS DateTime))
INSERT [dbo].[AUD_NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'NV0064    ', N'happy', 1, CAST(N'1997-05-29' AS Date), N'098757253', N'Đà nẵng', N'I         ', CAST(N'2018-05-29 21:55:36.537' AS DateTime))
INSERT [dbo].[AUD_NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'NV0064    ', N'happy', 1, CAST(N'1997-05-29' AS Date), N'098757253', N'Đà nẵng', N'D         ', CAST(N'2018-05-29 21:55:45.627' AS DateTime))
INSERT [dbo].[AUD_NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'NV0014    ', N'fgh', 1, CAST(N'1997-05-25' AS Date), N'87654', N'hjdhsh', N'U         ', CAST(N'2018-05-29 21:57:26.257' AS DateTime))
INSERT [dbo].[AUD_NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'NV0013    ', N'hhhh', 0, CAST(N'2018-05-25' AS Date), N'8765', N'jhgf', N'U         ', CAST(N'2018-05-29 21:58:05.323' AS DateTime))
INSERT [dbo].[AUD_NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'NV0014    ', N'fgh1', 1, CAST(N'1997-05-25' AS Date), N'87654', N'hjdhsh', N'U         ', CAST(N'2018-05-29 22:04:47.840' AS DateTime))
INSERT [dbo].[AUD_NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'NV0065    ', N'nhu', 0, CAST(N'1997-05-30' AS Date), N'092183748234', N'Tam Kỳ', N'I         ', CAST(N'2018-05-30 10:42:06.640' AS DateTime))
INSERT [dbo].[AUD_NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'NV0068    ', N'hhdhdh', 0, CAST(N'1997-05-30' AS Date), N'09347389432', N'gfhfgjgh', N'I         ', CAST(N'2018-05-30 15:09:12.363' AS DateTime))
INSERT [dbo].[AUD_NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'NV0013    ', N'hhhh', 0, CAST(N'2018-05-25' AS Date), N'8765', N'jhgf', N'I         ', CAST(N'2018-05-25 19:35:32.693' AS DateTime))
INSERT [dbo].[AUD_NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'NV0014    ', N'fgh', 1, CAST(N'1997-05-25' AS Date), N'87654', N'hjdhsh', N'I         ', CAST(N'2018-05-25 19:44:42.193' AS DateTime))
INSERT [dbo].[AUD_NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'NV0063    ', N'xuan', 0, CAST(N'1997-04-08' AS Date), N'09234832674', N'Quảng Trị', N'I         ', CAST(N'2018-05-26 09:33:09.710' AS DateTime))
INSERT [dbo].[AUD_NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'NV0014    ', N'fgh', 1, CAST(N'1997-05-25' AS Date), N'87654', N'hjdhsh', N'D         ', CAST(N'2018-05-26 19:52:54.657' AS DateTime))
INSERT [dbo].[AUD_NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'NV0066    ', N'hh', 0, CAST(N'1997-05-30' AS Date), N'09237498236', N'Quảng Nam', N'I         ', CAST(N'2018-05-30 10:56:21.093' AS DateTime))
INSERT [dbo].[AUD_NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi], [Action], [Time]) VALUES (N'NV0067    ', N'ihihi', 1, CAST(N'2018-05-30' AS Date), N'97807867566', N'hfghf', N'I         ', CAST(N'2018-05-30 10:57:35.950' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0062    ', N'ru', 432, 2, N'U         ', CAST(N'2018-05-29 21:59:29.080' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0108    ', N'nana', 500, 1, N'I         ', CAST(N'2018-05-29 22:02:20.787' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0109    ', N'hihi', 300000, 2, N'I         ', CAST(N'2018-05-30 10:58:15.430' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GNK0001   ', N'Nike trắng 35', 150000, 14, N'U         ', CAST(N'2018-05-22 16:34:40.687' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GTH0001   ', N'Nike trắng 35', 150000, 14, N'U         ', CAST(N'2018-05-22 16:35:18.810' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GNK0002   ', N'Nike trắng 36', 150000, 15, N'U         ', CAST(N'2018-05-22 16:35:23.983' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GHK0001   ', N'Nike trắng 35', 150000, 14, N'U         ', CAST(N'2018-05-22 16:35:42.460' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GHK0002   ', N'Nike trắng 36', 150000, 15, N'U         ', CAST(N'2018-05-22 16:35:48.070' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GHK001    ', N'Nike trắng 35', 150000, 14, N'U         ', CAST(N'2018-05-22 16:37:20.493' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GHK002    ', N'Nike trắng 36', 150000, 15, N'U         ', CAST(N'2018-05-22 16:37:30.153' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GHK001    ', N'Nike trắng', 150000, 14, N'U         ', CAST(N'2018-05-22 16:37:56.793' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GHK002    ', N'Nike đen', 150000, 15, N'U         ', CAST(N'2018-05-22 16:38:27.233' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GHK001    ', N'Nike trắng', 150000, 30, N'U         ', CAST(N'2018-05-22 16:43:13.703' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GHK002    ', N'Nike đen', 150000, 25, N'U         ', CAST(N'2018-05-22 16:43:16.733' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GHK003    ', N'Nike hồng', 150000, 15, N'U         ', CAST(N'2018-05-22 16:43:48.857' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH002     ', N'Nike đen', 150000, 25, N'U         ', CAST(N'2018-05-22 16:44:03.073' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH003     ', N'Nike hồng', 150000, 15, N'U         ', CAST(N'2018-05-22 16:44:26.150' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH001     ', N'Nike', 150000, 30, N'U         ', CAST(N'2018-05-22 16:44:34.650' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH002     ', N'Adidas', 150000, 25, N'U         ', CAST(N'2018-05-22 16:44:38.590' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH003     ', N'Balance', 150000, 15, N'U         ', CAST(N'2018-05-22 16:44:43.817' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH004     ', N'Converse', 150000, 200, N'I         ', CAST(N'2018-05-22 16:45:12.920' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH005     ', N'Vans', 150000, 230, N'I         ', CAST(N'2018-05-22 16:46:43.740' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH006     ', N'Reebok', 150000, 125, N'I         ', CAST(N'2018-05-22 16:47:25.417' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH007     ', N'Buma', 150000, 215, N'I         ', CAST(N'2018-05-22 16:47:53.247' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH007     ', N'Buma', 150000, 215, N'U         ', CAST(N'2018-05-22 16:48:06.920' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH006     ', N'Reebok', 150000, 125, N'U         ', CAST(N'2018-05-22 16:48:12.133' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH005     ', N'Vans', 150000, 230, N'U         ', CAST(N'2018-05-22 16:48:18.020' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH004     ', N'Converse', 150000, 200, N'U         ', CAST(N'2018-05-22 16:48:22.570' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH003     ', N'Balance', 150000, 130, N'U         ', CAST(N'2018-05-22 16:48:26.453' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH007     ', N'Buma', 150000, 215, N'U         ', CAST(N'2018-05-22 16:48:47.523' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH009     ', N'Gucci', 150000, 85, N'I         ', CAST(N'2018-05-22 16:50:47.880' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH010     ', N'Adidas NMD', 150000, 70, N'I         ', CAST(N'2018-05-22 16:53:42.440' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH010     ', N'Adidas NMD', 150000, 70, N'U         ', CAST(N'2018-05-22 16:53:49.080' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH011     ', N'Saint Laurent SL/06', 150000, 115, N'I         ', CAST(N'2018-05-22 16:55:36.977' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH012     ', N'Adidas NMD R1', 150000, 123, N'I         ', CAST(N'2018-05-22 16:56:30.457' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH013     ', N'Sneaker', 150000, 75, N'I         ', CAST(N'2018-05-22 16:57:09.670' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH014     ', N'NikeLab Air Force 1 High', 150000, 35, N'I         ', CAST(N'2018-05-22 16:59:16.810' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH015     ', N'Vans Sk8-Hi', 150000, 55, N'I         ', CAST(N'2018-05-22 17:00:28.337' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH018     ', N'Nike Air Huarache', 150000, 70, N'I         ', CAST(N'2018-05-22 17:04:03.613' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH019     ', N'Sneaker pastel', 150000, 30, N'I         ', CAST(N'2018-05-22 17:04:52.947' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH020     ', N'Jordan Spizike Cement', 150000, 20, N'I         ', CAST(N'2018-05-22 17:05:49.873' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH001     ', N'Nike', 150000, 150, N'U         ', CAST(N'2018-05-22 17:05:54.960' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH002     ', N'Adidas', 150000, 125, N'U         ', CAST(N'2018-05-22 17:05:59.067' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH003     ', N'Balance', 150000, 130, N'U         ', CAST(N'2018-05-22 17:06:05.240' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH004     ', N'Converse', 150000, 200, N'U         ', CAST(N'2018-05-22 17:06:12.233' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH001     ', N'Nike', 150000, 250, N'U         ', CAST(N'2018-05-22 17:07:19.387' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH002     ', N'Adidas', 150000, 325, N'U         ', CAST(N'2018-05-22 17:07:28.560' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH003     ', N'Balance', 150000, 150, N'U         ', CAST(N'2018-05-22 17:07:43.127' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH004     ', N'Converse', 150000, 235, N'U         ', CAST(N'2018-05-22 17:07:48.950' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH005     ', N'Vans', 150000, 230, N'U         ', CAST(N'2018-05-22 17:07:53.027' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH006     ', N'Reebok', 150000, 125, N'U         ', CAST(N'2018-05-22 17:08:01.047' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH007     ', N'Puma', 150000, 215, N'U         ', CAST(N'2018-05-22 17:08:08.140' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH008     ', N'Valentino', 150000, 100, N'U         ', CAST(N'2018-05-22 17:08:28.190' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH009     ', N'Gucci', 150000, 85, N'U         ', CAST(N'2018-05-22 17:08:33.640' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH010     ', N'Adidas NMD', 150000, 235, N'U         ', CAST(N'2018-05-22 17:08:36.783' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH011     ', N'Saint Laurent SL/06', 150000, 115, N'U         ', CAST(N'2018-05-22 17:08:41.040' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH012     ', N'Adidas NMD R1', 150000, 123, N'U         ', CAST(N'2018-05-22 17:08:49.317' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH013     ', N'Sneaker', 150000, 75, N'U         ', CAST(N'2018-05-22 17:08:59.183' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH011     ', N'Saint Laurent SL/06', 105000, 115, N'U         ', CAST(N'2018-05-22 17:09:05.957' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH012     ', N'Adidas NMD R1', 125000, 123, N'U         ', CAST(N'2018-05-22 17:09:09.860' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH014     ', N'NikeLab Air Force 1 High', 150000, 35, N'U         ', CAST(N'2018-05-22 17:09:17.373' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH015     ', N'Vans Sk8-Hi', 150000, 55, N'U         ', CAST(N'2018-05-22 17:09:23.280' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH016     ', N'Nike Free Flyknit', 150000, 25, N'U         ', CAST(N'2018-05-22 17:09:28.017' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH017     ', N'Adidas Ultra Boost 3.0', 150000, 45, N'U         ', CAST(N'2018-05-22 17:09:33.760' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH018     ', N'Nike Air Huarache', 150000, 70, N'U         ', CAST(N'2018-05-22 17:09:45.053' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH018     ', N'Nike Air Huarache', 125, 70, N'U         ', CAST(N'2018-05-22 17:09:49.223' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH018     ', N'Nike Air Huarache', 12500000, 70, N'U         ', CAST(N'2018-05-22 17:09:54.270' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH019     ', N'Sneaker pastel', 150000, 30, N'U         ', CAST(N'2018-05-22 17:10:06.950' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH020     ', N'Jordan Spizike Cement', 150000, 20, N'U         ', CAST(N'2018-05-22 17:10:14.563' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH019     ', N'Sneaker pastel', 2500000, 30, N'U         ', CAST(N'2018-05-22 17:10:20.367' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0108    ', N'nana', 500, 1, N'U         ', CAST(N'2018-05-29 22:02:31.403' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0060    ', N'heo ngốc', 0, 1, N'D         ', CAST(N'2018-05-25 18:37:47.887' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0057    ', N'heo', 0, 1, N'U         ', CAST(N'2018-05-25 18:38:08.077' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0061    ', N'hhh', 76543, 32, N'I         ', CAST(N'2018-05-25 18:41:14.323' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0062    ', N'r', 432, 1, N'I         ', CAST(N'2018-05-25 18:41:31.887' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0061    ', N'hhh', 76543, 32, N'U         ', CAST(N'2018-05-25 18:49:13.213' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH001     ', N'Nike', 500000, 250, N'U         ', CAST(N'2018-05-22 17:24:16.913' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH002     ', N'Adidas', 450000, 325, N'U         ', CAST(N'2018-05-22 17:24:19.280' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH003     ', N'Balance', 550000, 150, N'U         ', CAST(N'2018-05-22 17:24:22.177' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH004     ', N'Converse', 650000, 235, N'U         ', CAST(N'2018-05-22 17:24:48.537' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH005     ', N'Vans', 700000, 230, N'U         ', CAST(N'2018-05-22 17:24:51.523' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH006     ', N'Reebok', 650000, 125, N'U         ', CAST(N'2018-05-22 17:24:55.253' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH007     ', N'Puma', 850000, 215, N'U         ', CAST(N'2018-05-22 17:24:59.223' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH008     ', N'Valentino', 670000, 100, N'U         ', CAST(N'2018-05-22 17:25:01.800' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH009     ', N'Gucci', 900000, 85, N'U         ', CAST(N'2018-05-22 17:25:05.303' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH010     ', N'Adidas NMD', 850000, 235, N'U         ', CAST(N'2018-05-22 17:25:08.187' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH011     ', N'Saint Laurent SL/06', 1050000, 115, N'U         ', CAST(N'2018-05-22 17:25:10.757' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH012     ', N'Adidas NMD R1', 1250000, 123, N'U         ', CAST(N'2018-05-22 17:25:15.057' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH013     ', N'Sneaker', 950000, 75, N'U         ', CAST(N'2018-05-22 17:25:18.967' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH014     ', N'NikeLab Air Force 1 High', 1350000, 35, N'U         ', CAST(N'2018-05-22 17:25:32.413' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH015     ', N'Vans Sk8-Hi', 1070000, 55, N'U         ', CAST(N'2018-05-22 17:25:35.517' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH016     ', N'Nike Free Flyknit', 1500000, 25, N'U         ', CAST(N'2018-05-22 17:25:38.247' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH017     ', N'Adidas Ultra Boost 3.0', 980000, 45, N'U         ', CAST(N'2018-05-22 17:25:40.807' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH018     ', N'Nike Air Huarache', 1250000, 70, N'U         ', CAST(N'2018-05-22 17:25:43.280' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH019     ', N'Sneaker pastel', 1650000, 30, N'U         ', CAST(N'2018-05-22 17:25:45.563' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH020     ', N'Jordan Spizike Cement', 1560000, 20, N'U         ', CAST(N'2018-05-22 17:27:45.490' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0057    ', N'heo', 0, 1, N'I         ', CAST(N'2018-05-25 10:01:34.977' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0062    ', N'r', 432, 1, N'U         ', CAST(N'2018-05-25 18:41:54.253' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0063    ', N'ru', 432, 543, N'I         ', CAST(N'2018-05-25 18:43:49.237' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0058    ', N'dddd', 0, 1, N'I         ', CAST(N'2018-05-25 18:21:20.627' AS DateTime))
GO
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0059    ', N'hdgfhs', 0, 6, N'I         ', CAST(N'2018-05-25 18:29:48.307' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0059    ', N'hdgfhs', 0, 6, N'D         ', CAST(N'2018-05-25 18:33:39.077' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0060    ', N'heo ngốc', 0, 1, N'I         ', CAST(N'2018-05-25 18:37:27.930' AS DateTime))
INSERT [dbo].[AUD_SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon], [Action], [Time]) VALUES (N'GH0058    ', N'dddd', 0, 1, N'D         ', CAST(N'2018-05-25 18:33:51.693' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhucute', N'123', N'như xinh đẹp', N'0', N'I         ', CAST(N'2018-05-27 08:56:48.837' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhucute', N'123', N'như xinh đẹp', N'0', N'U         ', CAST(N'2018-05-27 09:25:35.240' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhucute', N'nhuxinhdep', N'như siêu xinh', N'0', N'U         ', CAST(N'2018-05-27 09:31:40.873' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhucute', N'123', N'như siêu xinh', N'0', N'U         ', CAST(N'2018-05-27 20:40:44.813' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhu', N'123', N'như xinh đẹp', NULL, N'I         ', CAST(N'2018-05-28 18:44:00.747' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhu', N'123', N'như xinh đẹp', NULL, N'U         ', CAST(N'2018-05-28 18:44:07.630' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhuxd', N'123', N'như', N'Quản lý', N'I         ', CAST(N'2018-05-28 18:44:43.953' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhu', N'123', N'như xinh đẹp', N'Quản trị', N'U         ', CAST(N'2018-05-30 02:02:00.880' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhucute', N'123', N'như siêu xinh', N'Bán hàng', N'U         ', CAST(N'2018-05-30 02:02:07.213' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhuxd', N'123', N'như', N'Quản lý', N'U         ', CAST(N'2018-05-30 02:02:20.867' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhuql', N'123', N'như siêu xinh', N'Bán hàng', N'U         ', CAST(N'2018-05-30 02:02:25.657' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhuq', N'123', N'như', N'Quản lý', N'U         ', CAST(N'2018-05-30 02:02:35.387' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhubh', N'123', N'như siêu xinh', N'Bán hàng', N'U         ', CAST(N'2018-05-30 02:02:55.390' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhuql', N'123', N'như', N'Quản lý', N'U         ', CAST(N'2018-05-30 02:03:02.843' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhuql', N'123', N'như quản lý', N'Quản lý', N'U         ', CAST(N'2018-05-30 11:12:59.340' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'hihi', N'hihi', N'hòa như', N'Bán hàng', N'I         ', CAST(N'2018-05-30 11:42:25.077' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'haha', N'haha', N'hòa như', N'Quản lý', N'I         ', CAST(N'2018-05-30 11:43:28.577' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'kkk', N'kkk', N'ka ka', N'Bán hàng', N'I         ', CAST(N'2018-05-30 12:07:39.970' AS DateTime))
INSERT [dbo].[AUD_TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro], [Action], [Time]) VALUES (N'nhuql', N'234', N'như quản lý', N'Quản lý', N'U         ', CAST(N'2018-05-30 15:10:07.573' AS DateTime))
INSERT [dbo].[CHITIETHOADON] ([SoLuong], [MaHD], [MaSP]) VALUES (3, N'HD0082    ', N'GH0015    ')
INSERT [dbo].[CHITIETHOADON] ([SoLuong], [MaHD], [MaSP]) VALUES (3, N'HD0084    ', N'GH0013    ')
INSERT [dbo].[CHITIETHOADON] ([SoLuong], [MaHD], [MaSP]) VALUES (1, N'HD0085    ', N'GH0006    ')
INSERT [dbo].[CHITIETHOADON] ([SoLuong], [MaHD], [MaSP]) VALUES (2, N'HD0088    ', N'GH0010    ')
INSERT [dbo].[CHITIETHOADON] ([SoLuong], [MaHD], [MaSP]) VALUES (2, N'HD0089    ', N'GH0013    ')
INSERT [dbo].[CHITIETHOADON] ([SoLuong], [MaHD], [MaSP]) VALUES (1, N'HD0089    ', N'GH0009    ')
INSERT [dbo].[CHITIETHOADON] ([SoLuong], [MaHD], [MaSP]) VALUES (7, N'HD0082    ', N'GH0013    ')
INSERT [dbo].[CHITIETHOADON] ([SoLuong], [MaHD], [MaSP]) VALUES (2, N'HD0083    ', N'GH0016    ')
INSERT [dbo].[CHITIETHOADON] ([SoLuong], [MaHD], [MaSP]) VALUES (2, N'HD0084    ', N'GH0011    ')
INSERT [dbo].[CHITIETHOADON] ([SoLuong], [MaHD], [MaSP]) VALUES (3, N'HD0084    ', N'GH0013    ')
INSERT [dbo].[CHITIETHOADON] ([SoLuong], [MaHD], [MaSP]) VALUES (2, N'HD0087    ', N'GH0012    ')
INSERT [dbo].[CHITIETHOADON] ([SoLuong], [MaHD], [MaSP]) VALUES (2, N'HD0086    ', N'GH0013    ')
INSERT [dbo].[CHITIETHOADON] ([SoLuong], [MaHD], [MaSP]) VALUES (3, N'HD0086    ', N'GH0020    ')
INSERT [dbo].[CHITIETHOADON] ([SoLuong], [MaHD], [MaSP]) VALUES (1, N'HD0081    ', N'GH0011    ')
INSERT [dbo].[HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH]) VALUES (N'HD0081    ', CAST(N'2018-05-29 16:33:18.960' AS DateTime), N'NV0011    ', N'KH0019    ')
INSERT [dbo].[HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH]) VALUES (N'HD0082    ', CAST(N'2018-05-29 16:34:24.433' AS DateTime), N'NV0010    ', N'KH0013    ')
INSERT [dbo].[HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH]) VALUES (N'HD0083    ', CAST(N'2018-05-29 16:40:39.817' AS DateTime), N'NV0004    ', N'KH0017    ')
INSERT [dbo].[HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH]) VALUES (N'HD0084    ', CAST(N'2018-05-30 12:27:53.687' AS DateTime), N'NV0008    ', N'KH0009    ')
INSERT [dbo].[HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH]) VALUES (N'HD0085    ', CAST(N'2018-05-30 12:28:54.853' AS DateTime), N'NV0006    ', N'KH0018    ')
INSERT [dbo].[HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH]) VALUES (N'HD0086    ', CAST(N'2018-05-30 12:31:54.000' AS DateTime), N'NV0010    ', N'KH0077    ')
INSERT [dbo].[HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH]) VALUES (N'HD0087    ', CAST(N'2018-05-30 13:10:52.463' AS DateTime), N'NV0008    ', N'KH0008    ')
INSERT [dbo].[HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH]) VALUES (N'HD0088    ', CAST(N'2018-05-30 15:05:26.263' AS DateTime), N'NV0008    ', N'KH0015    ')
INSERT [dbo].[HOADON] ([MaHD], [ThoiGianLap], [MaNV], [MaKH]) VALUES (N'HD0089    ', CAST(N'2018-05-30 15:05:53.057' AS DateTime), N'NV0010    ', N'KH0012    ')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0001    ', N'Trần Hoàng Nam', CAST(N'1997-03-11' AS Date), N'01656546545', N'112-Chu Văn An,tp Tam Kỳ')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0002    ', N'Hoàng Anh Tuấn', CAST(N'1985-02-24' AS Date), N'09773665656', N'4-Trần Cao Vân, tp Huế')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0003    ', N'Lê Thị Lan', CAST(N'1994-05-03' AS Date), N'01265989566', N'213- Nguyễn Thái Học, tp Huế')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0004    ', N'Nguyễn Thị Bích', CAST(N'1990-08-16' AS Date), N'01652234654', N'40- Quang Trung , tp Đà Nẵng')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0005    ', N'Trần Mỹ Lan Anh', CAST(N'1986-06-28' AS Date), N'01326564412', N'113- Nguyễn Hoàng, tp Tam Kỳ')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0006    ', N'Bùi Anh Tuấn', CAST(N'1998-03-26' AS Date), N'09546546556', N'30-Nguyễn Huệ, tp Đà nẵng')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0007    ', N'Đặng Anh Khoa', CAST(N'1994-05-05' AS Date), N'02134646466', N'06-Tôn Đức Thắng,tpTam Kỳ')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0008    ', N'Nguyễn Nữ Tuyết Nhi', CAST(N'1996-04-28' AS Date), N'09778632472', N'50-Phan Châu Trinh,tp Tam Kỳ')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0009    ', N'Hoàng Viết Khánh', CAST(N'2000-07-15' AS Date), N'09321436473', N'79- Nguyễn Chí Thanh, tp Huế')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0010    ', N'Trần Khởi My', CAST(N'1993-03-01' AS Date), N'01923243244', N'129- Đinh Tiên Hoàng, tp Huế')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0011    ', N'Lê Thanh Tâm', CAST(N'2002-06-28' AS Date), N'01923829483', N'150- Nhật Lệ, tp Huế')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0012    ', N'Hoàng Trọng Vũ', CAST(N'1988-09-03' AS Date), N'01293234324', N'200- An Dương Vương, tp Huế')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0013    ', N'Bùi Tiến Dũng', CAST(N'1990-07-06' AS Date), N'01923829443', N'17- Phạm Văn Đồng, tp Huế')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0014    ', N'Phan Văn Đức', CAST(N'1998-05-06' AS Date), N'09131293284', N'68- Nguyễn Hữu Cảnh, tp Huế')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0015    ', N'Lương Xuân Trường', CAST(N'2002-07-05' AS Date), N'01232943244', N'75- Phùng Hưng, tp Huế')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0016    ', N'Nguyễn Công Phượng', CAST(N'1989-03-06' AS Date), N'02984329484', N'100- Trần Dư, tp Tam Kỳ')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0017    ', N'Nguyễn Tuấn Anh', CAST(N'1996-08-12' AS Date), N'09123294834', N'34- Huỳnh Thúc Kháng, tp Tam Kỳ')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0018    ', N'Quang Hải', CAST(N'1997-03-18' AS Date), N'01283294399', N'98- Bà Triệu, tp Huế')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0019    ', N'Bùi Tiến Dụng', CAST(N'1999-06-05' AS Date), N'09059234723', N'213- Trường Chinh, tp Huế')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0020    ', N'Vũ Văn Thành', CAST(N'2001-12-08' AS Date), N'01928329483', N'45- Đinh Tiên Hoàng, tp huế')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0054    ', N'Nguyễn Duy Mạnh', CAST(N'1999-10-29' AS Date), N'09123284632', N'78- Nguyễn Khánh Toàn')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0055    ', N'Lê Văn Đại', CAST(N'1994-06-06' AS Date), N'0123827337', N'34- Hà Nội. tp Huế')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0056    ', N'Hồng Duy', CAST(N'1993-07-26' AS Date), N'02193727383', N'14- Bến Nghé, tp Huế')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0073    ', N'xuanlary', CAST(N'1997-05-06' AS Date), N'0546513187', N'Quảng trị')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0074    ', N'Ly Na', CAST(N'2017-09-05' AS Date), N'019283242384', N'Đông Hà')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0075    ', N'Na dogg', CAST(N'1997-05-28' AS Date), N'098765432', N'Trước cửa')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0076    ', N'khhkh', CAST(N'1997-05-29' AS Date), N'09284327483', N'09897867646')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'KH0077    ', N'KHKH01', CAST(N'2018-05-30' AS Date), N'02935789357', N'gfdgdf')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0001    ', N'Nguyễn Hoàng Anh', 1, CAST(N'1995-04-27' AS Date), N'01653658946', N'203- Nguyễn Huệ, tp Huế')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0002    ', N'Lê Thị Hồng An', 0, CAST(N'1996-06-01' AS Date), N'0905165465', N'45- Hùng vương, tp Huế')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0003    ', N'Trần Kim Khánh', 0, CAST(N'1996-01-20' AS Date), N'01253465454', N'75- Phan Bội Châu, tp Huế')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0004    ', N'Hoàng Văn Hiếu', 1, CAST(N'1989-10-15' AS Date), N'0905356566', N'73- Trần Cao Vân, tp Huế')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0005    ', N'Lê Nam Khánh', 1, CAST(N'1992-12-08' AS Date), N'0905387987', N'120- Điện Biên phủ, tp Huế')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0006    ', N'Nguyễn Trường An', 1, CAST(N'1995-08-06' AS Date), N'01658645465', N'45- Trần Cao Vân, tp Huế')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0007    ', N'Phạm Ánh Hồng', 0, CAST(N'1995-11-29' AS Date), N'02948384835', N'100- Nguyễn Khánh Toàn, tp Huế')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0008    ', N'Trần Mai Anh', 0, CAST(N'1994-10-08' AS Date), N'09248329483', N'203- Trần Hưng Đạo')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0009    ', N'Phan Văn Minh', 1, CAST(N'1993-10-26' AS Date), N'01354646548', N'109- Nguyễn Bỉnh Khiêm,  tp Huế')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0010    ', N'Hoàng Thành Nam', 1, CAST(N'1994-09-06' AS Date), N'09128329483', N'78- Phùng Hưng, tp Huế')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0011    ', N'Lê Chí Thiện', 1, CAST(N'1994-05-18' AS Date), N'09283298473', N'64- Nguyễn Văn Trỗi, tp Huế')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0013    ', N'hhhh1', 0, CAST(N'2018-05-25' AS Date), N'8765', N'jhgf')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0014    ', N'fgh11', 1, CAST(N'1997-05-25' AS Date), N'87654', N'hjdhsh')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0063    ', N'xuan', 0, CAST(N'1997-04-08' AS Date), N'09234832674', N'Quảng Trị')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0065    ', N'nhu', 0, CAST(N'1997-05-30' AS Date), N'092183748234', N'Tam Kỳ')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0066    ', N'hh', 0, CAST(N'1997-05-30' AS Date), N'09237498236', N'Quảng Nam')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0067    ', N'ihihi', 1, CAST(N'2018-05-30' AS Date), N'97807867566', N'hfghf')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [Sdt], [DiaChi]) VALUES (N'NV0068    ', N'hhdhdh', 0, CAST(N'1997-05-30' AS Date), N'09347389432', N'gfhfgjgh')
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0001    ', N'Nike', 350000, 340)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0002    ', N'Adidas', 400000, 150)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0003    ', N'Balance', 450000, 350)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0004    ', N'Converse', 300000, 250)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0005    ', N'Vans', 350000, 230)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0006    ', N'Reebok', 400000, 120)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0007    ', N'Puma', 500000, 56)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0008    ', N'Valentino', 520000, 885)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0009    ', N'Gucci', 800000, 60)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0010    ', N'Adidas NMD', 650000, 35)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0011    ', N'Saint Laurent SL/06', 900000, 54)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0012    ', N'Adidas NMD R1', 720000, 50)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0013    ', N'Sneaker', 550000, 25)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0014    ', N'NikeLab Air Force 1 High', 760000, 36)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0015    ', N'Vans Sk8-Hi', 530000, 30)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0016    ', N'Nike Free Flyknit', 105000, 45)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0017    ', N'Adidas Ultra Boost 3.0', 830000, 23)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0018    ', N'Nike Air Huarache', 125000, 25)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0019    ', N'Sneaker pastel', 950000, 29)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0020    ', N'Jordan Spizike Cement', 145000, 15)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0061    ', N'hhh1', 76543, 432)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0062    ', N'ru1', 432, 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0063    ', N'ru', 432, 543)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0108    ', N'nana1', 500, 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [DonGiaBan], [SoLuongCon]) VALUES (N'GH0109    ', N'hihi', 300000, 2)
INSERT [dbo].[TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro]) VALUES (N'haha', N'haha', N'hòa như', N'Quản lý')
INSERT [dbo].[TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro]) VALUES (N'hihi', N'hihi', N'hòa như', N'Bán hàng')
INSERT [dbo].[TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro]) VALUES (N'kkk', N'kkk', N'ka ka', N'Bán hàng')
INSERT [dbo].[TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro]) VALUES (N'nhubh', N'123', N'như bán hàng', N'Bán hàng')
INSERT [dbo].[TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro]) VALUES (N'nhuql', N'123', N'như quản lý', N'Quản lý')
INSERT [dbo].[TAIKHOAN] ([TenDangNhap], [MatKhau], [Ten], [VaiTro]) VALUES (N'nhuqt', N'123', N'như xinh đẹp', N'Quản trị')
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_HOADON] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_HOADON]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_SANPHAM]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
/****** Object:  StoredProcedure [dbo].[DangNhap_TK]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DangNhap_TK]
	@TenDangNhap nvarchar(50),
	@MatKhau nvarchar(10)
AS
BEGIN
	SELECT * FROM TAIKHOAN
	WHERE TenDangNhap = @TenDangNhap AND MatKhau = @MatKhau COLLATE SQL_Latin1_General_CP1_CS_AS
END

GO
/****** Object:  StoredProcedure [dbo].[Delete_CTHD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Delete_CTHD] @MaHD nchar(10), @MaSP nchar(10)
AS
BEGIN
	Delete from CHITIETHOADON Where (MaHD=@MaHD and MaSP=@MaSP)
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Delete_HD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Delete_HD] @MaHD nchar(10)
AS
BEGIN
	Delete from HOADON Where MaHD=@MaHD
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Delete_KH]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Delete_KH] @MaKH nchar(10)
AS
BEGIN
	Delete from KHACHHANG Where MaKH=@MaKH
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Delete_NV]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Delete_NV] @MaNV nchar(10)
AS
BEGIN
	Delete from NHANVIEN Where MaNV=@MaNV
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Delete_SP]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Delete_SP] @MaSP nchar(10)
AS
BEGIN
	Delete from SANPHAM Where MaSP=@MaSP
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Delete_TK]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Delete_TK] @TenDangNhap nvarchar(50)
AS
BEGIN
	Delete from TAIKHOAN Where TenDangNhap=@TenDangNhap
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[DoiMatKhau_TK]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DoiMatKhau_TK]
	@TenDangNhap nvarchar(50),
	@MatKhau nvarchar(10)
AS
	BEGIN
		UPDATE TAIKHOAN
		SET MatKhau = @MatKhau COLLATE SQL_Latin1_General_CP1_CS_AS
		WHERE TenDangNhap = @TenDangNhap
END

GO
/****** Object:  StoredProcedure [dbo].[Insert_Audit_HD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Insert_Audit_HD] @MaHD nchar(10), @ThoiGianLap datetime, @MaNV nchar(10), @MaKH nchar(10)
AS
BEGIN
	Insert into HOADON (MaHD, ThoiGianLap,MaNV,MaKH) values(@MaHD, @ThoiGianLap,@MaNV,@MaKH)
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Insert_Audit_KH]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Insert_Audit_KH] @MaKH nchar(10), @TenKH nvarchar(50),@NgaySinh date ,@Sdt nvarchar(50),@DiaChi nvarchar(50)
AS
BEGIN
	Insert into KHACHHANG( MaKH, TenKH, NgaySinh, Sdt, DiaChi) values(@MaKH,@TenKH,@NgaySinh,@Sdt,@DiaChi)
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Insert_Audit_NV]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Insert_Audit_NV] @MaNV nchar(10), @TenNV nvarchar(50),@GioiTinh bit,@Ngaysinh date, @Sdt nvarchar(50),@DiaChi nvarchar(50)
AS
BEGIN
	Insert NHANVIEN values(@MaNV, @TenNV,@GioiTinh,@Ngaysinh,@Sdt,@DiaChi)
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Insert_Audit_SP]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Insert_Audit_SP] @MaSP nchar(10), @TenSP nvarchar(50),@DonGiaBan float, @SoLuongCon int
AS
BEGIN
	Insert into SANPHAM(MaSP, TenSP,DonGiaBan, SoLuongCon) values(@MaSP,@TenSP,@DonGiaBan,@SoLuongCon)
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Insert_CTHD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Insert_CTHD] @SoLuong int, @MaHD nchar(10), @MaSP nchar(10)
AS
BEGIN
	Insert into CHITIETHOADON values(@SoLuong,@MaHD,@MaSP)
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Insert_HD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Insert_HD] @ThoiGianLap datetime, @MaNV nchar(10), @MaKH nchar(10)
AS
BEGIN
	Insert into HOADON (ThoiGianLap,MaNV,MaKH) values(@ThoiGianLap,@MaNV,@MaKH)
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Insert_KH]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Insert_KH] @TenKH nvarchar(50),@NgaySinh date ,@Sdt nvarchar(50),@DiaChi nvarchar(50)
AS
BEGIN
	Insert into KHACHHANG(TenKH, NgaySinh, Sdt, DiaChi) values(@TenKH,@NgaySinh,@Sdt,@DiaChi)
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Insert_NV]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Insert_NV] @TenNV nvarchar(50),@GioiTinh bit,@Ngaysinh date, @Sdt nvarchar(50),@DiaChi nvarchar(50)
AS
BEGIN
	Insert NHANVIEN(TenNV,GioiTinh, NgaySinh,Sdt,DiaChi) values(@TenNV,@GioiTinh,@Ngaysinh,@Sdt,@DiaChi)
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Insert_SP]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Insert_SP] @TenSP nvarchar(50),@DonGiaBan float, @SoLuongCon int
AS
BEGIN
	Insert into SANPHAM(TenSP,DonGiaBan, SoLuongCon) values(@TenSP,@DonGiaBan,@SoLuongCon)
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Insert_TK]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Insert_TK] @TenDangNhap nvarchar(50),@MatKhau nvarchar(10),@Ten nvarchar(50), @VaiTro nvarchar(50)
AS
BEGIN
	Insert into TAIKHOAN(TenDangNhap,MatKhau,Ten,VaiTro) values(@TenDangNhap,@MatKhau, @Ten, @VaiTro)
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Select_Audit_CTHD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_Audit_CTHD]
AS
BEGIN

		SELECT AUD_CHITIETHOADON.MaHD AS [Mã hóa đơn],
			   ThoiGianLap AS [Thời gian lập],
			   MaSP AS [Mã sản phẩm], 
			   SoLuong AS [Số lượng],
			   AUD_CHITIETHOADON.Action,
			   AUD_CHITIETHOADON.Time
		FROM AUD_CHITIETHOADON 
		JOIN AUD_HOADON ON AUD_CHITIETHOADON.MaHD = AUD_HOADON.MaHD
		ORDER BY AUD_CHITIETHOADON.Time DESC
END

GO
/****** Object:  StoredProcedure [dbo].[Select_Audit_HD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_Audit_HD] 
AS
BEGIN

	SELECT		MaHD AS [Mã hóa đơn],
		    ThoiGianLap AS [Thời gian lập],
		   MaNV AS [Nhân viên],
		   MaKH AS [Khách hàng],
		   Action,
		   time
		   
		   from AUD_HOADON
END

GO
/****** Object:  StoredProcedure [dbo].[Select_Audit_KH]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_Audit_KH] 
AS
BEGIN

	SELECT		MaKH AS [Mã khách hàng],
				TenKH AS [Tên khách hàng],
				NgaySinh AS [Ngày sinh],
			   Sdt AS [Số điện thoại],
			   DiaChi AS [Địa chỉ],
			   Action,
			   Time
		   from AUD_KHACHHANG
		   ORDER BY Time DESC
END

GO
/****** Object:  StoredProcedure [dbo].[Select_Audit_NV]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_Audit_NV] 
AS
BEGIN

	SELECT MaNV AS [Mã nhân viên],
		   TenNV AS [Tên nhân viên],
		   GioiTinh AS [Giới tính],
		   NgaySinh AS [Ngày sinh],
		   Sdt AS [Số điện thoại],
		   DiaChi AS [Địa chỉ],
			Action,
			Time
	FROM AUD_NHANVIEN
	ORDER BY Time DESC
END

GO
/****** Object:  StoredProcedure [dbo].[Select_Audit_SP]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_Audit_SP] 
AS
BEGIN

	SELECT MaSP AS [Mã sản phẩm], 
		   TenSP AS [Tên sản phẩm], 
		   DonGiaBan AS [Đơn giá bán],
		   SoLuongCon AS [Số lượng còn],
		   Action,
		   Time
	FROM AUD_SANPHAM
	ORDER BY Time DESC
END

GO
/****** Object:  StoredProcedure [dbo].[Select_Audit_TK]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_Audit_TK] 
AS
BEGIN

	SELECT TenDangNhap AS [Tên đăng nhập],
		   MatKhau AS [Mật khẩu],
		   Ten AS [Tên],
		   VaiTro AS [Vai trò],
		   Action,
		   Time
	from AUD_TAIKHOAN
	SET NOCOUNT ON;
END

GO
/****** Object:  StoredProcedure [dbo].[Select_CTHD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_CTHD] @MaHD nchar(10)
AS
BEGIN

	SELECT HOADON.ThoiGianLap AS [Thời gian lập],
		   SANPHAM.TenSP AS [Tên sản phẩm], 
		   SANPHAM.DonGiaBan AS [Đơn giá bán],
		   CHITIETHOADON.SoLuong AS [Số lượng], 
		   NHANVIEN.TenNV AS [Tên nhân viên],
		   KHACHHANG.TenKH AS [Tên khách hàng]
	FROM CHITIETHOADON 
	JOIN HOADON ON CHITIETHOADON.MaHD = HOADON.MaHD 
	JOIN SANPHAM ON CHITIETHOADON.MaSP = SANPHAM.MaSP 
	JOIN KHACHHANG ON HOADON.MaKH = KHACHHANG.MaKH
	JOIN NHANVIEN ON HOADON.MaNV = NHANVIEN.MaNV
	WHERE CHITIETHOADON.MaHD = @MaHD
END

GO
/****** Object:  StoredProcedure [dbo].[Select_HD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_HD] 
AS
BEGIN
SELECT		MaHD AS [Mã hóa đơn],
		    ThoiGianLap AS [Thời gian lập],
		   MaNV AS [Nhân viên],
		   MaKH AS [Khách hàng]
		   
		   from HOADON
END

GO
/****** Object:  StoredProcedure [dbo].[Select_KH]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_KH] 
AS
BEGIN
SELECT		MaKH AS [Mã khách hàng],
		   TenKH AS [Tên khách hàng],
		   NgaySinh AS [Ngày sinh],
		   Sdt AS [Số điện thoại],
		   DiaChi AS [Địa chỉ]
		   from KHACHHANG
END

GO
/****** Object:  StoredProcedure [dbo].[Select_KH_CoTS]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_KH_CoTS]  @MaKH nchar(10)
AS
BEGIN
SELECT * from KHACHHANG Where MaKH = @MaKH
END

GO
/****** Object:  StoredProcedure [dbo].[Select_NV]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_NV] 
AS
BEGIN

	SELECT MaNV AS [Mã nhân viên],
		   TenNV AS [Tên nhân viên],
		   GioiTinh AS [Giới tính],
		   NgaySinh AS [Ngày sinh],
		   Sdt AS [Số điện thoại],
		   DiaChi AS [Địa chỉ]
	FROM NHANVIEN
END

GO
/****** Object:  StoredProcedure [dbo].[Select_NV_CoTS]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_NV_CoTS]  @MaNV nchar(10)
AS
BEGIN
SELECT * from NHANVIEN Where MaNV = @MaNV
END

GO
/****** Object:  StoredProcedure [dbo].[Select_SP]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_SP] 
AS
BEGIN

	SELECT MaSP AS [Mã sản phẩm], 
		   TenSP AS [Tên sản phẩm], 
		   DonGiaBan AS [Đơn giá bán],
		   SoLuongCon AS [Số lượng còn] 
	FROM SANPHAM
END

GO
/****** Object:  StoredProcedure [dbo].[Select_SP_CoTS]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_SP_CoTS]  @MaSP nchar(10)
AS
BEGIN
SELECT * from SANPHAM Where MaSP = @MaSP
END

GO
/****** Object:  StoredProcedure [dbo].[Select_TK]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Select_TK] 
AS
BEGIN

	SELECT TenDangNhap AS [Tên đăng nhập],
		   Ten AS [Tên],
		   VaiTro AS [Vai trò]
	from TAIKHOAN
	SET NOCOUNT ON;
END

GO
/****** Object:  StoredProcedure [dbo].[sp_DoiMatKhau]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DoiMatKhau]
	@TenDangNhap nvarchar(50),
	@MatKhau nvarchar(10)
AS
	BEGIN
		UPDATE TAIKHOAN
		SET MatKhau = @MatKhau COLLATE SQL_Latin1_General_CP1_CS_AS
		WHERE TenDangNhap = @TenDangNhap
	END
GO
/****** Object:  StoredProcedure [dbo].[ThongKeDoanhThu]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ThongKeDoanhThu]
				@Thoigianbatdau datetime,
				@Thoigianketthuc datetime
AS
BEGIN

		SELECT SANPHAM.TenSP AS [Tên sản phẩm],
				SANPHAM.DonGiaBan AS [Đơn giá bán],
			   SUM(CHITIETHOADON.SoLuong) AS [Tổng số lượng],
			   sum(CHITIETHOADON.SoLuong*SANPHAM.DonGiaBan) AS [Thành tiền]
			   
		from CHITIETHOADON 
		JOIN SANPHAM ON CHITIETHOADON.MaSP = SANPHAM.MaSP
		JOIN HOADON ON CHITIETHOADON.MaHD = HOADON.MaHD
		WHERE HOADON.ThoiGianLap BETWEEN @ThoiGianBatDau AND @ThoiGianKetThuc
		GROUP BY TenSP, DonGiaBan

END

GO
/****** Object:  StoredProcedure [dbo].[ThongKeHangBan]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ThongKeHangBan]
				@Thoigianbatdau datetime,
				@Thoigianketthuc datetime
AS
BEGIN

		SELECT SANPHAM.TenSP AS [Tên sản phẩm],
				SANPHAM.DonGiaBan AS [Đơn giá bán],
			   SUM(CHITIETHOADON.SoLuong) AS [Tổng số lượng]
			   
		from CHITIETHOADON 
		JOIN SANPHAM ON CHITIETHOADON.MaSP = SANPHAM.MaSP
		JOIN HOADON ON CHITIETHOADON.MaHD = HOADON.MaHD
		WHERE HOADON.ThoiGianLap BETWEEN @ThoiGianBatDau AND @ThoiGianKetThuc
		GROUP BY TenSP,DonGiaBan

END

GO
/****** Object:  StoredProcedure [dbo].[TimKiem_KH]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TimKiem_KH] @Chuoitimkiem nvarchar(50)
AS
BEGIN
	Select*from KHACHHANG where TenKH like N'%'+ @Chuoitimkiem +'%'
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[TimKiem_NV]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TimKiem_NV] @Chuoitimkiem nvarchar(50)
AS
BEGIN
	Select*from NHANVIEN where TenNV like N'%'+ @Chuoitimkiem +'%'
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[TimKiem_SP]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TimKiem_SP] @Chuoitimkiem nvarchar(50)
AS
BEGIN
	Select*from SANPHAM where TenSP like N'%'+ @Chuoitimkiem +'%'
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[TimKiem_TK]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TimKiem_TK] @Chuoitimkiem nvarchar(50)
AS
BEGIN
	Select*from TAIKHOAN where Ten like N'%'+ @Chuoitimkiem +'%'
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Update_CTHD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Update_CTHD] (@SoLuong int =null, @MaHD nchar(10),@MaSP nchar (10))
AS
BEGIN
	UPDATE CHITIETHOADON
	SET SoLuong = @SoLuong
	Where  (MaHD = @MaHD and MaSP = @MaSP)
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Update_HD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Update_HD] (@MaHD nchar(10) = null,@ThoiGianLap datetime =null,@MaNV nchar(10)=null,@MaKH nchar (10)=null)
AS
BEGIN
	UPDATE HOADON
	SET ThoiGianLap = @ThoiGianLap, MaNV = @MaNV, MaKH = @MaKH
    Where MaHD = @MaHD
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Update_KH]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Update_KH] (@MaKH nchar(10) = null,@TenKH nvarchar(50)=null,@NgaySinh date = null,@Sdt nvarchar(50)=null, @DiaChi nvarchar(50)=null)
AS
BEGIN
	UPDATE KHACHHANG
	SET TenKH = @TenKH, NgaySinh=@NgaySinh, Sdt = @Sdt, DiaChi=@DiaChi
    Where MaKH = @MaKH
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Update_NV]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Update_NV] (@MaNV nchar(10) = null,@TenNV nvarchar(50)=null,@GioiTinh bit = null,@NgaySinh date = null,@Sdt nvarchar(50)=null, @DiaChi nvarchar(50)=null)
AS
BEGIN
	UPDATE NHANVIEN
	SET TenNV = @TenNV, GioiTinh=@GioiTinh,NgaySinh = @NgaySinh, Sdt = @Sdt, DiaChi= @DiaChi
    Where MaNV = @MaNV
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Update_SP]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Update_SP] (@MaSP nchar(10) = null,@TenSP nvarchar(50)=null,@DonGiaBan float = null,@SoLuongCon int = null)
AS
BEGIN
	UPDATE SANPHAM
	SET TenSP = @TenSP, DonGiaBan = @DonGiaBan, SoLuongCon = @SoLuongCon
    Where MaSP = @MaSP
	SET NOCOUNT ON;

END

GO
/****** Object:  StoredProcedure [dbo].[Update_TK]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Update_TK] (@TenDangNhap nvarchar(50) = null,@MatKhau nvarchar(10)= null, @Ten nvarchar(50)=null, @VaiTro nvarchar(50)=null)
AS
BEGIN
	UPDATE TAIKHOAN
	SET MatKhau=@MatKhau,Ten=@Ten,VaiTro=@VaiTro
    Where TenDangNhap = @TenDangNhap
	SET NOCOUNT ON;

END

GO
/****** Object:  Trigger [dbo].[AuditDeleteCTHD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AuditDeleteCTHD]
	ON [dbo].[CHITIETHOADON]
	FOR DELETE 
	AS
	insert into AUD_CHITIETHOADON select *,'D',getdate() From deleted

GO
/****** Object:  Trigger [dbo].[AuditInsertCTHD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AuditInsertCTHD]
	ON [dbo].[CHITIETHOADON]
	FOR Insert 
	AS
	insert into AUD_CHITIETHOADON select *,'I',getdate() From inserted

GO
/****** Object:  Trigger [dbo].[AuditUpdateCTHD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AuditUpdateCTHD]
	ON [dbo].[CHITIETHOADON]
	FOR Update 
	AS
	insert into AUD_CHITIETHOADON select *,'U',getdate() From deleted

GO
/****** Object:  Trigger [dbo].[AuditDeleteHD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AuditDeleteHD]
	ON [dbo].[HOADON]
	FOR DELETE 
	AS
	insert into AUD_HOADON select *,'D',getdate() From deleted

GO
/****** Object:  Trigger [dbo].[AuditInsertHD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AuditInsertHD]
	ON [dbo].[HOADON]
	FOR Insert 
	AS
	insert into AUD_HOADON select *,'I',getdate() From inserted

GO
/****** Object:  Trigger [dbo].[AuditUpdateHD]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[AuditUpdateHD]
	ON [dbo].[HOADON]
	FOR Update 
	AS
	insert into AUD_HOADON select *,'U',getdate() From deleted

GO
/****** Object:  Trigger [dbo].[AuditDeleteKH]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AuditDeleteKH]
	ON [dbo].[KHACHHANG]
	FOR DELETE 
	AS
	insert into AUD_KHACHHANG select *,'D',getdate() From deleted

GO
/****** Object:  Trigger [dbo].[AuditInsertKH]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AuditInsertKH]
	ON [dbo].[KHACHHANG]
	FOR Insert 
	AS
	insert into AUD_KHACHHANG select *,'I',getdate() From inserted

GO
/****** Object:  Trigger [dbo].[AuditUpdateKH]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AuditUpdateKH]
	ON [dbo].[KHACHHANG]
	FOR Update 
	AS
	insert into AUD_KHACHHANG select *,'U',getdate() From deleted

GO
/****** Object:  Trigger [dbo].[AuditDeleteNV]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AuditDeleteNV]
	ON [dbo].[NHANVIEN]
	FOR DELETE 
	AS
	insert into AUD_NHANVIEN select *,'D',getdate() From deleted

GO
/****** Object:  Trigger [dbo].[AuditInsertNV]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AuditInsertNV]
	ON [dbo].[NHANVIEN]
	FOR Insert 
	AS
	insert into AUD_NHANVIEN select *,'I',getdate() From inserted

GO
/****** Object:  Trigger [dbo].[AuditUpdateNV]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AuditUpdateNV]
	ON [dbo].[NHANVIEN]
	FOR Update 
	AS
	insert into AUD_NHANVIEN select *,'U',getdate() From deleted

GO
/****** Object:  Trigger [dbo].[AuditDeleteSP]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AuditDeleteSP]
	ON [dbo].[SANPHAM]
	FOR DELETE 
	AS
	insert into AUD_SANPHAM select *,'D',getdate() From deleted

GO
/****** Object:  Trigger [dbo].[AuditInsertSP]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AuditInsertSP]
	ON [dbo].[SANPHAM]
	FOR Insert 
	AS
	insert into AUD_SANPHAM select *,'I',getdate() From inserted

GO
/****** Object:  Trigger [dbo].[AuditUpdateSP]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AuditUpdateSP]
	ON [dbo].[SANPHAM]
	FOR Update 
	AS
	insert into AUD_SANPHAM select *,'U',getdate() From deleted

GO
/****** Object:  Trigger [dbo].[AuditDeleteTK]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AuditDeleteTK]
	ON [dbo].[TAIKHOAN]
	FOR DELETE 
	AS
	insert into AUD_TAIKHOAN select *,'D',getdate() From deleted

GO
/****** Object:  Trigger [dbo].[AuditInsertTK]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AuditInsertTK]
	ON [dbo].[TAIKHOAN]
	FOR Insert 
	AS
	insert into AUD_TAIKHOAN select *,'I',getdate() From inserted

GO
/****** Object:  Trigger [dbo].[AuditUpdateTK]    Script Date: 25-Dec-18 02:22:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AuditUpdateTK]
	ON [dbo].[TAIKHOAN]
	FOR Update 
	AS
	insert into AUD_TAIKHOAN select *,'U',getdate() From deleted

GO
USE [master]
GO
ALTER DATABASE [QLBANGIAY] SET  READ_WRITE 
GO
