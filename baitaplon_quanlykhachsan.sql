CREATE DATABASE quanlykhachsan
GO 
USE [quanlykhachsan]
GO
/****** Object:  Table [dbo].[dichvu]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dichvu](
	[maDichVu] [int] IDENTITY(1,1) NOT NULL,
	[tenDichVu] [nvarchar](50) NULL,
	[donGia] [float] NULL,
 CONSTRAINT [PK_dichvu] PRIMARY KEY CLUSTERED 
(
	[maDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[maKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[tenKhachHang] [nvarchar](50) NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [bit] NULL,
	[chungMinhNhanDan] [nvarchar](25) NULL,
	[diaChi] [nvarchar](50) NULL,
	[soDienThoai] [nvarchar](25) NULL,
	[quocTich] [nvarchar](50) NULL,
 CONSTRAINT [PK_khachhang_1] PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loaiphong]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiphong](
	[loaiPhong] [nvarchar](10) NOT NULL,
	[donGia] [float] NULL,
 CONSTRAINT [PK_loaiphong] PRIMARY KEY CLUSTERED 
(
	[loaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nguoidung]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguoidung](
	[taiKhoan] [nvarchar](30) NOT NULL,
	[matKhau] [nvarchar](30) NULL,
	[phanQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_nguoidung] PRIMARY KEY CLUSTERED 
(
	[taiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[maNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](50) NULL,
	[gioiTinh] [bit] NULL,
	[ngaySinh] [date] NULL,
	[soChungMinh] [nvarchar](25) NULL,
	[diaChi] [nvarchar](50) NULL,
	[soDienThoai] [nvarchar](25) NULL,
	[ngayVaoLam] [date] NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phong]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong](
	[maPhong] [int] NOT NULL,
	[tinhTrang] [bit] NULL,
	[loaiPhong] [nvarchar](10) NULL,
 CONSTRAINT [PK_phong] PRIMARY KEY CLUSTERED 
(
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[thuephong]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thuephong](
	[maThuePhong] [int] IDENTITY(1,1) NOT NULL,
	[maKhachHang] [int] NULL,
	[ngayDen] [date] NULL,
	[ngayDi] [date] NULL,
	[maDichVu] [int] NULL,
	[maPhong] [int] NULL,
	[thanhTien] [float] NULL,
 CONSTRAINT [PK_thuephong] PRIMARY KEY CLUSTERED 
(
	[maThuePhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[dichvu] ON 

GO
INSERT [dbo].[dichvu] ([maDichVu], [tenDichVu], [donGia]) VALUES (1, N'giặt', 50000)
GO
SET IDENTITY_INSERT [dbo].[dichvu] OFF
GO
SET IDENTITY_INSERT [dbo].[khachhang] ON 

GO
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (1, N'nguyễn văn hai', CAST(N'1993-06-02' AS Date), 1, N'154', N'ahvug', N'123', N'việt nam')
GO
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (2, N'Lê Công Huynh', CAST(N'1996-09-15' AS Date), 1, N'554', N'446', N'54646', N'VIỆT NAM')
GO
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (3, N'nguyên', CAST(N'1996-12-20' AS Date), 0, N'1546', N'354', N'6546546', N'nhật')
GO
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (4, N'hai', CAST(N'2016-11-24' AS Date), 1, N'497494', N'ga4', N'564646', N'VIỆT NAM')
GO
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (5, N'gdsfg', CAST(N'2016-11-08' AS Date), 0, N'497494', N'ga4', N'564646gf', N'VIỆT NAM')
GO
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (6, N'Trần Lượng', CAST(N'1995-06-25' AS Date), 1, N'154653454', N'khúc trì', N'011111', N'VIỆT NAM')
GO
SET IDENTITY_INSERT [dbo].[khachhang] OFF
GO
INSERT [dbo].[loaiphong] ([loaiPhong], [donGia]) VALUES (N'Thường', 300000)
GO
INSERT [dbo].[loaiphong] ([loaiPhong], [donGia]) VALUES (N'Trung', 350000)
GO
INSERT [dbo].[loaiphong] ([loaiPhong], [donGia]) VALUES (N'Vip', 400000)
GO
INSERT [dbo].[nguoidung] ([taiKhoan], [matKhau], [phanQuyen]) VALUES (N'1', N'1', N'user')
GO
INSERT [dbo].[nguoidung] ([taiKhoan], [matKhau], [phanQuyen]) VALUES (N'admin', N'admin', N'admin')
GO
INSERT [dbo].[nguoidung] ([taiKhoan], [matKhau], [phanQuyen]) VALUES (N'leconghuynh', N'1', N'admin')
GO
INSERT [dbo].[nguoidung] ([taiKhoan], [matKhau], [phanQuyen]) VALUES (N'thuydung61', N'13021996', N'user')
GO
INSERT [dbo].[nguoidung] ([taiKhoan], [matKhau], [phanQuyen]) VALUES (N'thuydung68', N'12345', N'user')
GO
INSERT [dbo].[nguoidung] ([taiKhoan], [matKhau], [phanQuyen]) VALUES (N'thuyduong2012', N'12345', N'admin')
GO
SET IDENTITY_INSERT [dbo].[nhanvien] ON 

GO
INSERT [dbo].[nhanvien] ([maNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soChungMinh], [diaChi], [soDienThoai], [ngayVaoLam]) VALUES (2, N'nguyen ba phong', 1, CAST(N'1997-02-01' AS Date), N'546546464', N'thai binh', N'0156546464', CAST(N'2016-06-04' AS Date))
GO
INSERT [dbo].[nhanvien] ([maNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soChungMinh], [diaChi], [soDienThoai], [ngayVaoLam]) VALUES (3, N'phan thuy trang', 0, CAST(N'1999-06-01' AS Date), N'021654', N'hai phong', N'054154544', CAST(N'2016-05-09' AS Date))
GO
INSERT [dbo].[nhanvien] ([maNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soChungMinh], [diaChi], [soDienThoai], [ngayVaoLam]) VALUES (5, N'Lê công huynh', 1, CAST(N'1996-09-15' AS Date), N'145457621', N'thái thụy - thái binh ', N'01639525638', CAST(N'2016-08-31' AS Date))
GO
INSERT [dbo].[nhanvien] ([maNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soChungMinh], [diaChi], [soDienThoai], [ngayVaoLam]) VALUES (6, N'Phạm Thị Thùy Dương', 0, CAST(N'1996-01-20' AS Date), N'1544646464', N'Dương kinh-Hải Phòng', N'01652568617', CAST(N'2016-10-09' AS Date))
GO
INSERT [dbo].[nhanvien] ([maNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soChungMinh], [diaChi], [soDienThoai], [ngayVaoLam]) VALUES (8, N'hhh', 1, CAST(N'2016-11-23' AS Date), N'1646464', N'kbhigi', N'12651614', CAST(N'2016-11-23' AS Date))
GO
INSERT [dbo].[nhanvien] ([maNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soChungMinh], [diaChi], [soDienThoai], [ngayVaoLam]) VALUES (9, N'gyt', 0, CAST(N'2016-11-24' AS Date), N'453', N'3t', N'345', CAST(N'2016-11-24' AS Date))
GO
INSERT [dbo].[nhanvien] ([maNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soChungMinh], [diaChi], [soDienThoai], [ngayVaoLam]) VALUES (13, N'h', 0, CAST(N'2016-11-24' AS Date), N'1', N'5', N'4', CAST(N'2016-11-24' AS Date))
GO
SET IDENTITY_INSERT [dbo].[nhanvien] OFF
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (101, 1, N'Thường')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (102, 0, N'Thường')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (201, 1, N'Trung')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (202, 1, N'Trung')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (301, 0, N'Vip')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (303, 0, N'Vip')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (304, 0, N'Thường')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (305, 0, N'Thường')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (306, 0, N'Thường')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (307, 0, N'Thường')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (308, 0, N'Thường')

GO
SET IDENTITY_INSERT [dbo].[thuephong] ON 

GO
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (1, 1, CAST(N'2016-11-17' AS Date), NULL, NULL, 201, 2000)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (2, 2, CAST(N'2016-10-20' AS Date), NULL, NULL, 303, 2000)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (3, 5, CAST(N'2016-11-24' AS Date), NULL, NULL, 201, 1000)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (4, 4, CAST(N'2016-11-24' AS Date), NULL, NULL, 102, 20000)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (5, 2, CAST(N'2016-11-24' AS Date), NULL, NULL, 301, 323611)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (6, 2, CAST(N'2016-11-24' AS Date), NULL, NULL, 304, 849)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (7, 4, CAST(N'2016-10-15' AS Date), NULL, NULL, 101, 6544)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (8, 2, CAST(N'2016-11-24' AS Date), NULL, NULL, 101, NULL)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (9, 2, CAST(N'2016-11-24' AS Date), NULL, NULL, 201, NULL)
GO
SET IDENTITY_INSERT [dbo].[thuephong] OFF
GO
ALTER TABLE [dbo].[phong]  WITH CHECK ADD  CONSTRAINT [FK_phong_loaiphong] FOREIGN KEY([loaiPhong])
REFERENCES [dbo].[loaiphong] ([loaiPhong])
GO
ALTER TABLE [dbo].[phong] CHECK CONSTRAINT [FK_phong_loaiphong]
GO
ALTER TABLE [dbo].[thuephong]  WITH CHECK ADD  CONSTRAINT [FK_thuephong_dichvu] FOREIGN KEY([maDichVu])
REFERENCES [dbo].[dichvu] ([maDichVu])
GO
ALTER TABLE [dbo].[thuephong] CHECK CONSTRAINT [FK_thuephong_dichvu]
GO
ALTER TABLE [dbo].[thuephong]  WITH CHECK ADD  CONSTRAINT [FK_thuephong_khachhang] FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[khachhang] ([maKhachHang])
GO
ALTER TABLE [dbo].[thuephong] CHECK CONSTRAINT [FK_thuephong_khachhang]
GO
ALTER TABLE [dbo].[thuephong]  WITH CHECK ADD  CONSTRAINT [FK_thuephong_phong] FOREIGN KEY([maPhong])
REFERENCES [dbo].[phong] ([maPhong])
GO
ALTER TABLE [dbo].[thuephong] CHECK CONSTRAINT [FK_thuephong_phong]
GO
/****** Object:  StoredProcedure [dbo].[dangnhap]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dangnhap] 
	@acc nvarchar(30) ,
	@pass nvarchar(30)
AS
BEGIN
	SELECT count(*) 
	FROM [quanlykhachsan].[dbo].[nguoidung]
	 where taiKhoan=@acc and matKhau=@pass
END

GO
/****** Object:  StoredProcedure [dbo].[hienthi_thuetheophong]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[hienthi_thuetheophong]
AS
BEGIN
	
	select maThuePhong,a.maPhong,tenKhachHang,ngaySinh,chungMinhNhanDan,diaChi,soDienThoai,ngayDen,donGia
from thuephong a,khachhang b,phong c,loaiphong d
where a.maKhachHang=b.maKhachHang and a.maPhong=c.maPhong and c.loaiPhong=d.loaiPhong and thanhTien is NULL
END


GO
/****** Object:  StoredProcedure [dbo].[hienthikhachhang]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hienthikhachhang]

AS
BEGIN
	
	SELECT maKhachHang,tenKhachHang,ngaySinh,gioiTinh= 
	case when gioiTinh = 'True' then N'Nam' else N'Nữ' end,chungMinhNhanDan,diaChi,soDienThoai,quocTich
	FROM khachhang
END
GO
/****** Object:  StoredProcedure [dbo].[hienthiphong]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hienthiphong] 
AS
BEGIN
select maPhong,a.loaiPhong,tinhTrang= case when tinhTrang='True' then N'Bận' else N'Rỗi' end,donGia
from phong a,loaiphong b
where a.loaiPhong=b.loaiPhong
END
GO
/****** Object:  StoredProcedure [dbo].[hienthitatcanhanvien]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hienthitatcanhanvien]
AS
BEGIN

	SELECT maNhanVien,hoTen,gioiTinh= case when gioiTinh = 'true'  then N'Nam' else N'Nữ' end ,ngaySinh,soChungMinh,diaChi,soDienThoai,ngayVaoLam
	from [dbo].[nhanvien]
END

GO
/****** Object:  StoredProcedure [dbo].[sua_khachhang]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[sua_khachhang]
(
	@makhachhang int,
	@tenKhachHang nvarchar(50),
	@ngaySinh date,
	@gioiTinh bit,
	@chungMinhNhanDan nvarchar(25),
	@diaChi nvarchar(50),
	@soDienThoai nvarchar(25),
	@quocTich nvarchar(50)
	)
AS
BEGIN
update [dbo].[khachhang]
set 
tenKhachHang=@tenKhachHang,
gioiTinh=@gioiTinh,
ngaySinh=@ngaySinh,
chungMinhNhanDan=@chungMinhNhanDan,
diaChi=@diaChi,
soDienThoai=@soDienThoai,
quocTich=@quocTich
where maKhachHang=@makhachhang
END


GO
/****** Object:  StoredProcedure [dbo].[sua_nhanvien]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sua_nhanvien]
	(
	@maNhanVien int,
	@hoTen nvarchar(50),
	@gioiTinh bit,
	@ngaySinh date,
	@soChungMinh nvarchar(25),
	@diaChi nvarchar(50),
	@soDienThoai nvarchar(25),
	@ngayVaoLam date
	)
AS
BEGIN
update [dbo].[nhanvien]
set 
hoTen=@hoTen,
gioiTinh=@gioiTinh,
ngaySinh=@ngaySinh,
soChungMinh=@soChungMinh,
diaChi=@diaChi,
soDienThoai=@soDienThoai,
ngayVaoLam=@ngayVaoLam
where maNhanVien=@maNhanVien
END


GO
/****** Object:  StoredProcedure [dbo].[timkiem_thuephong]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[timkiem_thuephong]
@maPhong int
AS
BEGIN
	
	select tenKhachHang,ngaySinh,chungMinhNhanDan,diaChi,soDienThoai,ngayDen
from thuephong a,khachhang b
where a.maKhachHang=b.maKhachHang and maPhong =@maPhong
END

GO
/****** Object:  StoredProcedure [dbo].[tinhtien]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tinhtien]
(
@ngayDi date,
@thanhTien float,
@maThuePhong int,
@maPhong int
)
AS
BEGIN
BEGIN
	update [dbo].[thuephong]
set ngayDi=@ngayDi,
thanhTien=@thanhTien
where maThuePhong=@maThuePhong
END
BEGIN
	update [dbo].[phong]
set tinhTrang = 'False'
where maPhong=@maPhong
END
END
GO
/****** Object:  StoredProcedure [dbo].[them_khachhang]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[them_khachhang]
	(
	@tenKhachHang nvarchar(50),
	@ngaySinh date,
	@gioiTinh bit,
	@chungMinhNhanDan nvarchar(25),
	@diaChi nvarchar(50),
	@soDienThoai nvarchar(25),
	@quocTich nvarchar(50)
	)
AS
BEGIN
	
	insert into khachhang(tenKhachHang,ngaySinh,gioiTinh,chungMinhNhanDan,diaChi,soDienThoai,quocTich) 
	values (@tenKhachHang,@ngaySinh,@gioiTinh,@chungMinhNhanDan,@diaChi,@soDienThoai,@quocTich)
	return
END
GO
/****** Object:  StoredProcedure [dbo].[them_nhanvien]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[them_nhanvien] 
	(
	@hoTen nvarchar(50),
	@gioiTinh bit,
	@ngaySinh date,
	@soChungMinh nvarchar(25),
	@diaChi nvarchar(50),
	@soDienThoai nvarchar(25),
	@ngayVaoLam date
	)
AS
BEGIN
	
	insert into nhanvien(hoTen,gioiTinh,ngaySinh,soChungMinh,diaChi,soDienThoai,ngayVaoLam) 
	values (@hoTen,@gioiTinh,@ngaySinh,@soChungMinh,@diaChi,@soDienThoai,@ngayVaoLam)
	return
END

GO
/****** Object:  StoredProcedure [dbo].[them_thuephong]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[them_thuephong]
(
@maKhachHang int,
@ngayDen date,
@maPhong int
)
AS
BEGIN
	BEGIN
	insert into thuephong(maKhachHang,ngayDen,maPhong)
	values(@maKhachHang,@ngayDen,@maPhong)
	END
	BEGIN
	update [dbo].[phong]
	set tinhTrang='True'
	where maPhong =@maPhong
	END
END

GO
/****** Object:  StoredProcedure [dbo].[xoa_khachhang]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[xoa_khachhang]
@maKhachHang int
AS
BEGIN
	DELETE 
	FROM khachhang
	 WHERE maKhachHang= @maKhachHang
END

GO
/****** Object:  StoredProcedure [dbo].[xoa_nhanvien]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[xoa_nhanvien]
@maNhanVien int
AS
BEGIN
	DELETE FROM nhanvien WHERE maNhanVien=@maNhanVien
END

GO
USE [master]
GO
ALTER DATABASE [quanlykhachsan] SET  READ_WRITE 
GO