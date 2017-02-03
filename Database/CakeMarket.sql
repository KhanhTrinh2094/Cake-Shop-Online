/*
Navicat SQL Server Data Transfer

Source Server         : localhost
Source Server Version : 110000
Source Host           : localhost:1433
Source Database       : Tung
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2015-09-06 20:55:57
*/

CREATE DATABASE Tung
GO

USE Tung
Go

-- ----------------------------
-- Table structure for Admins
-- ----------------------------

GO
CREATE TABLE [dbo].[Admins] (
[Username] varchar(20) NOT NULL ,
[Password] varchar(50) NOT NULL ,
[Status] smallint NOT NULL ,
[AdminRole] smallint NOT NULL 
)


GO

-- ----------------------------
-- Records of Admins
-- ----------------------------
INSERT INTO [dbo].[Admins] ([Username], [Password], [Status], [AdminRole]) VALUES (N'Admin', N'123', N'1', N'2')
GO
GO
INSERT INTO [dbo].[Admins] ([Username], [Password], [Status], [AdminRole]) VALUES (N'SubAdmin', N'123', N'1', N'1')
GO
GO

-- ----------------------------
-- Table structure for Cakes
-- ----------------------------
-- DROP TABLE [dbo].[Cakes]
GO
CREATE TABLE [dbo].[Cakes] (
[CakeID] int NOT NULL IDENTITY(1,1) ,
[CakeName] nvarchar(200) NULL ,
[CakeDetails] ntext NOT NULL ,
[CakePrice] money NOT NULL ,
[CakeImage] varchar(100) NOT NULL ,
[IsEgg] bit NOT NULL ,
[Status] smallint NOT NULL ,
[EventID] int NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Cakes]', RESEED, 26)
GO

-- ----------------------------
-- Records of Cakes
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Cakes] ON
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'7', N'BÁNH NGỰA NGỘ NGHĨNH', N'<div style="font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 20x30cm gi&aacute; 370.000 VNĐ ph&ugrave; hợp tr&ecirc;n 15 người ăn.</div>

<div style="font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 30x40cm gi&aacute; 550.000 VNĐ ph&ugrave; hợp tr&ecirc;n 30 người ăn.</div>

<div style="font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 30x60cm gi&aacute; 900.000 VNĐ ph&ugrave; hợp tr&ecirc;n 50 người ăn.</div>

<div style="font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">Với những loại b&aacute;nh sinh nhật th&ocirc;ng thường, b&aacute;nh gồm 3 lớp, tr&eacute;t kem theo y&ecirc;u cầu như kem tươi vani, kem tươi chocolate,&nbsp;kem tươi sữa chua, kem tươi chanh leo, kem tươi tr&agrave; xanh, kem tươi capuchino. v.v... t&ugrave;y khẩu vị v&agrave; y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</div>
', N'370000.0000', N'banh-ngua-tieu-thu-ngo-nghinh1809.jpg', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'8', N'BÁNH NGÔI SAO MAY MẮN', N'<p style="font-family: Arial, Tahoma; margin: 16px 0px; font-size: 12px; line-height: 18px; text-align: justify; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 20cm &nbsp;gi&aacute; 250.000 VNĐ ph&ugrave; hợp với 5 - 6 người ăn.</p>

<p style="font-family: Arial, Tahoma; margin: 16px 0px; font-size: 12px; line-height: 18px; text-align: justify; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 25cm gi&aacute; 300.000 VNĐ ph&ugrave; hợp với 8 - 10 người ăn.</p>

<p style="font-family: Arial, Tahoma; margin: 16px 0px; font-size: 12px; line-height: 18px; text-align: justify; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 30cm gi&aacute; 380.000 VNĐ ph&ugrave; hợp tr&ecirc;n 15 người ăn.</p>

<p style="font-family: Arial, Tahoma; margin: 16px 0px; font-size: 12px; line-height: 18px; text-align: justify; background-color: rgb(239, 239, 239);">Với những loại b&aacute;nh sinh nhật th&ocirc;ng thường, b&aacute;nh gồm 3 lớp, tr&eacute;t kem theo y&ecirc;u cầu như kem tươi vani, kem tươi chocolate,&nbsp;kem tươi sữa chua, kem tươi chanh leo, kem tươi tr&agrave; xanh, kem tươi capuchino. v.v... t&ugrave;y khẩu vị v&agrave; y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</p>
', N'250000.0000', N'banh-ngoi-sao-may-man-mung-sinh-nhat-1804.jpg', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'9', N'BÁNH CHỦ ĐỀ MÙA THU', N'<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 20x30cm gi&aacute; 370.000 VNĐ ph&ugrave; hợp tr&ecirc;n 15 người ăn.</div>

<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 30x40cm gi&aacute; 550.000 VNĐ ph&ugrave; hợp tr&ecirc;n 30 người ăn.</div>

<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 30x60cm gi&aacute; 900.000 VNĐ ph&ugrave; hợp tr&ecirc;n 50 người ăn.</div>

<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">Với những loại b&aacute;nh sinh nhật th&ocirc;ng thường, b&aacute;nh gồm 3 lớp, tr&eacute;t kem theo y&ecirc;u cầu như kem tươi vani, kem tươi chocolate,&nbsp;kem tươi sữa chua, kem tươi chanh leo, kem tươi tr&agrave; xanh, kem tươi capuchino. v.v... t&ugrave;y khẩu vị v&agrave; y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</div>
', N'250000.0000', N'banh-chu-de-mua-thu-1808.jpg', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'10', N'BÁNH VẦNG TRĂNG NGỦ ', N'<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 20x30cm gi&aacute; 370.000 VNĐ ph&ugrave; hợp tr&ecirc;n 15 người ăn.</div>

<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 30x40cm gi&aacute; 550.000 VNĐ ph&ugrave; hợp tr&ecirc;n 30 người ăn.</div>

<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 30x60cm gi&aacute; 900.000 VNĐ ph&ugrave; hợp tr&ecirc;n 50 người ăn.</div>

<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">Với những loại b&aacute;nh sinh nhật th&ocirc;ng thường, b&aacute;nh gồm 3 lớp, tr&eacute;t kem theo y&ecirc;u cầu như kem tươi vani, kem tươi chocolate,&nbsp;kem tươi sữa chua, kem tươi chanh leo, kem tươi tr&agrave; xanh, kem tươi capuchino. v.v... t&ugrave;y khẩu vị v&agrave; y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</div>
', N'380000.0000', N'banh-vang-trang-ngu-1614.jpg', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'11', N'BÁNH VẼ HÌNH CHIBI', N'<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 20x30cm gi&aacute; 370.000 VNĐ ph&ugrave; hợp tr&ecirc;n 15 người ăn.</div>

<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 30x40cm gi&aacute; 550.000 VNĐ ph&ugrave; hợp tr&ecirc;n 30 người ăn.</div>

<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 30x60cm gi&aacute; 900.000 VNĐ ph&ugrave; hợp tr&ecirc;n 50 người ăn.</div>

<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">Với những loại b&aacute;nh sinh nhật th&ocirc;ng thường, b&aacute;nh gồm 3 lớp, tr&eacute;t kem theo y&ecirc;u cầu như kem tươi vani, kem tươi chocolate,&nbsp;kem tươi sữa chua, kem tươi chanh leo, kem tươi tr&agrave; xanh, kem tươi capuchino. v.v... t&ugrave;y khẩu vị v&agrave; y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</div>
', N'350000.0000', N'banh-ve-hinh-chibi-cong-chua-elsa-frozen-nhi-1503.jpg', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'12', N'BÁNH VỢT TENNIS TẶNG', N'<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 20x30cm gi&aacute; 370.000 VNĐ ph&ugrave; hợp tr&ecirc;n 15 người ăn.</div>

<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 30x40cm gi&aacute; 550.000 VNĐ ph&ugrave; hợp tr&ecirc;n 30 người ăn.</div>

<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 30x60cm gi&aacute; 900.000 VNĐ ph&ugrave; hợp tr&ecirc;n 50 người ăn.</div>

<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">Với những loại b&aacute;nh sinh nhật th&ocirc;ng thường, b&aacute;nh gồm 3 lớp, tr&eacute;t kem theo y&ecirc;u cầu như kem tươi vani, kem tươi chocolate,&nbsp;kem tươi sữa chua, kem tươi chanh leo, kem tươi tr&agrave; xanh, kem tươi capuchino. v.v... t&ugrave;y khẩu vị v&agrave; y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</div>
', N'400000.0000', N'banh-vot-tennis-tang-roger-federer-1795.jpg', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'13', N'BÁNH ONG ĐI TÌM HOA', N'<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 20x30cm gi&aacute; 370.000 VNĐ ph&ugrave; hợp tr&ecirc;n 15 người ăn.</div>

<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 30x40cm gi&aacute; 550.000 VNĐ ph&ugrave; hợp tr&ecirc;n 30 người ăn.</div>

<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">B&aacute;nh c&oacute; k&iacute;ch thước 30x60cm gi&aacute; 900.000 VNĐ ph&ugrave; hợp tr&ecirc;n 50 người ăn.</div>

<div style="color: rgb(85, 85, 85); font-family: Arial, Tahoma; font-size: 12px; line-height: 18px; text-align: justify; padding: 5px; margin: 0px; background-color: rgb(239, 239, 239);">Với những loại b&aacute;nh sinh nhật th&ocirc;ng thường, b&aacute;nh gồm 3 lớp, tr&eacute;t kem theo y&ecirc;u cầu như kem tươi vani, kem tươi chocolate,&nbsp;kem tươi sữa chua, kem tươi chanh leo, kem tươi tr&agrave; xanh, kem tươi capuchino. v.v... t&ugrave;y khẩu vị v&agrave; y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</div>
', N'250000.0000', N'banh-ong-di-tim-hoa-1789.jpg', N'0', N'1', N'1')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'14', N'NHÂN THẬP CẨM TRUYỀN THỐNG', N'<p style="font-family: Arial, Tahoma; margin: 16px 0px; font-size: 12px; line-height: 18px; text-align: justify; background-color: rgb(239, 239, 239);">B&aacute;nh Trung Thu của ch&uacute;ng t&ocirc;i&nbsp;l&agrave; b&aacute;nh HOMEMADE nguy&ecirc;n liệu sạch, kh&ocirc;ng phụ gia, kh&ocirc;ng chất bảo quản,&nbsp;<span style="font-family: Helvetica, Arial, ''lucida grande'', tahoma, verdana, arial, sans-serif; font-size: 12.7272720336914px;">v&agrave; đặc biệt khi đặt b&aacute;nh bạn c&oacute; thể điều chỉnh độ ngọt cho hợp khẩu vị.</span><span style="font-family: Helvetica, Arial, ''lucida grande'', tahoma, verdana, arial, sans-serif; font-size: 12.7272720336914px;">&nbsp;</span>B&aacute;nh n&ecirc;n ăn sau 3 ng&agrave;y kể từ ng&agrave;y sản xuất, v&igrave; khi đ&oacute; vỏ mềm v&agrave; ngấm dầu. B&aacute;nh kh&ocirc;ng c&oacute; chất bảo quản, n&ecirc;n sử dụng trong v&ograve;ng 7 ng&agrave;y (kể từ ng&agrave;y sản xuất). Sau khi lấy b&aacute;nh, c&aacute;c bạn n&ecirc;n để b&aacute;nh v&agrave;o ngăn m&aacute;t tủ lạnh đề ph&ograve;ng b&aacute;nh mốc.&nbsp;</p>

<p style="font-family: Arial, Tahoma; margin: 16px 0px; font-size: 12px; line-height: 18px; background-color: rgb(239, 239, 239);">B&aacute;nh cần đặt trước 1 ng&agrave;y, gi&aacute; th&agrave;nh b&aacute;nh chưa bao gồm hộp b&aacute;nh, c&aacute;c b&aacute;nh đều được đ&oacute;ng v&agrave;o khay, t&uacute;i cho từng b&aacute;nh ri&ecirc;ng biệt.</p>
', N'250000.0000', N'nhan-thap-cam-truyen-thong-kg.jpg', N'0', N'1', N'24')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'15', N'NHÂN LÁ DỨA', N'<p style="font-family: Arial, Tahoma; margin: 16px 0px; font-size: 12px; line-height: 18px; text-align: justify; background-color: rgb(239, 239, 239);">B&aacute;nh Trung Thu của ch&uacute;ng t&ocirc;i&nbsp;l&agrave; b&aacute;nh HOMEMADE nguy&ecirc;n liệu sạch, kh&ocirc;ng phụ gia, kh&ocirc;ng chất bảo quản,&nbsp;<span style="font-family: Helvetica, Arial, ''lucida grande'', tahoma, verdana, arial, sans-serif; font-size: 12.7272720336914px;">v&agrave; đặc biệt khi đặt b&aacute;nh bạn c&oacute; thể điều chỉnh độ ngọt cho hợp khẩu vị.</span><span style="font-family: Helvetica, Arial, ''lucida grande'', tahoma, verdana, arial, sans-serif; font-size: 12.7272720336914px;">&nbsp;</span>B&aacute;nh n&ecirc;n ăn sau 3 ng&agrave;y kể từ ng&agrave;y sản xuất, v&igrave; khi đ&oacute; vỏ mềm v&agrave; ngấm dầu. B&aacute;nh kh&ocirc;ng c&oacute; chất bảo quản, n&ecirc;n sử dụng trong v&ograve;ng 7 ng&agrave;y (kể từ ng&agrave;y sản xuất). Sau khi lấy b&aacute;nh, c&aacute;c bạn n&ecirc;n để b&aacute;nh v&agrave;o ngăn m&aacute;t tủ lạnh đề ph&ograve;ng b&aacute;nh mốc.&nbsp;</p>

<p style="font-family: Arial, Tahoma; margin: 16px 0px; font-size: 12px; line-height: 18px; background-color: rgb(239, 239, 239);">B&aacute;nh cần đặt trước 1 ng&agrave;y, gi&aacute; th&agrave;nh b&aacute;nh chưa bao gồm hộp b&aacute;nh, c&aacute;c b&aacute;nh đều được đ&oacute;ng v&agrave;o khay, t&uacute;i cho từng b&aacute;nh ri&ecirc;ng biệt.</p>
', N'75000.0000', N'nhan-tra-xanh-kg.jpg', N'0', N'1', N'24')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'16', N'TRỨNG MUỐI (QUẢ)', N'<p style="font-family: Arial, Tahoma; margin: 16px 0px; font-size: 12px; line-height: 18px; text-align: justify; background-color: rgb(239, 239, 239);">B&aacute;nh Trung Thu của ch&uacute;ng t&ocirc;i&nbsp;l&agrave; b&aacute;nh HOMEMADE nguy&ecirc;n liệu sạch, kh&ocirc;ng phụ gia, kh&ocirc;ng chất bảo quản,&nbsp;<span style="font-family: Helvetica, Arial, ''lucida grande'', tahoma, verdana, arial, sans-serif; font-size: 12.7272720336914px;">v&agrave; đặc biệt khi đặt b&aacute;nh bạn c&oacute; thể điều chỉnh độ ngọt cho hợp khẩu vị.</span><span style="font-family: Helvetica, Arial, ''lucida grande'', tahoma, verdana, arial, sans-serif; font-size: 12.7272720336914px;">&nbsp;</span>B&aacute;nh n&ecirc;n ăn sau 3 ng&agrave;y kể từ ng&agrave;y sản xuất, v&igrave; khi đ&oacute; vỏ mềm v&agrave; ngấm dầu. B&aacute;nh kh&ocirc;ng c&oacute; chất bảo quản, n&ecirc;n sử dụng trong v&ograve;ng 7 ng&agrave;y (kể từ ng&agrave;y sản xuất). Sau khi lấy b&aacute;nh, c&aacute;c bạn n&ecirc;n để b&aacute;nh v&agrave;o ngăn m&aacute;t tủ lạnh đề ph&ograve;ng b&aacute;nh mốc.&nbsp;</p>

<p style="font-family: Arial, Tahoma; margin: 16px 0px; font-size: 12px; line-height: 18px; background-color: rgb(239, 239, 239);">B&aacute;nh cần đặt trước 1 ng&agrave;y, gi&aacute; th&agrave;nh b&aacute;nh chưa bao gồm hộp b&aacute;nh, c&aacute;c b&aacute;nh đều được đ&oacute;ng v&agrave;o khay, t&uacute;i cho từng b&aacute;nh ri&ecirc;ng biệt.</p>
', N'10000.0000', N'trung-muoi-qua.jpg', N'0', N'1', N'24')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'17', N'NHÂN MÈ ĐEN', N'<p>aaaa</p>
', N'100000.0000', N'nhan-me-den-kg.png', N'0', N'1', N'24')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'18', N'Bánh cưới phong cách đồng quê tuyệt đẹp', N'<p style="box-sizing: border-box; margin: 0px; padding: 0px; outline: none; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(54, 54, 54); font-family: Arial, san-serif; line-height: 18px; background: transparent;">B&aacute;nh cưới phong c&aacute;ch đồng qu&ecirc; đơn sơ, mộc mạc nhưng v&ocirc; c&ugrave;ng đẹp v&agrave; tinh tế. Những tr&aacute;i d&acirc;u tươi ch&iacute;n mọng tr&ecirc;n nền kem vani mỏng v&agrave; lớp b&aacute;nh chocolate mềm xốp thơm lừng. Sự h&ograve;a quyện giữa b&aacute;nh ngọt v&agrave; tr&aacute;i c&acirc;y tạo n&ecirc;n hương vị tuyệt hảo cho đ&aacute;m cưới m&agrave; kh&ocirc;ng g&acirc;y ng&aacute;n như c&aacute;c loại b&aacute;nh ngọt kh&aacute;c.</p>

<p style="box-sizing: border-box; margin: 0px; padding: 0px; outline: none; border: 0px; font-size: 14px; vertical-align: baseline; color: rgb(54, 54, 54); font-family: Arial, san-serif; line-height: 18px; background: transparent;">Đ&acirc;y l&agrave; mẫu b&aacute;nh nhỏ gọn ph&ugrave; hợp cho c&aacute;c buổi tiệc cưới ở nh&agrave; hoặc b&aacute;nh m&acirc;m quả khi l&agrave;m lễ đ&iacute;nh h&ocirc;n hay lễ cưới. Xu hướng b&aacute;nh cưới theo phong c&aacute;ch naked cake đang rất được ưa chuộng tr&ecirc;n thế giới v&agrave; mới xuất hiện gần đ&acirc;y trong đ&aacute;m cưới c&aacute;c bạn trẻ Việt Nam</p>
', N'1500000.0000', N'2015052.jpg', N'1', N'1', N'23')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'19', N'Bánh cưới đẹp kết hoa hồng David', N'<p><span style="color: rgb(54, 54, 54); font-family: Arial, san-serif; font-size: 14px; line-height: 18px; text-align: justify;">Mẫu b&aacute;nh cưới đẹp được thiết kế đơn giản v&agrave; thanh lịch với 2 tầng b&aacute;nh, phủ kem trắng. B&aacute;nh cưới mang phong c&aacute;ch l&atilde;ng mạn, quanh b&aacute;nh được kết th&ecirc;m hoa hồng David Austin v&agrave; hoa mẫu đơn t&ocirc;ng hồng cam, hoa dại nhỏ được phối hợp v&ocirc; c&ugrave;ng tinh tế. Cuối c&ugrave;ng tr&ecirc;n đỉnh b&aacute;nh l&agrave; chữ &ldquo;Love&rdquo; m&agrave;u v&agrave;ng đồng tạo điểm nhấn.</span></p>
', N'1000000.0000', N'Strawberry_Cake.jpg', N'0', N'1', N'23')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'20', N'qqqqqqq', N'<p>ygygygygyg</p>
', N'1000000.0000', N'IMAG0394.jpg', N'0', N'0', N'24')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'21', N'ggggggggggggg', N'<p>gghjhjhjhhjh</p>
', N'1500000.0000', N'2015052.jpg', N'0', N'0', N'24')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'22', N'Bánh cupcake nhỏ xinh', N'<p><span style="color: rgb(85, 85, 85); font-family: Roboto, sans-serif; font-size: 15px; line-height: 20px;">Ưu điểm lớn kh&aacute;c của cupcake l&agrave; bạn sẽ kh&ocirc;ng phải cắt b&aacute;nh cưới v&agrave; chia phần tới cho từng vị kh&aacute;ch. Mỗi phần cupcake nhỏ xinh sẽ ph&ugrave; hợp cho từng người. Mọi người c&oacute; thể sử dụng ngay trong tiệc, hoặc thậm ch&iacute; bạn c&oacute; thể sử dụng b&aacute;nh l&agrave;m qu&agrave; tặng để c&aacute;c vị kh&aacute;ch mang về.</span></p>
', N'30000.0000', N'cupcake31-1140.jpg', N'0', N'1', N'23')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'23', N'Sôcôla và bánh cưới', N'<p><span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: medium; line-height: normal; text-align: justify;">Một trong những kiểu b&aacute;nh cưới phổ biến của đ&aacute;m cưới hiện đại ch&iacute;nh l&agrave; b&aacute;nh cưới socola. Mặc d&ugrave; n&oacute; rất phổ biến song mỗi chiếc b&aacute;nh cưới s&ocirc;c&ocirc;la lại mang đến một n&eacute;t đẹp v&agrave; sự độc đ&aacute;o hết sức ri&ecirc;ng biệt bởi sự biến h&oacute;a kh&ocirc;ng ngừng của n&oacute;. B&aacute;nh cưới s&ocirc;c&ocirc;la vẫn c&oacute; thể kết hợp một c&aacute;ch h&agrave;i hoa với c&aacute;c loại quả hoặc hoa tươi để đem đến sắc m&agrave;u tươi tắn v&agrave; ki&ecirc;u sa.</span></p>
', N'800000.0000', N'wedding-cake-design-cc2e.jpg', N'1', N'1', N'23')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'24', N'Bánh “Tình yêu” đến từ nước Ý', N'<p style="text-indent: 9999px; "><span style="color: rgb(68, 68, 68); font-family: Helvetica-Neue, Helvetica, Arial, sans-serif; font-size: 15.2px; line-height: 23.56px; background-color: rgb(238, 238, 238);">B&aacute;nh &ldquo;T&igrave;nh y&ecirc;u&rdquo; đến từ nước &Yacute; để kỷ niệm ng&agrave;y cưới của ch&uacute;ng m&igrave;nh, v&agrave; cũng l&agrave; để kh&oacute;a sổ b&aacute;nh tr&aacute;i cho năm nay, &yacute; tưởng c&oacute; nhiều m&agrave; thời gian c&oacute; hạn, đ&agrave;nh bằng l&ograve;ng với h&igrave;nh thức đơn giản như thế n&agrave;y vậy. Stencil l&agrave; c&ocirc;ng của chồng, vợ vẽ tr&ecirc;n PTS c&ograve;n chồng thầu vụ trổ h&igrave;nh, đam m&ecirc; l&agrave;m b&aacute;nh cần phải đầu tư k chỉ nhiều tiền bạc m&agrave; c&ograve;n cả thời gian nữa, tks chồng nhiều nh&eacute; <span style="white-space: nowrap;">.</span></span><span style="color: rgb(68, 68, 68); font-family: Helvetica-Neue, Helvetica, Arial, sans-serif; font-size: 15.2px; line-height: 23.56px; background-color: rgb(238, 238, 238);">&nbsp;Mong rằng t&igrave;nh y&ecirc;u, hạnh ph&uacute;c cũng sẽ m&atilde;i &nbsp;ngọt ng&agrave;o như hương vị chiếc b&aacute;nh ng&agrave;y h&ocirc;m nay&nbsp;</span></p>
', N'550000.0000', N'tiramisu-12-12-11-2.jpg', N'0', N'1', N'2')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'25', N'chiếc bánh sinh nhật sang trọng', N'<p><span style="color: rgb(102, 102, 102); font-family: Helvetica, Arial, Verdana, sans-serif; font-size: 13.3333px; line-height: 16.6667px; text-align: justify; background-color: rgb(243, 243, 243);">B&aacute;nh sinh nhật kh&ocirc;ng chỉ l&agrave; niềm vui m&agrave; c&ograve;n l&agrave; kỷ niệm tuổi thơ của mỗi người. Theo thời gian v&agrave; kh&ocirc;ng gian, b&aacute;nh đi khắp mọi nơi, mang những th&ocirc;ng điệp &yacute; nghĩa v&agrave; l&agrave; tượng trưng cho h&agrave;nh tr&igrave;nh trưởng th&agrave;nh của mỗi ch&uacute;ng ta, từ thế hệ n&agrave;y qua thế hệ kh&aacute;c, đ&atilde; nhiều năm tr&ocirc;i qua, chiếc b&aacute;nh vẫn giữ được vẻ đẹp truyền thống của n&oacute;.</span></p>
', N'570000.0000', N'20150620-banh-sinh-nhat-2.jpg', N'0', N'1', N'2')
GO
GO
INSERT INTO [dbo].[Cakes] ([CakeID], [CakeName], [CakeDetails], [CakePrice], [CakeImage], [IsEgg], [Status], [EventID]) VALUES (N'26', N'chiếc bánh sinh nhật sang trọng', N'<p><span style="color: rgb(102, 102, 102); font-family: Helvetica, Arial, Verdana, sans-serif; font-size: 13.3333px; line-height: 16.6667px; text-align: justify; background-color: rgb(243, 243, 243);">B&aacute;nh sinh nhật kh&ocirc;ng chỉ l&agrave; niềm vui m&agrave; c&ograve;n l&agrave; kỷ niệm tuổi thơ của mỗi người. Theo thời gian v&agrave; kh&ocirc;ng gian, b&aacute;nh đi khắp mọi nơi, mang những th&ocirc;ng điệp &yacute; nghĩa v&agrave; l&agrave; tượng trưng cho h&agrave;nh tr&igrave;nh trưởng th&agrave;nh của mỗi ch&uacute;ng ta, từ thế hệ n&agrave;y qua thế hệ kh&aacute;c, đ&atilde; nhiều năm tr&ocirc;i qua, chiếc b&aacute;nh vẫn giữ được vẻ đẹp truyền thống của n&oacute;.</span></p>
', N'570000.0000', N'24658UwKVCZjv.jpg', N'0', N'1', N'2')
GO
GO
SET IDENTITY_INSERT [dbo].[Cakes] OFF
GO

-- ----------------------------
-- Table structure for Customers
-- ----------------------------
-- DROP TABLE [dbo].[Customers]
GO
CREATE TABLE [dbo].[Customers] (
[Username] nvarchar(50) NOT NULL ,
[Password] nvarchar(50) NOT NULL ,
[CustomerName] nvarchar(50) NOT NULL ,
[CustomerAddress] nvarchar(200) NOT NULL ,
[CustomerEmail] nvarchar(50) NOT NULL ,
[CustomerMobile] nvarchar(50) NOT NULL ,
[Status] smallint NOT NULL ,
[DOB] datetime NOT NULL 
)


GO

-- ----------------------------
-- Records of Customers
-- ----------------------------
INSERT INTO [dbo].[Customers] ([Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerMobile], [Status], [DOB]) VALUES (N'thinh', N'123', N'Nguyen Quang Thinh', N'Ha Tinh', N'thinh@gmail.com', N'090282288', N'1', N'2015-12-12 07:00:00.000')
GO
GO
INSERT INTO [dbo].[Customers] ([Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerMobile], [Status], [DOB]) VALUES (N'Thinh2', N'123', N'123', N'123', N'123@gmail.com', N'1234567894', N'1', N'2010-05-05 07:00:00.000')
GO
GO
INSERT INTO [dbo].[Customers] ([Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerMobile], [Status], [DOB]) VALUES (N'tung', N'1234', N'Nguyễn Quang Tùng', N'TP HCM', N'tung@gmail.com', N'1234567811', N'1', N'2015-01-13 07:00:00.000')
GO
GO
INSERT INTO [dbo].[Customers] ([Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerMobile], [Status], [DOB]) VALUES (N'tung1234567', N'tung1234567', N'tung trần', N'45678 abc. bình thạnh', N'tung@1234567gmail.com', N'12345678910', N'1', N'2011-12-09 07:00:00.000')
GO
GO
INSERT INTO [dbo].[Customers] ([Username], [Password], [CustomerName], [CustomerAddress], [CustomerEmail], [CustomerMobile], [Status], [DOB]) VALUES (N'tungtq', N'tung221190', N'phó quang tùng', N'292 sư vạn hạnh, f11, Q10', N'tungtq@gmail.com', N'0902789100', N'1', N'1990-12-24 07:00:00.000')
GO
GO

-- ----------------------------
-- Table structure for Events
-- ----------------------------
-- DROP TABLE [dbo].[Events]
GO
CREATE TABLE [dbo].[Events] (
[EventID] int NOT NULL IDENTITY(1,1) ,
[EventName] nvarchar(50) NOT NULL ,
[Status] smallint NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Events]', RESEED, 24)
GO

-- ----------------------------
-- Records of Events
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Events] ON
GO
INSERT INTO [dbo].[Events] ([EventID], [EventName], [Status]) VALUES (N'1', N'Birthday', N'1')
GO
GO
INSERT INTO [dbo].[Events] ([EventID], [EventName], [Status]) VALUES (N'2', N'Anniversary', N'1')
GO
GO
INSERT INTO [dbo].[Events] ([EventID], [EventName], [Status]) VALUES (N'22', N'Engagement', N'1')
GO
GO
INSERT INTO [dbo].[Events] ([EventID], [EventName], [Status]) VALUES (N'23', N'Marriage', N'1')
GO
GO
INSERT INTO [dbo].[Events] ([EventID], [EventName], [Status]) VALUES (N'24', N'Trung Thu', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[Events] OFF
GO

-- ----------------------------
-- Table structure for FeedBack
-- ----------------------------
-- DROP TABLE [dbo].[FeedBack]
GO
CREATE TABLE [dbo].[FeedBack] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Date] datetime NOT NULL ,
[Detail] ntext NOT NULL ,
[Status] smallint NOT NULL ,
[Username] nvarchar(50) NULL ,
[Reply] ntext NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[FeedBack]', RESEED, 5)
GO

-- ----------------------------
-- Records of FeedBack
-- ----------------------------
SET IDENTITY_INSERT [dbo].[FeedBack] ON
GO
INSERT INTO [dbo].[FeedBack] ([ID], [Date], [Detail], [Status], [Username], [Reply]) VALUES (N'1', N'2015-08-20 23:21:34.000', N'Nguyễn Quang Tùng', N'1', N'thinh', N'0')
GO
GO
INSERT INTO [dbo].[FeedBack] ([ID], [Date], [Detail], [Status], [Username], [Reply]) VALUES (N'2', N'2015-08-23 15:36:15.680', N'Xin chao cac ban', N'1', N'tung', N'0')
GO
GO
INSERT INTO [dbo].[FeedBack] ([ID], [Date], [Detail], [Status], [Username], [Reply]) VALUES (N'3', N'2015-08-23 15:39:11.560', N'Hello', N'0', N'tung', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[FeedBack] OFF
GO

-- ----------------------------
-- Table structure for OrderDetails
-- ----------------------------
-- DROP TABLE [dbo].[OrderDetails]
GO
CREATE TABLE [dbo].[OrderDetails] (
[DetailID] int NOT NULL IDENTITY(1,1) ,
[OrderID] int NOT NULL ,
[CakeID] int NOT NULL ,
[Quantity] int NOT NULL ,
[Price] money NOT NULL ,
[Status] smallint NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[OrderDetails]', RESEED, 2015)
GO

-- ----------------------------
-- Records of OrderDetails
-- ----------------------------
SET IDENTITY_INSERT [dbo].[OrderDetails] ON
GO
INSERT INTO [dbo].[OrderDetails] ([DetailID], [OrderID], [CakeID], [Quantity], [Price], [Status]) VALUES (N'1005', N'1006', N'10', N'1', N'380000.0000', null)
GO
GO
INSERT INTO [dbo].[OrderDetails] ([DetailID], [OrderID], [CakeID], [Quantity], [Price], [Status]) VALUES (N'1006', N'1006', N'17', N'10', N'1000000.0000', null)
GO
GO
INSERT INTO [dbo].[OrderDetails] ([DetailID], [OrderID], [CakeID], [Quantity], [Price], [Status]) VALUES (N'1007', N'1007', N'10', N'2', N'760000.0000', null)
GO
GO
INSERT INTO [dbo].[OrderDetails] ([DetailID], [OrderID], [CakeID], [Quantity], [Price], [Status]) VALUES (N'1008', N'1007', N'12', N'5', N'2000000.0000', null)
GO
GO
INSERT INTO [dbo].[OrderDetails] ([DetailID], [OrderID], [CakeID], [Quantity], [Price], [Status]) VALUES (N'1009', N'1008', N'17', N'100', N'10000000.0000', null)
GO
GO
INSERT INTO [dbo].[OrderDetails] ([DetailID], [OrderID], [CakeID], [Quantity], [Price], [Status]) VALUES (N'2009', N'2008', N'11', N'1', N'350000.0000', null)
GO
GO
INSERT INTO [dbo].[OrderDetails] ([DetailID], [OrderID], [CakeID], [Quantity], [Price], [Status]) VALUES (N'2010', N'2009', N'11', N'1', N'350000.0000', null)
GO
GO
INSERT INTO [dbo].[OrderDetails] ([DetailID], [OrderID], [CakeID], [Quantity], [Price], [Status]) VALUES (N'2011', N'2010', N'12', N'1', N'400000.0000', null)
GO
GO
INSERT INTO [dbo].[OrderDetails] ([DetailID], [OrderID], [CakeID], [Quantity], [Price], [Status]) VALUES (N'2012', N'2011', N'15', N'2', N'150000.0000', null)
GO
GO
INSERT INTO [dbo].[OrderDetails] ([DetailID], [OrderID], [CakeID], [Quantity], [Price], [Status]) VALUES (N'2013', N'2013', N'16', N'1', N'10000.0000', null)
GO
GO
INSERT INTO [dbo].[OrderDetails] ([DetailID], [OrderID], [CakeID], [Quantity], [Price], [Status]) VALUES (N'2014', N'2014', N'16', N'1', N'10000.0000', null)
GO
GO
INSERT INTO [dbo].[OrderDetails] ([DetailID], [OrderID], [CakeID], [Quantity], [Price], [Status]) VALUES (N'2015', N'2014', N'15', N'1', N'75000.0000', null)
GO
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO

-- ----------------------------
-- Table structure for Orders
-- ----------------------------
-- DROP TABLE [dbo].[Orders]
GO
CREATE TABLE [dbo].[Orders] (
[OrderID] int NOT NULL IDENTITY(1,1) ,
[RecipientName] nvarchar(50) NOT NULL ,
[RecipientAddress] nvarchar(200) NOT NULL ,
[OrderTime] datetime NOT NULL ,
[ContactNumber] varchar(11) NOT NULL ,
[Note] ntext NULL ,
[DeliveryDate] datetime NOT NULL ,
[OrderStatus] smallint NOT NULL ,
[Username] nvarchar(50) NULL ,
[RecipientDOB] datetime NULL ,
[TotalPrice] money NULL ,
[Status] smallint NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Orders]', RESEED, 2014)
GO

-- ----------------------------
-- Records of Orders
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Orders] ON
GO
INSERT INTO [dbo].[Orders] ([OrderID], [RecipientName], [RecipientAddress], [OrderTime], [ContactNumber], [Note], [DeliveryDate], [OrderStatus], [Username], [RecipientDOB], [TotalPrice], [Status]) VALUES (N'1006', N'Nguyễn Quang Tùng', N'TP HCM', N'2015-08-25 22:05:35.997', N'1234567811', N'HD', N'1994-10-20 07:00:00.000', N'3', N'tung', null, N'1380000.0000', N'1')
GO
GO
INSERT INTO [dbo].[Orders] ([OrderID], [RecipientName], [RecipientAddress], [OrderTime], [ContactNumber], [Note], [DeliveryDate], [OrderStatus], [Username], [RecipientDOB], [TotalPrice], [Status]) VALUES (N'1007', N'Nguyễn Quang Tùng', N'TP HCM', N'2015-08-26 05:51:19.917', N'1234567811', N'', N'1994-10-20 07:00:00.000', N'3', N'tung', null, N'2760000.0000', N'1')
GO
GO
INSERT INTO [dbo].[Orders] ([OrderID], [RecipientName], [RecipientAddress], [OrderTime], [ContactNumber], [Note], [DeliveryDate], [OrderStatus], [Username], [RecipientDOB], [TotalPrice], [Status]) VALUES (N'1008', N'Nguyễn Quang Tùng', N'TP HCM', N'2015-08-26 20:33:01.473', N'1234567811', N'', N'1994-10-10 07:00:00.000', N'3', N'tung', null, N'10000000.0000', N'1')
GO
GO
INSERT INTO [dbo].[Orders] ([OrderID], [RecipientName], [RecipientAddress], [OrderTime], [ContactNumber], [Note], [DeliveryDate], [OrderStatus], [Username], [RecipientDOB], [TotalPrice], [Status]) VALUES (N'2008', N'Nguyễn Quang Tùng', N'TP HCM', N'2015-08-28 18:55:27.940', N'1234567811', N'', N'2015-08-29 07:00:00.000', N'1', N'tung', null, N'350000.0000', N'1')
GO
GO
INSERT INTO [dbo].[Orders] ([OrderID], [RecipientName], [RecipientAddress], [OrderTime], [ContactNumber], [Note], [DeliveryDate], [OrderStatus], [Username], [RecipientDOB], [TotalPrice], [Status]) VALUES (N'2009', N'Nguyễn Quang Tùng', N'TP HCM', N'2015-08-28 18:56:27.757', N'1234567811', N'truoc 5 gio', N'2015-08-30 07:00:00.000', N'1', N'tung', null, N'350000.0000', N'1')
GO
GO
INSERT INTO [dbo].[Orders] ([OrderID], [RecipientName], [RecipientAddress], [OrderTime], [ContactNumber], [Note], [DeliveryDate], [OrderStatus], [Username], [RecipientDOB], [TotalPrice], [Status]) VALUES (N'2010', N'Nguyễn Quang Tùng', N'TP HCM', N'2015-08-28 18:57:07.303', N'1234567811', N'', N'2015-08-30 07:00:00.000', N'1', N'tung', null, N'400000.0000', N'1')
GO
GO
INSERT INTO [dbo].[Orders] ([OrderID], [RecipientName], [RecipientAddress], [OrderTime], [ContactNumber], [Note], [DeliveryDate], [OrderStatus], [Username], [RecipientDOB], [TotalPrice], [Status]) VALUES (N'2011', N'Nguyen Quang Thinh', N'Ha Tinh', N'2015-08-28 19:01:51.347', N'1234567890', N'', N'2014-08-26 07:00:00.000', N'1', N'thinh', null, N'150000.0000', N'1')
GO
GO
INSERT INTO [dbo].[Orders] ([OrderID], [RecipientName], [RecipientAddress], [OrderTime], [ContactNumber], [Note], [DeliveryDate], [OrderStatus], [Username], [RecipientDOB], [TotalPrice], [Status]) VALUES (N'2012', N'Nguyen Quang Thinh', N'Ha Tinh', N'2015-08-28 19:02:09.447', N'1234567890', N'', N'2014-08-26 07:00:00.000', N'1', N'thinh', null, N'.0000', N'1')
GO
GO
INSERT INTO [dbo].[Orders] ([OrderID], [RecipientName], [RecipientAddress], [OrderTime], [ContactNumber], [Note], [DeliveryDate], [OrderStatus], [Username], [RecipientDOB], [TotalPrice], [Status]) VALUES (N'2013', N'Nguyễn Quang Tùng', N'TP HCM', N'2015-08-28 20:44:24.163', N'1234567811', N'', N'2015-08-29 07:00:00.000', N'1', N'tung', null, N'10000.0000', N'1')
GO
GO
INSERT INTO [dbo].[Orders] ([OrderID], [RecipientName], [RecipientAddress], [OrderTime], [ContactNumber], [Note], [DeliveryDate], [OrderStatus], [Username], [RecipientDOB], [TotalPrice], [Status]) VALUES (N'2014', N'Nguyen Quang Thinh', N'Ha Tinh', N'2015-08-28 20:48:06.743', N'0902822880', N'kinh chao quy khach', N'2015-08-29 07:00:00.000', N'2', N'thinh', null, N'85000.0000', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO

-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
-- DROP TABLE [dbo].[sysdiagrams]
GO
CREATE TABLE [dbo].[sysdiagrams] (
[name] sysname NOT NULL ,
[principal_id] int NOT NULL ,
[diagram_id] int NOT NULL IDENTITY(1,1) ,
[version] int NULL ,
[definition] varbinary(MAX) NULL 
)


GO

-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sysdiagrams] ON
GO
INSERT INTO [dbo].[sysdiagrams] ([name], [principal_id], [diagram_id], [version], [definition]) VALUES (N'Diagram_0', N'1', N'1', N'1', 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000000100000000000000001000000200000001000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF11000000FEFFFFFF04000000050000001B0000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F00000010000000FEFFFFFFFEFFFFFF130000001400000015000000160000001700000018000000190000001A000000FEFFFFFF1C000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF020000000000000000000000000000000000000000000000000000000000000090BD570A6ED3D00103000000C0090000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000007E050000000000006F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000006000000C115000000000000010043006F006D0070004F0062006A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000160000005F000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000FEFFFFFF17000000FEFFFFFFFEFFFFFF1A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000430000A1E100C05000080270000000F00FFFF27000000007D000087660000CB44000077820000376A0000BAFBFFFF3C340000DE805B10F195D011B0A000AA00BDCB5C000008003000000000020000030000003C006B0000000900000000000000D9E6B0E91C81D011AD5100A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98273C25A2DA2D00002800430000000000000053444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C00002800430000000000000051444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C110000008C0400000091011000003000A509000007000080120000009C020000008000000500008053636847726964003A2000005046000043616B657369640000003400A50900000700008016000000A4020000008000000900008053636847726964006AFFFFFF10590000437573746F6D65727300000000003000A509000007000080170000009E02000000800000060000805363684772696400483F0000A84800004576656E7473640000006400A5090000070000801800000052000000018000003B000080436F6E74726F6C00973A0000A747000052656C6174696F6E736869702027464B5F43616B65735F4576656E747327206265747765656E20274576656E74732720616E64202743616B6573270000002800B50100000700008019000000310000005100000002800000436F6E74726F6C000E3900003C47000000003400A5090000070000801A000000AA020000008000000C00008053636847726964003A200000263400004F7264657244657461696C7300007000A5090000070000801B000000520000000180000047000080436F6E74726F6C00CD3000003442000052656C6174696F6E736869702027464B5F4F7264657244657461696C735F43616B657327206265747765656E202743616B65732720616E6420274F7264657244657461696C73270000002800B5010000070000801C000000310000005D00000002800000436F6E74726F6C0013330000EF44000000003000A5090000070000801D0000009E0200000080000006000080536368477269640000000000263400004F7264657273640000007400A5090000070000801E000000520000000180000049000080436F6E74726F6C00F11A0000733F000052656C6174696F6E736869702027464B5F4F7264657244657461696C735F4F726465727327206265747765656E20274F72646572732720616E6420274F7264657244657461696C7327007D0000002800B5010000070000801F000000310000005F00000002800000436F6E74726F6C00F5170000B941000000003000A509000007000080220000009C02000000800000050000805363684772696400863D00002634000041646D696E69640000006C00A50900000700008023000000520000000180000043000080436F6E74726F6C00BF1100004051000052656C6174696F6E736869702027464B5F4F72646572735F437573746F6D65727327206265747765656E2027437573746F6D6572732720616E6420274F7264657273270300002800B50100000700008024000000310000005900000002800000436F6E74726F6C0005140000E455000000003000A50900000700008025000000A2020000008000000800008053636847726964003A200000C8640000466565644261636B00007000A50900000700008026000000520000000180000047000080436F6E74726F6C00C7190000276D000052656C6174696F6E736869702027464B5F466565644261636B5F437573746F6D65727327206265747765656E2027437573746F6D6572732720616E642027466565644261636B270000002800B50100000700008027000000310000005D00000002800000436F6E74726F6C00461800006D6F000000000100FEFF030A0000FFFFFFFF00000000000000000000000000000000170000004D6963726F736F66742044445320466F726D20322E300010000000456D626564646564204F626A6563740000000000F439B2710000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002143341208000000891B00005C1C0000785634120700000014010000430061006B00650073000000FFFFFFFFFFFFFFFFFFFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000055AAFFFFD5802B00000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000002340000BE200000000000002D0100000C0000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC0600000000000001000000891B00005C1C0000000000000A0000000A00000002000000020000001C010000740D000000000000010000003A1800006B0A000000000000030000000300000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000006000000430061006B006500730000002143341208000000891B00000C1A000078563412070000001401000043007500730074006F006D0065007200730000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000002340000831E0000000000002D0100000B0000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC0600000000000001000000891B00000C1A000000000000090000000900000002000000020000001C010000740D000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000A00000043007500730074006F006D0065007200730000002143341208000000891B0000280C00007856341207000000140100004500760065006E007400730000000000000000000000004033338F4000000000000010400100000000000000000000000E000000050000001801000000000000000000000000000000000000F800000000000000050000000000000000000000020000003333333333338F4000000000000000003333333333338F400000000000000040040000002000000030000000000000003333333333238F4000000000000010400000000000000040000000000000004000000000000000000100000000000000050000000000000040000000010000000000000000000040000000000000104004000000200000002000000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC0600000000000001000000891B0000280C000000000000030000000300000002000000020000001C010000740D000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000070000004500760065006E0074007300000002000B00483F00003E490000C33B00003E4900000000000002000000F0F0F000000000000000000000000000000000000100000019000000000000000E3900003C470000EC0800005301000032000000010000020000EC080000530100000200000000000500008008000080010000001500010000009001B0300100065461686F6D610F0046004B005F00430061006B00650073005F004500760065006E00740073002143341208000000891B0000C91000007856341207000000140100004F007200640065007200440065007400610069006C007300000020006E0061006D0065002C002000760061006C00750065002000460052004F004D0020007300790073002E0065007800740065006E006400650064005F00700072006F0070006500720074006900650073002000570048004500520045002000280063006C0061007300730020003D00200031002900200041004E004400200028006D0061006A006F0072005F006900640020003D0020004F0042004A004500430054005F004900440028004E0027005B00640062006F005D002E005B00430061006B00650073005D0027002900290020004100000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC0600000000000001000000891B0000C910000000000000050000000500000002000000020000001C010000740D000000000000010000003A1800006B0A000000000000030000000300000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D0000004F007200640065007200440065007400610069006C007300000002000B00643200005046000064320000EF4400000000000002000000F0F0F00000000000000000000000000000000000010000001C0000000000000013330000EF440000FC0B00005301000062000000010000020000FC0B0000530100000200000000000500008008000080010000001500010000009001B0300100065461686F6D61150046004B005F004F007200640065007200440065007400610069006C0073005F00430061006B006500730021433412080000001D1C0000D51F00007856341207000000140100004F007200640065007200730000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C00000034000000000000000000000002340000831E0000000000002D0100000B0000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC06000000000000010000001D1C0000D51F000000000000090000000900000002000000020000001C010000C80D000000000000010000003A1800003008000000000000020000000200000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000070000004F0072006400650072007300000002000B001D1C00000A4100003A2000000A4100000000000002000000F0F0F00000000000000000000000000000000000010000001F00000000000000F5170000B94100006F0C000053010000320000000100000200006F0C000053010000020000000000FFFFFF0008000080010000001500010000009001B0300100065461686F6D61160046004B005F004F007200640065007200440065007400610069006C0073005F004F00720064006500720073002143341208000000891B0000780E0000785634120700000014010000410064006D0069006E000000260A6D0A2A0F0A05726FA29268F2926B0A0572C924975C0A02020000C807B70010000000004EF16BE000000000CACD0011000000F4C9CD0078A02E100000B70000000000110000002402B700040DB700000DB7009050F16B84CACD00A134E877D8000000000000000000000028A81D01D834E87700000E0100000000E0000000542B590F02000000D8000000000000004CCACD004298D76A060000000CFDA70F68259806020000006825980636FDA70F80CACD003D55D66A0400000036FDA70F39FDA70F88CACD003E94D56A0500000039FDA70FB89D980638FDA70F682598068F2F000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC0600000000000001000000891B0000780E000000000000040000000400000002000000020000001C010000740D000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F00000006000000410064006D0069006E00000002000B00561300001059000056130000FB5300000000000002000000F0F0F0000000000000000000000000000000000001000000240000000000000005140000E4550000880B00005301000031000000010000020000880B000053010000020000000000FFFFFF0008000080010000001500010000009001B0300100065461686F6D61130046004B005F004F00720064006500720073005F0043007500730074006F006D006500720073002143341208000000731B00008512000078563412070000001401000046006500650064004200610063006B0000000A05726FA29268F2926B0A0572C924975C0A02020000C807BC0010000000004E9672E0000000A830C2100D000000ECCCD2006815C5100000BC00000000000D0000002402BC00040DBC00000DBC00905096727CCDD200A1340277D80000000000000000000000609D2A01D834027700001B0100000000E00000006CA3460702000000D80000000000000044CDD2004298716A06000000CC6C1F036825F708020000006825F708F66C1F0378CDD2003D55706A04000000F66C1F03F96C1F0380CDD2003E946F6A05000000F96C1F03B89DF708F86C1F036825F708839D000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000234000095150000000000002D010000070000000C000000070000001C010000880B00006C09000020040000340500009C0300003C060000D4070000B0040000D4070000F0090000CC0600000000000001000000731B00008512000000000000040000000400000002000000020000001C010000680D000000000000010000003A180000F405000000000000010000000100000002000000020000001C010000880B000001000000000000003A180000B903000000000000000000000000000002000000020000001C010000880B000000000000000000002B3F0000FA22000000000000000000000D00000004000000040000001C010000880B0000A40D00005808000078563412040000005A00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000900000046006500650064004200610063006B00000002000B00F31A0000BE6E00003A200000BE6E00000000000002000000F0F0F00000000000000000000000000000000000010000002700000000000000461800006D6F0000E30C00005301000023000000010000020000E30C000053010000020000000000FFFFFF0008000080010000001500010000009001B0300100065461686F6D61150046004B005F0046006500650064004200610063006B005F0043007500730074006F006D006500720073000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300440064007300530074007200650061006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000012000000BD1100000000000053006300680065006D00610020005500440056002000440065006600610075006C0074000000000000000000000000000000000000000000000000000000000026000200FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000180000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C0002010500000007000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000019000000340300000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000002600000012000000000000000C000000BAFBFFFF3C3400000100260000007300630068005F006C006100620065006C0073005F00760069007300690062006C0065000000010000000B0000001E000000000000000000000000000000000000006400000000000000000000000000000000000000000000000000120000001200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400340034000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C0032003100330036000000160000001600000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400340034000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C0032003100330036000000170000001700000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400340034000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C00320031003300360000001800000018000000000000003000000001BEE61001000000640062006F00000046004B005F00430061006B00650073005F004500760065006E007400730000000000000000000000C402000000001900000019000000180000000800000001D2870628D287060000000000000000AD0700000000001A0000001A00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400340034000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C00320031003300360000001B0000001B000000000000003C0000000102737201000000640062006F00000046004B005F004F007200640065007200440065007400610069006C0073005F00430061006B006500730000000000000000000000C402000000001C0000001C0000001B0000000800000001D1870668D187060000000000000000AD0700000000001D0000001D00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003500320038000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C00320031003300360000001E0000001E000000000000003E00000001FAD35701000000640062006F00000046004B005F004F007200640065007200440065007400610069006C0073005F004F007200640065007200730000000000000000000000C402000000001F0000001F0000001E0000000800000001D3870668D387060000000000000000AD070000000000220000002200000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400340034000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C003200310033003600000023000000230000000000000038000000010E360901000000640062006F00000046004B005F004F00720064006500720073005F0043007500730074006F006D0065007200730000000000000000000000C402000000002400000024000000230000000800000001CA8706E8CA87060000000000000000AD070000000000250000002500000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003900350032002C0031002C0032003400310032002C0035002C0031003500390036000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400330032000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003900350032000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003900350032002C00310032002C0033003400390032002C00310031002C00320031003300360000002600000026000000000000003C000000014A1A5801000000640062006F00000046004B005F0046006500650064004200610063006B005F0043007500730074006F006D0065007200730000000000000000000000C402000000002700000027000000260000000800000001DC8706E8DC87060000000000000000AD0F0000010000190000001B000000120000001A0000003C0000003D000000260000001600000025000000A50000007C00000023000000160000001D00000042000000410000001800000017000000120000005C000000650000001E0000001D0000001A000000890000008600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F5739000002006048570A6ED3D001020200001048450000000000000000000000000000000000780100004400610074006100200053006F0075007200630065003D004B00480041004E0048005400520049004E0048003B0049006E0069007400690061006C00200043006100740061006C006F0067003D00540075006E0067003B005000650072007300690073007400200053006500630075007200690074007900200049006E0066006F003D0054007200750065003B0055007300650072002000490044003D00730061003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F002200000000800500140000004400690061006700720061006D005F0030000000000226001200000046006500650064004200610063006B00000008000000640062006F000000000226000C000000410064006D0069006E00000008000000640062006F000000000226000E0000004F0072006400650072007300000008000000640062006F000000000226001A0000004F007200640065007200440065007400610069006C007300000008000000640062006F000000000226000E0000004500760065006E0074007300000008000000640062006F000000000226001400000043007500730074006F006D00650072007300000008000000640062006F000000000224000C000000430061006B0065007300000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D000000000000000000000000000000010003000000000000000C0000000B000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214)
GO
GO
SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
GO

-- ----------------------------
-- Indexes structure for table Admins
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Admins
-- ----------------------------
ALTER TABLE [dbo].[Admins] ADD PRIMARY KEY ([Username])
GO

-- ----------------------------
-- Indexes structure for table Cakes
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Cakes
-- ----------------------------
ALTER TABLE [dbo].[Cakes] ADD PRIMARY KEY ([CakeID])
GO

-- ----------------------------
-- Indexes structure for table Customers
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Customers
-- ----------------------------
ALTER TABLE [dbo].[Customers] ADD PRIMARY KEY ([Username])
GO

-- ----------------------------
-- Indexes structure for table Events
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Events
-- ----------------------------
ALTER TABLE [dbo].[Events] ADD PRIMARY KEY ([EventID])
GO

-- ----------------------------
-- Indexes structure for table FeedBack
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table FeedBack
-- ----------------------------
ALTER TABLE [dbo].[FeedBack] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table OrderDetails
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table OrderDetails
-- ----------------------------
ALTER TABLE [dbo].[OrderDetails] ADD PRIMARY KEY ([DetailID])
GO

-- ----------------------------
-- Indexes structure for table Orders
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Orders
-- ----------------------------
ALTER TABLE [dbo].[Orders] ADD PRIMARY KEY ([OrderID])
GO

-- ----------------------------
-- Indexes structure for table sysdiagrams
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD PRIMARY KEY ([diagram_id])
GO

-- ----------------------------
-- Uniques structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD UNIQUE ([principal_id] ASC, [name] ASC)
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Cakes]
-- ----------------------------
ALTER TABLE [dbo].[Cakes] ADD FOREIGN KEY ([EventID]) REFERENCES [dbo].[Events] ([EventID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[FeedBack]
-- ----------------------------
ALTER TABLE [dbo].[FeedBack] ADD FOREIGN KEY ([Username]) REFERENCES [dbo].[Customers] ([Username]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[OrderDetails]
-- ----------------------------
ALTER TABLE [dbo].[OrderDetails] ADD FOREIGN KEY ([CakeID]) REFERENCES [dbo].[Cakes] ([CakeID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[OrderDetails] ADD FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Orders] ([OrderID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Orders]
-- ----------------------------
ALTER TABLE [dbo].[Orders] ADD FOREIGN KEY ([Username]) REFERENCES [dbo].[Customers] ([Username]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
