USE [master]
GO
/****** Object:  Database [BanVeRapChieuPhim]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_BaoGia]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_DatGhe]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_DinhDang]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_DSVeDat]    Script Date: 12/06/2020 3:27:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DSVeDat](
	[MaVe] [int] NULL,
	[MaThanhVien] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Ghe]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_Gia]    Script Date: 12/06/2020 3:27:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Gia](
	[MaGia] [int] IDENTITY(1,1) NOT NULL,
	[DonGia] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Gia] PRIMARY KEY CLUSTERED 
(
	[MaGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_KTG]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_LichChieu]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_LoaiGhe]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_NhanVien]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_Phim]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_Phong]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_QuanHuyen]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_QuocGia]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_SoGhe]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_TinhThanhPho]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_ThanhVien]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_TheLoai]    Script Date: 12/06/2020 3:27:19 CH ******/
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
/****** Object:  Table [dbo].[tb_TrangThai]    Script Date: 12/06/2020 3:27:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_TrangThai](
	[MaTrangThai] [int] NOT NULL,
	[MoTa] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_TrangThai] PRIMARY KEY CLUSTERED 
(
	[MaTrangThai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Ve]    Script Date: 12/06/2020 3:27:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Ve](
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
	[MaPhim] [int] NULL,
	[MaPhong] [int] NULL,
	[MaKTG] [int] NULL,
	[MaGia] [int] NULL,
 CONSTRAINT [PK_tb_Ve] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_XaPhuong]    Script Date: 12/06/2020 3:27:19 CH ******/
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
ALTER TABLE [dbo].[tb_Ve]  WITH CHECK ADD  CONSTRAINT [FK_tb_Ve_tb_Gia] FOREIGN KEY([MaGia])
REFERENCES [dbo].[tb_Gia] ([MaGia])
GO
ALTER TABLE [dbo].[tb_Ve] CHECK CONSTRAINT [FK_tb_Ve_tb_Gia]
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
