USE [master]
GO
/****** Object:  Database [DB_SPA]    Script Date: 11/27/2019 10:48:05 AM ******/
CREATE DATABASE [DB_SPA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_SPA', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DB_SPA.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB_SPA_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DB_SPA_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB_SPA] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_SPA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_SPA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_SPA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_SPA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_SPA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_SPA] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_SPA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_SPA] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DB_SPA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_SPA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_SPA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_SPA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_SPA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_SPA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_SPA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_SPA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_SPA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_SPA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_SPA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_SPA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_SPA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_SPA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_SPA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_SPA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_SPA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_SPA] SET  MULTI_USER 
GO
ALTER DATABASE [DB_SPA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_SPA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_SPA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_SPA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DB_SPA]
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 11/27/2019 10:48:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[MA_KH] [int] NULL,
	[SoLuong] [int] NULL,
	[NgayTao] [datetime] NULL,
	[MA_SP] [int] NULL,
 CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHI_NHANH]    Script Date: 11/27/2019 10:48:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHI_NHANH](
	[MA_CN] [int] IDENTITY(1,1) NOT NULL,
	[TEN_CHI_NHANH] [nvarchar](50) NULL,
	[DIA_CHI] [nvarchar](150) NULL,
	[PHONE] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHI_TIET_HOA_DON]    Script Date: 11/27/2019 10:48:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_TIET_HOA_DON](
	[MA_SP] [int] NOT NULL,
	[MA_HD] [int] NOT NULL,
	[SO_LUONG] [int] NULL,
	[THANH_TIEN] [float] NULL,
 CONSTRAINT [PK_CHI_TIET_HOA_DON] PRIMARY KEY CLUSTERED 
(
	[MA_SP] ASC,
	[MA_HD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DICH_VU]    Script Date: 11/27/2019 10:48:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DICH_VU](
	[MA_DV] [int] IDENTITY(1,1) NOT NULL,
	[TEN_DICH_VU] [nvarchar](50) NULL,
	[CHI_TIET] [ntext] NULL,
	[GIA] [float] NULL,
	[MALOAI] [int] NULL,
	[SOLUONG_DUNG] [int] NULL,
	[DANH_GIA] [int] NULL,
	[IMAGE] [varchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOA_DON]    Script Date: 11/27/2019 10:48:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOA_DON](
	[MA_HD] [int] IDENTITY(1,1) NOT NULL,
	[MA_KH] [int] NULL,
	[TONG_TIEN] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 11/27/2019 10:48:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[MA_KH] [int] IDENTITY(1,1) NOT NULL,
	[TEN_KH] [nvarchar](50) NULL,
	[EMAIL] [varchar](100) NULL,
	[PHONE] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LICH_HEN]    Script Date: 11/27/2019 10:48:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LICH_HEN](
	[MA_LH] [int] IDENTITY(1,1) NOT NULL,
	[MA_KH] [int] NULL,
	[MA_CN] [int] NULL,
	[MA_DV] [int] NULL,
	[NGAY] [datetime] NULL,
	[GIO] [nvarchar](50) NULL,
	[NOTE] [nvarchar](max) NULL,
	[TRANG_THAI] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOAI_DICHVU]    Script Date: 11/27/2019 10:48:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_DICHVU](
	[MAlLOAI] [int] IDENTITY(1,1) NOT NULL,
	[TEN_LOAI] [nvarchar](50) NULL,
	[STATUS] [int] NULL,
 CONSTRAINT [PK_LOAI_DICHVU] PRIMARY KEY CLUSTERED 
(
	[MAlLOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHAN_VIEN]    Script Date: 11/27/2019 10:48:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHAN_VIEN](
	[MA_NV] [int] IDENTITY(1,1) NOT NULL,
	[MA_CN] [int] NULL,
	[TEN_NV] [nvarchar](50) NOT NULL,
	[EMAIL] [nvarchar](50) NOT NULL,
	[USERNAME] [nvarchar](50) NOT NULL,
	[PASSWORD] [varbinary](max) NOT NULL,
	[TRANGTHAI] [bit] NOT NULL,
	[QUYEN] [int] NULL,
 CONSTRAINT [PK_NHAN_VIEN] PRIMARY KEY CLUSTERED 
(
	[MA_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAN_PHAM]    Script Date: 11/27/2019 10:48:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAN_PHAM](
	[MA_SP] [int] IDENTITY(1,1) NOT NULL,
	[TEN_SP] [nvarchar](50) NULL,
	[MO_TA] [ntext] NULL,
	[ANH] [text] NULL,
	[GIA] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAI_KHOAN]    Script Date: 11/27/2019 10:48:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAI_KHOAN](
	[MA_TK] [int] IDENTITY(1,1) NOT NULL,
	[MA_KH] [int] NOT NULL,
	[USERNAME] [varchar](50) NOT NULL,
	[PASSWORD] [varbinary](max) NOT NULL,
	[TRANG_THAI] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CartItem] ON 

INSERT [dbo].[CartItem] ([CartID], [MA_KH], [SoLuong], [NgayTao], [MA_SP]) VALUES (5, 1, 5, CAST(0x0000AB0B00C7E6D3 AS DateTime), NULL)
INSERT [dbo].[CartItem] ([CartID], [MA_KH], [SoLuong], [NgayTao], [MA_SP]) VALUES (6, 1, 4, CAST(0x0000AB0B00CBCE4C AS DateTime), NULL)
INSERT [dbo].[CartItem] ([CartID], [MA_KH], [SoLuong], [NgayTao], [MA_SP]) VALUES (7, 1, 2, CAST(0x0000AB0D01459A3E AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[CartItem] OFF
SET IDENTITY_INSERT [dbo].[CHI_NHANH] ON 

INSERT [dbo].[CHI_NHANH] ([MA_CN], [TEN_CHI_NHANH], [DIA_CHI], [PHONE]) VALUES (1, N'Cơ sở 1 – Gà Spa Quận 1', N'10 Nguyễn Thành Ý, P.Đa Kao, Q1, TPHCM', N'0901 311 113')
INSERT [dbo].[CHI_NHANH] ([MA_CN], [TEN_CHI_NHANH], [DIA_CHI], [PHONE]) VALUES (2, N'Cơ sở 2 – Gà Spa Gò Vấp', N'1457 Phan Văn Trị, P.10, Gò Vấp, TPHCM', N'0898 311 113')
INSERT [dbo].[CHI_NHANH] ([MA_CN], [TEN_CHI_NHANH], [DIA_CHI], [PHONE]) VALUES (3, N'Cơ sở 3 – Gà Spa Thủ Đức', N'Số 1, Hoàng Diệu 2, P. Linh Trung, Quận Thủ Đức, TPHCM.', N'094 870 87 28')
INSERT [dbo].[CHI_NHANH] ([MA_CN], [TEN_CHI_NHANH], [DIA_CHI], [PHONE]) VALUES (4, N'Cơ sở 4 – Gà Spa Thủ Dầu 1', N'37 Bùi Văn Bình, P.Phú Lợi, Thủ Dầu 1, Bình Dương.', N'0898 311 113')
INSERT [dbo].[CHI_NHANH] ([MA_CN], [TEN_CHI_NHANH], [DIA_CHI], [PHONE]) VALUES (5, N'Cơ sở 5 – Gà Spa Quy Nhơn', N'19 Nguyễn Tất Thành,TP Quy Nhơn', N'098 241 94 79')
SET IDENTITY_INSERT [dbo].[CHI_NHANH] OFF
INSERT [dbo].[CHI_TIET_HOA_DON] ([MA_SP], [MA_HD], [SO_LUONG], [THANH_TIEN]) VALUES (1, 1, 2, 200000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MA_SP], [MA_HD], [SO_LUONG], [THANH_TIEN]) VALUES (1, 2, 2, 200000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MA_SP], [MA_HD], [SO_LUONG], [THANH_TIEN]) VALUES (1, 8, 2, 200000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MA_SP], [MA_HD], [SO_LUONG], [THANH_TIEN]) VALUES (2, 3, 2, 2000000)
INSERT [dbo].[CHI_TIET_HOA_DON] ([MA_SP], [MA_HD], [SO_LUONG], [THANH_TIEN]) VALUES (2, 8, 1, 1000000)
SET IDENTITY_INSERT [dbo].[DICH_VU] ON 

INSERT [dbo].[DICH_VU] ([MA_DV], [TEN_DICH_VU], [CHI_TIET], [GIA], [MALOAI], [SOLUONG_DUNG], [DANH_GIA], [IMAGE]) VALUES (1, N'Trị Mụn Chuyên Sâu', N'<p>Một số h&igrave;nh ảnh<br />
<img alt="" src="http://localhost:33075/Resource/image/DV1574794615_Zalo_ScreenShot_9_5_2019_814310.png" style="border-style:solid; border-width:1px; float:left; height:100px; margin-left:20px; margin-right:20px; width:100px" /></p>
', 3212132, 1, 1, 3, N'DV1574570805_spa4.jpg')
INSERT [dbo].[DICH_VU] ([MA_DV], [TEN_DICH_VU], [CHI_TIET], [GIA], [MALOAI], [SOLUONG_DUNG], [DANH_GIA], [IMAGE]) VALUES (2, N'Điện Di Vitamin C', NULL, 200000, 1, 10, 3, N'DV1574571050_spa2.jpg')
INSERT [dbo].[DICH_VU] ([MA_DV], [TEN_DICH_VU], [CHI_TIET], [GIA], [MALOAI], [SOLUONG_DUNG], [DANH_GIA], [IMAGE]) VALUES (3, N'Hoa Hồng Đá', NULL, 2000000, 2, 20, 3, N'DV1574572050_spa3.jpg')
INSERT [dbo].[DICH_VU] ([MA_DV], [TEN_DICH_VU], [CHI_TIET], [GIA], [MALOAI], [SOLUONG_DUNG], [DANH_GIA], [IMAGE]) VALUES (4, N'Hải Tảo Vi Sinh', NULL, 2500000, 1, 30, 3, N'DV1574590271_spa.jpg')
INSERT [dbo].[DICH_VU] ([MA_DV], [TEN_DICH_VU], [CHI_TIET], [GIA], [MALOAI], [SOLUONG_DUNG], [DANH_GIA], [IMAGE]) VALUES (5, N'Căng Bóng Da', NULL, 4000000, 2, 40, 3, N'DV1574590335_im11.jpeg')
INSERT [dbo].[DICH_VU] ([MA_DV], [TEN_DICH_VU], [CHI_TIET], [GIA], [MALOAI], [SOLUONG_DUNG], [DANH_GIA], [IMAGE]) VALUES (6, N'Thanh Lọc Da Oxy Tươi', NULL, 3000000, 1, 5, 3, N'DV1574605705_bg.png')
INSERT [dbo].[DICH_VU] ([MA_DV], [TEN_DICH_VU], [CHI_TIET], [GIA], [MALOAI], [SOLUONG_DUNG], [DANH_GIA], [IMAGE]) VALUES (7, N'Ngoại Vi Tế Bào', NULL, 2050000, 1, 4, 3, N'DV1574674178_bg.png')
INSERT [dbo].[DICH_VU] ([MA_DV], [TEN_DICH_VU], [CHI_TIET], [GIA], [MALOAI], [SOLUONG_DUNG], [DANH_GIA], [IMAGE]) VALUES (8, N'Tắm Trắng Phi Thuyền', NULL, 2060000, 1, 5, 3, N'DV1574674178_bg.png')
INSERT [dbo].[DICH_VU] ([MA_DV], [TEN_DICH_VU], [CHI_TIET], [GIA], [MALOAI], [SOLUONG_DUNG], [DANH_GIA], [IMAGE]) VALUES (9, N'Trị Thâm Quầng Mắt', NULL, 8000000, 2, 11, 3, N'DV1574674178_bg.png')
INSERT [dbo].[DICH_VU] ([MA_DV], [TEN_DICH_VU], [CHI_TIET], [GIA], [MALOAI], [SOLUONG_DUNG], [DANH_GIA], [IMAGE]) VALUES (10, N'Trẻ Hóa Da Toàn Diện', NULL, 7000000, 1, 45, 3, N'DV1574674178_bg.png')
INSERT [dbo].[DICH_VU] ([MA_DV], [TEN_DICH_VU], [CHI_TIET], [GIA], [MALOAI], [SOLUONG_DUNG], [DANH_GIA], [IMAGE]) VALUES (11, N'Giảm Béo', NULL, 2000200, 1, 23, 3, N'DV1574674178_bg.png')
INSERT [dbo].[DICH_VU] ([MA_DV], [TEN_DICH_VU], [CHI_TIET], [GIA], [MALOAI], [SOLUONG_DUNG], [DANH_GIA], [IMAGE]) VALUES (12, N'Kiềm Nhờn Trị Mụn', NULL, 5000000, 2, 12, 3, N'DV1574674178_bg.png')
INSERT [dbo].[DICH_VU] ([MA_DV], [TEN_DICH_VU], [CHI_TIET], [GIA], [MALOAI], [SOLUONG_DUNG], [DANH_GIA], [IMAGE]) VALUES (13, N'Phục Hồi Da', NULL, 1000000, 2, 44, 3, N'DV1574674178_bg.png')
SET IDENTITY_INSERT [dbo].[DICH_VU] OFF
SET IDENTITY_INSERT [dbo].[HOA_DON] ON 

INSERT [dbo].[HOA_DON] ([MA_HD], [MA_KH], [TONG_TIEN]) VALUES (1, 1, 200000)
INSERT [dbo].[HOA_DON] ([MA_HD], [MA_KH], [TONG_TIEN]) VALUES (2, 1, 200000)
INSERT [dbo].[HOA_DON] ([MA_HD], [MA_KH], [TONG_TIEN]) VALUES (3, 1, 2000000)
INSERT [dbo].[HOA_DON] ([MA_HD], [MA_KH], [TONG_TIEN]) VALUES (4, 1, NULL)
INSERT [dbo].[HOA_DON] ([MA_HD], [MA_KH], [TONG_TIEN]) VALUES (5, 1, NULL)
INSERT [dbo].[HOA_DON] ([MA_HD], [MA_KH], [TONG_TIEN]) VALUES (6, 1, NULL)
INSERT [dbo].[HOA_DON] ([MA_HD], [MA_KH], [TONG_TIEN]) VALUES (7, 1, NULL)
INSERT [dbo].[HOA_DON] ([MA_HD], [MA_KH], [TONG_TIEN]) VALUES (8, 1, 1200000)
SET IDENTITY_INSERT [dbo].[HOA_DON] OFF
SET IDENTITY_INSERT [dbo].[KHACH_HANG] ON 

INSERT [dbo].[KHACH_HANG] ([MA_KH], [TEN_KH], [EMAIL], [PHONE]) VALUES (1, N'test', N'taind1010@gmail.com', N'0334772837')
INSERT [dbo].[KHACH_HANG] ([MA_KH], [TEN_KH], [EMAIL], [PHONE]) VALUES (2, N'Sơn', N'son@mail.com', N'018552856965')
INSERT [dbo].[KHACH_HANG] ([MA_KH], [TEN_KH], [EMAIL], [PHONE]) VALUES (3, N'Tai Nguyen', N'taind1010@gmail.com', N'0334772837')
INSERT [dbo].[KHACH_HANG] ([MA_KH], [TEN_KH], [EMAIL], [PHONE]) VALUES (4, N'Tai Nguyen', N'taind1010@gmail.com', N'0334772837')
SET IDENTITY_INSERT [dbo].[KHACH_HANG] OFF
SET IDENTITY_INSERT [dbo].[LICH_HEN] ON 

INSERT [dbo].[LICH_HEN] ([MA_LH], [MA_KH], [MA_CN], [MA_DV], [NGAY], [GIO], [NOTE], [TRANG_THAI]) VALUES (13, 2, 2, 3, CAST(0x0000AB0D00000000 AS DateTime), N'2:30 Chiều', N'no thing', 1)
INSERT [dbo].[LICH_HEN] ([MA_LH], [MA_KH], [MA_CN], [MA_DV], [NGAY], [GIO], [NOTE], [TRANG_THAI]) VALUES (15, 4, 3, 2, CAST(0x0000AB1300000000 AS DateTime), N'12:00 Chiều', N'', 1)
INSERT [dbo].[LICH_HEN] ([MA_LH], [MA_KH], [MA_CN], [MA_DV], [NGAY], [GIO], [NOTE], [TRANG_THAI]) VALUES (14, 3, 1, 1, CAST(0x0000AB0E00000000 AS DateTime), N'12:00 Chiều', N'nothing', NULL)
SET IDENTITY_INSERT [dbo].[LICH_HEN] OFF
SET IDENTITY_INSERT [dbo].[LOAI_DICHVU] ON 

INSERT [dbo].[LOAI_DICHVU] ([MAlLOAI], [TEN_LOAI], [STATUS]) VALUES (1, N'Căn bản', 1)
INSERT [dbo].[LOAI_DICHVU] ([MAlLOAI], [TEN_LOAI], [STATUS]) VALUES (2, N'Chuyên sâu', 1)
SET IDENTITY_INSERT [dbo].[LOAI_DICHVU] OFF
SET IDENTITY_INSERT [dbo].[NHAN_VIEN] ON 

INSERT [dbo].[NHAN_VIEN] ([MA_NV], [MA_CN], [TEN_NV], [EMAIL], [USERNAME], [PASSWORD], [TRANGTHAI], [QUYEN]) VALUES (1, NULL, N'ADMIN', N'admin@mail.com', N'admin', 0x313233343536, 1, 3)
INSERT [dbo].[NHAN_VIEN] ([MA_NV], [MA_CN], [TEN_NV], [EMAIL], [USERNAME], [PASSWORD], [TRANGTHAI], [QUYEN]) VALUES (2, 1, N'test chi nhánh', N'taind1010@gmail.com', N'cn1', 0x343536373839, 1, 1)
INSERT [dbo].[NHAN_VIEN] ([MA_NV], [MA_CN], [TEN_NV], [EMAIL], [USERNAME], [PASSWORD], [TRANGTHAI], [QUYEN]) VALUES (3, 1, N'nv cn1', N'nv@mail.com', N'nvcn1', 0x313233343536, 1, 2)
SET IDENTITY_INSERT [dbo].[NHAN_VIEN] OFF
SET IDENTITY_INSERT [dbo].[SAN_PHAM] ON 

INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (1, N'test sp', N'<p><strong>Sản phẩm tốt lắm nha</strong></p>

<ol>
	<li><strong>Tiện lợi</strong></li>
	<li><strong>Nhanh ch&oacute;ng</strong></li>
</ol>
', N'DV1574772880_28516351_2082677105299658_3558533947247161955_o.jpg', 100000)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (2, N'test sp 2', N'<blockquote>
<p>helleo</p>
</blockquote>
', N'28516351_2082677105299658_3558533947247161955_o.jpg', 1000000)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (3, N'KEM CHE KHUYẾT ĐIỂM – GIẢM MỤN PROACNE ', N'<h3><strong>❥ Kem Che Khuyết Điểm &ndash; giảm mụn Proacne &ndash; Correct &amp; Cover Stick&nbsp;❥</strong></h3>

<p><strong>C&ocirc;ng dụng:</strong><br />
✅&nbsp;Sản phẩm 2 trong 1 gi&uacute;p giảm mụn v&agrave; che mờ khuyết điểm do mụn v&agrave; c&aacute;c vết đốm, th&acirc;m g&acirc;y ra.<br />
✅&nbsp;Gi&uacute;p ti&ecirc;u sưng v&agrave; th&ocirc;ng tho&aacute;ng lỗ ch&acirc;n l&ocirc;ng.<br />
✅&nbsp;Gi&uacute;p &ldquo;che đi&rdquo; l&agrave;n da kh&ocirc;ng đều m&agrave;u.</p>

<p><strong>Đối tượng sử dụng:</strong><br />
&ndash; Sản phẩm d&agrave;nh cho da đang bị mụn trứng c&aacute;.<br />
&ndash; C&oacute; thể sử dụng kết hợp trong giai đoạn điều trị bằng thuốc v&agrave; suốt thời kỳ mang thai.</p>

<p><strong>C&aacute;ch sử dụng :</strong><br />
&ndash; Lấy 1 lượng sản phẩm vừa đủ cho khu&ocirc;n mặt.<br />
&ndash; Thoa trực tiếp l&ecirc;n những nốt mụn v&agrave; khuyết điểm tr&ecirc;n khu&ocirc;n mặt một lớp mỏng nhẹ.<br />
&ndash; Thoa 3 lần/ng&agrave;y để &ldquo;che&rdquo; đi mụn v&agrave; c&aacute;c vết th&acirc;m.</p>

<p>Sản phẩm được đăng k&yacute; bản quyền của&nbsp;<a href="https://www.gaspa.vn/"><strong>G&agrave; Spa&nbsp;&bull; Khiến Mụn Tr&aacute;nh Xa</strong></a>.</p>

<p>Tham khảo th&ecirc;m c&aacute;c sản phẩm kh&aacute;c của tại&nbsp;<a href="https://www.gaspa.vn/danh-muc/san-pham/"><strong>Danh mục sản phẩm</strong></a>.<br />
Nếu cần tư vấn, h&atilde;y chat với nh&acirc;n vi&ecirc;n hỗ trợ trực tuyến của G&agrave; Spa nh&eacute;.<br />
☎&nbsp;<strong>0901 311 113&nbsp;</strong>&nbsp;tư vấn, book lịch soi da v&agrave; l&agrave;m liệu tr&igrave;nh.</p>
', N'12.jpg', 4900)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (4, N'KEM KIỂM SOÁT NHỜN & TRỊ MỤN PRO ACNE ', N'<h3><strong>Kem Kiểm So&aacute;t Nhờn &amp; Trị Mụn Pro Acne &ndash; A.I Matt Fluid 50ml</strong></h3>

<p><strong>C&ocirc;ng dụng:</strong><br />
Gi&uacute;p chống lại sự h&igrave;nh th&agrave;nh mụn đầu đen v&agrave; mụn trứng c&aacute; th&ocirc;ng qua việc kiểm so&aacute;t lượng dầu thừa tr&ecirc;n da.<br />
Dung dịch gi&uacute;p dưỡng ẩm cho da mụn. Ngo&agrave;i ra, c&ograve;n kiểm so&aacute;t nhờn cho da suốt 8 tiếng gi&uacute;p ngừa mụn mới.<br />
L&agrave;m dịu những k&iacute;ch ứng, thấm h&uacute;t chất b&atilde; nhờn dư thừa tr&ecirc;n da mặt.</p>

<p><strong>Đối tượng sử dụng:</strong><br />
D&agrave;nh cho kh&aacute;ch h&agrave;ng c&oacute; l&agrave;n da nhờn v&agrave; d&agrave;nh cho da bị mụn trứng c&aacute;.</p>

<p><strong>C&aacute;ch sử dụng:</strong><br />
D&ugrave;ng 2 lần/ng&agrave;y (Sử dụng v&agrave;o buổi s&aacute;ng v&agrave; buổi tối)<br />
&ndash; Sau khi rửa mặt thật sạch lấy 1 lượng sản phẩm vừa đủ thoa đều l&ecirc;n khắp mặt.<br />
&ndash; Để c&oacute; kết quả tốt nhất, h&atilde;y kết hợp sử dụng với c&aacute;c sản phẩm l&agrave;m sạch thuộc d&ograve;ng ProAcne.<br />
&ndash; Tr&aacute;nh để sản phẩm tiếp x&uacute;c trực tiếp với mắt v&agrave; ni&ecirc;m mạc.</p>

<p>Sản phẩm được đăng k&yacute; bản quyền của&nbsp;<a href="https://www.gaspa.vn/"><strong>G&agrave; Spa&nbsp;&bull; Khiến Mụn Tr&aacute;nh Xa</strong></a>.</p>

<p>Tham khảo th&ecirc;m c&aacute;c sản phẩm kh&aacute;c của tại&nbsp;<a href="https://www.gaspa.vn/danh-muc/san-pham/"><strong>Danh mục sản phẩm</strong></a>.<br />
Nếu cần tư vấn, h&atilde;y chat với nh&acirc;n vi&ecirc;n hỗ trợ trực tuyến của G&agrave; Spa nh&eacute;.<br />
☎&nbsp;<strong>0901 311 113&nbsp;</strong>&nbsp;tư vấn, book lịch soi da v&agrave; l&agrave;m liệu tr&igrave;nh.</p>
', N'13.jpg', 4900)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (5, N'NƯỚC HOA HỒNG PRO ACNE – TONER 200ML', N'<h3><strong>Kem Kiểm So&aacute;t Nhờn &amp; Trị Mụn Pro Acne &ndash; A.I Matt Fluid 50ml</strong></h3>

<p><strong>C&ocirc;ng dụng:</strong><br />
Gi&uacute;p chống lại sự h&igrave;nh th&agrave;nh mụn đầu đen v&agrave; mụn trứng c&aacute; th&ocirc;ng qua việc kiểm so&aacute;t lượng dầu thừa tr&ecirc;n da.<br />
Dung dịch gi&uacute;p dưỡng ẩm cho da mụn. Ngo&agrave;i ra, c&ograve;n kiểm so&aacute;t nhờn cho da suốt 8 tiếng gi&uacute;p ngừa mụn mới.<br />
L&agrave;m dịu những k&iacute;ch ứng, thấm h&uacute;t chất b&atilde; nhờn dư thừa tr&ecirc;n da mặt.</p>

<p><strong>Đối tượng sử dụng:</strong><br />
D&agrave;nh cho kh&aacute;ch h&agrave;ng c&oacute; l&agrave;n da nhờn v&agrave; d&agrave;nh cho da bị mụn trứng c&aacute;.</p>

<p><strong>C&aacute;ch sử dụng:</strong><br />
D&ugrave;ng 2 lần/ng&agrave;y (Sử dụng v&agrave;o buổi s&aacute;ng v&agrave; buổi tối)<br />
&ndash; Sau khi rửa mặt thật sạch lấy 1 lượng sản phẩm vừa đủ thoa đều l&ecirc;n khắp mặt.<br />
&ndash; Để c&oacute; kết quả tốt nhất, h&atilde;y kết hợp sử dụng với c&aacute;c sản phẩm l&agrave;m sạch thuộc d&ograve;ng ProAcne.<br />
&ndash; Tr&aacute;nh để sản phẩm tiếp x&uacute;c trực tiếp với mắt v&agrave; ni&ecirc;m mạc.</p>

<p>Sản phẩm được đăng k&yacute; bản quyền của&nbsp;<a href="https://www.gaspa.vn/"><strong>G&agrave; Spa&nbsp;&bull; Khiến Mụn Tr&aacute;nh Xa</strong></a>.</p>

<p>Tham khảo th&ecirc;m c&aacute;c sản phẩm kh&aacute;c của tại&nbsp;<a href="https://www.gaspa.vn/danh-muc/san-pham/"><strong>Danh mục sản phẩm</strong></a>.<br />
Nếu cần tư vấn, h&atilde;y chat với nh&acirc;n vi&ecirc;n hỗ trợ trực tuyến của G&agrave; Spa nh&eacute;.<br />
☎&nbsp;<strong>0901 311 113&nbsp;</strong>&nbsp;tư vấn, book lịch soi da v&agrave; l&agrave;m liệu tr&igrave;nh.</p>
', N'14.jpg', 3600)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (6, N'SERUM TRỊ MỤN PRO ACNE – SUPER SERUM 30ML', N'<h3><strong>Serum Trị Mụn Pro Acne &ndash; Super Serum 30ml</strong></h3>

<p>Serum trị mụn giải quyết nguy&ecirc;n nh&acirc;n ch&iacute;nh l&agrave;m da nhờn v&agrave; mụn. Sản phẩm được sử dụng như một bước trong tiến tr&igrave;nh l&agrave;m sạch v&agrave; chăm s&oacute;c da.</p>

<p><strong>C&ocirc;ng dụng:</strong><br />
Tinh hất với c&ocirc;ng thức đặc biệt gi&uacute;p giảm mụn trứng c&aacute;, mụn mủ v&agrave; l&agrave;m mờ sẹo mụn.<br />
Tinh chất ph&ugrave; hợp cho mọi trường hợp bị mụn trứng c&aacute; từ mức độ nhẹ đến nặng.<br />
Cải thiện l&agrave;n da r&otilde; rệt v&agrave; cho bạn một l&agrave;n da khỏe khoắn, mịn m&agrave;ng v&agrave; tươi s&aacute;ng hơn.</p>

<p><strong>Đối tượng sử dụng:</strong><br />
D&agrave;nh cho da đang bị mụn trứng c&aacute;.</p>

<p><strong>C&aacute;ch sử dụng:</strong><br />
Sử dụng mỗi buổi s&aacute;ng v&agrave; buổi tối sau khi l&agrave;m sạch da mặt.<br />
Thoa v&agrave;i giọt kem l&ecirc;n v&ugrave;ng bị mụn.<br />
Tr&aacute;nh để kem tiếp x&uacute;c với mắt.</p>

<p>Sản phẩm được đăng k&yacute; bản quyền của&nbsp;<a href="https://www.gaspa.vn/"><strong>G&agrave; Spa&nbsp;&bull; Khiến Mụn Tr&aacute;nh Xa</strong></a>.</p>

<p>Tham khảo th&ecirc;m c&aacute;c sản phẩm kh&aacute;c của tại&nbsp;<a href="https://www.gaspa.vn/danh-muc/san-pham/"><strong>Danh mục sản phẩm</strong></a>.<br />
Nếu cần tư vấn, h&atilde;y chat với nh&acirc;n vi&ecirc;n hỗ trợ trực tuyến của G&agrave; Spa nh&eacute;.<br />
☎&nbsp;<strong>0901 311 113&nbsp;</strong>&nbsp;tư vấn, book lịch soi da v&agrave; l&agrave;m liệu tr&igrave;nh.</p>
', N'15.jpg', 590000)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (7, N'EUCERIN – GEL TẨY TẾ BÀO CHẾT PROACNE', N'<h3><strong>Gel Tẩy Tế B&agrave;o Chết Eucerin Proacne</strong></h3>

<p>Tẩy tế b&agrave;o chết l&agrave; 1 trong những phương ph&aacute;p l&agrave;m đẹp&nbsp;phổ biến m&agrave; để c&oacute; l&agrave;n da đẹp nhiều người đ&atilde; truyền tai nhau &aacute;p dụng. Nếu thực hiện tẩy tế b&agrave;o chết đ&uacute;ng c&aacute;ch, l&agrave;n da của bạn sẽ trở n&ecirc;n mịn m&agrave;ng, săn chắc, th&ocirc;ng tho&aacute;ng, trắng s&aacute;ng bởi đ&atilde; được loại bỏ ho&agrave;n to&agrave;n mọi độc tố, bụi bẩn, cặn b&atilde;, lượng dầu dư thừa. Việc hấp thụ dưỡng chất từ b&ecirc;n trong lẫn b&ecirc;n ngo&agrave;i sẽ được diễn ra hiệu quả hơn.</p>

<p><strong>C&ocirc;ng dụng</strong><br />
Nhẹ nh&agrave;ng l&agrave;m sạch tế b&agrave;o chết, bụi bẩn, những lớp trang điểm.<br />
L&agrave;m sạch mụn đầu đen, gi&uacute;p ngăn ngừa mụn trước khi ch&uacute;ng h&igrave;nh th&agrave;nh.<br />
Gi&uacute;p th&ocirc;ng tho&aacute;ng lỗ ch&acirc;n l&ocirc;ng.<br />
Mang l&agrave;n da mịn m&agrave;ng v&agrave; tươi m&aacute;t hơn.</p>

<p><strong>Th&agrave;nh Phần</strong><br />
&ndash; Acid Lactic<br />
&ndash; Micro Particle<br />
&ndash; An to&agrave;n tuyệt đối, kh&ocirc;ng g&acirc;y k&iacute;ch ứng, ph&ugrave; hợp với da mặt lỗ ch&acirc;n l&ocirc;ng to, cấu tr&uacute;c da th&ocirc;.</p>

<p><strong>C&aacute;ch D&ugrave;ng</strong><br />
&ndash; D&ugrave;ng 1-2 lần/ tuần. Sử dụng tẩy tế b&agrave;o chết trước khi sử dụng toner v&agrave; dưỡng da.<br />
&ndash; L&agrave;m ướt da mặt bằng nước sau đ&oacute; lấy một lượng sản phẩm vừa đủ cho da mặt massage nhẹ nh&agrave;ng xung quanh da mặt.<br />
&ndash; Sau khi massage khoảng 15p rửa lại mặt với nước.</p>

<p>Sản phẩm được đăng k&yacute; bản quyền của&nbsp;<a href="https://www.gaspa.vn/"><strong>G&agrave; Spa&nbsp;&bull; Khiến Mụn Tr&aacute;nh Xa</strong></a>.</p>

<p>Tham khảo th&ecirc;m c&aacute;c sản phẩm kh&aacute;c của tại&nbsp;<a href="https://www.gaspa.vn/danh-muc/san-pham/"><strong>Danh mục sản phẩm</strong></a>.<br />
Nếu cần tư vấn, h&atilde;y chat với nh&acirc;n vi&ecirc;n hỗ trợ trực tuyến của G&agrave; Spa nh&eacute;.<br />
☎&nbsp;<strong>0901 311 113&nbsp;</strong>&nbsp;tư vấn, book lịch soi da v&agrave; l&agrave;m liệu tr&igrave;nh.</p>
', N'16.jpg', 320000)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (8, N'SỮA RỬA MẶT DỊU NHẸ WHITE THERAPY', N'<h3><strong>Sữa rửa mặt dịu nhẹ Eucerin WHITE THERAPY d&agrave;nh cho mọi loại da.</strong></h3>

<p>L&agrave;n da trở n&ecirc;n rạng rỡ, tươi trẻ. Kh&ocirc;ng bổ sung chất m&agrave;u v&agrave; kh&ocirc;ng cồn. Nhẹ nh&agrave;ng l&agrave;m sạch l&agrave;n da, nhờn, cặn trang điểm. Hỗ trợ qu&aacute; tr&igrave;nh l&agrave;m s&aacute;ng da</p>

<p><strong>C&ocirc;ng dụng</strong><br />
&Aacute;nh nắng, thay đổi nội tiết tố, vi&ecirc;m da v&agrave; sẹo mụn đều c&oacute; thể dẫn đến tăng sắc tố da tr&ecirc;n gương mặt. Bộ sản phẩm Eucerin White Therapy đ&atilde; được kiểm nghiệm l&acirc;m s&agrave;ng cho thấy hiệu quả trong việc l&agrave;m mờ vết th&acirc;m v&agrave; đem lại l&agrave;n da rạng ngời trong suốt 12 tuần. Sử dụng thường xuy&ecirc;n c&ograve;n đem lại kết quả tuyệt vời hơn nữa.</p>

<p>Hỗ trợ qu&aacute; tr&igrave;nh l&agrave;m s&aacute;ng da.</p>

<p>&ndash; Kh&ocirc;ng bổ sung chất m&agrave;u v&agrave; kh&ocirc;ng cồn.</p>

<p>&ndash; C&oacute; thể d&ugrave;ng để tẩy trang.</p>

<p>&ndash; Sản phẩm kh&ocirc;ng m&ugrave;i , kh&ocirc;ng chứa cồn v&agrave; chất tạo m&agrave;u rất c&oacute; lợi cho da.</p>

<p><strong>Đối tượng:</strong><br />
Th&iacute;ch hợp cho mọi loại da</p>

<p><strong>Th&agrave;nh phần:</strong></p>

<p>Aqua, BHT, Bisabolol, Cera Alba, Disodium EDTA, Glycerin, Glyceryl Stearate,Octadecenedioic Acid, Parfum, PEG-8, PEG-150, Potassium Etidronate, Potassium Laurate,Potassium Myristate, Potassium Stearate, Propylene Glycol, Sodium Methyl Cocoyl Taurate.</p>

<p><strong>C&aacute;ch d&ugrave;ng</strong></p>

<p>&ndash; Sử dụng sau khi rửa mặt v&agrave; trước khi dưỡng ẩm.</p>

<p>&ndash; Tạo bọt với một &iacute;t nước trước khi thoa l&ecirc;n da. Nhẹ nh&agrave;ng rửa sạch lại với nước lạnh hoặc nước ấm (nếu d&ugrave;ng để tẩy trang)</p>

<p>Sản phẩm được đăng k&iacute; bản quyền của&nbsp;<a href="https://www.gaspa.vn/"><strong>G&agrave; Spa&nbsp;&bull; Trị Mụn Th&acirc;m an to&agrave;n &amp; hiệu quả</strong></a>.</p>

<p>Tham khảo th&ecirc;m c&aacute;c sản phẩm kh&aacute;c của tại&nbsp;<a href="https://www.gaspa.vn/danh-muc/san-pham/"><strong>Danh mục sản phẩm</strong></a>.<br />
Nếu cần tư vấn, h&atilde;y chat với nh&acirc;n vi&ecirc;n hỗ trợ trực tuyến của G&agrave; Spa nh&eacute;.<br />
☎&nbsp;<strong>0901 311 113&nbsp;</strong>&nbsp;tư vấn, book lịch soi da v&agrave; l&agrave;m liệu tr&igrave;nh.</p>
', N'21.jpg', 375000)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (9, N'GEL RỬA MẶT PRO-ACNE', N'<h3><strong>Gel Rửa Mặt Eucerin Pro-Acne Cleansing Gel D&agrave;nh Cho Da Mụn</strong></h3>

<p>L&agrave;n da muốn khỏe, muốn hết mụn trước hết phải sạch đ&atilde;. Do vậy, rửa mặt l&agrave; một bước quan trọng trong qu&aacute; tr&igrave;nh dưỡng da. Với bất kỳ l&agrave;n da n&agrave;o cũng cần phải sạch trước ti&ecirc;n, đặc biệt l&agrave;n da mụn lại c&agrave;ng cần phải được sạch. V&igrave; vậy, loại bỏ dầu nhờn v&agrave; bụi bẩn triệt để l&agrave; bước cần thiết trước ti&ecirc;n khi muốn giảm mụn.</p>

<p><strong>C&ocirc;ng dụng:</strong><br />
Gel rửa mặt Pro-ACNE l&agrave; gel rửa mặt l&agrave;m sạch da nhẹ nh&agrave;ng nhưng hiệu quả loại bỏ bẩn, lớp trang điểm v&agrave; chất b&atilde; nhờn dư thừa tr&ecirc;n da.<br />
Giữ cho l&agrave;n da sạch, tươi m&aacute;t v&agrave; mềm mại.<br />
Kh&aacute;ng khuẩn, kh&ocirc;ng g&acirc;y mụn trứng c&aacute;.</p>

<p><strong>Th&agrave;nh phần</strong><br />
&ndash; 6% Ampho Tenside<br />
&ndash; &lt;2% Salicylic Acid<br />
&ndash; Kh&ocirc;ng tạo bọt, kh&ocirc;ng hương liệu</p>

<p><strong>C&aacute;ch d&ugrave;ng:</strong><br />
&ndash; D&ugrave;ng v&agrave;o 2 lần/ng&agrave;y (v&agrave;o buổi s&aacute;ng v&agrave; buổi tối).<br />
&ndash; L&agrave;m ướt da mặt bằng nước sau đ&oacute; lấy một lượng sản phẩm vừa đủ cho da mặt massage nhẹ nh&agrave;ng xung quanh da mặt.<br />
&ndash; Sau khi massage khoảng 5p &ndash; 10p rồi rửa mặt lại với nước.</p>

<p>Sản phẩm được đăng k&yacute; bản quyền của&nbsp;<a href="https://www.gaspa.vn/"><strong>G&agrave; Spa&nbsp;&bull; Khiến Mụn Tr&aacute;nh Xa</strong></a>.</p>

<p>Tham khảo th&ecirc;m c&aacute;c sản phẩm kh&aacute;c của tại&nbsp;<a href="https://www.gaspa.vn/danh-muc/san-pham/"><strong>Danh mục sản phẩm</strong></a>.<br />
Nếu cần tư vấn, h&atilde;y chat với nh&acirc;n vi&ecirc;n hỗ trợ trực tuyến của G&agrave; Spa nh&eacute;.<br />
☎&nbsp;<strong>0901 311 113&nbsp;</strong>&nbsp;tư vấn, book lịch soi da v&agrave; l&agrave;m liệu tr&igrave;nh.</p>
', N'20.jpg', 320000)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (10, N'KEM DƯỠNG GIẢM MỤN, DƯỠNG TRẮNG DA PROACNE', N'<h3><strong>Kem dưỡng trắng, chống nắng v&agrave; ngừa mụn Eucerin Day Mat Whitening SPF30</strong></h3>

<p>Kem dưỡng trắng, chống nắng v&agrave; ngừa mụn&nbsp;<strong>Eucerin Day Mat Whitening SPF30</strong>&nbsp;với c&ocirc;ng thức đặc biệt d&agrave;nh ri&ecirc;ng cho da dầu mụn, gi&uacute;p bảo vệ da mặt khỏi thương tổn do &aacute;nh nắng, đồng thời chứa hoạt chất cải thiện t&igrave;nh trạng da, giảm đốm n&acirc;u, t&agrave;n nhang do &aacute;nh nắng, giảm đỏ, giảm mụn trứng c&aacute; v&agrave; l&agrave;m s&aacute;ng da.</p>

<p><strong>C&ocirc;ng dụng:</strong></p>

<p>Bảo vệ da mặt khỏi thương tổn do t&aacute;c động của &aacute;nh nắng, đồng thời chứa hoạt chất cải thiện t&igrave;nh trạng da như giảm đốm n&acirc;u, t&agrave;n nhang do &aacute;nh nắng, giảm đỏ, giảm mụn trứng c&aacute; v&agrave; l&agrave;m s&aacute;ng da.</p>

<p><strong>C&aacute;ch d&ugrave;ng:</strong></p>

<p>Sau khi rửa mặt sạch, thoa đều l&ecirc;n v&ugrave;ng da mặt, cổ, ngực rồi nhẹ nh&agrave;ng m&aacute;t-xa.</p>

<p><strong>Th&agrave;nh phần:</strong></p>

<p>Aqua, Polymethylsilsesquioxane, Alcohol Denat, Butyl Methoxydibenzoylmethane, Ethylhexyl Salicylate, Octocrylene, Cyclomethicone&hellip;</p>

<p>Sản phẩm được đăng k&iacute; bản quyền của&nbsp;<a href="https://www.gaspa.vn/"><strong>G&agrave; Spa&nbsp;&bull; Trị Mụn Th&acirc;m an to&agrave;n &amp; hiệu quả</strong></a>.</p>

<p>Tham khảo th&ecirc;m c&aacute;c sản phẩm kh&aacute;c của tại&nbsp;<a href="https://www.gaspa.vn/danh-muc/san-pham/"><strong>Danh mục sản phẩm</strong></a>.<br />
Nếu cần tư vấn, h&atilde;y chat với nh&acirc;n vi&ecirc;n hỗ trợ trực tuyến của G&agrave; Spa nh&eacute;.<br />
☎&nbsp;<strong>0901 311 113&nbsp;</strong>&nbsp;tư vấn, book lịch soi da v&agrave; l&agrave;m liệu tr&igrave;nh.</p>
', N'19.jpg', 490000)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (11, N'GÀ SPA – CAO KHỔ QUA', N'<h2>M&ocirc; Tả</h2>

<p>Quả khổ qua (mướp đắng) c&oacute; t&iacute;nh m&aacute;t, thanh nhiệt tốt, rất gi&agrave;u vitamin C v&agrave; dưỡng chất c&oacute; t&aacute;c dụng th&uacute;c đẩy qu&aacute; tr&igrave;nh trao đổi chất cần thiết v&agrave; cung cấp dinh dưỡng chăm s&oacute;c cơ thể n&ecirc;n được d&ugrave;ng l&agrave;m nguy&ecirc;n liệu sản xuất cao khổ qua trị mụn dưỡng da.</p>

<p><strong>? TH&Agrave;NH PHẦN:</strong></p>

<p>&ndash; Khổ qua rừng, mật ong rừng,&hellip;</p>

<p><strong>? C&Ocirc;NG DỤNG:</strong></p>

<p>&ndash; Gi&uacute;p hỗ trợ trị mụn, dưỡng da, kh&aacute;ng vi&ecirc;m, thải độc.</p>

<p>&ndash; Bảo vệ da v&agrave; dưỡng da trắng s&aacute;ng, mịn m&agrave;ng.</p>

<p>&ndash; L&agrave;m mờ vết th&acirc;m sau khi trị mụn.</p>

<p>&ndash; L&agrave;m hồng m&ocirc;i.</p>

<p><strong>?C&Aacute;CH SỬ DỤNG:</strong></p>

<p>B&ocirc;i 1 lớp mỏng Cao Khổ Qua l&ecirc;n da mặt. Thoa đều v&agrave; để khoảng 30&prime; &ndash; 45&prime; sau đ&oacute; rửa sạch lại với nước.</p>

<p>Sản phẩm được đăng k&iacute; bản quyền của&nbsp;<a href="https://www.gaspa.vn/"><strong>G&agrave; Spa&nbsp;&bull; Trị Mụn Th&acirc;m an to&agrave;n &amp; hiệu quả</strong></a>.</p>

<p>Tham khảo th&ecirc;m c&aacute;c sản phẩm kh&aacute;c của tại&nbsp;<a href="https://www.gaspa.vn/danh-muc/san-pham/"><strong>Danh mục sản phẩm</strong></a>.<br />
Nếu cần tư vấn, h&atilde;y chat với nh&acirc;n vi&ecirc;n hỗ trợ trực tuyến của G&agrave; Spa nh&eacute;.<br />
☎&nbsp;<strong>0901 311 113&nbsp;</strong>&nbsp;tư vấn, book lịch soi da v&agrave; l&agrave;m liệu tr&igrave;nh.</p>
', N'26.jpg', 190000)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (12, N'GEL TẨY TẾ BÀO CHẾT TRÀ XANH + HẠT JOJOBA', N'<p><strong>Gel tẩy tế b&agrave;o chết Tr&agrave; Xanh + Hạt Jojoba</strong></p>

<p>D&ugrave;ng được cho cả Face + Body nh&eacute;.<br />
Được chiết xuất từ đọt tr&agrave; non tươi sau khi được nấu kỹ kết hợp với l&aacute;, gelatin v&agrave; gel nha đam sẽ KH&Aacute;NG KHUẨN, LOẠI SẠCH DA CHẾT, GIẢM BONG TR&Oacute;C VI&Ecirc;M SƯNG.<br />
L&aacute; tr&agrave; xanh c&oacute; h&agrave;m lượng kh&aacute;ng khuẩn trị mụn v&agrave; trị th&acirc;m rất tốt n&ecirc;n sử dụng khi da đang bị mụn cực kỳ nh&eacute;.<br />
Face cũng giống body mỗi ng&agrave;y đ&egrave;u thải ra lượng da chết nhất định , nếu ch&uacute;ng ta kh&ocirc;ng tẩy tế b&agrave;o chết 1 đến 2 lần 1 tuần sẽ l&agrave;m ứ đọng chất bẩn trong lỗ ch&acirc;n l&ocirc;ng khiến da sần s&ugrave;i ko l&aacute;ng mịn , m&ugrave;a hanh kh&ocirc; da sẽ dễ bong tr&oacute;c.<br />
ĐƯỢC L&Agrave;M TỪ THI&Ecirc;N NHI&Ecirc;N 100% N&Ecirc;N ĐẢM BẢO KH&Ocirc;NG K&Iacute;CH ỨNG.</p>

<p><strong>C&aacute;ch sử dụng :</strong><br />
Tuần tẩy 1-2 lần, mỗi lần lấy lượng gel bằng hạt đậu, xoa đều mặt cho đến khi kh&ocirc; sẽ thấy da xuất hiện vết bẩn.<br />
Sau đ&oacute; rửa lại bằng nước sạch.<br />
145k/hủ 120mg d&ugrave;ng đc 3-4 th&aacute;ng.</p>

<p>Sản phẩm được đăng k&yacute; bản quyền của&nbsp;<a href="https://www.gaspa.vn/"><strong>G&agrave; Spa&nbsp;&bull; Khiến Mụn Tr&aacute;nh Xa</strong></a>.</p>

<p>Tham khảo th&ecirc;m c&aacute;c sản phẩm kh&aacute;c của tại&nbsp;<a href="https://www.gaspa.vn/danh-muc/san-pham/"><strong>Danh mục sản phẩm</strong></a>.<br />
Nếu cần tư vấn, h&atilde;y chat với nh&acirc;n vi&ecirc;n hỗ trợ trực tuyến của G&agrave; Spa nh&eacute;.<br />
☎&nbsp;<strong>0901 311 113&nbsp;</strong>&nbsp;tư vấn, book lịch soi da v&agrave; l&agrave;m liệu tr&igrave;nh.</p>
', N'27.jpg', 145000)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (13, N'SERUM VITAMIN C', N'<h3><strong>Serum Vitamin C</strong></h3>

<p>Trắng da mờ th&acirc;m căng b&oacute;ng da gi&uacute;p da đều m&agrave;u.<br />
<strong>Th&agrave;nh phần:</strong>&nbsp;niacin armide, arbutin, 10 flower complex, vitC, 5 loại rễ c&acirc;y.<br />
Serum Vitamin C l&agrave;m theo c&ocirc;ng thức của H&agrave;n Quốc l&agrave; loại serum ko m&agrave;u ko m&ugrave;i v&igrave; serum bỏ hương liệu v&ocirc; sẽ kh&ocirc;ng tốt! Đ&oacute;ng g&oacute;i theo d&acirc;y chuyền H&agrave;n Quốc nhưng vẫn chiết xuất từ th&agrave;nh phần thi&ecirc;n nhi&ecirc;n gi&uacute;p da TRẮNG S&Aacute;NG MỜ TH&Acirc;M CĂNG B&Oacute;NG DA<br />
Sử dụng ng&agrave;y 1 lần để qua đ&ecirc;m.<br />
KH&Ocirc;NG THOA L&Ecirc;N V&Ugrave;NG MỤN.</p>

<p>Sản phẩm được đăng k&yacute; bản quyền của&nbsp;<a href="https://www.gaspa.vn/"><strong>G&agrave; Spa&nbsp;&bull; Khiến Mụn Tr&aacute;nh Xa</strong></a>.</p>

<p>Tham khảo th&ecirc;m c&aacute;c sản phẩm kh&aacute;c của tại&nbsp;<a href="https://www.gaspa.vn/danh-muc/san-pham/"><strong>Danh mục sản phẩm</strong></a>.<br />
Nếu cần tư vấn, h&atilde;y chat với nh&acirc;n vi&ecirc;n hỗ trợ trực tuyến của G&agrave; Spa nh&eacute;.<br />
☎&nbsp;<strong>0901 311 113&nbsp;</strong>&nbsp;tư vấn, book lịch soi da v&agrave; l&agrave;m liệu tr&igrave;nh.</p>
', N'32.jpg', 150000)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (14, N'TINH DẦU TRÀM TRÀ', N'<h3><strong>Tinh Dầu Tr&agrave;m Tr&agrave; Đặc Trị Mụn</strong></h3>

<p>Sản phẩm được pha chế từ tinh dầu thi&ecirc;n nhi&ecirc;n, chuy&ecirc;n điều trị mụn, giảm vi&ecirc;m , giảm sưng tấy , điều tiết bả nhờn gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng.</p>

<p><strong>Th&agrave;nh phần:</strong>&nbsp;hoa anh thảo , bưởi , qu&yacute;t , ho&agrave;ng lan , phong lữ , hương nhu.<br />
Ho&agrave;n to&agrave;n kh&ocirc;ng pha trộn chất bảo quản.</p>

<p><strong>C&aacute;ch sử dụng:</strong><br />
Thoa đ&egrave;u mặt mỗi tối trước khi đi ngủ.<br />
Massage 5-10&prime; cho thấm v&agrave; để qua đ&ecirc;m.<br />
C&oacute; thể chấm l&ecirc;n mụn bọc mụn vi&ecirc;m để k&iacute;ch th&iacute;ch cồi nhanh kh&ocirc; v&agrave; rụng.<br />
<strong>Lưu &yacute;:</strong>&nbsp;để sản phẩm tr&aacute;h &aacute;nh nắng trực tiếp.<br />
Ko mở nắp l&agrave;m bay hương tinh dầu.</p>

<p><strong>Sản phẩm được tặng k&egrave;m theo liệu tr&igrave;nh&nbsp;<a href="https://www.gaspa.vn/tri-mun-an-toan/" target="_blank">Trị Mụn Chuy&ecirc;n S&acirc;u</a>.</strong></p>

<p>Sản phẩm được đăng k&yacute; bản quyền của&nbsp;<a href="https://www.gaspa.vn/"><strong>G&agrave; Spa&nbsp;&bull; Khiến Mụn Tr&aacute;nh Xa</strong></a>.</p>

<p>Tham khảo th&ecirc;m c&aacute;c sản phẩm kh&aacute;c của tại&nbsp;<a href="https://www.gaspa.vn/danh-muc/san-pham/"><strong>Danh mục sản phẩm</strong></a>.<br />
Nếu cần tư vấn, h&atilde;y chat với nh&acirc;n vi&ecirc;n hỗ trợ trực tuyến của G&agrave; Spa nh&eacute;.<br />
☎&nbsp;<strong>0901 311 113&nbsp;</strong>&nbsp;tư vấn, book lịch soi da v&agrave; l&agrave;m liệu tr&igrave;nh.</p>
', N'33.jpg', 150000)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (15, N'SERUM DƯỠNG TRẮNG DA TINH CHẤT ALPHA ARBUTIN', N'<h3><strong>Serum dưỡng trắng da tinh chất Alpha Arbutin thương hiệu G&agrave; Spa</strong></h3>

<p><strong>C&Ocirc;NG DỤNG:</strong><br />
&ndash; Arbutin gi&uacute;p tăng sắc tố, l&agrave;m giảm mức độ sạm da sau khi tiếp x&uacute;c với tia cực t&iacute;m đặc biệt l&agrave; ở v&ugrave;ng da tiếp x&uacute;c với &aacute;nh mặt trời.<br />
&ndash; L&agrave;m đều m&agrave;u da, loại bỏ nhanh ch&oacute;ng c&aacute;c đốm n&acirc;u t&iacute;ch tụ l&acirc;u ng&agrave;y tr&ecirc;n da.<br />
&ndash; C&ocirc;ng dụng của Arbutin l&agrave; trẻ h&oacute;a da, l&agrave;m trắng, trị n&aacute;m da.<br />
&ndash; Chống l&atilde;o ho&aacute;, ngăn chặn c&aacute;c gốc tự do, trẻ h&oacute;a da.</p>

<p><strong>C&Aacute;CH D&Ugrave;NG:</strong><br />
&ndash; Thoa 1 lớp mỏng trực tiếp l&ecirc;n da, sau đ&oacute; d&ugrave;ng tay vỗ nhẹ gi&uacute;p tinh chất thẩm thấu v&agrave;o s&acirc;u b&ecirc;n trong bề mặt da.</p>

<p><strong>LƯU &Yacute;:</strong>&nbsp;Kh&ocirc;ng b&ocirc;i sản phẩm l&ecirc;n v&ugrave;ng c&oacute; vết thương hở, v&ugrave;ng da đang dị ứng, ch&aacute;y nắng,&hellip;</p>

<p>Sản phẩm được đăng k&yacute; bản quyền của&nbsp;<a href="https://www.gaspa.vn/"><strong>G&agrave; Spa&nbsp;&bull; Khiến Mụn Tr&aacute;nh Xa</strong></a>.</p>

<p>Tham khảo th&ecirc;m c&aacute;c sản phẩm kh&aacute;c của tại&nbsp;<a href="https://www.gaspa.vn/danh-muc/san-pham/"><strong>Danh mục sản phẩm</strong></a>.<br />
Nếu cần tư vấn, h&atilde;y chat với nh&acirc;n vi&ecirc;n hỗ trợ trực tuyến của G&agrave; Spa nh&eacute;.<br />
☎&nbsp;<strong>0901 311 113&nbsp;</strong>&nbsp;tư vấn, book lịch soi da v&agrave; l&agrave;m liệu tr&igrave;nh.</p>
', N'31.jpg', 190000)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (16, N'SỮA RỬA MẶT GEL CAM – BẠC HÀ', N'<h1>Sữa rửa mặt gel cam &ndash; bạc h&agrave;</h1>

<p>Sữa rửa mặt gel Cam &ndash; Bạc H&agrave; d&agrave;nh cho da nhờn hết mặt kết hợp từ tinh dầu Cam v&agrave; tinh dầu Bạc h&agrave;. Đ&acirc;y l&agrave; m&ugrave;i hương mới lạ v&agrave; sự kết hợp ho&agrave;n hảo d&agrave;nh cho da bị mụn<br />
Thay v&igrave; ch&uacute;ng ta phải cấu vỏ cam x&ocirc;ng mặt tuần 1-2 lần ch&uacute;ng ta c&oacute; thể rửa mặt hằng ng&agrave;y bằng loại sữa n&agrave;y với tinh dầu gốc cam 100%. Bạc h&agrave; gi&uacute;p kh&aacute;ng khuẩn ti&ecirc;u vi&ecirc;m v&agrave; tạo cảm gi&aacute;c m&aacute;t lạnh khi sử dụng</p>

<ul>
	<li><em><strong>Sữa rửa mặt dạng Gel d&agrave;nh cho da dễ k&iacute;ch ứng nhất nh&eacute;!</strong></em></li>
</ul>

<p><img alt="" src="https://www.gaspa.vn/wp-content/uploads/2019/04/cam-bacha.png" style="height:700px; width:700px" /></p>

<p><em>Sửa rữa mặt gel cam &ndash; bạc h&agrave; | G&agrave; Spa</em></p>

<p>Đối với những người c&oacute; l&agrave;n da nhạy cảm v&agrave; dễ bị k&iacute;ch ứng th&igrave; lựa chọn một sản phẩm sữa rửa mặt ph&ugrave; hợp l&agrave; điều v&ocirc; c&ugrave;ng kh&oacute; khăn. Sữa rữa mặt dạng gel cam &ndash; bạc h&agrave; l&agrave; một lựa chọn ho&agrave;n hảo x&oacute;a tan muộn phiền khi lựa chọn sửa rữa mặt cho l&agrave;n da nhay cảm.</p>

<p><strong>Th&agrave;nh phần</strong>: tinh dầu Cam, tinh dầu Bạc H&agrave;, nước cất, vitamin E</p>

<h1>Hướng dẫn sử dụng</h1>

<ul>
	<li>Rửa mặt bằng nước trước khi sử dụng</li>
	<li>Sử dụng một lượng vừa đủ gel b&ocirc;i l&ecirc;n mặt rồi thoa đều</li>
	<li>Chờ v&agrave;i ph&uacute;t cho những hoạt chất ngấm v&agrave;o da v&agrave; đ&aacute;nh tan mọi loại bụi bẩn ra khỏi lỗ ch&acirc;n l&ocirc;ng</li>
	<li>Rửa sạch lại với nước v&agrave; lau kh&ocirc;</li>
</ul>

<p>====&gt;&gt; Ch&uacute; &yacute;: Mỗi ng&agrave;y chỉ sử dụng 2 &ndash; 3 lần.</p>

<p>Sản phẩm được đăng k&yacute; bản quyền của&nbsp;<a href="https://www.gaspa.vn/"><strong>G&agrave; Spa&nbsp;&bull; Khiến Mụn Tr&aacute;nh Xa</strong></a>.</p>

<p>Tham khảo th&ecirc;m c&aacute;c sản phẩm kh&aacute;c của tại&nbsp;<a href="https://www.gaspa.vn/danh-muc/san-pham/"><strong>Danh mục sản phẩm</strong></a>.<br />
Nếu cần tư vấn, h&atilde;y chat với nh&acirc;n vi&ecirc;n hỗ trợ trực tuyến của G&agrave; Spa nh&eacute;.<br />
☎&nbsp;<strong>0901 311 113&nbsp;</strong>&nbsp;tư vấn, book lịch soi da v&agrave; l&agrave;m liệu tr&igrave;nh.</p>
', N'34.jpg', 150000)
INSERT [dbo].[SAN_PHAM] ([MA_SP], [TEN_SP], [MO_TA], [ANH], [GIA]) VALUES (17, N'SỮA RỬA MẶT GEL SẢ – BẠC HÀ', N'<h1>Sữa rửa mặt gel sả &ndash; bạc h&agrave;</h1>

<p>Sữa rửa mặt gel Sả &ndash; Bạc H&agrave; d&agrave;nh cho da nhờn hết mặt kết hợp từ tinh dầu Sả v&agrave; tinh dầu Bạc h&agrave;. Đ&acirc;y l&agrave; m&ugrave;i hương mới lạ v&agrave; sự kết hợp ho&agrave;n hảo d&agrave;nh cho da bị mụn<br />
Thay v&igrave; ch&uacute;ng ta phải nấu sả x&ocirc;ng mặt tuần 1-2 lần ch&uacute;ng ta c&oacute; thể rửa mặt hằng ng&agrave;y bằng loại sữa n&agrave;y với tinh dầu gốc Sả 100%. Bạc h&agrave; gi&uacute;p kh&aacute;ng khuẩn ti&ecirc;u vi&ecirc;m v&agrave; tạo cảm gi&aacute;c m&aacute;t lạnh khi sử dụng</p>

<ul>
	<li><em><strong>Sữa rửa mặt dạng Gel d&agrave;nh cho da dễ k&iacute;ch ứng nhất nh&eacute;!</strong></em></li>
</ul>

<p><img alt="Sửa rữa mặt gel sả - bạc hà | Gà Spa" src="https://www.gaspa.vn/wp-content/uploads/2019/04/sa-bacha-2.png" style="height:700px; width:700px" /></p>

<p><em>Sửa rữa mặt gel sả &ndash; bạc h&agrave; | G&agrave; Spa</em></p>

<p>Đối với những người c&oacute; l&agrave;n da nhạy cảm v&agrave; dễ bị k&iacute;ch ứng th&igrave; lựa chọn một sản phẩm sữa rửa mặt ph&ugrave; hợp l&agrave; điều v&ocirc; c&ugrave;ng kh&oacute; khăn. Sữa rữa mặt dạng gel sả &ndash; bạc h&agrave; (c&oacute; cả cam &ndash; bạc h&agrave;) l&agrave; một lựa chọn ho&agrave;n hảo x&oacute;a tan muộn phiền khi lựa chọn sửa rữa mặt cho l&agrave;n da nhay cảm.</p>

<p><strong>Th&agrave;nh phần</strong>: tinh dầu Sả, tinh dầu Bạc H&agrave;, nước cất, vitamin E</p>

<h1>Hướng dẫn sử dụng</h1>

<ul>
	<li>Rửa mặt bằng nước trước khi sử dụng</li>
	<li>Sử dụng một lượng vừa đủ gel b&ocirc;i l&ecirc;n mặt rồi thoa đều</li>
	<li>Chờ v&agrave;i ph&uacute;t cho những hoạt chất ngấm v&agrave;o da v&agrave; đ&aacute;nh tan mọi loại bụi bẩn ra khỏi lỗ ch&acirc;n l&ocirc;ng</li>
	<li>Rửa sạch lại với nước v&agrave; lau kh&ocirc;</li>
</ul>

<p>====&gt;&gt; Ch&uacute; &yacute;: Mỗi ng&agrave;y chỉ sử dụng 2 &ndash; 3 lần.</p>

<p>Sản phẩm được đăng k&yacute; bản quyền của&nbsp;<a href="https://www.gaspa.vn/"><strong>G&agrave; Spa&nbsp;&bull; Khiến Mụn Tr&aacute;nh Xa</strong></a>.</p>

<p>Tham khảo th&ecirc;m c&aacute;c sản phẩm kh&aacute;c của tại&nbsp;<a href="https://www.gaspa.vn/danh-muc/san-pham/"><strong>Danh mục sản phẩm</strong></a>.<br />
Nếu cần tư vấn, h&atilde;y chat với nh&acirc;n vi&ecirc;n hỗ trợ trực tuyến của G&agrave; Spa nh&eacute;.<br />
☎&nbsp;<strong>0901 311 113&nbsp;</strong>&nbsp;tư vấn, book lịch soi da v&agrave; l&agrave;m liệu tr&igrave;nh.</p>
', N'36.jpg', 150000)
SET IDENTITY_INSERT [dbo].[SAN_PHAM] OFF
SET IDENTITY_INSERT [dbo].[TAI_KHOAN] ON 

INSERT [dbo].[TAI_KHOAN] ([MA_TK], [MA_KH], [USERNAME], [PASSWORD], [TRANG_THAI]) VALUES (1, 1, N'test', 0x313233343536, 1)
SET IDENTITY_INSERT [dbo].[TAI_KHOAN] OFF
/****** Object:  Index [PK_CHI_NHANH]    Script Date: 11/27/2019 10:48:05 AM ******/
ALTER TABLE [dbo].[CHI_NHANH] ADD  CONSTRAINT [PK_CHI_NHANH] PRIMARY KEY NONCLUSTERED 
(
	[MA_CN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CHI_TIET_HOA__ON_FK]    Script Date: 11/27/2019 10:48:05 AM ******/
CREATE NONCLUSTERED INDEX [CHI_TIET_HOA__ON_FK] ON [dbo].[CHI_TIET_HOA_DON]
(
	[MA_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CHI_TIET_HOA__ON2_FK]    Script Date: 11/27/2019 10:48:05 AM ******/
CREATE NONCLUSTERED INDEX [CHI_TIET_HOA__ON2_FK] ON [dbo].[CHI_TIET_HOA_DON]
(
	[MA_HD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_DICH_VU]    Script Date: 11/27/2019 10:48:05 AM ******/
ALTER TABLE [dbo].[DICH_VU] ADD  CONSTRAINT [PK_DICH_VU] PRIMARY KEY NONCLUSTERED 
(
	[MA_DV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_HOA_DON]    Script Date: 11/27/2019 10:48:05 AM ******/
ALTER TABLE [dbo].[HOA_DON] ADD  CONSTRAINT [PK_HOA_DON] PRIMARY KEY NONCLUSTERED 
(
	[MA_HD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [THANH_TOAN_FK]    Script Date: 11/27/2019 10:48:05 AM ******/
CREATE NONCLUSTERED INDEX [THANH_TOAN_FK] ON [dbo].[HOA_DON]
(
	[MA_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_KHACH_HANG]    Script Date: 11/27/2019 10:48:05 AM ******/
ALTER TABLE [dbo].[KHACH_HANG] ADD  CONSTRAINT [PK_KHACH_HANG] PRIMARY KEY NONCLUSTERED 
(
	[MA_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_LICH_HEN]    Script Date: 11/27/2019 10:48:05 AM ******/
ALTER TABLE [dbo].[LICH_HEN] ADD  CONSTRAINT [PK_LICH_HEN] PRIMARY KEY NONCLUSTERED 
(
	[MA_LH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CUA_FK]    Script Date: 11/27/2019 10:48:05 AM ******/
CREATE NONCLUSTERED INDEX [CUA_FK] ON [dbo].[LICH_HEN]
(
	[MA_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [LAM_FK]    Script Date: 11/27/2019 10:48:05 AM ******/
CREATE NONCLUSTERED INDEX [LAM_FK] ON [dbo].[LICH_HEN]
(
	[MA_DV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [O_FK]    Script Date: 11/27/2019 10:48:05 AM ******/
CREATE NONCLUSTERED INDEX [O_FK] ON [dbo].[LICH_HEN]
(
	[MA_CN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UNIQUE_NHAN_VIEN]    Script Date: 11/27/2019 10:48:05 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UNIQUE_NHAN_VIEN] ON [dbo].[NHAN_VIEN]
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_SAN_PHAM]    Script Date: 11/27/2019 10:48:05 AM ******/
ALTER TABLE [dbo].[SAN_PHAM] ADD  CONSTRAINT [PK_SAN_PHAM] PRIMARY KEY NONCLUSTERED 
(
	[MA_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_TAI_KHOAN]    Script Date: 11/27/2019 10:48:05 AM ******/
ALTER TABLE [dbo].[TAI_KHOAN] ADD  CONSTRAINT [PK_TAI_KHOAN] PRIMARY KEY NONCLUSTERED 
(
	[MA_TK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CO_FK]    Script Date: 11/27/2019 10:48:05 AM ******/
CREATE NONCLUSTERED INDEX [CO_FK] ON [dbo].[TAI_KHOAN]
(
	[MA_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_KHACH_HANG] FOREIGN KEY([MA_KH])
REFERENCES [dbo].[KHACH_HANG] ([MA_KH])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_KHACH_HANG]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_SAN_PHAM] FOREIGN KEY([MA_SP])
REFERENCES [dbo].[SAN_PHAM] ([MA_SP])
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_SAN_PHAM]
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_CHI_TIET__HOA_DON] FOREIGN KEY([MA_HD])
REFERENCES [dbo].[HOA_DON] ([MA_HD])
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON] CHECK CONSTRAINT [FK_CHI_TIET_CHI_TIET__HOA_DON]
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_CHI_TIET_CHI_TIET__SAN_PHAM] FOREIGN KEY([MA_SP])
REFERENCES [dbo].[SAN_PHAM] ([MA_SP])
GO
ALTER TABLE [dbo].[CHI_TIET_HOA_DON] CHECK CONSTRAINT [FK_CHI_TIET_CHI_TIET__SAN_PHAM]
GO
ALTER TABLE [dbo].[DICH_VU]  WITH CHECK ADD  CONSTRAINT [FK_DICH_VU_LOAI_DICHVU] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAI_DICHVU] ([MAlLOAI])
GO
ALTER TABLE [dbo].[DICH_VU] CHECK CONSTRAINT [FK_DICH_VU_LOAI_DICHVU]
GO
ALTER TABLE [dbo].[HOA_DON]  WITH CHECK ADD  CONSTRAINT [FK_HOA_DON_THANH_TOA_KHACH_HA] FOREIGN KEY([MA_KH])
REFERENCES [dbo].[KHACH_HANG] ([MA_KH])
GO
ALTER TABLE [dbo].[HOA_DON] CHECK CONSTRAINT [FK_HOA_DON_THANH_TOA_KHACH_HA]
GO
ALTER TABLE [dbo].[LICH_HEN]  WITH CHECK ADD  CONSTRAINT [FK_LICH_HEN_CUA_KHACH_HA] FOREIGN KEY([MA_KH])
REFERENCES [dbo].[KHACH_HANG] ([MA_KH])
GO
ALTER TABLE [dbo].[LICH_HEN] CHECK CONSTRAINT [FK_LICH_HEN_CUA_KHACH_HA]
GO
ALTER TABLE [dbo].[LICH_HEN]  WITH CHECK ADD  CONSTRAINT [FK_LICH_HEN_LAM_DICH_VU] FOREIGN KEY([MA_DV])
REFERENCES [dbo].[DICH_VU] ([MA_DV])
GO
ALTER TABLE [dbo].[LICH_HEN] CHECK CONSTRAINT [FK_LICH_HEN_LAM_DICH_VU]
GO
ALTER TABLE [dbo].[LICH_HEN]  WITH CHECK ADD  CONSTRAINT [FK_LICH_HEN_O_CHI_NHAN] FOREIGN KEY([MA_CN])
REFERENCES [dbo].[CHI_NHANH] ([MA_CN])
GO
ALTER TABLE [dbo].[LICH_HEN] CHECK CONSTRAINT [FK_LICH_HEN_O_CHI_NHAN]
GO
ALTER TABLE [dbo].[NHAN_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHAN_VIEN_CHI_NHANH] FOREIGN KEY([MA_CN])
REFERENCES [dbo].[CHI_NHANH] ([MA_CN])
GO
ALTER TABLE [dbo].[NHAN_VIEN] CHECK CONSTRAINT [FK_NHAN_VIEN_CHI_NHANH]
GO
ALTER TABLE [dbo].[TAI_KHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAI_KHOA_CO_KHACH_HA] FOREIGN KEY([MA_KH])
REFERENCES [dbo].[KHACH_HANG] ([MA_KH])
GO
ALTER TABLE [dbo].[TAI_KHOAN] CHECK CONSTRAINT [FK_TAI_KHOA_CO_KHACH_HA]
GO
USE [master]
GO
ALTER DATABASE [DB_SPA] SET  READ_WRITE 
GO
