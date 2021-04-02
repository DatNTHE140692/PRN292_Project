USE [PRN292_PROJECT]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/2/2021 17:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](150) NULL,
	[lastName] [nvarchar](150) NULL,
	[userName] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[email] [varchar](150) NOT NULL,
	[phoneNumber] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 4/2/2021 17:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](150) NULL,
	[lastName] [nvarchar](150) NULL,
	[email] [varchar](150) NULL,
	[phoneNumber] [varchar](10) NULL,
	[title] [nvarchar](150) NULL,
	[content] [nvarchar](max) NULL,
	[isRead] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 4/2/2021 17:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[oid] [int] NULL,
	[pid] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/2/2021 17:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [datetime] NULL,
	[firstName] [nvarchar](150) NULL,
	[lastName] [nvarchar](150) NULL,
	[email] [nvarchar](150) NULL,
	[phoneNumber] [nvarchar](150) NULL,
	[address] [nvarchar](150) NULL,
	[province] [nvarchar](150) NULL,
	[city] [nvarchar](150) NULL,
	[country] [nvarchar](150) NULL,
	[total] [float] NULL,
	[isApproved] [bit] NULL,
	[isProcessing] [bit] NULL,
	[isCompleted] [bit] NULL,
	[shipid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product_Categories]    Script Date: 4/2/2021 17:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product_Images]    Script Date: 4/2/2021 17:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Images](
	[pid] [int] NULL,
	[imageUrl] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/2/2021 17:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NOT NULL,
	[price] [float] NULL,
	[overview] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[inStock] [bit] NOT NULL,
	[cid] [int] NULL,
	[thumbnail] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 4/2/2021 17:24:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([id], [firstName], [lastName], [userName], [password], [email], [phoneNumber]) VALUES (1, N'Nguyen', N'Tien Dat', N'datnt', N'21232f297a57a5a743894a0e4a801fc3', N'dat@fpt.edu.vn', N'')
INSERT [dbo].[Admin] ([id], [firstName], [lastName], [userName], [password], [email], [phoneNumber]) VALUES (2, N'Le', N'Thi Minh Chau', N'chaultm', N'21232f297a57a5a743894a0e4a801fc3', N'', N'')
INSERT [dbo].[Admin] ([id], [firstName], [lastName], [userName], [password], [email], [phoneNumber]) VALUES (3, N'Dang', N'Huy Hoang', N'hoangdh', N'21232f297a57a5a743894a0e4a801fc3', N'', N'')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Product_Categories] ON 

INSERT [dbo].[Product_Categories] ([id], [name]) VALUES (1, N'Poodle')
INSERT [dbo].[Product_Categories] ([id], [name]) VALUES (2, N'Corgi')
INSERT [dbo].[Product_Categories] ([id], [name]) VALUES (3, N'Phốc_sóc')
INSERT [dbo].[Product_Categories] ([id], [name]) VALUES (4, N'Bull')
INSERT [dbo].[Product_Categories] ([id], [name]) VALUES (5, N'Mèo')
SET IDENTITY_INSERT [dbo].[Product_Categories] OFF
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (1, N'Poodle-Pet-Store1-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (1, N'Poodle-Pet-Store5-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (1, N'Poodle-Pet-Store4-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (45, N'../ASSETS/IMG/84109112_1693419870806090_3759356618228838291_o-1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (45, N'../ASSETS/IMG/106898782_1693419857472758_3385932345301682751_o.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (46, N'../ASSETS/IMG/90477110_1583609965120415_3206915280919855104_o.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (46, N'../ASSETS/IMG/90503923_1583609945120417_6444407396092608512_o.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (47, N'../ASSETS/IMG/90168663_1580773245404087_6541768974638514176_o-768x938.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (47, N'../ASSETS/IMG/90271898_1580773258737419_1322850777571524608_o.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (48, N'../ASSETS/IMG/PET-126.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (48, N'../ASSETS/IMG/PET-124.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (49, N'../ASSETS/IMG/z2400066732536_e71e8152dee25a4e5783459a0e5014d2.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (49, N'../ASSETS/IMG/z2400066707408_d8587c9d1b3195485852e7fac8deb8b6-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (50, N'../ASSETS/IMG/z2400066029821_00881d07aa1b17491315fa222e767637.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (50, N'../ASSETS/IMG/z2400066052820_5364c836f7b4871e47f43b270b17bc1e.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (51, N'../ASSETS/IMG/pom-pet-store.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (52, N'../ASSETS/IMG/Pom-16.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (52, N'../ASSETS/IMG/Pom-17-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (53, N'../ASSETS/IMG/z2335134385351_7e34e223bc8f734f234a7e0b7f412a05.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (53, N'../ASSETS/IMG/z2335134383701_9055d7722041beadcb46954a4d54718a.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (54, N'../ASSETS/IMG/Pom-21.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (54, N'../ASSETS/IMG/Pom-22-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (56, N'../ASSETS/IMG/STOP9686-scaled.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (56, N'../ASSETS/IMG/STOP9696-scaled.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (57, N'../ASSETS/IMG/z2320133682526_9767896f13f6fbaad544e2758028cfbf-768x1024.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (57, N'../ASSETS/IMG/z2320133717300_5f85d6b5303c1113332664a5dd1e64e5-768x1024.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (58, N'../ASSETS/IMG/118128219_1747339758747434_8207116888298436117_o-150x150.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (58, N'../ASSETS/IMG/118309244_1747339732080770_1250569761113811281_o-768x934.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (59, N'../ASSETS/IMG/2-6.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (59, N'../ASSETS/IMG/3-6-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (59, N'../ASSETS/IMG/1-5.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (60, N'../ASSETS/IMG/7.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (60, N'../ASSETS/IMG/6-1-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (60, N'../ASSETS/IMG/5-1-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (61, N'../ASSETS/IMG/PETWEB-PULL05-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (61, N'../ASSETS/IMG/PETWEB-PULL04-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (61, N'../ASSETS/IMG/PETWEB-PULL03-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (62, N'../ASSETS/IMG/d1fb300d0f4eea10b35f.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (62, N'../ASSETS/IMG/8b144ee371a094fecdb1-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (62, N'../ASSETS/IMG/fa83dc72e331066f5f20-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (63, N'../ASSETS/IMG/cho-bulldog-dogily-311219-1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (63, N'../ASSETS/IMG/cho-bulldog-dogily-311219-4.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (63, N'../ASSETS/IMG/cho-bulldog-dogily-311219-6.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (64, N'../ASSETS/IMG/cho-bulldog-2-thang-dogily-duc-raham-6.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (64, N'../ASSETS/IMG/cho-bulldog-2-thang-dogily-duc-raham-2.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (64, N'../ASSETS/IMG/cho-bulldog-2-thang-dogily-duc-raham-5.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (66, N'../ASSETS/IMG/1-22.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (66, N'../ASSETS/IMG/4-27.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (66, N'../ASSETS/IMG/5-13.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (67, N'../ASSETS/IMG/cho-bulldog-2-thang-tuoi-duc-dogily-8-250x300.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (67, N'../ASSETS/IMG/cho-bulldog-2-thang-tuoi-duc-dogily-1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (67, N'../ASSETS/IMG/cho-bulldog-2-thang-tuoi-duc-dogily-4.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (68, N'../ASSETS/IMG/4-18.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (68, N'../ASSETS/IMG/1-16.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (68, N'../ASSETS/IMG/4-19.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (69, N'../ASSETS/IMG/cho-bully-nau-dogily-logo.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (69, N'../ASSETS/IMG/bully-nau-2-thang-dogily-1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (69, N'../ASSETS/IMG/bully-nau-2-thang-dogily-3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (70, N'../ASSETS/IMG/z2380711139420_de57320bb96a2d2fbe959213ececb53e-1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (70, N'../ASSETS/IMG/z2380711146323_0d5c11a09e98675e5945e399dc990278-1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (70, N'../ASSETS/IMG/z2383263073724_58e8d569959481f1abf97365598a5256.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (71, N'../ASSETS/IMG/Mèo-lông-ngắn-7.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (71, N'../ASSETS/IMG/Mèo-lông-ngắn-5-1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (71, N'../ASSETS/IMG/Mèo-lông-ngắn-8.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (2, N'../ASSETS/IMG/Corgi-29.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (2, N'../ASSETS/IMG/Corgi-29-247x259.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (2, N'../ASSETS/IMG/Corgi-30.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (13, N'../ASSETS/IMG/86f228ba5966bb38e277-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (13, N'../ASSETS/IMG/P-8-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (14, N'../ASSETS/IMG/1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (14, N'../ASSETS/IMG/2.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (14, N'../ASSETS/IMG/3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (17, N'../ASSETS/IMG/Fluffy1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (17, N'../ASSETS/IMG/Fluffy2.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (17, N'../ASSETS/IMG/Fluffy3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (18, N'../ASSETS/IMG/Fluffy1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (18, N'../ASSETS/IMG/Fluffy2.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (18, N'../ASSETS/IMG/Fluffy3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (19, N'../ASSETS/IMG/CorgiMat2mau1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (19, N'../ASSETS/IMG/CorgiMat2mau2.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (19, N'../ASSETS/IMG/CorgiMat2mau3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (39, N'../ASSETS/IMG/20-WEB4.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (39, N'../ASSETS/IMG/20-WEB-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (39, N'../ASSETS/IMG/20-WEB1-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (42, N'../ASSETS/IMG/WebFluffy3-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (42, N'../ASSETS/IMG/WebFluffy2-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (42, N'../ASSETS/IMG/WebFluffy1-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (43, N'../ASSETS/IMG/125294770_1830620010419408_604014806922630964_o-1-768x1024.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (43, N'../ASSETS/IMG/124995069_1830619977086078_7969522111275040971_o-1-768x670.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (44, N'../ASSETS/IMG/131975744_1857499307731478_1840493530693442423_o-768x576.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (44, N'../ASSETS/IMG/131431268_1857499317731477_6322577062470159653_o.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (72, N'../ASSETS/IMG/3-3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (76, N'../ASSETS/IMG/Mèo-bicolor.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (76, N'../ASSETS/IMG/Mèo-bicolor3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (76, N'../ASSETS/IMG/Mèo-bicolor2.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (72, N'../ASSETS/IMG/1-2-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (72, N'../ASSETS/IMG/2-3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (73, N'../ASSETS/IMG/z2400583568906_69f14cb4c19f544845b87c1122b82210.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (73, N'../ASSETS/IMG/z2400583582922_53802e7507c0551d0a16936580e74860.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (73, N'../ASSETS/IMG/z2400583594976_a285f33a534d0ff0bcce3172362e1471.jpg')
GO
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (77, N'../ASSETS/IMG/meo-scottish-fold-tai-cup-tabby-petsily-311219-3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (77, N'../ASSETS/IMG/meo-scottish-fold-tai-cup-tabby-petsily-311219-4.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (77, N'../ASSETS/IMG/meo-anh-long-ngan-con-mau-silver.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (78, N'../ASSETS/IMG/meo-tai-cup-xam-xanh-duc-dogily-petshop-6.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (78, N'../ASSETS/IMG/meo-tai-cup-xam-xanh-duc-dogily-petshop.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (78, N'../ASSETS/IMG/meo-tai-cup-xam-xanh-duc-dogily-petshop-5-600x483.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (1, N'Poodle-Pet-Store1-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (1, N'Poodle-Pet-Store5-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (1, N'Poodle-Pet-Store4-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (45, N'../ASSETS/IMG/84109112_1693419870806090_3759356618228838291_o-1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (45, N'../ASSETS/IMG/106898782_1693419857472758_3385932345301682751_o.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (46, N'../ASSETS/IMG/90477110_1583609965120415_3206915280919855104_o.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (46, N'../ASSETS/IMG/90503923_1583609945120417_6444407396092608512_o.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (47, N'../ASSETS/IMG/90168663_1580773245404087_6541768974638514176_o-768x938.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (47, N'../ASSETS/IMG/90271898_1580773258737419_1322850777571524608_o.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (48, N'../ASSETS/IMG/PET-126.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (48, N'../ASSETS/IMG/PET-124.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (49, N'../ASSETS/IMG/z2400066732536_e71e8152dee25a4e5783459a0e5014d2.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (49, N'../ASSETS/IMG/z2400066707408_d8587c9d1b3195485852e7fac8deb8b6-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (50, N'../ASSETS/IMG/z2400066029821_00881d07aa1b17491315fa222e767637.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (50, N'../ASSETS/IMG/z2400066052820_5364c836f7b4871e47f43b270b17bc1e.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (51, N'../ASSETS/IMG/pom-pet-store.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (52, N'../ASSETS/IMG/Pom-16.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (52, N'../ASSETS/IMG/Pom-17-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (53, N'../ASSETS/IMG/z2335134385351_7e34e223bc8f734f234a7e0b7f412a05.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (53, N'../ASSETS/IMG/z2335134383701_9055d7722041beadcb46954a4d54718a.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (54, N'../ASSETS/IMG/Pom-21.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (54, N'../ASSETS/IMG/Pom-22-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (56, N'../ASSETS/IMG/STOP9686-scaled.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (56, N'../ASSETS/IMG/STOP9696-scaled.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (57, N'../ASSETS/IMG/z2320133682526_9767896f13f6fbaad544e2758028cfbf-768x1024.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (57, N'../ASSETS/IMG/z2320133717300_5f85d6b5303c1113332664a5dd1e64e5-768x1024.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (58, N'../ASSETS/IMG/118128219_1747339758747434_8207116888298436117_o-150x150.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (58, N'../ASSETS/IMG/118309244_1747339732080770_1250569761113811281_o-768x934.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (59, N'../ASSETS/IMG/2-6.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (59, N'../ASSETS/IMG/3-6-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (59, N'../ASSETS/IMG/1-5.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (60, N'../ASSETS/IMG/7.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (60, N'../ASSETS/IMG/6-1-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (60, N'../ASSETS/IMG/5-1-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (61, N'../ASSETS/IMG/PETWEB-PULL05-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (61, N'../ASSETS/IMG/PETWEB-PULL04-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (61, N'../ASSETS/IMG/PETWEB-PULL03-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (62, N'../ASSETS/IMG/d1fb300d0f4eea10b35f.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (62, N'../ASSETS/IMG/8b144ee371a094fecdb1-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (62, N'../ASSETS/IMG/fa83dc72e331066f5f20-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (63, N'../ASSETS/IMG/cho-bulldog-dogily-311219-1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (63, N'../ASSETS/IMG/cho-bulldog-dogily-311219-4.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (63, N'../ASSETS/IMG/cho-bulldog-dogily-311219-6.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (64, N'../ASSETS/IMG/cho-bulldog-2-thang-dogily-duc-raham-6.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (64, N'../ASSETS/IMG/cho-bulldog-2-thang-dogily-duc-raham-2.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (64, N'../ASSETS/IMG/cho-bulldog-2-thang-dogily-duc-raham-5.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (66, N'../ASSETS/IMG/1-22.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (66, N'../ASSETS/IMG/4-27.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (66, N'../ASSETS/IMG/5-13.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (67, N'../ASSETS/IMG/cho-bulldog-2-thang-tuoi-duc-dogily-8-250x300.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (67, N'../ASSETS/IMG/cho-bulldog-2-thang-tuoi-duc-dogily-1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (67, N'../ASSETS/IMG/cho-bulldog-2-thang-tuoi-duc-dogily-4.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (68, N'../ASSETS/IMG/4-18.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (68, N'../ASSETS/IMG/1-16.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (68, N'../ASSETS/IMG/4-19.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (69, N'../ASSETS/IMG/cho-bully-nau-dogily-logo.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (69, N'../ASSETS/IMG/bully-nau-2-thang-dogily-1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (69, N'../ASSETS/IMG/bully-nau-2-thang-dogily-3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (70, N'../ASSETS/IMG/z2380711139420_de57320bb96a2d2fbe959213ececb53e-1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (70, N'../ASSETS/IMG/z2380711146323_0d5c11a09e98675e5945e399dc990278-1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (70, N'../ASSETS/IMG/z2383263073724_58e8d569959481f1abf97365598a5256.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (71, N'../ASSETS/IMG/Mèo-lông-ngắn-7.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (71, N'../ASSETS/IMG/Mèo-lông-ngắn-5-1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (71, N'../ASSETS/IMG/Mèo-lông-ngắn-8.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (2, N'../ASSETS/IMG/Corgi-29.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (2, N'../ASSETS/IMG/Corgi-29-247x259.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (2, N'../ASSETS/IMG/Corgi-30.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (13, N'../ASSETS/IMG/86f228ba5966bb38e277-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (13, N'../ASSETS/IMG/P-8-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (14, N'../ASSETS/IMG/1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (14, N'../ASSETS/IMG/2.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (14, N'../ASSETS/IMG/3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (17, N'../ASSETS/IMG/Fluffy1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (17, N'../ASSETS/IMG/Fluffy2.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (17, N'../ASSETS/IMG/Fluffy3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (18, N'../ASSETS/IMG/Fluffy1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (18, N'../ASSETS/IMG/Fluffy2.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (18, N'../ASSETS/IMG/Fluffy3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (19, N'../ASSETS/IMG/CorgiMat2mau1.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (19, N'../ASSETS/IMG/CorgiMat2mau2.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (19, N'../ASSETS/IMG/CorgiMat2mau3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (39, N'../ASSETS/IMG/20-WEB4.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (39, N'../ASSETS/IMG/20-WEB-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (39, N'../ASSETS/IMG/20-WEB1-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (42, N'../ASSETS/IMG/WebFluffy3-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (42, N'../ASSETS/IMG/WebFluffy2-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (42, N'../ASSETS/IMG/WebFluffy1-247x296.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (43, N'../ASSETS/IMG/125294770_1830620010419408_604014806922630964_o-1-768x1024.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (43, N'../ASSETS/IMG/124995069_1830619977086078_7969522111275040971_o-1-768x670.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (44, N'../ASSETS/IMG/131975744_1857499307731478_1840493530693442423_o-768x576.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (44, N'../ASSETS/IMG/131431268_1857499317731477_6322577062470159653_o.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (72, N'../ASSETS/IMG/3-3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (76, N'../ASSETS/IMG/Mèo-bicolor.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (76, N'../ASSETS/IMG/Mèo-bicolor3.jpg')
GO
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (76, N'../ASSETS/IMG/Mèo-bicolor2.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (72, N'../ASSETS/IMG/1-2-768x768.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (72, N'../ASSETS/IMG/2-3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (73, N'../ASSETS/IMG/z2400583568906_69f14cb4c19f544845b87c1122b82210.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (73, N'../ASSETS/IMG/z2400583582922_53802e7507c0551d0a16936580e74860.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (73, N'../ASSETS/IMG/z2400583594976_a285f33a534d0ff0bcce3172362e1471.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (77, N'../ASSETS/IMG/meo-scottish-fold-tai-cup-tabby-petsily-311219-3.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (77, N'../ASSETS/IMG/meo-scottish-fold-tai-cup-tabby-petsily-311219-4.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (77, N'../ASSETS/IMG/meo-anh-long-ngan-con-mau-silver.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (78, N'../ASSETS/IMG/meo-tai-cup-xam-xanh-duc-dogily-petshop-6.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (78, N'../ASSETS/IMG/meo-tai-cup-xam-xanh-duc-dogily-petshop.jpg')
INSERT [dbo].[Product_Images] ([pid], [imageUrl]) VALUES (78, N'../ASSETS/IMG/meo-tai-cup-xam-xanh-duc-dogily-petshop-5-600x483.jpg')
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (1, N'Chó Poodle Kem', 200, N'<ul>
<li><strong>Giống chó: Poodle</strong></li>
<li><strong>Size : Tiny</strong></li>
<li><strong>Màu sắc: Kem</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat."', 1, 1, N'../ASSETS/IMG/Poodle-Pet-Store1-768x768.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (2, N'Chó Poddle ', 200000, N'<ul>
<li><strong>Giống chó: Poodle</strong></li>
<li><strong>Size : Tiny</strong></li>
<li><strong>Màu sắc: Bò Sữa</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Những bé Poodle hai màu này đang nhận được sự quan tâm từ nhiều khách hàng khác nhau. Màu bò sữa vốn là màu không có trong bảng thuần chủng của chúng.Đây thực chất là màu được lai tạo từ Poodle đen và Poodle trắng. Sự lai phối này tạo ra một giống chó màu lông đẹp hoàn hảo, đặc biệt được nhiều người yêu thích. Sự kết hợp hài hòa giữa hai màu đen trắng tạo nên ngoại hình hoàn chỉnh cho Poodle.

Giống chó này sở hữu ngoại hình rất dễ thương và đáng yêu, kích thước vừa vặn, bộ lông có màu tựa chú bò sữa con nhí nhảnh.  Chỉ cần nhìn thấy lần đầu tiên bạn chắc chắn sẽ không thể rời mắt."', 1, 1, N'../ASSETS/IMG/P-14-247x296.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (13, N'Chó Poodle Nâu đỏ', 4000000, N'<ul>
<li><strong>Giống chó: Poodle</strong></li>
<li><strong>Size : Tiny</strong></li>
<li><strong>Màu sắc: Nâu đỏ</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Có thể nói màu nâu đỏ là màu đặc trưng đối với Poodle. Poodle nâu đỏ đã đốn bao con tim, làm say bao ánh mắt của các sen.

Chó Poodle màu nâu đỏ cũng tương tự như các loài khác. Chúng rất thông minh và cực kì nhanh nhẹn. Mọi người có thể coi chúng như một loài chó cảnh đẹp, một người bạn tâm giao, một thành viên trong gia đình hay một loài chó giữ nhà đều được.

Chó Poodle màu nâu đỏ tinh nghịch là thế nhưng chúng rất dễ dạy bảo. Chúng có thể hiểu ý của chủ và nghe lời một cách ngoan ngoãn . Cũng chính vì sự năng động của nó nên chắc chắn rằng khi bạn nuôi một bé chó Poodle thì không khí trong nhà bạn sẽ vui tươi hẳn lên."', 1, 1, N'../ASSETS/IMG/Poodle-Pet-Store1-768x768.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (14, N'Chó Poodle đen', 2500000, N'<ul>
<li><strong>Giống chó: Poodle</strong></li>
<li><strong>Size : Tiny</strong></li>
<li><strong>Màu sắc: Đen</strong></li>
<li><strong>Độ tuổi: 3 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Poodle là một trong các giống chó gia đình phổ biến,được nhiều người lựa chọn nuôi trong nhiều năm qua. Bạn đang  mong muốn sở hữu một chú chó thuộc giống Poodle đen? Làm thế nào để mua được Poodle đen với giá phải chăng?"', 1, 1, N'../ASSETS/IMG/1.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (17, N'Chó Corgi Pembroke', 2500000, N'<ul>
<li><strong>Giống chó:  Corgi Pembroke</strong></li>
<li><strong>Size : Tiny</strong></li>
<li><strong>Màu sắc: Vàng,Trắng</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Người ta ước tính chó Corgi đã “đáp” vào trái đất hơn 3000 năm trước tại xứ Wales, nước Anh. Có nhiều giả thuyết xoay quanh tổ tiên của giống chó này. Khả năng cao nhất vẫn bắt nguồn từ giống Vallhunds, một loại chó lùn tại Thụy Điển.

Dù sở hữu thân hình mũm mĩm với đôi chân ngắn, mình dài, nhưng Corgi cực kỳ nhanh nhẹn. Chính vì thế, trong suốt hàng nghìn năm, corgi được nuôi với mục đích chăn gia súc. Kèm theo tiếng sủa đầy uy lực, Cordi cũng có thể “dằn mặt” các con gia súc, khiến chúng khiếp sợ."', 1, 2, N'../ASSETS/IMG/corgi1.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (18, N'Chó Corgi Fluffy', 2500000, N'<ul>
<li><strong>Giống chó:  orgi Fluffy</strong></li>
<li><strong>Màu sắc: Vàng,Trắng</strong></li>
<li><strong>Độ tuổi: 5 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"orgi được phân ra thành ba giống loại nhau là Cardigan Corgi, Pembroke Welsh Corgi và Corgi Fluffy. Tên của chúng được đặt theo tên của xứ Wells cổ, cũng là nơi mà Corgi được phát hiện.

Chó Corgi Fluffy có thân hình ngắn và thấp lùn. Bề dài khoảng 20 cm, trọng lượng trung bình 12kg. Corgi thường được nuôi dưỡng để làm chó săn và chăn gia súc. Chúng cắn vào gót chân cũng những con gia súc không đi theo bầy đàn. Thỉnh thoảng chúng cắn luôn cả gót chân chủ nhân mình, rất đáng yêu!

Nuôi dưỡng chó Corgi Fluffy phải thuân thủ chế độ dinh dưỡng nghiêm ngặt. Bởi vì cơ thể chúng phát triển và tăng trọng rất nhanh. Nếu người nuôi không kiểm soát ăn uống thì rất dễ rơi vào tình trạng béo phì."', 1, 2, N'../ASSETS/IMG/Fluffy1.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (19, N'Chó Corgi Pembroke(Mắt 2 màu)', 6500000, N'<ul>
<li><strong>Giống chó: corgi Fluffy</strong></li>
<li><strong>Màu sắc: Vàng,Trắng</strong></li>
<li><strong>Màu mắt: Xanh,Đen</strong></li>
<li><strong>Độ tuổi: 3 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"hông khác gì các chú chó khác, Corgi khỏe mạnh luôn là mong muốn của các bạn chủ. Nhưng để nuôi dưỡng một chú chó Corgi khỏe mạnh tại Việt Nam không phải là dễ dàng. Điều đó bắt buộc các bạn chủ phải hiểu thật kỹ về đặc điểm của giống cho này.

Hãy cùng Pet Store tìm hiểu xem những chú Corgi này có điều gì thú vị nhé!"', 1, 2, N'../ASSETS/IMG/CorgiMat2mau1.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (39, N'Chó Corgi Cardigan Welsh', 8500000, N'<ul>
<li><strong>Giống chó: Poodle</strong></li>
<li><strong>Size : Tiny</strong></li>
<li><strong>Màu sắc: Bò Sữa</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>''', N'So với Pembroke Welsh, Corgi Cardigan Welsh là giống chó cổ, xuất hiện từ khá lâu. Bài viết dưới đây, hãy cùng Petstoresaigon.com cùng tìm hiểu về giống Cardigan Corgi này nhé!', 1, 2, N'../ASSETS/IMG/20-WEB4.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (42, N'CORGI Ú NU SIÊU XINH', 25000000, N'<ul>
<li><strong>Giống chó: corgi Fluffy</strong></li>
<li><strong>Màu sắc: Vàng,Trắng</strong></li>
<li><strong>Màu mắt: Xanh,Đen</strong></li>
<li><strong>Độ tuổi: 3 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"orgi được phân ra thành ba giống loại nhau là Cardigan Corgi, Pembroke Welsh Corgi và Corgi Fluffy. Tên của chúng được đặt theo tên của xứ Wells cổ, cũng là nơi mà Corgi được phát hiện.

Chó Corgi Fluffy có thân hình ngắn và thấp lùn. Bề dài khoảng 20 cm, trọng lượng trung bình 12kg. Corgi thường được nuôi dưỡng để làm chó săn và chăn gia súc. Chúng cắn vào gót chân cũng những con gia súc không đi theo bầy đàn. Thỉnh thoảng chúng cắn luôn cả gót chân chủ nhân mình, rất đáng yêu!

Nuôi dưỡng chó Corgi Fluffy phải thuân thủ chế độ dinh dưỡng nghiêm ngặt. Bởi vì cơ thể chúng phát triển và tăng trọng rất nhanh. Nếu người nuôi không kiểm soát ăn uống thì rất dễ rơi vào tình trạng béo phì."', 1, 2, N'../ASSETS/IMG/WebFluffy5-247x296.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (43, N'CORGI QUẤN TAI SIÊU XINH', 35000000, N'<ul>
<li><strong>Giống chó: corgi Fluffy</strong></li>
<li><strong>Màu sắc: Vàng,Trắng</strong></li>
<li><strong>Màu mắt: Xanh,Đen</strong></li>
<li><strong>Độ tuổi: 3 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"orgi được phân ra thành ba giống loại nhau là Cardigan Corgi, Pembroke Welsh Corgi và Corgi Fluffy. Tên của chúng được đặt theo tên của xứ Wells cổ, cũng là nơi mà Corgi được phát hiện.

Chó Corgi Fluffy có thân hình ngắn và thấp lùn. Bề dài khoảng 20 cm, trọng lượng trung bình 12kg. Corgi thường được nuôi dưỡng để làm chó săn và chăn gia súc. Chúng cắn vào gót chân cũng những con gia súc không đi theo bầy đàn. Thỉnh thoảng chúng cắn luôn cả gót chân chủ nhân mình, rất đáng yêu!

Nuôi dưỡng chó Corgi Fluffy phải thuân thủ chế độ dinh dưỡng nghiêm ngặt. Bởi vì cơ thể chúng phát triển và tăng trọng rất nhanh. Nếu người nuôi không kiểm soát ăn uống thì rất dễ rơi vào tình trạng béo phì."', 1, 2, N'../ASSETS/IMG/125294770_1830620010419408_604014806922630964_o-1-768x1024.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (44, N'2 BÉ CORGI MAX CUTE', 22000000, N'<ul>
<li><strong>Giống chó: corgi Fluffy</strong></li>
<li><strong>Màu sắc: Vàng,Trắng</strong></li>
<li><strong>Màu mắt: Xanh,Đen</strong></li>
<li><strong>Độ tuổi: 3 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"orgi được phân ra thành ba giống loại nhau là Cardigan Corgi, Pembroke Welsh Corgi và Corgi Fluffy. Tên của chúng được đặt theo tên của xứ Wells cổ, cũng là nơi mà Corgi được phát hiện.

Chó Corgi Fluffy có thân hình ngắn và thấp lùn. Bề dài khoảng 20 cm, trọng lượng trung bình 12kg. Corgi thường được nuôi dưỡng để làm chó săn và chăn gia súc. Chúng cắn vào gót chân cũng những con gia súc không đi theo bầy đàn. Thỉnh thoảng chúng cắn luôn cả gót chân chủ nhân mình, rất đáng yêu!

Nuôi dưỡng chó Corgi Fluffy phải thuân thủ chế độ dinh dưỡng nghiêm ngặt. Bởi vì cơ thể chúng phát triển và tăng trọng rất nhanh. Nếu người nuôi không kiểm soát ăn uống thì rất dễ rơi vào tình trạng béo phì."', 1, 2, N'../ASSETS/IMG/131975744_1857499307731478_1840493530693442423_o-768x576.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (45, N'EM CORGI LÔNG DÀI SIÊU CUTE
', 30000000, N'<ul>
<li><strong>Giống chó: Poodle</strong></li>
<li><strong>Size : Tiny</strong></li>
<li><strong>Màu sắc: Kem</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'Những bé Poodle hai màu này đang nhận được sự quan tâm từ nhiều khách hàng khác nhau. Màu bò sữa vốn là màu không có trong bảng thuần chủng của chúng.Đây thực chất là màu được lai tạo từ Poodle đen và Poodle trắng. Sự lai phối này tạo ra một giống chó màu lông đẹp hoàn hảo, đặc biệt được nhiều người yêu thích. Sự kết hợp hài hòa giữa hai màu đen trắng tạo nên ngoại hình hoàn chỉnh cho Poodle.

Giống chó này sở hữu ngoại hình rất dễ thương và đáng yêu, kích thước vừa vặn, bộ lông có màu tựa chú bò sữa con nhí nhảnh.  Chỉ cần nhìn thấy lần đầu tiên bạn chắc chắn sẽ không thể rời mắt.', 1, 2, N'../ASSETS/IMG/84109112_1693419870806090_3759356618228838291_o-1.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (46, N'CORGI ĐỰC SIÊU SIÊU CUTE', 25000000, N'<ul>
<li><strong>Giống chó: Corgi</strong></li>
<li><strong>Size : Tiny</strong></li>
<li><strong>Màu sắc: Kem</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Chó Corgi Fluffy có ngoại hình nhỏ bé và ngộ nghĩnh, đáng yêu. Chúng cũng rất năng động và thông minh nên được nhiều người ưa thích và mong muốn sở hữu."', 1, 2, N' N''../ASSETS/IMG/WebFluffy1-768x768.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (47, N'CORGI CHÂN NGẮN MÔNG TO', 25000000, N'<ul>
<li><strong>Giống chó: Corgi</strong></li>
<li><strong>Size : Tiny</strong></li>
<li><strong>Màu sắc: Kem</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"corgi được phân ra thành ba giống loại nhau là Cardigan Corgi, Pembroke Welsh Corgi và Corgi Fluffy. Tên của chúng được đặt theo tên của xứ Wells cổ, cũng là nơi mà Corgi được phát hiện.

Chó Corgi Fluffy có thân hình ngắn và thấp lùn. Bề dài khoảng 20 cm, trọng lượng trung bình 12kg. Corgi thường được nuôi dưỡng để làm chó săn và chăn gia súc. Chúng cắn vào gót chân cũng những con gia súc không đi theo bầy đàn. Thỉnh thoảng chúng cắn luôn cả gót chân chủ nhân mình, rất đáng yêu!

Nuôi dưỡng chó Corgi Fluffy phải thuân thủ chế độ dinh dưỡng nghiêm ngặt. Bởi vì cơ thể chúng phát triển và tăng trọng rất nhanh. Nếu người nuôi không kiểm soát ăn uống thì rất dễ rơi vào tình trạng béo phì."', 1, 2, N'../ASSETS/IMG/90168663_1580773245404087_6541768974638514176_o-768x938.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (48, N'Chó Pomeranian Blacktan', 40000000, N'<ul>
<li><strong>Giống chó: Phốc sóc</strong></li>
<li><strong>Màu sắc: Phantom</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Pomeranian (Phốc sốc) là giống chó nhỏ, rất được ưa chuộng trên thế giới. Sở hữu bộ lông xù, đôi mắt to cùng bản năng hiền lành giúp Pom trở thành chú thú cưng thân thiện với trẻ em."', 1, 3, N'../ASSETS/IMG/PET-126.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (49, N'Chó Pomeranian Trắng', 100000000, N'<ul>
<li><strong>Giống chó: Phốc sóc</strong></li>
<li><strong>Màu sắc: Trắng</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Chó Pomeranian đáng được được biết đến nhờ sở hữu thân hình bông xù.. Đây là một giống chó phốc sóc thuần chủng nhỏ nổi tiếng có nguồn gốc từ châu Âu. Chó Pomeranian còn được gọi là Phốc Sóc hay Pom. Giống chó này có ngoại hình xinh xắn, nhỏ nhắn dễ thương với bộ lông quý tộc, rất dày, dài và mượt.Hiện nay, giống chó này đang được yêu thích và nuôi phổ biến ở Việt Nam. "', 1, 3, N'../ASSETS/IMG/z2400066732536_e71e8152dee25a4e5783459a0e5014d2.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (50, N'Chó Pomeranian Vàng', 50000000, N'<ul>
<li><strong>Giống chó: Phốc sóc</strong></li>
<li><strong>Màu sắc: vàng</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Chó Pomeranian đáng được được biết đến nhờ sở hữu thân hình bông xù.. Đây là một giống chó phốc sóc thuần chủng nhỏ nổi tiếng có nguồn gốc từ châu Âu. Chó Pomeranian còn được gọi là Phốc Sóc hay Pom. Giống chó này có ngoại hình xinh xắn, nhỏ nhắn dễ thương với bộ lông quý tộc, rất dày, dài và mượt."', 1, 3, N'../ASSETS/IMG/z2400066029821_00881d07aa1b17491315fa222e767637.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (51, N'Chó Pomeranian Party', 45000000, N'<ul>
<li><strong>Giống chó: Phốc sóc</strong></li>
<li><strong>Màu sắc: Party</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"hó Pomeranian thuần chủng (Pom đáng yêu) hay còn gọi là Phốc Sóc thuần chủng có nguồn gốc từ loài Spitz cổ. Cái tên Pomeranian được lấy từ một địa danh cùng tên thuộc vùng Trung Âu, tức miền Tây Bắc Ba Lan và Đông Bắc Đức ngày nay.Ngày xưa giống chó Pom sở hữu vóc dáng to hơn với cân nặng lên đến 13kg. Và được giao nhiệm vụ chính là chăn cừu, giống như người anh em Corgi. Vào khoảng năm 1988, Nữ Hoàng Victoria là người đầu tiên nhân giống loài chó này với kích cỡ nhỏ hơn. Từ đó, chúng đã dần phổ biến hơn ở nước Anh."', 1, 3, N'../ASSETS/IMG/pom-pet-store.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (52, N'Chó Pomeranian Trắng Ú NU', 85000000, N'<ul>
<li><strong>Giống chó: Phốc sóc</strong></li>
<li><strong>Màu sắc: trắng</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Chó Pomeranian đáng được được biết đến nhờ sở hữu thân hình bông xù.. Đây là một giống chó phốc sóc thuần chủng nhỏ nổi tiếng có nguồn gốc từ châu Âu. Chó Pomeranian còn được gọi là Phốc Sóc hay Pom. Giống chó này có ngoại hình xinh xắn, nhỏ nhắn dễ thương với bộ lông quý tộc, rất dày, dài và mượt."', 1, 3, N'../ASSETS/IMG/PETWEB-POM02.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (53, N'Chó Pomeranian Blacktan Chân Ngắn', 15000000, N'<ul>
<li><strong>Giống chó: Phốc sóc</strong></li>
<li><strong>Màu sắc:Blacktan</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Chó Pomeranian đáng được được biết đến nhờ sở hữu thân hình bông xù.. Đây là một giống chó phốc sóc thuần chủng nhỏ nổi tiếng có nguồn gốc từ châu Âu. Chó Pomeranian còn được gọi là Phốc Sóc hay Pom. Giống chó này có ngoại hình xinh xắn, nhỏ nhắn dễ thương với bộ lông quý tộc, rất dày, dài và mượt."', 1, 3, N'../ASSETS/IMG/z2335134382281_b037c220ff7e2729b5c5c3ae39908c94.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (54, N'Bé Chó Pomeranian Trắng ngây ngô', 750000, N'<ul>
<li><strong>Giống chó: Phốc sóc</strong></li>
<li><strong>Màu sắc:Trắng</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Đánh giá (0)
Chó Pomeranian đáng được được biết đến nhờ sở hữu thân hình bông xù.. Đây là một giống chó phốc sóc thuần chủng nhỏ nổi tiếng có nguồn gốc từ châu Âu. Chó Pomeranian còn được gọi là Phốc Sóc hay Pom. Giống chó này có ngoại hình xinh xắn, nhỏ nhắn dễ thương với bộ lông quý tộc, rất dày, dài và mượt."', 1, 3, N'../ASSETS/IMG/PETWEB-POM02 (1).jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (56, N'Cặp đôi phốc cute', 90000000, N'<ul>
<li><strong>Giống chó: Phốc sóc</strong></li>
<li><strong>Màu sắc:Vàng</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Chó Pomeranian đáng được được biết đến nhờ sở hữu thân hình bông xù.. Đây là một giống chó phốc sóc thuần chủng nhỏ nổi tiếng có nguồn gốc từ châu Âu. Chó Pomeranian còn được gọi là Phốc Sóc hay Pom. Giống chó này có ngoại hình xinh xắn, nhỏ nhắn dễ thương với bộ lông quý tộc, rất dày, dài và mượt."', 1, 3, N'../ASSETS/IMG/STOP9686-scaled.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (57, N'2 BÉ PHỐC SÓC BÉ XÍU XIU', 9500000, N'<ul>
<li><strong>Giống chó: Phốc sóc</strong></li>
<li><strong>Màu sắc:Trắng</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"hó Pomeranian thuần chủng (Pom đáng yêu) hay còn gọi là Phốc Sóc thuần chủng có nguồn gốc từ loài Spitz cổ. Cái tên Pomeranian được lấy từ một địa danh cùng tên thuộc vùng Trung Âu, tức miền Tây Bắc Ba Lan và Đông Bắc Đức ngày nay."', 1, 3, N'../ASSETS/IMG/z2320133717300_5f85d6b5303c1113332664a5dd1e64e5-768x1024.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (58, N'PHỐC SÓC BÉ CƯNG', 15000000, N'<ul>
<li><strong>Giống chó: Phốc sóc</strong></li>
<li><strong>Màu sắc:Vàng và Trắng</strong></li>
<li><strong>Độ tuổi: 2 tháng 15 ngày</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Chó Pomeranian đáng được được biết đến nhờ sở hữu thân hình bông xù.. Đây là một giống chó phốc sóc thuần chủng nhỏ nổi tiếng có nguồn gốc từ châu Âu. Chó Pomeranian còn được gọi là Phốc Sóc hay Pom. Giống chó này có ngoại hình xinh xắn, nhỏ nhắn dễ thương với bộ lông quý tộc, rất dày, dài và mượt.

"', 1, 3, N'../ASSETS/IMG/117877160_1747339792080764_3409852248290448858_o-768x1024.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (59, N'Chó Bull Pháp Trắng', 35000000, N'<ul>
<li><strong>Giống chó: Bull French</strong></li>
<li><strong>Màu sắc: Trắng</strong></li>
<li><strong>Độ tuổi: 3 tháng</strong></li>
<li><strong>Nguồn gốc: Pháp</strong></li>
</ul>', N'"Chó Bull Pháp nổi tiếng với ngoại hình đáng yêu, dễ thương cùng sự lanh lợi, hoạt bát. Nếu lần đầu tiếp xúc với bé, bạn sẽ hơi e ngại vì vẻ bề ngoài khá xù xì nhưng thực chất, Bull Pháp cực thân thiện và gần gũi.Chúng có kích thước khá nhỏ nhắn, nặng tầm 10 đến 14kg và cao khoảng 30cm đến 40cm. Nhìn bề ngoài, các bé cún trông khá chắc chắn, gọn gàng và cứng cáp. Giống này có đôi tai thẳng đứng và khá to. Vầng trán tròn, mõm phẳng, mũi hơi tẹt một chút và hếch lên. Bạn boss này có bộ da mềm mại, rất dễ chịu khi ôm vuốt ve và vui chơi. Giống Bulldog có tuổi thọ trung bình từ 10 đến 12 năm, một khoảng thời gian khá dài.

Một số lưu ý bạn cần nên biết về chó Bull: do cấu tạo cơ thể và thể trạng nên Bull Pháp không biết bơi. Do đó bạn nên cẩn thận khi đưa các bé đến nơi có hồ, bể bơi, sông… Giống này cũng rất thích không khí mát mẻ, không nên để chúng ở nơi quá nóng hoặc quá lạnh. Khi trời nóng sẽ bị nhức đầu, còn khi trời lạnh thì dễ bị cảm."', 1, 4, N'../ASSETS/IMG/4-3.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (60, N'Bull Pháp Vàng', 45000000, N'<ul>
<li><strong>Giống chó: Bull French</strong></li>
<li><strong>Màu sắc: Vàng</strong></li>
<li><strong>Độ tuổi: 5 tháng</strong></li>
<li><strong>Nguồn gốc: Pháp</strong></li>
</ul>', N'"Chó Bull Pháp nổi tiếng với ngoại hình đáng yêu, dễ thương cùng sự lanh lợi, hoạt bát. Nếu lần đầu tiếp xúc với bé, bạn sẽ hơi e ngại vì vẻ bề ngoài khá xù xì nhưng thực chất, Bull Pháp cực thân thiện và gần gũi.Chúng có kích thước khá nhỏ nhắn, nặng tầm 10 đến 14kg và cao khoảng 30cm đến 40cm. Nhìn bề ngoài, các bé cún trông khá chắc chắn, gọn gàng và cứng cáp. Giống này có đôi tai thẳng đứng và khá to. Vầng trán tròn, mõm phẳng, mũi hơi tẹt một chút và hếch lên. Bạn boss này có bộ da mềm mại, rất dễ chịu khi ôm vuốt ve và vui chơi. Giống Bulldog có tuổi thọ trung bình từ 10 đến 12 năm, một khoảng thời gian khá dài.

Một số lưu ý bạn cần nên biết về chó Bull: do cấu tạo cơ thể và thể trạng nên Bull Pháp không biết bơi. Do đó bạn nên cẩn thận khi đưa các bé đến nơi có hồ, bể bơi, sông… Giống này cũng rất thích không khí mát mẻ, không nên để chúng ở nơi quá nóng hoặc quá lạnh. Khi trời nóng sẽ bị nhức đầu, còn khi trời lạnh thì dễ bị cảm."', 1, 4, N'../ASSETS/IMG/7.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (61, N'Bull Pháp Bó Sữa', 17000000, N'<ul>
<li><strong>Giống chó: Bull French</strong></li>
<li><strong>Màu sắc: Trắng và đen</strong></li>
<li><strong>Độ tuổi: 4 tháng</strong></li>
<li><strong>Nguồn gốc: Pháp</strong></li>
</ul>', N'"Chó Bull Pháp nổi tiếng với ngoại hình đáng yêu, dễ thương cùng sự lanh lợi, hoạt bát. Nếu lần đầu tiếp xúc với bé, bạn sẽ hơi e ngại vì vẻ bề ngoài khá xù xì nhưng thực chất, Bull Pháp cực thân thiện và gần gũi.Chúng có kích thước khá nhỏ nhắn, nặng tầm 10 đến 14kg và cao khoảng 30cm đến 40cm. Nhìn bề ngoài, các bé cún trông khá chắc chắn, gọn gàng và cứng cáp. Giống này có đôi tai thẳng đứng và khá to. Vầng trán tròn, mõm phẳng, mũi hơi tẹt một chút và hếch lên. Bạn boss này có bộ da mềm mại, rất dễ chịu khi ôm vuốt ve và vui chơi. Giống Bulldog có tuổi thọ trung bình từ 10 đến 12 năm, một khoảng thời gian khá dài.

Một số lưu ý bạn cần nên biết về chó Bull: do cấu tạo cơ thể và thể trạng nên Bull Pháp không biết bơi. Do đó bạn nên cẩn thận khi đưa các bé đến nơi có hồ, bể bơi, sông… Giống này cũng rất thích không khí mát mẻ, không nên để chúng ở nơi quá nóng hoặc quá lạnh. Khi trời nóng sẽ bị nhức đầu, còn khi trời lạnh thì dễ bị cảm."', 1, 4, N'../ASSETS/IMG/PETWEB-PULL05-768x768.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (62, N'Chó Bull Pháp Mặt Ngu', 25000000, N'<ul>
<li><strong>Giống chó: Bull French</strong></li>
<li><strong>Màu sắc: Trắng và đen</strong></li>
<li><strong>Độ tuổi: 4 tháng</strong></li>
<li><strong>Nguồn gốc: Pháp</strong></li>
</ul>', N'"Chó Bull Pháp nổi tiếng với ngoại hình đáng yêu, dễ thương cùng sự lanh lợi, hoạt bát. Nếu lần đầu tiếp xúc với bé, bạn sẽ hơi e ngại vì vẻ bề ngoài khá xù xì nhưng thực chất, Bull Pháp cực thân thiện và gần gũi.Chúng có kích thước khá nhỏ nhắn, nặng tầm 10 đến 14kg và cao khoảng 30cm đến 40cm. Nhìn bề ngoài, các bé cún trông khá chắc chắn, gọn gàng và cứng cáp. Giống này có đôi tai thẳng đứng và khá to. Vầng trán tròn, mõm phẳng, mũi hơi tẹt một chút và hếch lên. Bạn boss này có bộ da mềm mại, rất dễ chịu khi ôm vuốt ve và vui chơi. Giống Bulldog có tuổi thọ trung bình từ 10 đến 12 năm, một khoảng thời gian khá dài.

Một số lưu ý bạn cần nên biết về chó Bull: do cấu tạo cơ thể và thể trạng nên Bull Pháp không biết bơi. Do đó bạn nên cẩn thận khi đưa các bé đến nơi có hồ, bể bơi, sông… Giống này cũng rất thích không khí mát mẻ, không nên để chúng ở nơi quá nóng hoặc quá lạnh. Khi trời nóng sẽ bị nhức đầu, còn khi trời lạnh thì dễ bị cảm."', 1, 4, N'../ASSETS/IMG/d1fb300d0f4eea10b35f.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (63, N'Chó Bull Raic', 45000000, N'<ul>
<li><strong>Giống chó: Bull French</strong></li>
<li><strong>Màu sắc: Trắng</strong></li>
<li><strong>Độ tuổi: 4 tháng</strong></li>
<li><strong>Nguồn gốc: Pháp</strong></li>
</ul>', N'"Chó Bull Pháp nổi tiếng với ngoại hình đáng yêu, dễ thương cùng sự lanh lợi, hoạt bát. Nếu lần đầu tiếp xúc với bé, bạn sẽ hơi e ngại vì vẻ bề ngoài khá xù xì nhưng thực chất, Bull Pháp cực thân thiện và gần gũi.Chúng có kích thước khá nhỏ nhắn, nặng tầm 10 đến 14kg và cao khoảng 30cm đến 40cm. Nhìn bề ngoài, các bé cún trông khá chắc chắn, gọn gàng và cứng cáp. Giống này có đôi tai thẳng đứng và khá to. Vầng trán tròn, mõm phẳng, mũi hơi tẹt một chút và hếch lên. Bạn boss này có bộ da mềm mại, rất dễ chịu khi ôm vuốt ve và vui chơi. Giống Bulldog có tuổi thọ trung bình từ 10 đến 12 năm, một khoảng thời gian khá dài.

Một số lưu ý bạn cần nên biết về chó Bull: do cấu tạo cơ thể và thể trạng nên Bull Pháp không biết bơi. Do đó bạn nên cẩn thận khi đưa các bé đến nơi có hồ, bể bơi, sông… Giống này cũng rất thích không khí mát mẻ, không nên để chúng ở nơi quá nóng hoặc quá lạnh. Khi trời nóng sẽ bị nhức đầu, còn khi trời lạnh thì dễ bị cảm.

"', 1, 4, N'../ASSETS/IMG/cho-bulldog-dogily-311219-1.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (64, N'Chó Bull Raham', 8500000, N'<ul>
<li><strong>Giống chó: Bull French</strong></li>
<li><strong>Màu sắc: Trắng và Nâu</strong></li>
<li><strong>Độ tuổi: 4 tháng</strong></li>
<li><strong>Nguồn gốc: Pháp</strong></li>
</ul>', N'"Chó Bull Pháp nổi tiếng với ngoại hình đáng yêu, dễ thương cùng sự lanh lợi, hoạt bát. Nếu lần đầu tiếp xúc với bé, bạn sẽ hơi e ngại vì vẻ bề ngoài khá xù xì nhưng thực chất, Bull Pháp cực thân thiện và gần gũi.Chúng có kích thước khá nhỏ nhắn, nặng tầm 10 đến 14kg và cao khoảng 30cm đến 40cm. Nhìn bề ngoài, các bé cún trông khá chắc chắn, gọn gàng và cứng cáp. Giống này có đôi tai thẳng đứng và khá to. Vầng trán tròn, mõm phẳng, mũi hơi tẹt một chút và hếch lên. Bạn boss này có bộ da mềm mại, rất dễ chịu khi ôm vuốt ve và vui chơi. Giống Bulldog có tuổi thọ trung bình từ 10 đến 12 năm, một khoảng thời gian khá dài.

Một số lưu ý bạn cần nên biết về chó Bull: do cấu tạo cơ thể và thể trạng nên Bull Pháp không biết bơi. Do đó bạn nên cẩn thận khi đưa các bé đến nơi có hồ, bể bơi, sông… Giống này cũng rất thích không khí mát mẻ, không nên để chúng ở nơi quá nóng hoặc quá lạnh. Khi trời nóng sẽ bị nhức đầu, còn khi trời lạnh thì dễ bị cảm."', 1, 4, N'../ASSETS/IMG/cho-bulldog-2-thang-dogily-duc-raham-6.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (66, N'Cặp Bull Pháp trắng, bò sữa – Củ hành, Củ tỏi', 5555555, N'ul>
<li><strong>Giống chó: Bull French</strong></li>
<li><strong>Màu sắc: Trắng và Bò Sữa</strong></li>
<li><strong>Độ tuổi: 4 tháng</strong></li>
<li><strong>Nguồn gốc: Pháp</strong></li>
</ul>', N'"Chó Bull Pháp nổi tiếng với ngoại hình đáng yêu, dễ thương cùng sự lanh lợi, hoạt bát. Nếu lần đầu tiếp xúc với bé, bạn sẽ hơi e ngại vì vẻ bề ngoài khá xù xì nhưng thực chất, Bull Pháp cực thân thiện và gần gũi.Chúng có kích thước khá nhỏ nhắn, nặng tầm 10 đến 14kg và cao khoảng 30cm đến 40cm. Nhìn bề ngoài, các bé cún trông khá chắc chắn, gọn gàng và cứng cáp. Giống này có đôi tai thẳng đứng và khá to. Vầng trán tròn, mõm phẳng, mũi hơi tẹt một chút và hếch lên. Bạn boss này có bộ da mềm mại, rất dễ chịu khi ôm vuốt ve và vui chơi. Giống Bulldog có tuổi thọ trung bình từ 10 đến 12 năm, một khoảng thời gian khá dài.

Một số lưu ý bạn cần nên biết về chó Bull: do cấu tạo cơ thể và thể trạng nên Bull Pháp không biết bơi. Do đó bạn nên cẩn thận khi đưa các bé đến nơi có hồ, bể bơi, sông… Giống này cũng rất thích không khí mát mẻ, không nên để chúng ở nơi quá nóng hoặc quá lạnh. Khi trời nóng sẽ bị nhức đầu, còn khi trời lạnh thì dễ bị cảm."', 1, 4, N'../ASSETS/IMG/3-24.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (67, N'Chó Bull Rejack', 85623559, N'<ul>
<li><strong>Giống chó: Bull French</strong></li>
<li><strong>Màu sắc: Trắng và Nâu</strong></li>
<li><strong>Độ tuổi: 4 tháng</strong></li>
<li><strong>Nguồn gốc: Pháp</strong></li>
</ul>', N'"Chó Bull Pháp nổi tiếng với ngoại hình đáng yêu, dễ thương cùng sự lanh lợi, hoạt bát. Nếu lần đầu tiếp xúc với bé, bạn sẽ hơi e ngại vì vẻ bề ngoài khá xù xì nhưng thực chất, Bull Pháp cực thân thiện và gần gũi.Chúng có kích thước khá nhỏ nhắn, nặng tầm 10 đến 14kg và cao khoảng 30cm đến 40cm. Nhìn bề ngoài, các bé cún trông khá chắc chắn, gọn gàng và cứng cáp. Giống này có đôi tai thẳng đứng và khá to. Vầng trán tròn, mõm phẳng, mũi hơi tẹt một chút và hếch lên. Bạn boss này có bộ da mềm mại, rất dễ chịu khi ôm vuốt ve và vui chơi. Giống Bulldog có tuổi thọ trung bình từ 10 đến 12 năm, một khoảng thời gian khá dài.

Một số lưu ý bạn cần nên biết về chó Bull: do cấu tạo cơ thể và thể trạng nên Bull Pháp không biết bơi. Do đó bạn nên cẩn thận khi đưa các bé đến nơi có hồ, bể bơi, sông… Giống này cũng rất thích không khí mát mẻ, không nên để chúng ở nơi quá nóng hoặc quá lạnh. Khi trời nóng sẽ bị nhức đầu, còn khi trời lạnh thì dễ bị cảm."', 1, 4, N'../ASSETS/IMG/cho-bulldog-2-thang-tuoi-duc-dogily-8-250x300.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (68, N'Chó Bull Pháp màu trắng -Fast', 1200000, N'<ul>
<li><strong>Giống chó: Bull French</strong></li>
<li><strong>Màu sắc: Trắng</strong></li>
<li><strong>Độ tuổi: 4 tháng</strong></li>
<li><strong>Nguồn gốc: Pháp</strong></li>
</ul>', N'"Chó Bull Pháp nổi tiếng với ngoại hình đáng yêu, dễ thương cùng sự lanh lợi, hoạt bát. Nếu lần đầu tiếp xúc với bé, bạn sẽ hơi e ngại vì vẻ bề ngoài khá xù xì nhưng thực chất, Bull Pháp cực thân thiện và gần gũi."', 1, 4, N'../ASSETS/IMG/4-18.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (69, N'Chó Bull American', 1300000, N'<ul>
<li><strong>Giống chó: Bull French</strong></li>
<li><strong>Màu sắc: Nâu</strong></li>
<li><strong>Độ tuổi: 4 tháng</strong></li>
<li><strong>Nguồn gốc: Mỹ</strong></li>
</ul>', N'"Chó Bull Pháp nổi tiếng với ngoại hình đáng yêu, dễ thương cùng sự lanh lợi, hoạt bát. Nếu lần đầu tiếp xúc với bé, bạn sẽ hơi e ngại vì vẻ bề ngoài khá xù xì nhưng thực chất, Bull Pháp cực thân thiện và gần gũi.Chúng có kích thước khá nhỏ nhắn, nặng tầm 10 đến 14kg và cao khoảng 30cm đến 40cm. Nhìn bề ngoài, các bé cún trông khá chắc chắn, gọn gàng và cứng cáp. Giống này có đôi tai thẳng đứng và khá to. Vầng trán tròn, mõm phẳng, mũi hơi tẹt một chút và hếch lên. Bạn boss này có bộ da mềm mại, rất dễ chịu khi ôm vuốt ve và vui chơi. Giống Bulldog có tuổi thọ trung bình từ 10 đến 12 năm, một khoảng thời gian khá dài.

Một số lưu ý bạn cần nên biết về chó Bull: do cấu tạo cơ thể và thể trạng nên Bull Pháp không biết bơi. Do đó bạn nên cẩn thận khi đưa các bé đến nơi có hồ, bể bơi, sông… Giống này cũng rất thích không khí mát mẻ, không nên để chúng ở nơi quá nóng hoặc quá lạnh. Khi trời nóng sẽ bị nhức đầu, còn khi trời lạnh thì dễ bị cảm."', 1, 4, N'../ASSETS/IMG/cho-bully-nau-dogily-logo.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (70, N'Mèo Anh Lông Ngắn', 4500000, N'<ul>
<li><strong>Giống mèo: Anh lông ngắn</strong></li>
<li><strong>Màu sắc:Xám</strong></li>
<li><strong>Độ tuổi: 2 tháng</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Mèo Anh Lông Ngắn hay còn gọi là British Shorthair có nguồn gốc từ Anh và được ưa chuộng rất nhiều trên thế giới. Bởi lẽ chúng có tính cách rất thân thiện, gần gũi và thông minh. "', 1, 5, N'../ASSETS/IMG/z2380711139420_de57320bb96a2d2fbe959213ececb53e-1.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (71, N'Mèo Anh Lông Ngắn Xám', 6500000, N'<ul>
<li><strong>Giống mèo: Anh lông ngắn</strong></li>
<li><strong>Màu mắt : Vàng</strong></li>
<li><strong>Màu sắc:Xám</strong></li>
<li><strong>Độ tuổi: 3 tháng</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>''', N'"Mèo anh lông ngắn (tên Tiếng Anh là British Shorthair Cat), viết tắt là mèo aln. Đây là một bé mèo với phong thái điềm tĩnh, diễm lệ . Đặc biệt, chúng có bộ lông dày và mềm mượt sẽ đốn tim những con sen ngày lần đầu gặp gỡ. Hoàng thượng Anh lông ngắn vô cùng được ưa thích hiện nay.

Để cho ra những chú mèo đáng yêu và thân thiện này, cần lai tạo giữa mèo Anh lông ngắn và giống mèo xám xịt. Mèo Anh lông ngắn thuần chủng chỉ có một vài màu. Tuy nhiên, để có nhiều màu lông khác nhau, cần thực hiện những phép lai khác nhau."', 1, 5, N'../ASSETS/IMG/Mèo-lông-ng?n-7.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (72, N'Mèo Anh Lông Ngắn Tai cụp', 7560000, N'<ul>
<li><strong>Giống mèo: Anh lông ngắn</strong></li>
<li><strong>Đặc điểm : Tai cụp</strong></li>
<li><strong>Màu mắt : Bicolor</strong></li>
<li><strong>Màu sắc:Xám</strong></li>
<li><strong>Độ tuổi: 4 tháng</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Mèo Anh Lông Ngắn hay còn gọi là British Shorthair có nguồn gốc từ Anh và được ưa chuộng rất nhiều trên thế giới. Bởi lẽ chúng có tính cách rất thân thiện, gần gũi và thông minh. "', 1, 5, N'../ASSETS/IMG/3-3.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (73, N'Mèo Anh Lông Dài', 9500000, N'<ul>
<li><strong>Giống mèo: Anh lông dài</strong></li>
<li><strong>Màu sắc:Đỏ nâu</strong></li>
<li><strong>Độ tuổi: 4 tháng</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Mèo anh lông dài (tên Tiếng Anh là British Longhair Cat), viết tắt là mèo ald. Ắc hẳn khi nói đến hai từ lông dài mọi người đều có thể nghĩ ngay đến một bé mào diễm lệ lông dài mềm mượt thướt tha hiện ra trước mắt nhỉ. vâng đó là hình ành đầu quyến rũ mà những loài mèo lông dài mang lại dốn bao con tim ánh mắt người nhìn.

Mèo anh lông dài bắt nguồn từ sự lai giống giữa mèo Anh lông ngắn và mèo lông dài (chẳng hạn mèo ba tư truyền thống). Mục đích ban đầu của sự kết hợp này là tạo thêm giống mèo mập, mặt tròn dễ thương. Thế nhưng kết quả lại tạo ra những chú mèo con lông dài."', 1, 5, N'../ASSETS/IMG/z2400583582922_53802e7507c0551d0a16936580e74860.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (76, N'Mèo Anh Lông Dài Bicolor', 2000000, N'<ul>
<li><strong>Giống mèo: Anh lông dài</strong></li>
<li><strong>Màu sắc:Bicolor</strong></li>
<li><strong>Độ tuổi: 4 tháng</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Mèo anh lông dài (tên Tiếng Anh là British Longhair Cat), viết tắt là mèo ald.

Bắt nguồn từ sự lai giống giữa mèo anh lông ngắn và mèo lông dài (chẳng hạn mèo ba tư truyền thống). Mục đích ban đầu của là sự kết hợp này là tạo thêm giống mèo mập, mặt tròn dễ thương. Thế nhưng kết quả lại tạo ra những chú mèo con lông dài."', 1, 5, N'../ASSETS/IMG/Mèo-bicolor.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (77, N' Mèo Scottish Silver', 4500000, N'<ul>
<li><strong>Giống mèo:Scottish </strong></li>
<li><strong>Màu sắc:Silver</strong></li>
<li><strong>Độ tuổi: 4 tháng</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>', N'"Nếu là một người yêu thú cưng hẳn bạn sẽ ít nhất một lần nghe tên mèo Scottish Silver. Đến từ nước Anh xa xôi, những bé mèo Silver nhanh chóng chiếm được cảm tình của mọi người vì vẻ ngoài đáng yêu, có phần bụ bẫm. Vì vậy những thông tin về mèo Silver giá bao nhiêu và nơi mua mèo uy tín, chất lượng đang nhận được sự quan tâm lớn từ những người yêu mèo.Một trong những điều tạo nên sức hút của các bé mèo Scottish Silver chính là vẻ ngoài vừa có phần ngốc nghếch lại cực kỳ đáng yêu của chúng. Người ta thường ví mèo Scottish Silver như những cục bông di động bởi các bé nhìn khá múp và có một bộ lông rất dày và mềm mại.

Đặc biệt, điểm thu hút nhất chính là ở đôi mắt to, sáng như những vì sao lấp lánh trên bầu trời. Đôi mắt ấy cùng với dáng vẻ khi di chuyển khiến các bé trông khá ngốc nghếch. Tuy nhiên sự ngốc nghếch ấy lại càng khiến mọi người cảm thấy những bé cưng này lại đáng yêu hơn.

Mèo Silver Shaded Scottish là một dòng thuộc giống mèo anh lông ngắn Silver. Khi nhắc đến mèo Scottish, đa phần mọi người thường nghĩ rằng các bé có màu xám hoặc vàng. Vậy nên những bé mèo màu bạc khi xuất hiện đã gây bão không hề nhỏ đối với những người yêu mèo. Đó là lý do vì sao việc mua những bé Silver Scottish đang rất được quan tâm hiện nay."', 1, 5, N'../ASSETS/IMG/meo-scottish-fold-tai-cup-tabby-petsily-311219-1.jpg')
INSERT [dbo].[Products] ([id], [name], [price], [overview], [description], [inStock], [cid], [thumbnail]) VALUES (78, N'Mèo  Scottish Fold ', 5600000, N'<ul>
<li><strong>Giống mèo:Scottish </strong></li>
<li><strong>Màu sắc:Xám xanh</strong></li>
<li><strong>Độ tuổi: 4 tháng</strong></li>
<li><strong>Nguồn gốc: Thái Lan</strong></li>
</ul>''', N'"Một chú Scottish Fold trưởng thành có một ngoại hình khá tròn trịa và ngộ nghĩnh. Chiều dài thân thường nhỉnh hơn khá nhiều so với chiều cao. Đầu của giống Socttish Fold cũng giống như mèo Aln rất tròn trịa, với đôi mắt to tròn nhìn cực kỳ đáng yêu.

Scottish Fold có các màu phổ biến như đen, trắng,  xám xanh, xám đen, tabby, bicolor, lilac, silver, golden, tam thể… Không phải mọi em Scottish Fold đều tai cụp cả. Vẫn có nhiều bé Scottish có đôi tay thẳng. Cả lông dài và lông ngắn đều được chấp nhận.

Đuôi dài và bông xù nhìn rất đẹp trông như cây phất trần thu nhỏ vậy. Trọng lượng Scottish Fold dao động từ 3,5 trới 6,9 kg tùy từng con và điều kiện chăm sóc."', 1, 5, N'../ASSETS/IMG/meo-tai-cup-xam-xanh-duc-dogily-petshop-6.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Shipment] ON 

INSERT [dbo].[Shipment] ([id], [name]) VALUES (1, N'Viettel Post')
INSERT [dbo].[Shipment] ([id], [name]) VALUES (2, N'VNPost')
INSERT [dbo].[Shipment] ([id], [name]) VALUES (3, N'Giao Hàng Nhanh')
INSERT [dbo].[Shipment] ([id], [name]) VALUES (4, N'Giao Hàng Tiết Kiệm')
INSERT [dbo].[Shipment] ([id], [name]) VALUES (5, N'Ninja Van')
INSERT [dbo].[Shipment] ([id], [name]) VALUES (6, N'Best Express')
INSERT [dbo].[Shipment] ([id], [name]) VALUES (7, N'FedEx')
SET IDENTITY_INSERT [dbo].[Shipment] OFF
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([oid])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([oid])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([shipid])
REFERENCES [dbo].[Shipment] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([shipid])
REFERENCES [dbo].[Shipment] ([id])
GO
ALTER TABLE [dbo].[Product_Images]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Product_Images]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Product_Categories] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Product_Categories] ([id])
GO
