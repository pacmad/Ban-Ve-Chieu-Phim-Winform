USE [master]
GO
/****** Object:  Database [BanVeRapChieuPhim]    Script Date: 20/06/2020 10:44:56 CH ******/
CREATE DATABASE [BanVeRapChieuPhim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanVeRapChieuPhim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BanVeRapChieuPhim.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BanVeRapChieuPhim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\BanVeRapChieuPhim_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BanVeRapChieuPhim] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanVeRapChieuPhim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BanVeRapChieuPhim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET ARITHABORT OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET  MULTI_USER 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BanVeRapChieuPhim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BanVeRapChieuPhim] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BanVeRapChieuPhim]
GO
/****** Object:  Table [dbo].[tb_BaoGia]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_BaoGia](
	[MaDinhDang] [int] NULL,
	[MaLoaiGhe] [int] NULL,
	[MaKTG] [int] NULL,
	[MaGia] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_DatGhe]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_DatGhe](
	[SoGhe] [varchar](50) NULL,
	[MaVe] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_DinhDang]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DinhDang](
	[MaDinhDang] [int] IDENTITY(1,1) NOT NULL,
	[TenDinhDang] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_DinhDang] PRIMARY KEY CLUSTERED 
(
	[MaDinhDang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_DSVeDat]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DSVeDat](
	[MaVe] [int] NULL,
	[MaThanhVien] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Ghe]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Ghe](
	[MaGhe] [int] IDENTITY(1,1) NOT NULL,
	[MaPhong] [int] NULL,
	[MaLoaiGhe] [int] NULL,
	[SoGhe] [varchar](50) NULL,
	[MaTrangThai] [int] NULL,
 CONSTRAINT [PK_tb_Ghe] PRIMARY KEY CLUSTERED 
(
	[MaGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Gia]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Gia](
	[MaGia] [int] IDENTITY(1,1) NOT NULL,
	[DonGia] [float] NULL,
 CONSTRAINT [PK_tb_Gia] PRIMARY KEY CLUSTERED 
(
	[MaGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_GiaVeDat]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_GiaVeDat](
	[MaGia] [int] NULL,
	[MaVe] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_KTG]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_KTG](
	[MaKTG] [int] IDENTITY(1,1) NOT NULL,
	[NgayChieu] [datetime] NULL,
	[GioChieu] [varchar](50) NULL,
 CONSTRAINT [PK_tb_KTG] PRIMARY KEY CLUSTERED 
(
	[MaKTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_LichChieu]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_LichChieu](
	[MaKTG] [int] NULL,
	[MaPhim] [int] NULL,
	[MaPhong] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_LoaiGhe]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_LoaiGhe](
	[MaLoaiGhe] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_LoaiGhe] PRIMARY KEY CLUSTERED 
(
	[MaLoaiGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_NhanVien]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[HoTen] [nvarchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Sdt] [varchar](50) NULL,
	[SoThe] [nchar](10) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [bit] NULL,
	[PassWord] [varchar](50) NULL,
	[IDXaPhuong] [int] NULL,
 CONSTRAINT [PK_tb_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Phim]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Phim](
	[MaPhim] [int] IDENTITY(1,1) NOT NULL,
	[TenPhim] [nvarchar](max) NULL,
	[AnhDaiDien] [varchar](100) NULL,
	[MaTheLoai] [int] NULL,
	[MaQuocGia] [int] NOT NULL,
	[ThoiLuong] [nvarchar](50) NULL,
	[KhoiChieu] [datetime] NULL,
	[KetThuc] [datetime] NULL,
	[DaoDien] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Trailer] [nvarchar](max) NULL,
	[MaDinhDang] [int] NULL,
	[MaNhanVien] [int] NULL,
 CONSTRAINT [PK_tb_Phim] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_Phong]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Phong](
	[MaPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](max) NULL,
	[SoHangMax] [int] NULL,
	[SoCotMax] [int] NULL,
	[MaDinhDang] [int] NULL,
 CONSTRAINT [PK_tb_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_QuanHuyen]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_QuanHuyen](
	[IDQuanHuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuanHuyen] [nvarchar](max) NULL,
	[IDTinhThanhPho] [int] NULL,
 CONSTRAINT [PK_tb_QuanHuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuanHuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_QuocGia]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_QuocGia](
	[MaQuocGia] [int] IDENTITY(1,1) NOT NULL,
	[TenQuocGia] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_QuocGia] PRIMARY KEY CLUSTERED 
(
	[MaQuocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_SoGhe]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_SoGhe](
	[SoGhe] [varchar](50) NOT NULL,
	[SoHang] [varchar](50) NULL,
	[SoCot] [varchar](50) NULL,
 CONSTRAINT [PK_tb_SoGhe] PRIMARY KEY CLUSTERED 
(
	[SoGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_TinhThanhPho]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_TinhThanhPho](
	[IDTinhThanhPho] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhThanhPho] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_TinhThanhPho] PRIMARY KEY CLUSTERED 
(
	[IDTinhThanhPho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ThanhVien]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[Email] [varchar](max) NULL,
	[PassWord] [varchar](50) NULL,
	[Sdt] [varchar](50) NULL,
	[SoThe] [nchar](10) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [bit] NULL,
	[TrangThai] [bit] NULL,
	[IDXaPhuong] [int] NULL,
 CONSTRAINT [PK_tb_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_TheLoai]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_TheLoai](
	[MaTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nchar](10) NULL,
 CONSTRAINT [PK_tb_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_TrangThai]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_TrangThai](
	[MaTrangThai] [int] IDENTITY(1,1) NOT NULL,
	[MoTa] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_TrangThai] PRIMARY KEY CLUSTERED 
(
	[MaTrangThai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Ve]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Ve](
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
	[MaPhim] [int] NULL,
	[MaPhong] [int] NULL,
	[MaKTG] [int] NULL,
 CONSTRAINT [PK_tb_Ve] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_XaPhuong]    Script Date: 20/06/2020 10:44:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_XaPhuong](
	[IDXaPhuong] [int] IDENTITY(1,1) NOT NULL,
	[TenXaPhuong] [nvarchar](max) NULL,
	[IDQuanHuyen] [int] NULL,
 CONSTRAINT [PK_tb_XaPhuong] PRIMARY KEY CLUSTERED 
(
	[IDXaPhuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 2, 1, 3)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 3, 1, 12)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 1, 1, 1)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 3, 1, 11)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 1, 3, 1)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 2, 3, 3)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 1, 1, 1)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 3, 1, 12)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 1, 2, 2)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 2, 2, 3)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 2, 1, 5)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 3, 3, 12)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 3, 1, 12)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 2, 1, 3)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 2, 1, 3)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 2, 1, 5)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 1, 1, 1)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 2, 2, 3)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 2, 3, 1)
INSERT [dbo].[tb_BaoGia] ([MaDinhDang], [MaLoaiGhe], [MaKTG], [MaGia]) VALUES (1, 1, 1, 2)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'J4', 4)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'D8', 5)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'J3', 4)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'D5', 4)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'J3', 4)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'A8-A7', 4)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'J10', 4)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'A4-A3', 4)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'J2', 5)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'D6', 5)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'D7', 5)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'D7', 5)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'D3', 4)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'A8-A7', 4)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'D6', 4)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'D2', 4)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'J3', 4)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'D5', 4)
INSERT [dbo].[tb_DatGhe] ([SoGhe], [MaVe]) VALUES (N'D4', 4)
SET IDENTITY_INSERT [dbo].[tb_DinhDang] ON 

INSERT [dbo].[tb_DinhDang] ([MaDinhDang], [TenDinhDang]) VALUES (1, N'2D')
INSERT [dbo].[tb_DinhDang] ([MaDinhDang], [TenDinhDang]) VALUES (2, N'3D')
SET IDENTITY_INSERT [dbo].[tb_DinhDang] OFF
INSERT [dbo].[tb_DSVeDat] ([MaVe], [MaThanhVien]) VALUES (4, 1)
SET IDENTITY_INSERT [dbo].[tb_Ghe] ON 

INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (1, 1, 1, N'J1', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (2, 1, 1, N'J2', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (3, 1, 1, N'J3', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (4, 1, 1, N'J4', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (5, 1, 1, N'J5', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (6, 1, 1, N'J6', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (7, 1, 1, N'J7', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (8, 1, 1, N'J8', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (9, 1, 1, N'J9', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (10, 1, 1, N'J10', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (11, 1, 1, N'J11', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (12, 1, 1, N'J12', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (13, 1, 1, N'J13', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (14, 1, 1, N'J14', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (15, 1, 1, N'J15', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (16, 1, 2, N'D1', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (17, 1, 2, N'D2', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (18, 1, 2, N'D3', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (19, 1, 2, N'D4', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (20, 1, 2, N'D5', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (21, 1, 2, N'D6', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (22, 1, 2, N'D7', 1)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (23, 1, 2, N'D8', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (24, 1, 2, N'D9', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (25, 1, 2, N'D10', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (26, 1, 2, N'D11', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (27, 1, 2, N'D12', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (28, 1, 3, N'A2-A1', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (29, 1, 3, N'A4-A3', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (30, 1, 3, N'A6-A5', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (31, 1, 3, N'A8-A7', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (32, 1, 3, N'A10-A9', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (33, 1, 3, N'A12-A11', 3)
INSERT [dbo].[tb_Ghe] ([MaGhe], [MaPhong], [MaLoaiGhe], [SoGhe], [MaTrangThai]) VALUES (34, 1, 3, N'A14-A13', 3)
SET IDENTITY_INSERT [dbo].[tb_Ghe] OFF
SET IDENTITY_INSERT [dbo].[tb_Gia] ON 

INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (1, 40000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (2, 45000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (3, 50000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (4, 55000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (5, 60000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (6, 65000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (7, 70000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (8, 75000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (9, 80000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (10, 85000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (11, 95000)
INSERT [dbo].[tb_Gia] ([MaGia], [DonGia]) VALUES (12, 100000)
SET IDENTITY_INSERT [dbo].[tb_Gia] OFF
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (1, 4)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (12, 4)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (3, 5)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (1, 6)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (3, 4)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (3, 4)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (5, 4)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (2, 5)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (3, 5)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (5, 4)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (3, 4)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (2, 4)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (12, 4)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (1, 4)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (11, 4)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (1, 4)
INSERT [dbo].[tb_GiaVeDat] ([MaGia], [MaVe]) VALUES (12, 4)
SET IDENTITY_INSERT [dbo].[tb_KTG] ON 

INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (1, CAST(N'2020-06-14 00:00:00.000' AS DateTime), N'13:15')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (2, CAST(N'2020-06-14 00:00:00.000' AS DateTime), N'14:15')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (3, CAST(N'2020-06-14 00:00:00.000' AS DateTime), N'15:40')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (4, CAST(N'2020-06-14 00:00:00.000' AS DateTime), N'17:30')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (5, CAST(N'2020-06-14 00:00:00.000' AS DateTime), N'18:40')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (6, CAST(N'2020-06-14 00:00:00.000' AS DateTime), N'19:30')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (7, CAST(N'2020-06-18 00:00:00.000' AS DateTime), N'21:30')
INSERT [dbo].[tb_KTG] ([MaKTG], [NgayChieu], [GioChieu]) VALUES (8, CAST(N'2020-06-18 00:00:00.000' AS DateTime), N'20:30')
SET IDENTITY_INSERT [dbo].[tb_KTG] OFF
INSERT [dbo].[tb_LichChieu] ([MaKTG], [MaPhim], [MaPhong]) VALUES (1, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaKTG], [MaPhim], [MaPhong]) VALUES (2, 1, 1)
INSERT [dbo].[tb_LichChieu] ([MaKTG], [MaPhim], [MaPhong]) VALUES (3, 1, 2)
SET IDENTITY_INSERT [dbo].[tb_LoaiGhe] ON 

INSERT [dbo].[tb_LoaiGhe] ([MaLoaiGhe], [TenLoai]) VALUES (1, N'Ghế thường')
INSERT [dbo].[tb_LoaiGhe] ([MaLoaiGhe], [TenLoai]) VALUES (2, N'Ghế vip')
INSERT [dbo].[tb_LoaiGhe] ([MaLoaiGhe], [TenLoai]) VALUES (3, N'Ghế đôi')
SET IDENTITY_INSERT [dbo].[tb_LoaiGhe] OFF
SET IDENTITY_INSERT [dbo].[tb_NhanVien] ON 

INSERT [dbo].[tb_NhanVien] ([MaNhanVien], [UserName], [HoTen], [Email], [Sdt], [SoThe], [NgaySinh], [GioiTinh], [PassWord], [IDXaPhuong]) VALUES (3, N'admin', N'Trần Đức Soạn', N'd@gmail.com', N'0424254242', N'0423205342', CAST(N'1999-10-11 00:00:00.000' AS DateTime), 1, N'827ccb0eea8a706c4c34a16891f84e7b', 3)
INSERT [dbo].[tb_NhanVien] ([MaNhanVien], [UserName], [HoTen], [Email], [Sdt], [SoThe], [NgaySinh], [GioiTinh], [PassWord], [IDXaPhuong]) VALUES (4, N'KNAnh', N'Khổng Ngọc Ánh', N'kna@gmail.com', N'0424242', N'543534252 ', CAST(N'1999-01-01 00:00:00.000' AS DateTime), 1, N'827ccb0eea8a706c4c34a16891f84e7b', 2)
INSERT [dbo].[tb_NhanVien] ([MaNhanVien], [UserName], [HoTen], [Email], [Sdt], [SoThe], [NgaySinh], [GioiTinh], [PassWord], [IDXaPhuong]) VALUES (7, N'dsdsrt', N'fsfs', N'fdf@.com', N'545454535', N'6547546   ', CAST(N'1999-12-11 00:00:00.000' AS DateTime), 0, N'292e79db74372e612217940c0b3dba1f', 2)
SET IDENTITY_INSERT [dbo].[tb_NhanVien] OFF
SET IDENTITY_INSERT [dbo].[tb_Phim] ON 

INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien]) VALUES (1, N'tess', NULL, 1, 1, N'1:30', CAST(N'2020-06-14 00:00:00.000' AS DateTime), CAST(N'2020-09-30 00:00:00.000' AS DateTime), N'gdgfd', N'gfshshfdbgsd sfsdf', NULL, 1, 3)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien]) VALUES (2, N'test2', NULL, 2, 2, N'1:00', CAST(N'2020-06-19 00:00:00.000' AS DateTime), CAST(N'2020-10-10 00:00:00.000' AS DateTime), N'hfhr', N'ng sgshdfhfd ws', NULL, 2, 3)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien]) VALUES (3, N'phim mới', N'', 8, 4, N'57 phút', CAST(N'2020-06-16 00:00:00.000' AS DateTime), CAST(N'2021-06-16 00:00:00.000' AS DateTime), N'dũng', N'phim viễn tưởng', N'', 1, 4)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien]) VALUES (4, N'test 02', N'D:\Images\AnhDaiDienPhim_2020620213623.jpg', 2, 1, N'40 phút', CAST(N'2020-06-20 00:00:00.000' AS DateTime), CAST(N'2020-07-20 00:00:00.000' AS DateTime), N'test', N'test tý thôi.', N'', 1, 4)
INSERT [dbo].[tb_Phim] ([MaPhim], [TenPhim], [AnhDaiDien], [MaTheLoai], [MaQuocGia], [ThoiLuong], [KhoiChieu], [KetThuc], [DaoDien], [NoiDung], [Trailer], [MaDinhDang], [MaNhanVien]) VALUES (5, N'test 03', N'D:\Images\AnhDaiDienPhim_2020620214019.jpg', 1, 1, N'60 phút', CAST(N'2020-06-21 00:00:00.000' AS DateTime), CAST(N'2020-07-12 00:00:00.000' AS DateTime), N'chịu', N'Tiếp tục test nhé...!', N'', 1, 4)
SET IDENTITY_INSERT [dbo].[tb_Phim] OFF
SET IDENTITY_INSERT [dbo].[tb_Phong] ON 

INSERT [dbo].[tb_Phong] ([MaPhong], [TenPhong], [SoHangMax], [SoCotMax], [MaDinhDang]) VALUES (1, N'P1', 10, 15, 1)
INSERT [dbo].[tb_Phong] ([MaPhong], [TenPhong], [SoHangMax], [SoCotMax], [MaDinhDang]) VALUES (2, N'P2', 10, 15, 1)
INSERT [dbo].[tb_Phong] ([MaPhong], [TenPhong], [SoHangMax], [SoCotMax], [MaDinhDang]) VALUES (3, N'P3', 10, 15, 2)
INSERT [dbo].[tb_Phong] ([MaPhong], [TenPhong], [SoHangMax], [SoCotMax], [MaDinhDang]) VALUES (4, N'P4', 10, 15, 1)
SET IDENTITY_INSERT [dbo].[tb_Phong] OFF
SET IDENTITY_INSERT [dbo].[tb_QuanHuyen] ON 

INSERT [dbo].[tb_QuanHuyen] ([IDQuanHuyen], [TenQuanHuyen], [IDTinhThanhPho]) VALUES (1, N'Đông Anh', 62)
INSERT [dbo].[tb_QuanHuyen] ([IDQuanHuyen], [TenQuanHuyen], [IDTinhThanhPho]) VALUES (2, N'Hoàn Kiếm', 62)
INSERT [dbo].[tb_QuanHuyen] ([IDQuanHuyen], [TenQuanHuyen], [IDTinhThanhPho]) VALUES (3, N'Cầu Giấy', 62)
INSERT [dbo].[tb_QuanHuyen] ([IDQuanHuyen], [TenQuanHuyen], [IDTinhThanhPho]) VALUES (4, N'Hà Đông', 62)
INSERT [dbo].[tb_QuanHuyen] ([IDQuanHuyen], [TenQuanHuyen], [IDTinhThanhPho]) VALUES (5, N'Giao Thủy', 35)
SET IDENTITY_INSERT [dbo].[tb_QuanHuyen] OFF
SET IDENTITY_INSERT [dbo].[tb_QuocGia] ON 

INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (1, N'Việt Nam')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (2, N'Hàn Quốc')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (3, N'Nhật Bản')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (4, N'Anh')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (5, N'Mỹ')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (6, N'Pháp')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (7, N'Bồ Đào Nha')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (8, N'Ý')
INSERT [dbo].[tb_QuocGia] ([MaQuocGia], [TenQuocGia]) VALUES (9, N'Nga')
SET IDENTITY_INSERT [dbo].[tb_QuocGia] OFF
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A10-A9', N'A', N'9-10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A12-A11', N'A', N'11-12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A14-A13', N'A', N'13-14')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A2-A1', N'A', N'1-2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A4-A3', N'A', N'3-4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A6-A5', N'A', N'5-6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'A8-A7', N'A', N'7-8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B1', N'B', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B10', N'B', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B11', N'B', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B12', N'B', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B2', N'B', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B3', N'B', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B4', N'B', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B5', N'B', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B6', N'B', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B7', N'B', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B8', N'B', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'B9', N'B', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C1', N'C', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C10', N'C', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C11', N'C', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C12', N'C', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C2', N'C', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C3', N'C', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C4', N'C', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C5', N'C', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C6', N'C', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C7', N'C', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C8', N'C', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'C9', N'C', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D1', N'D', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D10', N'D', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D11', N'D', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D12', N'D', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D2', N'D', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D3', N'D', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D4', N'D', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D5', N'D', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D6', N'D', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D7', N'D', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D8', N'D', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'D9', N'D', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E1', N'E', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E10', N'E', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E11', N'E', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E12', N'E', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E2', N'E', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E3', N'E', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E4', N'E', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E5', N'E', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E6', N'E', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E7', N'E', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E8', N'E', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'E9', N'E', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F1', N'F', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F10', N'F', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F11', N'F', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F12', N'F', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F2', N'F', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F3', N'F', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F4', N'F', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F5', N'F', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F6', N'F', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F7', N'F', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F8', N'F', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'F9', N'F', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G1', N'G', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G10', N'G', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G11', N'G', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G12', N'G', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G13', N'G', N'13')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G14', N'G', N'14')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G15', N'G', N'15')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G2', N'G', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G3', N'G', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G4', N'G', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G5', N'G', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G6', N'G', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G7', N'G', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G8', N'G', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'G9', N'G', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H1', N'H', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H10', N'H', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H11', N'H', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H12', N'H', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H13', N'H', N'13')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H14', N'H', N'14')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H15', N'H', N'15')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H2', N'H', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H3', N'H', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H4', N'H', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H5', N'H', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H6', N'H', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H7', N'H', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H8', N'H', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'H9', N'H', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I1', N'I', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I10', N'I', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I11', N'I', N'11')
GO
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I12', N'I', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I13', N'I', N'13')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I14', N'I', N'14')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I15', N'I', N'15')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I2', N'I', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I3', N'I', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I4', N'I', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I5', N'I', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I6', N'I', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I7', N'I', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I8', N'I', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'I9', N'I', N'9')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J1', N'J', N'1')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J10', N'J', N'10')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J11', N'J', N'11')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J12', N'J', N'12')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J13', N'J', N'13')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J14', N'J', N'14')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J15', N'J', N'15')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J2', N'J', N'2')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J3', N'J', N'3')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J4', N'J', N'4')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J5', N'J', N'5')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J6', N'J', N'6')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J7', N'J', N'7')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J8', N'J', N'8')
INSERT [dbo].[tb_SoGhe] ([SoGhe], [SoHang], [SoCot]) VALUES (N'J9', N'J', N'9')
SET IDENTITY_INSERT [dbo].[tb_TinhThanhPho] ON 

INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (1, N'An Giang')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (2, N'Bà Rịa - Vũng Tàu')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (3, N'Bắc Giang')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (4, N'Bắc Kạn')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (5, N'Bạc Liêu')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (6, N'Bắc Ninh')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (7, N'Bến Tre')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (8, N'Bình Định')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (9, N'Bình Dương')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (10, N'Bình Phước')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (11, N'Bình Thuận')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (12, N'Cà Mau')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (13, N'Cao Bằng')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (14, N'Đắk Lắk')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (15, N'Đắk Nông')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (16, N'Điện Biên')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (17, N'Đồng Nai')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (18, N'Đồng Tháp')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (19, N'Gia Lai')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (20, N'Hà Giang')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (21, N'Hà Nam')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (22, N'Hà Tĩnh')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (23, N'Hải Dương')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (24, N'Hậu Giang')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (25, N'Hòa Bình')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (26, N'Hưng Yên')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (27, N'Khánh Hòa')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (28, N'Kiên Giang')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (29, N'Kon Tum')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (30, N'Lai Châu')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (31, N'Lâm Đồng')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (32, N'Lạng Sơn')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (33, N'Lào Cai')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (34, N'Long An')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (35, N'Nam Định')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (36, N'Nghệ An')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (37, N'Ninh Bình')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (38, N'Ninh Thuận')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (39, N'Phú Thọ')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (40, N'Quảng Bình')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (41, N'Quảng Nam')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (42, N'Quảng Ngãi')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (43, N'Quảng Ninh')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (44, N'Quảng Trị')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (45, N'Sóc Trăng')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (46, N'Sơn La')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (47, N'Tây Ninh')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (48, N'Thái Bình')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (49, N'Thái Nguyên')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (50, N'Thanh Hóa')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (51, N'Thừa Thiên Huế')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (52, N'Tiền Giang')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (53, N'Trà Vinh')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (54, N'Tuyên Quang')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (55, N'Vĩnh Long')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (56, N'Vĩnh Phúc')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (57, N'Yên Bái')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (58, N'Phú Yên')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (59, N'Cần Thơ')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (60, N'Đà Nẵng')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (61, N'Hải Phòng')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (62, N'Hà Nội')
INSERT [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho], [TenTinhThanhPho]) VALUES (63, N'TP HCM')
SET IDENTITY_INSERT [dbo].[tb_TinhThanhPho] OFF
SET IDENTITY_INSERT [dbo].[tb_ThanhVien] ON 

INSERT [dbo].[tb_ThanhVien] ([MaThanhVien], [HoTen], [Email], [PassWord], [Sdt], [SoThe], [NgaySinh], [GioiTinh], [TrangThai], [IDXaPhuong]) VALUES (1, N'Trần Đức Soạn', N'tds@gmail.com', N'827ccb0eea8a706c4c34a16891f84e7b', N'0263634532', N'636564575 ', CAST(N'1999-11-10 00:00:00.000' AS DateTime), 1, 1, 3)
SET IDENTITY_INSERT [dbo].[tb_ThanhVien] OFF
SET IDENTITY_INSERT [dbo].[tb_TheLoai] ON 

INSERT [dbo].[tb_TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (1, N'Hành động ')
INSERT [dbo].[tb_TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (2, N'Tình cảm  ')
INSERT [dbo].[tb_TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (3, N'Kinh dị   ')
INSERT [dbo].[tb_TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (4, N'Hài hước  ')
INSERT [dbo].[tb_TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (5, N'Chinh thám')
INSERT [dbo].[tb_TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (8, N'Viễn tưởng')
SET IDENTITY_INSERT [dbo].[tb_TheLoai] OFF
SET IDENTITY_INSERT [dbo].[tb_TrangThai] ON 

INSERT [dbo].[tb_TrangThai] ([MaTrangThai], [MoTa]) VALUES (1, N'Đã bán')
INSERT [dbo].[tb_TrangThai] ([MaTrangThai], [MoTa]) VALUES (2, N'Đang được giữ')
INSERT [dbo].[tb_TrangThai] ([MaTrangThai], [MoTa]) VALUES (3, N'Đang trống')
SET IDENTITY_INSERT [dbo].[tb_TrangThai] OFF
SET IDENTITY_INSERT [dbo].[tb_Ve] ON 

INSERT [dbo].[tb_Ve] ([MaVe], [MaPhim], [MaPhong], [MaKTG]) VALUES (4, 1, 1, 1)
INSERT [dbo].[tb_Ve] ([MaVe], [MaPhim], [MaPhong], [MaKTG]) VALUES (5, 1, 1, 2)
INSERT [dbo].[tb_Ve] ([MaVe], [MaPhim], [MaPhong], [MaKTG]) VALUES (6, 1, 1, 3)
INSERT [dbo].[tb_Ve] ([MaVe], [MaPhim], [MaPhong], [MaKTG]) VALUES (7, 1, 1, 1)
INSERT [dbo].[tb_Ve] ([MaVe], [MaPhim], [MaPhong], [MaKTG]) VALUES (8, 1, 1, 1)
INSERT [dbo].[tb_Ve] ([MaVe], [MaPhim], [MaPhong], [MaKTG]) VALUES (9, 1, 1, 1)
INSERT [dbo].[tb_Ve] ([MaVe], [MaPhim], [MaPhong], [MaKTG]) VALUES (10, 1, 1, 2)
INSERT [dbo].[tb_Ve] ([MaVe], [MaPhim], [MaPhong], [MaKTG]) VALUES (11, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[tb_Ve] OFF
SET IDENTITY_INSERT [dbo].[tb_XaPhuong] ON 

INSERT [dbo].[tb_XaPhuong] ([IDXaPhuong], [TenXaPhuong], [IDQuanHuyen]) VALUES (1, N'Cổ Loa', 1)
INSERT [dbo].[tb_XaPhuong] ([IDXaPhuong], [TenXaPhuong], [IDQuanHuyen]) VALUES (2, N'Đông Hội', 1)
INSERT [dbo].[tb_XaPhuong] ([IDXaPhuong], [TenXaPhuong], [IDQuanHuyen]) VALUES (3, N'Giao Thiện', 5)
INSERT [dbo].[tb_XaPhuong] ([IDXaPhuong], [TenXaPhuong], [IDQuanHuyen]) VALUES (4, N'Giao Hương', 5)
INSERT [dbo].[tb_XaPhuong] ([IDXaPhuong], [TenXaPhuong], [IDQuanHuyen]) VALUES (5, N'Chương Dương', 2)
INSERT [dbo].[tb_XaPhuong] ([IDXaPhuong], [TenXaPhuong], [IDQuanHuyen]) VALUES (6, N'Cửa Nam', 2)
SET IDENTITY_INSERT [dbo].[tb_XaPhuong] OFF
ALTER TABLE [dbo].[tb_BaoGia]  WITH CHECK ADD  CONSTRAINT [FK_tb_BaoGia_tb_DinhDang] FOREIGN KEY([MaDinhDang])
REFERENCES [dbo].[tb_DinhDang] ([MaDinhDang])
GO
ALTER TABLE [dbo].[tb_BaoGia] CHECK CONSTRAINT [FK_tb_BaoGia_tb_DinhDang]
GO
ALTER TABLE [dbo].[tb_BaoGia]  WITH CHECK ADD  CONSTRAINT [FK_tb_BaoGia_tb_Gia] FOREIGN KEY([MaGia])
REFERENCES [dbo].[tb_Gia] ([MaGia])
GO
ALTER TABLE [dbo].[tb_BaoGia] CHECK CONSTRAINT [FK_tb_BaoGia_tb_Gia]
GO
ALTER TABLE [dbo].[tb_BaoGia]  WITH CHECK ADD  CONSTRAINT [FK_tb_BaoGia_tb_KTG] FOREIGN KEY([MaKTG])
REFERENCES [dbo].[tb_KTG] ([MaKTG])
GO
ALTER TABLE [dbo].[tb_BaoGia] CHECK CONSTRAINT [FK_tb_BaoGia_tb_KTG]
GO
ALTER TABLE [dbo].[tb_BaoGia]  WITH CHECK ADD  CONSTRAINT [FK_tb_BaoGia_tb_LoaiGhe] FOREIGN KEY([MaDinhDang])
REFERENCES [dbo].[tb_LoaiGhe] ([MaLoaiGhe])
GO
ALTER TABLE [dbo].[tb_BaoGia] CHECK CONSTRAINT [FK_tb_BaoGia_tb_LoaiGhe]
GO
ALTER TABLE [dbo].[tb_DatGhe]  WITH CHECK ADD  CONSTRAINT [FK_tb_DatGhe_tb_SoGhe] FOREIGN KEY([SoGhe])
REFERENCES [dbo].[tb_SoGhe] ([SoGhe])
GO
ALTER TABLE [dbo].[tb_DatGhe] CHECK CONSTRAINT [FK_tb_DatGhe_tb_SoGhe]
GO
ALTER TABLE [dbo].[tb_DatGhe]  WITH CHECK ADD  CONSTRAINT [FK_tb_DatGhe_tb_Ve] FOREIGN KEY([MaVe])
REFERENCES [dbo].[tb_Ve] ([MaVe])
GO
ALTER TABLE [dbo].[tb_DatGhe] CHECK CONSTRAINT [FK_tb_DatGhe_tb_Ve]
GO
ALTER TABLE [dbo].[tb_DSVeDat]  WITH CHECK ADD  CONSTRAINT [FK_tb_DSVeDat_tb_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[tb_ThanhVien] ([MaThanhVien])
GO
ALTER TABLE [dbo].[tb_DSVeDat] CHECK CONSTRAINT [FK_tb_DSVeDat_tb_ThanhVien]
GO
ALTER TABLE [dbo].[tb_DSVeDat]  WITH CHECK ADD  CONSTRAINT [FK_tb_DSVeDat_tb_Ve] FOREIGN KEY([MaVe])
REFERENCES [dbo].[tb_Ve] ([MaVe])
GO
ALTER TABLE [dbo].[tb_DSVeDat] CHECK CONSTRAINT [FK_tb_DSVeDat_tb_Ve]
GO
ALTER TABLE [dbo].[tb_Ghe]  WITH CHECK ADD  CONSTRAINT [FK_tb_Ghe_tb_LoaiGhe] FOREIGN KEY([MaLoaiGhe])
REFERENCES [dbo].[tb_LoaiGhe] ([MaLoaiGhe])
GO
ALTER TABLE [dbo].[tb_Ghe] CHECK CONSTRAINT [FK_tb_Ghe_tb_LoaiGhe]
GO
ALTER TABLE [dbo].[tb_Ghe]  WITH CHECK ADD  CONSTRAINT [FK_tb_Ghe_tb_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[tb_Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[tb_Ghe] CHECK CONSTRAINT [FK_tb_Ghe_tb_Phong]
GO
ALTER TABLE [dbo].[tb_Ghe]  WITH CHECK ADD  CONSTRAINT [FK_tb_Ghe_tb_SoGhe] FOREIGN KEY([SoGhe])
REFERENCES [dbo].[tb_SoGhe] ([SoGhe])
GO
ALTER TABLE [dbo].[tb_Ghe] CHECK CONSTRAINT [FK_tb_Ghe_tb_SoGhe]
GO
ALTER TABLE [dbo].[tb_Ghe]  WITH CHECK ADD  CONSTRAINT [FK_tb_Ghe_tb_TrangThai] FOREIGN KEY([MaTrangThai])
REFERENCES [dbo].[tb_TrangThai] ([MaTrangThai])
GO
ALTER TABLE [dbo].[tb_Ghe] CHECK CONSTRAINT [FK_tb_Ghe_tb_TrangThai]
GO
ALTER TABLE [dbo].[tb_GiaVeDat]  WITH CHECK ADD  CONSTRAINT [FK_tb_GiaVeDat_tb_Gia] FOREIGN KEY([MaGia])
REFERENCES [dbo].[tb_Gia] ([MaGia])
GO
ALTER TABLE [dbo].[tb_GiaVeDat] CHECK CONSTRAINT [FK_tb_GiaVeDat_tb_Gia]
GO
ALTER TABLE [dbo].[tb_GiaVeDat]  WITH CHECK ADD  CONSTRAINT [FK_tb_GiaVeDat_tb_Ve] FOREIGN KEY([MaVe])
REFERENCES [dbo].[tb_Ve] ([MaVe])
GO
ALTER TABLE [dbo].[tb_GiaVeDat] CHECK CONSTRAINT [FK_tb_GiaVeDat_tb_Ve]
GO
ALTER TABLE [dbo].[tb_LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_tb_LichChieu_tb_KTG] FOREIGN KEY([MaKTG])
REFERENCES [dbo].[tb_KTG] ([MaKTG])
GO
ALTER TABLE [dbo].[tb_LichChieu] CHECK CONSTRAINT [FK_tb_LichChieu_tb_KTG]
GO
ALTER TABLE [dbo].[tb_LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_tb_LichChieu_tb_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[tb_Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[tb_LichChieu] CHECK CONSTRAINT [FK_tb_LichChieu_tb_Phim]
GO
ALTER TABLE [dbo].[tb_LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_tb_LichChieu_tb_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[tb_Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[tb_LichChieu] CHECK CONSTRAINT [FK_tb_LichChieu_tb_Phong]
GO
ALTER TABLE [dbo].[tb_NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tb_NhanVien_tb_XaPhuong] FOREIGN KEY([IDXaPhuong])
REFERENCES [dbo].[tb_XaPhuong] ([IDXaPhuong])
GO
ALTER TABLE [dbo].[tb_NhanVien] CHECK CONSTRAINT [FK_tb_NhanVien_tb_XaPhuong]
GO
ALTER TABLE [dbo].[tb_Phim]  WITH CHECK ADD  CONSTRAINT [FK_tb_Phim_tb_DinhDang] FOREIGN KEY([MaDinhDang])
REFERENCES [dbo].[tb_DinhDang] ([MaDinhDang])
GO
ALTER TABLE [dbo].[tb_Phim] CHECK CONSTRAINT [FK_tb_Phim_tb_DinhDang]
GO
ALTER TABLE [dbo].[tb_Phim]  WITH CHECK ADD  CONSTRAINT [FK_tb_Phim_tb_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[tb_NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[tb_Phim] CHECK CONSTRAINT [FK_tb_Phim_tb_NhanVien]
GO
ALTER TABLE [dbo].[tb_Phim]  WITH CHECK ADD  CONSTRAINT [FK_tb_Phim_tb_QuocGia] FOREIGN KEY([MaQuocGia])
REFERENCES [dbo].[tb_QuocGia] ([MaQuocGia])
GO
ALTER TABLE [dbo].[tb_Phim] CHECK CONSTRAINT [FK_tb_Phim_tb_QuocGia]
GO
ALTER TABLE [dbo].[tb_Phim]  WITH CHECK ADD  CONSTRAINT [FK_tb_Phim_tb_TheLoai] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[tb_TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[tb_Phim] CHECK CONSTRAINT [FK_tb_Phim_tb_TheLoai]
GO
ALTER TABLE [dbo].[tb_Phong]  WITH CHECK ADD  CONSTRAINT [FK_tb_Phong_tb_DinhDang] FOREIGN KEY([MaDinhDang])
REFERENCES [dbo].[tb_DinhDang] ([MaDinhDang])
GO
ALTER TABLE [dbo].[tb_Phong] CHECK CONSTRAINT [FK_tb_Phong_tb_DinhDang]
GO
ALTER TABLE [dbo].[tb_QuanHuyen]  WITH CHECK ADD  CONSTRAINT [FK_tb_QuanHuyen_tb_TinhThanhPho] FOREIGN KEY([IDTinhThanhPho])
REFERENCES [dbo].[tb_TinhThanhPho] ([IDTinhThanhPho])
GO
ALTER TABLE [dbo].[tb_QuanHuyen] CHECK CONSTRAINT [FK_tb_QuanHuyen_tb_TinhThanhPho]
GO
ALTER TABLE [dbo].[tb_ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_tb_ThanhVien_tb_XaPhuong] FOREIGN KEY([IDXaPhuong])
REFERENCES [dbo].[tb_XaPhuong] ([IDXaPhuong])
GO
ALTER TABLE [dbo].[tb_ThanhVien] CHECK CONSTRAINT [FK_tb_ThanhVien_tb_XaPhuong]
GO
ALTER TABLE [dbo].[tb_Ve]  WITH CHECK ADD  CONSTRAINT [FK_tb_Ve_tb_KTG] FOREIGN KEY([MaKTG])
REFERENCES [dbo].[tb_KTG] ([MaKTG])
GO
ALTER TABLE [dbo].[tb_Ve] CHECK CONSTRAINT [FK_tb_Ve_tb_KTG]
GO
ALTER TABLE [dbo].[tb_Ve]  WITH CHECK ADD  CONSTRAINT [FK_tb_Ve_tb_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[tb_Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[tb_Ve] CHECK CONSTRAINT [FK_tb_Ve_tb_Phim]
GO
ALTER TABLE [dbo].[tb_Ve]  WITH CHECK ADD  CONSTRAINT [FK_tb_Ve_tb_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[tb_Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[tb_Ve] CHECK CONSTRAINT [FK_tb_Ve_tb_Phong]
GO
ALTER TABLE [dbo].[tb_XaPhuong]  WITH CHECK ADD  CONSTRAINT [FK_tb_XaPhuong_tb_QuanHuyen] FOREIGN KEY([IDQuanHuyen])
REFERENCES [dbo].[tb_QuanHuyen] ([IDQuanHuyen])
GO
ALTER TABLE [dbo].[tb_XaPhuong] CHECK CONSTRAINT [FK_tb_XaPhuong_tb_QuanHuyen]
GO
USE [master]
GO
ALTER DATABASE [BanVeRapChieuPhim] SET  READ_WRITE 
GO
