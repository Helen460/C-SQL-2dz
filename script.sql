USE [master]
GO
/****** Object:  Database [Product]    Script Date: 06.03.2025 21:22:28 ******/
CREATE DATABASE [Product]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Product', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Product.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Product_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Product_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Product] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Product].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Product] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Product] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Product] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Product] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Product] SET ARITHABORT OFF 
GO
ALTER DATABASE [Product] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Product] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Product] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Product] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Product] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Product] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Product] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Product] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Product] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Product] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Product] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Product] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Product] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Product] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Product] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Product] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Product] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Product] SET RECOVERY FULL 
GO
ALTER DATABASE [Product] SET  MULTI_USER 
GO
ALTER DATABASE [Product] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Product] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Product] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Product] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Product] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Product] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Product', N'ON'
GO
ALTER DATABASE [Product] SET QUERY_STORE = ON
GO
ALTER DATABASE [Product] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Product]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 06.03.2025 21:22:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,2) NOT NULL,
	[name] [nvarchar](50) NULL,
	[category] [nvarchar](50) NULL,
	[price] [float] NULL,
	[discount] [float] NULL,
	[quantity] [int] NULL,
	[measurement] [nvarchar](50) NULL,
	[producer] [nvarchar](50) NULL,
	[counry] [nvarchar](50) NULL,
	[supplier] [nvarchar](50) NULL,
	[date_of_delivery] [date] NULL,
	[expire_date] [date] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (1, N'apple', N'fruits', 20, 0, 100, N'kilograms', N'Sun Farms', N'Ukraine', N'Ukraine', CAST(N'2025-03-09' AS Date), CAST(N'2025-04-07' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (3, N'milk', N'dairy products', 30, 0, 45, N'pieces', N'Gold Dairy', N'Poland', N'Slovakia', CAST(N'2025-03-10' AS Date), CAST(N'2025-05-10' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (5, N'сheese', N'dairy products', 80, 0, 50, N'pieces', N'Gold Dairy', N'Poland', N'Slovakia', CAST(N'2025-03-10' AS Date), CAST(N'2025-05-10' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (7, N'butter', N'dairy products', 85, 0, 45, N'pieces', N'Gold Dairy', N'Poland', N'Slovakia', CAST(N'2025-03-10' AS Date), CAST(N'2025-05-10' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (9, N'plum', N'fruits', 40, 10, 55, N'kilograms', N'Sun Farms', N'Ukraine', N'Ukraine', CAST(N'2025-03-09' AS Date), CAST(N'2025-04-07' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (11, N'orange', N'fruits', 50.5, 10, 10, N'kilograms', N'Sun Farms', N'Ukraine', N'Ukraine', CAST(N'2025-03-09' AS Date), CAST(N'2025-04-07' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (13, N'tomato', N'vegetables', 56.7, 20, 15, N'kilograms', N'Fresh Fields', N'USA', N'Canada', CAST(N'2025-03-11' AS Date), CAST(N'2025-04-15' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (15, N'carrot', N'vegetables', 30.3, 0, 65, N'kilograms', N'Fresh Fields', N'USA', N'Canada', CAST(N'2025-03-11' AS Date), CAST(N'2025-04-15' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (17, N'potato', N'vegetables', 43.1, 40, 33, N'kilograms', N'Fresh Fields', N'USA', N'Canada', CAST(N'2025-03-11' AS Date), CAST(N'2025-04-15' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (19, N'banana', N'fruits', 55.7, 0, 22, N'kilograms', N'Sun Farms', N'Ukraine', N'Ukraine', CAST(N'2025-03-09' AS Date), CAST(N'2025-04-07' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (21, N'yogurt', N'dairy products', 67.9, 50, 56, N'pieces', N'Gold Dairy', N'Poland', N'Slovakia', CAST(N'2025-03-10' AS Date), CAST(N'2025-05-10' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (23, N'сupcake', N'sweets', 50, 0, 76, N'packs', N'Candy shop', N'England', N'Scotland', CAST(N'2025-03-12' AS Date), CAST(N'2025-04-14' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (25, N'chocolate', N'sweets', 89, 30, 80, N'packs', N'Candy shop', N'England', N'Scotland', CAST(N'2025-03-12' AS Date), CAST(N'2025-04-14' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (27, N'candy', N'sweets', 67.5, 20, 70, N'packs', N'Candy shop', N'England', N'Scotland', CAST(N'2025-03-12' AS Date), CAST(N'2025-04-14' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (29, N'granola', N'sweets', 33.7, 10, 90, N'packs', N'Candy shop', N'England', N'Scotland', CAST(N'2025-03-12' AS Date), CAST(N'2025-04-14' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (31, N'juice', N'drinks', 80, 0, 40, N'packs', N'Drinks Co', N'France', N'Belgium', CAST(N'2025-03-13' AS Date), CAST(N'2025-06-13' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (33, N'tea', N'drinks', 20, 0, 32, N'packs', N'Drinks Co', N'France', N'Belgium', CAST(N'2025-03-13' AS Date), CAST(N'2025-06-13' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (35, N'coffee', N'drinks', 25, 0, 35, N'packs', N'Drinks Co', N'France', N'Belgium', CAST(N'2025-03-13' AS Date), CAST(N'2025-06-13' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (37, N'water', N'drinks', 15, 0, 44, N'pieces', N'Drinks Co', N'France', N'Belgium', CAST(N'2025-03-13' AS Date), CAST(N'2025-06-13' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (39, N'cider', N'drinks', 100, 15, 12, N'pieces', N'Drinks Co', N'France', N'Belgium', CAST(N'2025-03-13' AS Date), CAST(N'2025-06-13' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (41, N'ice cream', N'sweets', 40, 0, 90, N'pieces', N'Candy shop', N'England', N'Scotland', CAST(N'2025-03-12' AS Date), CAST(N'2025-04-14' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (43, N'mango', N'fruits', 200, 0, 15, N'kilograms', N'Sun Farms', N'Ukraine', N'Ukraine', CAST(N'2025-03-09' AS Date), CAST(N'2025-04-07' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (45, N'pineapple', N'fruits', 120, 0, 15, N'kilograms', N'Sun Farms', N'Ukraine', N'Ukraine', CAST(N'2025-03-09' AS Date), CAST(N'2025-04-07' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (47, N'pear', N'fruits', 185.5, 0, 35, N'kilograms', N'Sun Farms', N'Ukraine', N'Ukraine', CAST(N'2025-03-09' AS Date), CAST(N'2025-04-07' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (49, N'cucumber', N'vegetables', 108.8, 30, 25, N'kilograms', N'Fresh Fields', N'USA', N'Canada', CAST(N'2025-03-11' AS Date), CAST(N'2025-04-15' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (51, N'onion', N'vegetables', 22.9, 0, 21, N'kilograms', N'Fresh Fields', N'USA', N'Canada', CAST(N'2025-03-11' AS Date), CAST(N'2025-04-15' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (53, N'pepper', N'vegetables', 73.5, 0, 30, N'kilograms', N'Fresh Fields', N'USA', N'Canada', CAST(N'2025-03-11' AS Date), CAST(N'2025-04-15' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (55, N'cake', N'sweets', 48.2, 0, 53, N'pieces', N'Candy shop', N'England', N'Scotland', CAST(N'2025-03-12' AS Date), CAST(N'2025-04-14' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (57, N'lollipop', N'sweets', 32.9, 20, 91, N'packs', N'Candy shop', N'England', N'Scotland', CAST(N'2025-03-12' AS Date), CAST(N'2025-04-14' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (59, N'marshmallows', N'sweets', 65.9, 0, 89, N'packs', N'Candy shop', N'England', N'Scotland', CAST(N'2025-03-12' AS Date), CAST(N'2025-04-14' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (61, N'pie', N'sweets', 88.8, 0, 78, N'packs', N'Candy shop', N'England', N'Scotland', CAST(N'2025-03-12' AS Date), CAST(N'2025-04-14' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (63, N'lemonade', N'drinks', 55.5, 0, 67, N'pieces', N'Drinks Co', N'France', N'Belgium', CAST(N'2025-03-13' AS Date), CAST(N'2025-06-13' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (65, N'milkshake', N'drinks', 25.5, 0, 18, N'pieces', N'Drinks Co', N'France', N'Belgium', CAST(N'2025-03-13' AS Date), CAST(N'2025-06-13' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (67, N'soda', N'drinks', 40, 30, 93, N'pieces', N'Drinks Co', N'France', N'Belgium', CAST(N'2025-03-13' AS Date), CAST(N'2025-06-13' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (69, N'wine', N'drinks', 200, 20, 17, N'pieces', N'Drinks Co', N'France', N'Belgium', CAST(N'2025-03-13' AS Date), CAST(N'2025-06-13' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (71, N'cabbage', N'vegetables', 34.7, 0, 55, N'kilograms', N'Fresh Fields', N'USA', N'Canada', CAST(N'2025-03-11' AS Date), CAST(N'2025-04-15' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (73, N'garlic', N'vegetables', 21.8, 0, 4, N'kilograms', N'Fresh Fields', N'USA', N'Canada', CAST(N'2025-03-11' AS Date), CAST(N'2025-04-15' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (75, N'cream', N'dairy products', 43.9, 0, 34, N'packs', N'Gold Dairy', N'Poland', N'Slovakia', CAST(N'2025-03-10' AS Date), CAST(N'2025-05-10' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (77, N'strawberry', N'fruits', 91.6, 0, 10, N'kilograms', N'Sun Farms', N'Ukraine', N'Ukraine', CAST(N'2025-03-09' AS Date), CAST(N'2025-04-07' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (79, N'salmon', N'fish', 87.8, 15, 12, N'kilograms', N'Fish Co', N'Latvia', N'Lithuania', CAST(N'2025-03-14' AS Date), CAST(N'2025-04-19' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (81, N'tuna', N'fish', 105, 10, 26, N'kilograms', N'Fish Co', N'Latvia', N'Lithuania', CAST(N'2025-03-14' AS Date), CAST(N'2025-04-19' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (83, N'shrimp', N'fish', 350.8, 0, 28, N'kilograms', N'Fish Co', N'Latvia', N'Lithuania', CAST(N'2025-03-14' AS Date), CAST(N'2025-04-19' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (85, N'beef', N'meat', 225.5, 0, 42, N'kilograms', N'Meat Co', N'Germany', N'Czech Republic', CAST(N'2025-03-15' AS Date), CAST(N'2025-05-22' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (87, N'chicken', N'meat', 81, 0, 76, N'kilograms', N'Meat Co', N'Germany', N'Czech Republic', CAST(N'2025-03-15' AS Date), CAST(N'2025-05-22' AS Date))
INSERT [dbo].[Products] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [counry], [supplier], [date_of_delivery], [expire_date]) VALUES (89, N'pork', N'meat', 100, 0, 40, N'kilograms', N'Meat Co', N'Germany', N'Czech Republic', CAST(N'2025-03-15' AS Date), CAST(N'2025-05-22' AS Date))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
USE [master]
GO
ALTER DATABASE [Product] SET  READ_WRITE 
GO
