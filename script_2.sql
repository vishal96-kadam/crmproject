USE [master]
GO
/****** Object:  Database [CRM]    Script Date: 22-06-2020 16:45:37 ******/
CREATE DATABASE [CRM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CRM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CRM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CRM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CRM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CRM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CRM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CRM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CRM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CRM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CRM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CRM] SET ARITHABORT OFF 
GO
ALTER DATABASE [CRM] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CRM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CRM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CRM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CRM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CRM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CRM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CRM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CRM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CRM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CRM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CRM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CRM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CRM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CRM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CRM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CRM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CRM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CRM] SET  MULTI_USER 
GO
ALTER DATABASE [CRM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CRM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CRM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CRM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CRM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CRM] SET QUERY_STORE = OFF
GO
USE [CRM]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 22-06-2020 16:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[City] [varchar](25) NULL,
	[PhoneNumber] [varchar](15) NULL,
	[Address] [varchar](100) NULL,
	[DOB] [varchar](25) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 22-06-2020 16:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CID] [int] NULL,
	[Products] [varchar](25) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 22-06-2020 16:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Productid] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](25) NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [Name], [City], [PhoneNumber], [Address], [DOB]) VALUES (1, N'tejas', N'navi mumbai', N'12334', N'kk', N'21')
INSERT [dbo].[Client] ([ID], [Name], [City], [PhoneNumber], [Address], [DOB]) VALUES (2, N'abc', N'xyz', N'asdf', N'asdf', N'21/04/1997')
INSERT [dbo].[Client] ([ID], [Name], [City], [PhoneNumber], [Address], [DOB]) VALUES (3, N'vishal', N'asda', N'daskjdsd', N'daskjdsd', N'21/04/1997')
INSERT [dbo].[Client] ([ID], [Name], [City], [PhoneNumber], [Address], [DOB]) VALUES (4, N'SHRADDHA PATIL', N'Thane', N'SEC 12 301 PRAB', N'SEC 12 301 PRABHADHINI APT OPP  BANK OF MAHARASHTRA KOPERKHAIRANE 400709', N'22-03-1995')
INSERT [dbo].[Client] ([ID], [Name], [City], [PhoneNumber], [Address], [DOB]) VALUES (5, N'SHRADDHA PATIL', N'Thane', N'09653334983', N'SEC 12 301 PRABHADHINI APT OPP  BANK OF MAHARASHTRA KOPERKHAIRANE 400709', N'22-03-1995')
INSERT [dbo].[Client] ([ID], [Name], [City], [PhoneNumber], [Address], [DOB]) VALUES (6, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Client] ([ID], [Name], [City], [PhoneNumber], [Address], [DOB]) VALUES (7, N'33', N'navi mumbai', N'123456', N'vjy', N'2020-06-09')
INSERT [dbo].[Client] ([ID], [Name], [City], [PhoneNumber], [Address], [DOB]) VALUES (8, N'test', N'testing', N'678', N'test', N'2020-06-26')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (1, 1, N'2')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (2, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (3, 1, N'2')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (4, 5, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (5, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (6, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (7, 1, N'12224')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (8, 1, N'1788')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (9, 1, N'1788')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (10, 1, N'1678')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (11, 1, N'1678')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (12, 1, N'765')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (13, 1, N'12121')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (14, 2, N'11')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (15, 2, N'1111')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (16, 1, N'11221')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (17, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (18, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (19, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (20, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (21, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (22, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (23, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (24, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (25, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (26, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (27, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (28, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (29, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (30, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (31, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (32, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (33, 1, N'1')
INSERT [dbo].[Product] ([ID], [CID], [Products]) VALUES (34, 5, N'1')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Productid], [ProductName], [Price]) VALUES (1, N'Sanitizer', 100)
INSERT [dbo].[Products] ([Productid], [ProductName], [Price]) VALUES (2, N'Mask', 50)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
/****** Object:  StoredProcedure [dbo].[spAddClient]    Script Date: 22-06-2020 16:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spAddClient]         
(        
    @name VARCHAR(20),         
    @city VARCHAR(20),        
    @phoneNumber VARCHAR(15),        
    @address VARCHAR(100),
	@dob varchar(25)
)        
as         
Begin         
    Insert into Client (Name,City,PhoneNumber, Address,DOB)         
    Values (@Name,@city,@phoneNumber, @address,@dob)         
End
GO
/****** Object:  StoredProcedure [dbo].[spAddProduct]    Script Date: 22-06-2020 16:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[spAddProduct]         
(        
            
    @CID int,
	@Products varchar(50)
    
)        
as         
Begin         
    Insert into Product(CID,Products) Values(@CID,@Products)      
End
GO
/****** Object:  StoredProcedure [dbo].[spEditClientDetails]    Script Date: 22-06-2020 16:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spEditClientDetails]      
 (   @ID int,   
    @name VARCHAR(20),         
    @city VARCHAR(20),        
    @phoneNumber VARCHAR(15),        
    @address VARCHAR(100),
	@dob varchar(25)     
 )      
 as      
 begin      
    Update Client      
    set Name=@name,      
    City=@city, 
	PhoneNumber=@phoneNumber,
    Address=@address,
	DOB=@dob
    where ID=@ID;      
 End  
GO
/****** Object:  StoredProcedure [dbo].[spGetbyCid]    Script Date: 22-06-2020 16:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[spGetbyCid] 
@ID int
 as        
 begin
  
  select * from [dbo].[Product] p,[dbo].[Products] ps where p.CID=@ID and ps.Productid=p.Products
  
 End     
GO
/****** Object:  StoredProcedure [dbo].[spGetbyidClients]    Script Date: 22-06-2020 16:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[spGetbyidClients] 
@ID int
 as        
 begin
  select c.*,p.* from Client c,  Products p where c.ID=@ID
 End     
GO
/****** Object:  StoredProcedure [dbo].[spGetClients]    Script Date: 22-06-2020 16:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[spGetClients]        
 as        
 begin        
    select ID,Name,City, PhoneNumber,Address, DOB from Client      
 End     
GO
USE [master]
GO
ALTER DATABASE [CRM] SET  READ_WRITE 
GO
