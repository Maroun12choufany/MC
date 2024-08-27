
USE [simpledb]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](100) NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[Address] [nvarchar](200) NULL,
	[City] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[Industry] [nvarchar](100) NULL,
	[AnnualRevenue] [decimal](15, 2) NULL,
	[Website] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contracts]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contracts](
	[ContractID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NULL,
	[ContractDate] [date] NULL,
	[ExpiryDate] [date] NULL,
	[ContractValue] [decimal](15, 2) NULL,
	[Terms] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](100) NULL,
	[ManagerID] [int] NULL,
	[Location] [nvarchar](100) NULL,
	[Budget] [decimal](15, 2) NULL,
	[EstablishedDate] [date] NULL,
	[Description] [nvarchar](500) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[Website] [nvarchar](200) NULL,
	[EmployeeCount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[HireDate] [date] NULL,
	[JobTitle] [nvarchar](100) NULL,
	[Department] [nvarchar](50) NULL,
	[Salary] [decimal](10, 2) NULL,
	[ManagerID] [int] NULL,
	[Address] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[InventoryID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[WarehouseID] [int] NULL,
	[Quantity] [int] NULL,
	[LastRestockDate] [date] NULL,
	[NextRestockDate] [date] NULL,
	[MinimumStockLevel] [int] NULL,
	[MaximumStockLevel] [int] NULL,
	[UnitCost] [decimal](10, 2) NULL,
	[TotalValue] [decimal](15, 2) NULL,
	[Location] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobApplications]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobApplications](
	[ApplicationID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantName] [nvarchar](100) NULL,
	[Position] [nvarchar](50) NULL,
	[ApplicationDate] [date] NULL,
	[Status] [nvarchar](50) NULL,
	[Resume] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobInterviews]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobInterviews](
	[InterviewID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationID] [int] NULL,
	[InterviewDate] [date] NULL,
	[InterviewerID] [int] NULL,
	[Location] [nvarchar](100) NULL,
	[Feedback] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[InterviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[UnitPrice] [decimal](10, 2) NULL,
	[Quantity] [int] NULL,
	[Discount] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NULL,
	[EmployeeID] [int] NULL,
	[OrderDate] [date] NULL,
	[RequiredDate] [date] NULL,
	[ShippedDate] [date] NULL,
	[ShipVia] [nvarchar](50) NULL,
	[Freight] [decimal](10, 2) NULL,
	[ShipName] [nvarchar](100) NULL,
	[ShipAddress] [nvarchar](200) NULL,
	[TotalAmount] [decimal](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[PaymentDate] [date] NULL,
	[PaymentMethod] [nvarchar](50) NULL,
	[Amount] [decimal](15, 2) NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[Category] [nvarchar](50) NULL,
	[UnitPrice] [decimal](10, 2) NULL,
	[UnitsInStock] [int] NULL,
	[ReorderLevel] [int] NULL,
	[Discontinued] [bit] NULL,
	[SupplierID] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[LaunchDate] [date] NULL,
	[Weight] [decimal](8, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectAssignments]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectAssignments](
	[AssignmentID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [int] NULL,
	[EmployeeID] [int] NULL,
	[Role] [nvarchar](50) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[AssignmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](100) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Budget] [decimal](15, 2) NULL,
	[ClientID] [int] NULL,
	[ProjectManager] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[Priority] [nvarchar](20) NULL,
	[Description] [nvarchar](500) NULL,
	[CompletionPercentage] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrderDetails]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrderDetails](
	[PurchaseOrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderID] [int] NULL,
	[ProductID] [int] NULL,
	[UnitPrice] [decimal](10, 2) NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrders]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrders](
	[PurchaseOrderID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NULL,
	[EmployeeID] [int] NULL,
	[OrderDate] [date] NULL,
	[DeliveryDate] [date] NULL,
	[TotalAmount] [decimal](15, 2) NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[CustomerID] [int] NULL,
	[Rating] [int] NULL,
	[Comment] [nvarchar](1000) NULL,
	[ReviewDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](100) NULL,
	[ContactName] [nvarchar](100) NULL,
	[ContactTitle] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[City] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[PaymentTerms] [nvarchar](100) NULL,
	[Rating] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Training]    Script Date: 8/27/2024 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Training](
	[TrainingID] [int] IDENTITY(1,1) NOT NULL,
	[TrainingName] [nvarchar](100) NULL,
	[TrainerID] [int] NULL,
	[TrainingDate] [date] NULL,
	[DurationHours] [int] NULL,
	[Location] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[TrainingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (1, N'TechNova Solutions', N'John Smith', N'john.smith@technova.com', N'555-0001', N'123 Tech Lane', N'San Francisco', N'USA', N'Technology', CAST(10000000.00 AS Decimal(15, 2)), N'www.technova.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (2, N'GreenLeaf Eco Products', N'Emily Brown', N'emily.brown@greenleaf.com', N'555-0002', N'456 Eco Street', N'Portland', N'USA', N'Environmental', CAST(5000000.00 AS Decimal(15, 2)), N'www.greenleaf.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (3, N'Global Finance Corp', N'Michael Johnson', N'michael.johnson@globalfinance.com', N'555-0003', N'789 Money Road', N'New York', N'USA', N'Finance', CAST(50000000.00 AS Decimal(15, 2)), N'www.globalfinance.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (4, N'HealthFirst Medical', N'Sarah Lee', N'sarah.lee@healthfirst.com', N'555-0004', N'321 Care Avenue', N'Boston', N'USA', N'Healthcare', CAST(20000000.00 AS Decimal(15, 2)), N'www.healthfirst.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (5, N'FoodDelight Restaurants', N'David Wilson', N'david.wilson@fooddelight.com', N'555-0005', N'654 Tasty Street', N'Chicago', N'USA', N'Food & Beverage', CAST(15000000.00 AS Decimal(15, 2)), N'www.fooddelight.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (6, N'AutoDrive Motors', N'Jennifer Davis', N'jennifer.davis@autodrive.com', N'555-0006', N'987 Motor Lane', N'Detroit', N'USA', N'Automotive', CAST(30000000.00 AS Decimal(15, 2)), N'www.autodrive.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (7, N'EduSmart Learning', N'Robert Taylor', N'robert.taylor@edusmart.com', N'555-0007', N'159 Knowledge Road', N'Austin', N'USA', N'Education', CAST(8000000.00 AS Decimal(15, 2)), N'www.edusmart.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (8, N'FashionForward Apparel', N'Emma White', N'emma.white@fashionforward.com', N'555-0008', N'753 Style Avenue', N'Los Angeles', N'USA', N'Fashion', CAST(12000000.00 AS Decimal(15, 2)), N'www.fashionforward.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (9, N'ConstructWell Builders', N'Thomas Brown', N'thomas.brown@constructwell.com', N'555-0009', N'951 Builder Street', N'Dallas', N'USA', N'Construction', CAST(25000000.00 AS Decimal(15, 2)), N'www.constructwell.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (10, N'MediaMax Entertainment', N'Olivia Green', N'olivia.green@mediamax.com', N'555-0010', N'357 Entertainment Blvd', N'Nashville', N'USA', N'Media', CAST(18000000.00 AS Decimal(15, 2)), N'www.mediamax.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (11, N'AeroTech Airways', N'William Turner', N'william.turner@aerotech.com', N'555-0011', N'842 Sky Lane', N'Atlanta', N'USA', N'Aviation', CAST(40000000.00 AS Decimal(15, 2)), N'www.aerotech.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (12, N'PharmaPlus Research', N'Sophia Martinez', N'sophia.martinez@pharmaplus.com', N'555-0012', N'246 Research Drive', N'San Diego', N'USA', N'Pharmaceuticals', CAST(60000000.00 AS Decimal(15, 2)), N'www.pharmaplus.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (13, N'EnergyNow Power', N'Daniel Lee', N'daniel.lee@energynow.com', N'555-0013', N'135 Power Road', N'Houston', N'USA', N'Energy', CAST(35000000.00 AS Decimal(15, 2)), N'www.energynow.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (14, N'SportsPro Equipment', N'Ava Clark', N'ava.clark@sportspro.com', N'555-0014', N'791 Athletic Avenue', N'Denver', N'USA', N'Sports', CAST(9000000.00 AS Decimal(15, 2)), N'www.sportspro.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (15, N'TravelJoy Tours', N'James Wilson', N'james.wilson@traveljoy.com', N'555-0015', N'468 Vacation Lane', N'Miami', N'USA', N'Travel & Tourism', CAST(7000000.00 AS Decimal(15, 2)), N'www.traveljoy.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (16, N'DataSafe Security', N'Mia Johnson', N'mia.johnson@datasafe.com', N'555-0016', N'802 Secure Street', N'Seattle', N'USA', N'Cybersecurity', CAST(22000000.00 AS Decimal(15, 2)), N'www.datasafe.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (17, N'EcoFarm Agriculture', N'Benjamin Moore', N'benjamin.moore@ecofarm.com', N'555-0017', N'579 Farm Road', N'Des Moines', N'USA', N'Agriculture', CAST(11000000.00 AS Decimal(15, 2)), N'www.ecofarm.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (18, N'SmartHome Solutions', N'Charlotte Taylor', N'charlotte.taylor@smarthome.com', N'555-0018', N'314 Tech Avenue', N'San Jose', N'USA', N'Smart Home', CAST(13000000.00 AS Decimal(15, 2)), N'www.smarthome.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (19, N'LegalEase Services', N'Elijah Brown', N'elijah.brown@legalease.com', N'555-0019', N'707 Justice Road', N'Washington D.C.', N'USA', N'Legal', CAST(14000000.00 AS Decimal(15, 2)), N'www.legalease.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (20, N'CreativeMind Advertising', N'Amelia Davis', N'amelia.davis@creativemind.com', N'555-0020', N'515 Art Street', N'New York', N'USA', N'Advertising', CAST(16000000.00 AS Decimal(15, 2)), N'www.creativemind.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (21, N'LogiTech Shipping', N'Henry Wilson', N'henry.wilson@logitech.com', N'555-0021', N'626 Logistics Lane', N'Memphis', N'USA', N'Logistics', CAST(19000000.00 AS Decimal(15, 2)), N'www.logitechshipping.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (22, N'CleanWater Solutions', N'Evelyn Martin', N'evelyn.martin@cleanwater.com', N'555-0022', N'438 Pure Street', N'Phoenix', N'USA', N'Water Treatment', CAST(8500000.00 AS Decimal(15, 2)), N'www.cleanwater.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (23, N'RealEstate Plus', N'Alexander Thompson', N'alexander.thompson@realestateplus.com', N'555-0023', N'909 Property Road', N'Las Vegas', N'USA', N'Real Estate', CAST(21000000.00 AS Decimal(15, 2)), N'www.realestateplus.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (24, N'FutureTech Innovations', N'Victoria Garcia', N'victoria.garcia@futuretech.com', N'555-0024', N'212 Innovation Blvd', N'Palo Alto', N'USA', N'Technology', CAST(27000000.00 AS Decimal(15, 2)), N'www.futuretech.com')
GO
INSERT [dbo].[Clients] ([ClientID], [CompanyName], [ContactPerson], [Email], [PhoneNumber], [Address], [City], [Country], [Industry], [AnnualRevenue], [Website]) VALUES (25, N'GreenEnergy Solar', N'Christopher Allen', N'christopher.allen@greenenergy.com', N'555-0025', N'555 Solar Lane', N'Phoenix', N'USA', N'Renewable Energy', CAST(17000000.00 AS Decimal(15, 2)), N'www.greenenergy.com')
GO
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Contracts] ON 
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (1, 1, CAST(N'2024-01-01' AS Date), CAST(N'2025-01-01' AS Date), CAST(100000.00 AS Decimal(15, 2)), N'Annual supply of raw materials at discounted rates.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (2, 2, CAST(N'2024-02-01' AS Date), CAST(N'2025-02-01' AS Date), CAST(150000.00 AS Decimal(15, 2)), N'Quarterly supply of electronic components. Payment due within 30 days.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (3, 3, CAST(N'2024-03-01' AS Date), CAST(N'2025-03-01' AS Date), CAST(200000.00 AS Decimal(15, 2)), N'Yearly maintenance contract for equipment. Includes regular servicing.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (4, 4, CAST(N'2024-04-01' AS Date), CAST(N'2025-04-01' AS Date), CAST(50000.00 AS Decimal(15, 2)), N'Supply of office supplies. Delivery within 7 days of order.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (5, 5, CAST(N'2024-05-01' AS Date), CAST(N'2025-05-01' AS Date), CAST(75000.00 AS Decimal(15, 2)), N'Supply of industrial machinery parts. Includes warranty period.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (6, 6, CAST(N'2024-06-01' AS Date), CAST(N'2025-06-01' AS Date), CAST(90000.00 AS Decimal(15, 2)), N'Annual cleaning services contract. Includes all cleaning materials.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (7, 7, CAST(N'2024-07-01' AS Date), CAST(N'2025-07-01' AS Date), CAST(120000.00 AS Decimal(15, 2)), N'Consulting services for IT infrastructure. Payment due upon delivery.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (8, 8, CAST(N'2024-08-01' AS Date), CAST(N'2025-08-01' AS Date), CAST(110000.00 AS Decimal(15, 2)), N'Yearly subscription for software licenses. Includes technical support.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (9, 9, CAST(N'2024-09-01' AS Date), CAST(N'2025-09-01' AS Date), CAST(130000.00 AS Decimal(15, 2)), N'Supply of packaging materials. Bulk purchase discount included.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (10, 10, CAST(N'2024-10-01' AS Date), CAST(N'2025-10-01' AS Date), CAST(140000.00 AS Decimal(15, 2)), N'Annual contract for security services. Includes on-site security personnel.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (11, 11, CAST(N'2024-11-01' AS Date), CAST(N'2025-11-01' AS Date), CAST(160000.00 AS Decimal(15, 2)), N'Long-term supply of chemicals. Includes regular quality checks.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (12, 12, CAST(N'2024-12-01' AS Date), CAST(N'2025-12-01' AS Date), CAST(180000.00 AS Decimal(15, 2)), N'Contract for specialized training services. Includes on-site training.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (13, 13, CAST(N'2024-01-15' AS Date), CAST(N'2025-01-15' AS Date), CAST(55000.00 AS Decimal(15, 2)), N'Supply of kitchen equipment. Delivery and installation included.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (14, 14, CAST(N'2024-02-15' AS Date), CAST(N'2025-02-15' AS Date), CAST(67000.00 AS Decimal(15, 2)), N'Yearly contract for transportation services. Includes logistics support.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (15, 15, CAST(N'2024-03-15' AS Date), CAST(N'2025-03-15' AS Date), CAST(72000.00 AS Decimal(15, 2)), N'Annual IT support services. Includes hardware and software support.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (16, 16, CAST(N'2024-04-15' AS Date), CAST(N'2025-04-15' AS Date), CAST(80000.00 AS Decimal(15, 2)), N'Supply of promotional materials. Includes design and printing services.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (17, 17, CAST(N'2024-05-15' AS Date), CAST(N'2025-05-15' AS Date), CAST(90000.00 AS Decimal(15, 2)), N'Yearly contract for data storage services. Includes cloud storage and backup.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (18, 18, CAST(N'2024-06-15' AS Date), CAST(N'2025-06-15' AS Date), CAST(85000.00 AS Decimal(15, 2)), N'Annual contract for office maintenance. Includes cleaning and repairs.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (19, 19, CAST(N'2024-07-15' AS Date), CAST(N'2025-07-15' AS Date), CAST(95000.00 AS Decimal(15, 2)), N'Supply of laboratory equipment. Includes installation and calibration.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (20, 20, CAST(N'2024-08-15' AS Date), CAST(N'2025-08-15' AS Date), CAST(100000.00 AS Decimal(15, 2)), N'Consulting contract for market research. Includes detailed reports and analysis.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (21, 21, CAST(N'2024-09-15' AS Date), CAST(N'2025-09-15' AS Date), CAST(115000.00 AS Decimal(15, 2)), N'Annual supply of raw food ingredients. Includes quality assurance checks.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (22, 22, CAST(N'2024-10-15' AS Date), CAST(N'2025-10-15' AS Date), CAST(125000.00 AS Decimal(15, 2)), N'Contract for employee wellness programs. Includes health and fitness workshops.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (23, 23, CAST(N'2024-11-15' AS Date), CAST(N'2025-11-15' AS Date), CAST(135000.00 AS Decimal(15, 2)), N'Long-term contract for research and development services. Includes innovation workshops.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (24, 24, CAST(N'2024-12-15' AS Date), CAST(N'2025-12-15' AS Date), CAST(145000.00 AS Decimal(15, 2)), N'Annual supply of office furniture. Includes assembly and warranty.')
GO
INSERT [dbo].[Contracts] ([ContractID], [SupplierID], [ContractDate], [ExpiryDate], [ContractValue], [Terms]) VALUES (25, 25, CAST(N'2024-01-30' AS Date), CAST(N'2025-01-30' AS Date), CAST(155000.00 AS Decimal(15, 2)), N'Consulting and advisory services for business development. Payment upon completion.')
GO
SET IDENTITY_INSERT [dbo].[Contracts] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (1, N'IT', 5, N'Floor 3, Main Building', CAST(1000000.00 AS Decimal(15, 2)), CAST(N'2010-01-01' AS Date), N'Information Technology Department', N'555-1001', N'it@company.com', N'www.company.com/it', 20)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (2, N'Marketing', 8, N'Floor 2, East Wing', CAST(750000.00 AS Decimal(15, 2)), CAST(N'2010-02-15' AS Date), N'Marketing and Advertising Department', N'555-1002', N'marketing@company.com', N'www.company.com/marketing', 15)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (3, N'Sales', 12, N'Floor 1, West Wing', CAST(900000.00 AS Decimal(15, 2)), CAST(N'2010-03-01' AS Date), N'Sales and Customer Acquisition Department', N'555-1003', N'sales@company.com', N'www.company.com/sales', 25)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (4, N'Human Resources', 4, N'Floor 2, Main Building', CAST(500000.00 AS Decimal(15, 2)), CAST(N'2010-04-15' AS Date), N'Human Resources Management Department', N'555-1004', N'hr@company.com', N'www.company.com/hr', 10)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (5, N'Finance', 15, N'Floor 4, Main Building', CAST(600000.00 AS Decimal(15, 2)), CAST(N'2010-05-01' AS Date), N'Financial Management Department', N'555-1005', N'finance@company.com', N'www.company.com/finance', 12)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (6, N'Product', 7, N'Floor 3, East Wing', CAST(850000.00 AS Decimal(15, 2)), CAST(N'2010-06-15' AS Date), N'Product Development Department', N'555-1006', N'product@company.com', N'www.company.com/product', 18)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (7, N'Customer Service', 18, N'Floor 1, East Wing', CAST(400000.00 AS Decimal(15, 2)), CAST(N'2010-07-01' AS Date), N'Customer Support and Service Department', N'555-1007', N'support@company.com', N'www.company.com/support', 22)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (8, N'Research and Development', NULL, N'Floor 4, West Wing', CAST(1200000.00 AS Decimal(15, 2)), CAST(N'2010-08-15' AS Date), N'Research and Development Department', N'555-1008', N'randd@company.com', N'www.company.com/randd', 15)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (9, N'Legal', NULL, N'Floor 5, Main Building', CAST(450000.00 AS Decimal(15, 2)), CAST(N'2010-09-01' AS Date), N'Legal Affairs Department', N'555-1009', N'legal@company.com', N'www.company.com/legal', 8)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (10, N'Operations', NULL, N'Floor 1, Main Building', CAST(700000.00 AS Decimal(15, 2)), CAST(N'2010-10-15' AS Date), N'Business Operations Department', N'555-1010', N'operations@company.com', N'www.company.com/operations', 20)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (11, N'Quality Assurance', NULL, N'Floor 3, West Wing', CAST(550000.00 AS Decimal(15, 2)), CAST(N'2010-11-01' AS Date), N'Quality Control and Assurance Department', N'555-1011', N'qa@company.com', N'www.company.com/qa', 12)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (12, N'Facilities', NULL, N'Ground Floor, Main Building', CAST(350000.00 AS Decimal(15, 2)), CAST(N'2010-12-15' AS Date), N'Facilities Management Department', N'555-1012', N'facilities@company.com', N'www.company.com/facilities', 10)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (13, N'Public Relations', NULL, N'Floor 2, West Wing', CAST(400000.00 AS Decimal(15, 2)), CAST(N'2011-01-01' AS Date), N'Public Relations and Communications Department', N'555-1013', N'pr@company.com', N'www.company.com/pr', 8)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (14, N'Procurement', NULL, N'Floor 4, East Wing', CAST(500000.00 AS Decimal(15, 2)), CAST(N'2011-02-15' AS Date), N'Procurement and Supply Chain Department', N'555-1014', N'procurement@company.com', N'www.company.com/procurement', 10)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (15, N'Training', NULL, N'Floor 5, East Wing', CAST(300000.00 AS Decimal(15, 2)), CAST(N'2011-03-01' AS Date), N'Employee Training and Development Department', N'555-1015', N'training@company.com', N'www.company.com/training', 6)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (16, N'Innovation', NULL, N'Floor 5, West Wing', CAST(800000.00 AS Decimal(15, 2)), CAST(N'2011-04-15' AS Date), N'Innovation and Future Technologies Department', N'555-1016', N'innovation@company.com', N'www.company.com/innovation', 10)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (17, N'Internal Audit', NULL, N'Floor 6, Main Building', CAST(350000.00 AS Decimal(15, 2)), CAST(N'2011-05-01' AS Date), N'Internal Audit and Compliance Department', N'555-1017', N'audit@company.com', N'www.company.com/audit', 7)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (18, N'Corporate Strategy', NULL, N'Floor 6, East Wing', CAST(600000.00 AS Decimal(15, 2)), CAST(N'2011-06-15' AS Date), N'Corporate Strategy and Planning Department', N'555-1018', N'strategy@company.com', N'www.company.com/strategy', 8)
GO
INSERT [dbo].[Departments] ([DepartmentID], [DepartmentName], [ManagerID], [Location], [Budget], [EstablishedDate], [Description], [Phone], [Email], [Website], [EmployeeCount]) VALUES (19, N'Data Science', NULL, N'Floor 4, Main Building', CAST(900000.00 AS Decimal(15, 2)), CAST(N'2011-07-01' AS Date), N'Data Science and Analytics Department', N'555-1019', N'datascience@company.com', N'www.company.com/datascience', 20)
GO
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (1, N'John', N'Doe', N'john.doe@company.com', N'555-0101', CAST(N'2020-01-15' AS Date), N'Software Engineer', N'IT', CAST(75000.00 AS Decimal(10, 2)), 5, N'123 Main St, Anytown, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (2, N'Jane', N'Smith', N'jane.smith@company.com', N'555-0102', CAST(N'2019-05-20' AS Date), N'Marketing Specialist', N'Marketing', CAST(65000.00 AS Decimal(10, 2)), 8, N'456 Elm St, Otherville, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (3, N'Mike', N'Johnson', N'mike.johnson@company.com', N'555-0103', CAST(N'2018-11-01' AS Date), N'Sales Representative', N'Sales', CAST(60000.00 AS Decimal(10, 2)), 12, N'789 Oak St, Somewhere, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (4, N'Emily', N'Brown', N'emily.brown@company.com', N'555-0104', CAST(N'2021-03-10' AS Date), N'HR Manager', N'Human Resources', CAST(80000.00 AS Decimal(10, 2)), NULL, N'321 Pine St, Nowhere, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (5, N'David', N'Lee', N'david.lee@company.com', N'555-0105', CAST(N'2017-09-15' AS Date), N'IT Manager', N'IT', CAST(95000.00 AS Decimal(10, 2)), NULL, N'654 Cedar St, Everywhere, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (6, N'Sarah', N'Wilson', N'sarah.wilson@company.com', N'555-0106', CAST(N'2020-07-01' AS Date), N'Accountant', N'Finance', CAST(70000.00 AS Decimal(10, 2)), 15, N'987 Birch St, Anyplace, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (7, N'Robert', N'Taylor', N'robert.taylor@company.com', N'555-0107', CAST(N'2019-02-14' AS Date), N'Product Manager', N'Product', CAST(85000.00 AS Decimal(10, 2)), NULL, N'147 Maple St, Someplace, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (8, N'Lisa', N'Anderson', N'lisa.anderson@company.com', N'555-0108', CAST(N'2018-06-30' AS Date), N'Marketing Manager', N'Marketing', CAST(90000.00 AS Decimal(10, 2)), NULL, N'258 Walnut St, Thatplace, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (9, N'Michael', N'Thomas', N'michael.thomas@company.com', N'555-0109', CAST(N'2021-01-05' AS Date), N'Customer Support', N'Customer Service', CAST(55000.00 AS Decimal(10, 2)), 18, N'369 Ash St, Thisplace, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (10, N'Jennifer', N'Jackson', N'jennifer.jackson@company.com', N'555-0110', CAST(N'2020-11-15' AS Date), N'Graphic Designer', N'Marketing', CAST(62000.00 AS Decimal(10, 2)), 8, N'741 Oakwood St, Thattown, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (11, N'William', N'White', N'william.white@company.com', N'555-0111', CAST(N'2017-12-01' AS Date), N'Software Engineer', N'IT', CAST(78000.00 AS Decimal(10, 2)), 5, N'852 Elmwood St, Thistown, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (12, N'Mary', N'Harris', N'mary.harris@company.com', N'555-0112', CAST(N'2019-08-20' AS Date), N'Sales Manager', N'Sales', CAST(88000.00 AS Decimal(10, 2)), NULL, N'963 Pinewood St, Otherwhere, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (13, N'James', N'Martin', N'james.martin@company.com', N'555-0113', CAST(N'2020-04-01' AS Date), N'Business Analyst', N'IT', CAST(72000.00 AS Decimal(10, 2)), 5, N'159 Cedarwood St, Sometown, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (14, N'Patricia', N'Thompson', N'patricia.thompson@company.com', N'555-0114', CAST(N'2018-10-10' AS Date), N'HR Specialist', N'Human Resources', CAST(67000.00 AS Decimal(10, 2)), 4, N'357 Maplewood St, Thatcity, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (15, N'Richard', N'Garcia', N'richard.garcia@company.com', N'555-0115', CAST(N'2021-02-15' AS Date), N'Finance Manager', N'Finance', CAST(92000.00 AS Decimal(10, 2)), NULL, N'486 Birchwood St, Thiscity, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (16, N'Elizabeth', N'Martinez', N'elizabeth.martinez@company.com', N'555-0116', CAST(N'2019-07-01' AS Date), N'Product Designer', N'Product', CAST(76000.00 AS Decimal(10, 2)), 7, N'729 Walnutwood St, Thatville, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (17, N'Charles', N'Robinson', N'charles.robinson@company.com', N'555-0117', CAST(N'2020-09-15' AS Date), N'Quality Assurance', N'IT', CAST(69000.00 AS Decimal(10, 2)), 5, N'815 Ashwood St, Thisville, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (18, N'Susan', N'Clark', N'susan.clark@company.com', N'555-0118', CAST(N'2018-03-20' AS Date), N'Customer Service Manager', N'Customer Service', CAST(82000.00 AS Decimal(10, 2)), NULL, N'937 Oakleaf St, Othertown, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (19, N'Joseph', N'Rodriguez', N'joseph.rodriguez@company.com', N'555-0119', CAST(N'2021-05-01' AS Date), N'Software Engineer', N'IT', CAST(74000.00 AS Decimal(10, 2)), 5, N'264 Elmleaf St, Somewhere City, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (20, N'Margaret', N'Lewis', N'margaret.lewis@company.com', N'555-0120', CAST(N'2019-11-10' AS Date), N'Content Writer', N'Marketing', CAST(63000.00 AS Decimal(10, 2)), 8, N'582 Pineleaf St, Nowhere City, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (21, N'Thomas', N'Walker', N'thomas.walker@company.com', N'555-0121', CAST(N'2020-06-15' AS Date), N'Sales Representative', N'Sales', CAST(61000.00 AS Decimal(10, 2)), 12, N'791 Cedarleaf St, Everywhere City, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (22, N'Dorothy', N'Hall', N'dorothy.hall@company.com', N'555-0122', CAST(N'2018-01-05' AS Date), N'Accountant', N'Finance', CAST(71000.00 AS Decimal(10, 2)), 15, N'913 Mapleleaf St, Anytown City, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (23, N'Christopher', N'Allen', N'christopher.allen@company.com', N'555-0123', CAST(N'2021-04-20' AS Date), N'IT Support Specialist', N'IT', CAST(58000.00 AS Decimal(10, 2)), 5, N'246 Birchleaf St, Othertown City, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (24, N'Betty', N'Young', N'betty.young@company.com', N'555-0124', CAST(N'2019-10-01' AS Date), N'Marketing Specialist', N'Marketing', CAST(64000.00 AS Decimal(10, 2)), 8, N'135 Walnutleaf St, Thattown City, USA')
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [PhoneNumber], [HireDate], [JobTitle], [Department], [Salary], [ManagerID], [Address]) VALUES (25, N'Daniel', N'Hernandez', N'daniel.hernandez@company.com', N'555-0125', CAST(N'2020-02-15' AS Date), N'Software Engineer', N'IT', CAST(76000.00 AS Decimal(10, 2)), 5, N'579 Ashleaf St, Thistown City, USA')
GO
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (1, 1, 1, 50, CAST(N'2024-01-01' AS Date), CAST(N'2024-03-01' AS Date), 10, 100, CAST(900.00 AS Decimal(10, 2)), CAST(45000.00 AS Decimal(15, 2)), N'Warehouse A')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (2, 2, 1, 75, CAST(N'2024-02-01' AS Date), CAST(N'2024-04-01' AS Date), 20, 80, CAST(600.00 AS Decimal(10, 2)), CAST(45000.00 AS Decimal(15, 2)), N'Warehouse A')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (3, 3, 2, 120, CAST(N'2024-01-15' AS Date), CAST(N'2024-03-15' AS Date), 15, 150, CAST(120.00 AS Decimal(10, 2)), CAST(14400.00 AS Decimal(15, 2)), N'Warehouse B')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (4, 4, 2, 60, CAST(N'2024-02-10' AS Date), CAST(N'2024-04-10' AS Date), 5, 70, CAST(250.00 AS Decimal(10, 2)), CAST(15000.00 AS Decimal(15, 2)), N'Warehouse B')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (5, 5, 3, 80, CAST(N'2024-03-01' AS Date), CAST(N'2024-05-01' AS Date), 10, 90, CAST(180.00 AS Decimal(10, 2)), CAST(14400.00 AS Decimal(15, 2)), N'Warehouse C')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (6, 6, 3, 150, CAST(N'2024-04-01' AS Date), CAST(N'2024-06-01' AS Date), 30, 200, CAST(20.00 AS Decimal(10, 2)), CAST(3000.00 AS Decimal(15, 2)), N'Warehouse C')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (7, 7, 4, 90, CAST(N'2024-05-01' AS Date), CAST(N'2024-07-01' AS Date), 20, 100, CAST(25.00 AS Decimal(10, 2)), CAST(2250.00 AS Decimal(15, 2)), N'Warehouse D')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (8, 8, 4, 85, CAST(N'2024-06-01' AS Date), CAST(N'2024-08-01' AS Date), 15, 80, CAST(12.00 AS Decimal(10, 2)), CAST(1020.00 AS Decimal(15, 2)), N'Warehouse D')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (9, 9, 5, 70, CAST(N'2024-07-01' AS Date), CAST(N'2024-09-01' AS Date), 10, 70, CAST(400.00 AS Decimal(10, 2)), CAST(28000.00 AS Decimal(15, 2)), N'Warehouse E')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (10, 10, 5, 55, CAST(N'2024-08-01' AS Date), CAST(N'2024-10-01' AS Date), 20, 60, CAST(30.00 AS Decimal(10, 2)), CAST(1650.00 AS Decimal(15, 2)), N'Warehouse E')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (11, 11, 6, 100, CAST(N'2024-09-01' AS Date), CAST(N'2024-11-01' AS Date), 25, 120, CAST(35.00 AS Decimal(10, 2)), CAST(3500.00 AS Decimal(15, 2)), N'Warehouse F')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (12, 12, 6, 90, CAST(N'2024-10-01' AS Date), CAST(N'2024-12-01' AS Date), 15, 85, CAST(55.00 AS Decimal(10, 2)), CAST(4950.00 AS Decimal(15, 2)), N'Warehouse F')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (13, 13, 7, 40, CAST(N'2024-11-01' AS Date), CAST(N'2025-01-01' AS Date), 10, 50, CAST(70.00 AS Decimal(10, 2)), CAST(2800.00 AS Decimal(15, 2)), N'Warehouse G')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (14, 14, 7, 75, CAST(N'2024-12-01' AS Date), CAST(N'2025-02-01' AS Date), 20, 80, CAST(25.00 AS Decimal(10, 2)), CAST(1875.00 AS Decimal(15, 2)), N'Warehouse G')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (15, 15, 8, 60, CAST(N'2024-01-15' AS Date), CAST(N'2024-03-15' AS Date), 15, 65, CAST(500.00 AS Decimal(10, 2)), CAST(30000.00 AS Decimal(15, 2)), N'Warehouse H')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (16, 16, 8, 80, CAST(N'2024-02-15' AS Date), CAST(N'2024-04-15' AS Date), 25, 90, CAST(150.00 AS Decimal(10, 2)), CAST(12000.00 AS Decimal(15, 2)), N'Warehouse H')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (17, 17, 9, 70, CAST(N'2024-03-01' AS Date), CAST(N'2024-05-01' AS Date), 20, 80, CAST(40.00 AS Decimal(10, 2)), CAST(2800.00 AS Decimal(15, 2)), N'Warehouse I')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (18, 18, 9, 85, CAST(N'2024-04-01' AS Date), CAST(N'2024-06-01' AS Date), 10, 70, CAST(22.00 AS Decimal(10, 2)), CAST(1870.00 AS Decimal(15, 2)), N'Warehouse I')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (19, 19, 10, 100, CAST(N'2024-05-01' AS Date), CAST(N'2024-07-01' AS Date), 15, 100, CAST(55.00 AS Decimal(10, 2)), CAST(5500.00 AS Decimal(15, 2)), N'Warehouse J')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (20, 20, 10, 90, CAST(N'2024-06-01' AS Date), CAST(N'2024-08-01' AS Date), 20, 85, CAST(60.00 AS Decimal(10, 2)), CAST(5400.00 AS Decimal(15, 2)), N'Warehouse J')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (21, 21, 11, 75, CAST(N'2024-07-01' AS Date), CAST(N'2024-09-01' AS Date), 30, 80, CAST(90.00 AS Decimal(10, 2)), CAST(6750.00 AS Decimal(15, 2)), N'Warehouse K')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (22, 22, 11, 60, CAST(N'2024-08-01' AS Date), CAST(N'2024-10-01' AS Date), 25, 70, CAST(45.00 AS Decimal(10, 2)), CAST(2700.00 AS Decimal(15, 2)), N'Warehouse K')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (23, 23, 12, 85, CAST(N'2024-09-01' AS Date), CAST(N'2024-11-01' AS Date), 10, 100, CAST(35.00 AS Decimal(10, 2)), CAST(2975.00 AS Decimal(15, 2)), N'Warehouse L')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (24, 24, 12, 100, CAST(N'2024-10-01' AS Date), CAST(N'2024-12-01' AS Date), 20, 90, CAST(25.00 AS Decimal(10, 2)), CAST(2500.00 AS Decimal(15, 2)), N'Warehouse L')
GO
INSERT [dbo].[Inventory] ([InventoryID], [ProductID], [WarehouseID], [Quantity], [LastRestockDate], [NextRestockDate], [MinimumStockLevel], [MaximumStockLevel], [UnitCost], [TotalValue], [Location]) VALUES (25, 25, 13, 90, CAST(N'2024-11-01' AS Date), CAST(N'2025-01-01' AS Date), 15, 80, CAST(60.00 AS Decimal(10, 2)), CAST(5400.00 AS Decimal(15, 2)), N'Warehouse M')
GO
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[JobApplications] ON 
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (1, N'John Doe', N'Software Developer', CAST(N'2024-01-05' AS Date), N'Under Review', N'Resume_JohnDoe.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (2, N'Jane Smith', N'Project Manager', CAST(N'2024-01-10' AS Date), N'Interview Scheduled', N'Resume_JaneSmith.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (3, N'Emily Johnson', N'Data Analyst', CAST(N'2024-01-15' AS Date), N'Rejected', N'Resume_EmilyJohnson.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (4, N'Michael Brown', N'UX Designer', CAST(N'2024-01-20' AS Date), N'Accepted', N'Resume_MichaelBrown.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (5, N'Olivia Davis', N'HR Specialist', CAST(N'2024-01-25' AS Date), N'Under Review', N'Resume_OliviaDavis.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (6, N'Liam Wilson', N'Web Developer', CAST(N'2024-02-01' AS Date), N'Interview Scheduled', N'Resume_LiamWilson.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (7, N'Sophia Taylor', N'Marketing Coordinator', CAST(N'2024-02-05' AS Date), N'Rejected', N'Resume_SophiaTaylor.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (8, N'Ethan Anderson', N'Financial Analyst', CAST(N'2024-02-10' AS Date), N'Accepted', N'Resume_EthanAnderson.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (9, N'Ava Thomas', N'Product Manager', CAST(N'2024-02-15' AS Date), N'Under Review', N'Resume_AvaThomas.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (10, N'James Martinez', N'Database Administrator', CAST(N'2024-02-20' AS Date), N'Interview Scheduled', N'Resume_JamesMartinez.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (11, N'Isabella Harris', N'Sales Executive', CAST(N'2024-03-01' AS Date), N'Rejected', N'Resume_IsabellaHarris.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (12, N'Mason Clark', N'Customer Service Rep', CAST(N'2024-03-05' AS Date), N'Under Review', N'Resume_MasonClark.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (13, N'Mia Lewis', N'Business Analyst', CAST(N'2024-03-10' AS Date), N'Accepted', N'Resume_MiaLewis.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (14, N'Noah Walker', N'Graphic Designer', CAST(N'2024-03-15' AS Date), N'Interview Scheduled', N'Resume_NoahWalker.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (15, N'Charlotte Robinson', N'IT Support Specialist', CAST(N'2024-03-20' AS Date), N'Rejected', N'Resume_CharlotteRobinson.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (16, N'Oliver Scott', N'Operations Manager', CAST(N'2024-04-01' AS Date), N'Under Review', N'Resume_OliverScott.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (17, N'Amelia Young', N'Executive Assistant', CAST(N'2024-04-05' AS Date), N'Accepted', N'Resume_AmeliaYoung.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (18, N'Benjamin King', N'Network Engineer', CAST(N'2024-04-10' AS Date), N'Interview Scheduled', N'Resume_BenjaminKing.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (19, N'Harper Adams', N'Content Writer', CAST(N'2024-04-15' AS Date), N'Rejected', N'Resume_HarperAdams.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (20, N'Elijah Nelson', N'Legal Advisor', CAST(N'2024-04-20' AS Date), N'Under Review', N'Resume_ElijahNelson.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (21, N'Evelyn Carter', N'Administrative Assistant', CAST(N'2024-05-01' AS Date), N'Accepted', N'Resume_EvelynCarter.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (22, N'Jacob Mitchell', N'Product Designer', CAST(N'2024-05-05' AS Date), N'Interview Scheduled', N'Resume_JacobMitchell.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (23, N'Aria Perez', N'Social Media Manager', CAST(N'2024-05-10' AS Date), N'Rejected', N'Resume_AriaPerez.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (24, N'Daniel Roberts', N'Supply Chain Coordinator', CAST(N'2024-05-15' AS Date), N'Under Review', N'Resume_DanielRoberts.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (25, N'Lily Campbell', N'Training Coordinator', CAST(N'2024-05-20' AS Date), N'Accepted', N'Resume_LilyCampbell.pdf')
GO
INSERT [dbo].[JobApplications] ([ApplicationID], [ApplicantName], [Position], [ApplicationDate], [Status], [Resume]) VALUES (26, N'William Evans', N'Financial Controller', CAST(N'2024-06-01' AS Date), N'Interview Scheduled', N'Resume_WilliamEvans.pdf')
GO
SET IDENTITY_INSERT [dbo].[JobApplications] OFF
GO
SET IDENTITY_INSERT [dbo].[JobInterviews] ON 
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (1, 1, CAST(N'2024-01-12' AS Date), 1, N'Conference Room A', N'Strong technical skills, needs improvement in communication.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (2, 2, CAST(N'2024-01-17' AS Date), 2, N'Conference Room B', N'Excellent leadership experience, good fit for the role.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (3, 3, CAST(N'2024-01-22' AS Date), 3, N'Conference Room C', N'Lacks relevant experience for the position.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (4, 4, CAST(N'2024-01-27' AS Date), 4, N'Conference Room A', N'Creative problem-solving skills, suitable for the role.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (5, 5, CAST(N'2024-02-01' AS Date), 5, N'Conference Room B', N'Good interpersonal skills, but lacks specific HR experience.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (6, 6, CAST(N'2024-02-06' AS Date), 6, N'Conference Room C', N'Strong portfolio, technically proficient.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (7, 7, CAST(N'2024-02-11' AS Date), 7, N'Conference Room A', N'Good marketing knowledge, needs more project management experience.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (8, 8, CAST(N'2024-02-16' AS Date), 8, N'Conference Room B', N'Strong analytical skills, suitable for the team.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (9, 9, CAST(N'2024-02-21' AS Date), 9, N'Conference Room C', N'Experienced in product management, good cultural fit.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (10, 10, CAST(N'2024-02-26' AS Date), 10, N'Conference Room A', N'Technical skills are strong, needs improvement in soft skills.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (11, 11, CAST(N'2024-03-02' AS Date), 11, N'Conference Room B', N'Good sales experience, needs better understanding of our products.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (12, 12, CAST(N'2024-03-07' AS Date), 12, N'Conference Room C', N'Customer service experience is solid, could improve on technical aspects.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (13, 13, CAST(N'2024-03-12' AS Date), 13, N'Conference Room A', N'Strong analytical skills, good potential for the role.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (14, 14, CAST(N'2024-03-17' AS Date), 14, N'Conference Room B', N'Creative and innovative, strong fit for design role.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (15, 15, CAST(N'2024-03-22' AS Date), 15, N'Conference Room C', N'Good understanding of IT support, needs more hands-on experience.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (16, 16, CAST(N'2024-03-27' AS Date), 16, N'Conference Room A', N'Strong operational background, good candidate for management role.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (17, 17, CAST(N'2024-04-01' AS Date), 17, N'Conference Room B', N'Organizational skills are impressive, fit for executive role.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (18, 18, CAST(N'2024-04-06' AS Date), 18, N'Conference Room C', N'Experienced in network engineering, good technical fit.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (19, 19, CAST(N'2024-04-11' AS Date), 19, N'Conference Room A', N'Excellent writing skills, suitable for content role.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (20, 20, CAST(N'2024-04-16' AS Date), 20, N'Conference Room B', N'Solid legal background, good understanding of company policies.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (21, 21, CAST(N'2024-04-21' AS Date), 21, N'Conference Room C', N'Strong administrative skills, good fit for the role.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (22, 22, CAST(N'2024-04-26' AS Date), 22, N'Conference Room A', N'Good design skills, suitable for product design role.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (23, 23, CAST(N'2024-05-01' AS Date), 23, N'Conference Room B', N'Experienced in social media management, fit for marketing team.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (24, 24, CAST(N'2024-05-06' AS Date), 24, N'Conference Room C', N'Strong supply chain knowledge, suitable for the coordinator role.')
GO
INSERT [dbo].[JobInterviews] ([InterviewID], [ApplicationID], [InterviewDate], [InterviewerID], [Location], [Feedback]) VALUES (25, 25, CAST(N'2024-05-11' AS Date), 25, N'Conference Room A', N'Good training experience, suitable for the coordinator position.')
GO
SET IDENTITY_INSERT [dbo].[JobInterviews] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1, 1, 1, CAST(100.00 AS Decimal(10, 2)), 5, CAST(0.10 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (2, 1, 2, CAST(200.00 AS Decimal(10, 2)), 2, CAST(0.05 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (3, 2, 3, CAST(150.00 AS Decimal(10, 2)), 1, CAST(0.15 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (4, 2, 4, CAST(300.00 AS Decimal(10, 2)), 3, CAST(0.20 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (5, 3, 5, CAST(250.00 AS Decimal(10, 2)), 4, CAST(0.10 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (6, 3, 6, CAST(400.00 AS Decimal(10, 2)), 2, CAST(0.05 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (7, 4, 7, CAST(75.00 AS Decimal(10, 2)), 10, CAST(0.25 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (8, 4, 8, CAST(125.00 AS Decimal(10, 2)), 6, CAST(0.10 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (9, 5, 9, CAST(90.00 AS Decimal(10, 2)), 8, CAST(0.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (10, 5, 10, CAST(60.00 AS Decimal(10, 2)), 12, CAST(0.05 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (11, 6, 11, CAST(110.00 AS Decimal(10, 2)), 3, CAST(0.20 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (12, 6, 12, CAST(250.00 AS Decimal(10, 2)), 5, CAST(0.15 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (13, 7, 13, CAST(80.00 AS Decimal(10, 2)), 7, CAST(0.10 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (14, 7, 14, CAST(150.00 AS Decimal(10, 2)), 4, CAST(0.10 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (15, 8, 15, CAST(200.00 AS Decimal(10, 2)), 2, CAST(0.05 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (16, 8, 16, CAST(300.00 AS Decimal(10, 2)), 1, CAST(0.15 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (17, 9, 17, CAST(220.00 AS Decimal(10, 2)), 6, CAST(0.20 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (18, 9, 18, CAST(180.00 AS Decimal(10, 2)), 3, CAST(0.05 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (19, 10, 19, CAST(120.00 AS Decimal(10, 2)), 5, CAST(0.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (20, 10, 20, CAST(140.00 AS Decimal(10, 2)), 4, CAST(0.10 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (21, 11, 21, CAST(250.00 AS Decimal(10, 2)), 2, CAST(0.15 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (22, 11, 22, CAST(300.00 AS Decimal(10, 2)), 3, CAST(0.10 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (23, 12, 23, CAST(160.00 AS Decimal(10, 2)), 8, CAST(0.20 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (24, 12, 24, CAST(90.00 AS Decimal(10, 2)), 7, CAST(0.05 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (25, 13, 25, CAST(300.00 AS Decimal(10, 2)), 1, CAST(0.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (26, 13, 26, CAST(200.00 AS Decimal(10, 2)), 3, CAST(0.10 AS Decimal(5, 2)))
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (1, 1, 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-01-20' AS Date), CAST(N'2023-01-18' AS Date), N'FedEx', CAST(25.50 AS Decimal(10, 2)), N'TechNova Solutions', N'123 Tech Lane, San Francisco, USA', CAST(1500.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (2, 2, 5, CAST(N'2023-02-01' AS Date), CAST(N'2023-02-07' AS Date), CAST(N'2023-02-05' AS Date), N'UPS', CAST(30.00 AS Decimal(10, 2)), N'GreenLeaf Eco Products', N'456 Eco Street, Portland, USA', CAST(2000.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (3, 3, 7, CAST(N'2023-03-10' AS Date), CAST(N'2023-03-15' AS Date), CAST(N'2023-03-12' AS Date), N'DHL', CAST(40.75 AS Decimal(10, 2)), N'Global Finance Corp', N'789 Money Road, New York, USA', CAST(3500.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (4, 4, 9, CAST(N'2023-04-01' AS Date), CAST(N'2023-04-08' AS Date), CAST(N'2023-04-06' AS Date), N'FedEx', CAST(22.00 AS Decimal(10, 2)), N'HealthFirst Medical', N'321 Care Avenue, Boston, USA', CAST(1800.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (5, 5, 11, CAST(N'2023-05-15' AS Date), CAST(N'2023-05-22' AS Date), CAST(N'2023-05-20' AS Date), N'UPS', CAST(35.50 AS Decimal(10, 2)), N'FoodDelight Restaurants', N'654 Tasty Street, Chicago, USA', CAST(2500.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (6, 6, 13, CAST(N'2023-06-01' AS Date), CAST(N'2023-06-07' AS Date), CAST(N'2023-06-05' AS Date), N'DHL', CAST(28.00 AS Decimal(10, 2)), N'AutoDrive Motors', N'987 Motor Lane, Detroit, USA', CAST(4000.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (7, 7, 15, CAST(N'2023-07-01' AS Date), CAST(N'2023-07-08' AS Date), CAST(N'2023-07-06' AS Date), N'FedEx', CAST(32.25 AS Decimal(10, 2)), N'EduSmart Learning', N'159 Knowledge Road, Austin, USA', CAST(1200.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (8, 8, 17, CAST(N'2023-08-15' AS Date), CAST(N'2023-08-22' AS Date), CAST(N'2023-08-20' AS Date), N'UPS', CAST(27.50 AS Decimal(10, 2)), N'FashionForward Apparel', N'753 Style Avenue, Los Angeles, USA', CAST(3000.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (9, 9, 19, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-08' AS Date), CAST(N'2023-09-06' AS Date), N'DHL', CAST(38.00 AS Decimal(10, 2)), N'ConstructWell Builders', N'951 Builder Street, Dallas, USA', CAST(5500.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (10, 10, 21, CAST(N'2023-10-01' AS Date), CAST(N'2023-10-07' AS Date), CAST(N'2023-10-05' AS Date), N'FedEx', CAST(29.75 AS Decimal(10, 2)), N'MediaMax Entertainment', N'357 Entertainment Blvd, Nashville, USA', CAST(2800.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (11, 11, 23, CAST(N'2023-11-01' AS Date), CAST(N'2023-11-08' AS Date), CAST(N'2023-11-06' AS Date), N'UPS', CAST(33.50 AS Decimal(10, 2)), N'AeroTech Airways', N'842 Sky Lane, Atlanta, USA', CAST(6000.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (12, 12, 25, CAST(N'2023-12-01' AS Date), CAST(N'2023-12-08' AS Date), CAST(N'2023-12-06' AS Date), N'DHL', CAST(26.00 AS Decimal(10, 2)), N'PharmaPlus Research', N'246 Research Drive, San Diego, USA', CAST(4500.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (13, 13, 2, CAST(N'2024-01-15' AS Date), CAST(N'2024-01-22' AS Date), CAST(N'2024-01-20' AS Date), N'FedEx', CAST(31.25 AS Decimal(10, 2)), N'EnergyNow Power', N'135 Power Road, Houston, USA', CAST(3800.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (14, 14, 4, CAST(N'2024-02-01' AS Date), CAST(N'2024-02-08' AS Date), CAST(N'2024-02-06' AS Date), N'UPS', CAST(24.50 AS Decimal(10, 2)), N'SportsPro Equipment', N'791 Athletic Avenue, Denver, USA', CAST(1600.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (15, 15, 6, CAST(N'2024-03-01' AS Date), CAST(N'2024-03-08' AS Date), CAST(N'2024-03-06' AS Date), N'DHL', CAST(36.75 AS Decimal(10, 2)), N'TravelJoy Tours', N'468 Vacation Lane, Miami, USA', CAST(2200.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (16, 16, 8, CAST(N'2024-04-01' AS Date), CAST(N'2024-04-08' AS Date), CAST(N'2024-04-06' AS Date), N'FedEx', CAST(28.00 AS Decimal(10, 2)), N'DataSafe Security', N'802 Secure Street, Seattle, USA', CAST(4200.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (17, 17, 10, CAST(N'2024-05-01' AS Date), CAST(N'2024-05-08' AS Date), CAST(N'2024-05-06' AS Date), N'UPS', CAST(34.25 AS Decimal(10, 2)), N'EcoFarm Agriculture', N'579 Farm Road, Des Moines, USA', CAST(3300.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (18, 18, 12, CAST(N'2024-06-01' AS Date), CAST(N'2024-06-08' AS Date), CAST(N'2024-06-06' AS Date), N'DHL', CAST(30.50 AS Decimal(10, 2)), N'SmartHome Solutions', N'314 Tech Avenue, San Jose, USA', CAST(2700.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (19, 19, 14, CAST(N'2024-07-01' AS Date), CAST(N'2024-07-08' AS Date), CAST(N'2024-07-06' AS Date), N'FedEx', CAST(27.75 AS Decimal(10, 2)), N'LegalEase Services', N'707 Justice Road, Washington D.C., USA', CAST(1900.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (20, 20, 16, CAST(N'2024-08-01' AS Date), CAST(N'2024-08-08' AS Date), CAST(N'2024-08-06' AS Date), N'UPS', CAST(39.00 AS Decimal(10, 2)), N'CreativeMind Advertising', N'515 Art Street, New York, USA', CAST(3600.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (21, 21, 18, CAST(N'2024-09-01' AS Date), CAST(N'2024-09-08' AS Date), CAST(N'2024-09-06' AS Date), N'DHL', CAST(23.25 AS Decimal(10, 2)), N'LogiTech Shipping', N'626 Logistics Lane, Memphis, USA', CAST(5200.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (22, 22, 20, CAST(N'2024-10-01' AS Date), CAST(N'2024-10-08' AS Date), CAST(N'2024-10-06' AS Date), N'FedEx', CAST(37.50 AS Decimal(10, 2)), N'CleanWater Solutions', N'438 Pure Street, Phoenix, USA', CAST(2900.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (23, 23, 22, CAST(N'2024-11-01' AS Date), CAST(N'2024-11-08' AS Date), CAST(N'2024-11-06' AS Date), N'UPS', CAST(26.75 AS Decimal(10, 2)), N'RealEstate Plus', N'909 Property Road, Las Vegas, USA', CAST(4800.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (24, 24, 24, CAST(N'2024-12-01' AS Date), CAST(N'2024-12-08' AS Date), CAST(N'2024-12-06' AS Date), N'DHL', CAST(32.00 AS Decimal(10, 2)), N'FutureTech Innovations', N'212 Innovation Blvd, Palo Alto, USA', CAST(3100.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [TotalAmount]) VALUES (25, 25, 1, CAST(N'2025-01-01' AS Date), CAST(N'2025-01-08' AS Date), CAST(N'2025-01-06' AS Date), N'FedEx', CAST(29.25 AS Decimal(10, 2)), N'GreenEnergy Solar', N'555 Solar Lane, Phoenix, USA', CAST(4100.00 AS Decimal(15, 2)))
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (1, 1, CAST(N'2024-01-10' AS Date), N'Credit Card', CAST(500.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (2, 1, CAST(N'2024-01-12' AS Date), N'PayPal', CAST(400.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (3, 2, CAST(N'2024-02-15' AS Date), N'Credit Card', CAST(450.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (4, 2, CAST(N'2024-02-16' AS Date), N'Bank Transfer', CAST(300.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (5, 3, CAST(N'2024-03-20' AS Date), N'Credit Card', CAST(150.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (6, 3, CAST(N'2024-03-22' AS Date), N'PayPal', CAST(300.00 AS Decimal(15, 2)), N'Pending')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (7, 4, CAST(N'2024-04-10' AS Date), N'Bank Transfer', CAST(900.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (8, 4, CAST(N'2024-04-12' AS Date), N'Credit Card', CAST(600.00 AS Decimal(15, 2)), N'Pending')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (9, 5, CAST(N'2024-05-15' AS Date), N'Credit Card', CAST(1000.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (10, 5, CAST(N'2024-05-17' AS Date), N'PayPal', CAST(500.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (11, 6, CAST(N'2024-06-20' AS Date), N'Bank Transfer', CAST(700.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (12, 6, CAST(N'2024-06-21' AS Date), N'Credit Card', CAST(800.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (13, 7, CAST(N'2024-07-15' AS Date), N'PayPal', CAST(750.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (14, 7, CAST(N'2024-07-16' AS Date), N'Credit Card', CAST(600.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (15, 8, CAST(N'2024-08-10' AS Date), N'Credit Card', CAST(500.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (16, 8, CAST(N'2024-08-12' AS Date), N'Bank Transfer', CAST(600.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (17, 9, CAST(N'2024-09-20' AS Date), N'Credit Card', CAST(1080.00 AS Decimal(15, 2)), N'Pending')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (18, 9, CAST(N'2024-09-22' AS Date), N'PayPal', CAST(720.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (19, 10, CAST(N'2024-10-15' AS Date), N'Bank Transfer', CAST(600.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (20, 10, CAST(N'2024-10-16' AS Date), N'Credit Card', CAST(560.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (21, 11, CAST(N'2024-11-20' AS Date), N'Credit Card', CAST(550.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (22, 11, CAST(N'2024-11-21' AS Date), N'PayPal', CAST(600.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (23, 12, CAST(N'2024-12-10' AS Date), N'Bank Transfer', CAST(1280.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (24, 12, CAST(N'2024-12-12' AS Date), N'Credit Card', CAST(770.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (25, 13, CAST(N'2024-12-20' AS Date), N'PayPal', CAST(500.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[Payments] ([PaymentID], [OrderID], [PaymentDate], [PaymentMethod], [Amount], [Status]) VALUES (26, 13, CAST(N'2024-12-21' AS Date), N'Credit Card', CAST(600.00 AS Decimal(15, 2)), N'Completed')
GO
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (1, N'Smartphone X1', N'Electronics', CAST(699.99 AS Decimal(10, 2)), 500, 100, 0, 1, N'Latest model smartphone with advanced features', CAST(N'2023-01-15' AS Date), CAST(0.18 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (2, N'Laptop Pro', N'Electronics', CAST(1299.99 AS Decimal(10, 2)), 200, 50, 0, 1, N'High-performance laptop for professionals', CAST(N'2023-02-01' AS Date), CAST(2.10 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (3, N'Wireless Earbuds', N'Electronics', CAST(129.99 AS Decimal(10, 2)), 1000, 200, 0, 2, N'True wireless earbuds with noise cancellation', CAST(N'2023-03-10' AS Date), CAST(0.05 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (4, N'4K Smart TV', N'Electronics', CAST(899.99 AS Decimal(10, 2)), 150, 30, 0, 3, N'55-inch 4K Smart TV with HDR', CAST(N'2023-04-01' AS Date), CAST(18.50 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (5, N'Coffee Maker Deluxe', N'Appliances', CAST(89.99 AS Decimal(10, 2)), 300, 75, 0, 4, N'Programmable coffee maker with thermal carafe', CAST(N'2023-05-15' AS Date), CAST(3.20 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (6, N'Fitness Tracker', N'Electronics', CAST(79.99 AS Decimal(10, 2)), 800, 150, 0, 2, N'Advanced fitness tracker with heart rate monitor', CAST(N'2023-06-01' AS Date), CAST(0.03 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (7, N'Blender Pro', N'Appliances', CAST(129.99 AS Decimal(10, 2)), 250, 50, 0, 4, N'High-power blender for smoothies and more', CAST(N'2023-07-01' AS Date), CAST(4.50 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (8, N'Gaming Console X', N'Electronics', CAST(499.99 AS Decimal(10, 2)), 400, 100, 0, 3, N'Next-gen gaming console with 4K capabilities', CAST(N'2023-08-15' AS Date), CAST(3.90 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (9, N'Wireless Router', N'Electronics', CAST(89.99 AS Decimal(10, 2)), 600, 100, 0, 5, N'High-speed wireless router with wide coverage', CAST(N'2023-09-01' AS Date), CAST(0.50 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (10, N'Digital Camera', N'Electronics', CAST(599.99 AS Decimal(10, 2)), 200, 40, 0, 6, N'Professional-grade digital camera with 4K video', CAST(N'2023-10-01' AS Date), CAST(0.70 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (11, N'Smart Thermostat', N'Home', CAST(179.99 AS Decimal(10, 2)), 400, 80, 0, 7, N'Wi-Fi enabled smart thermostat for energy savings', CAST(N'2023-11-01' AS Date), CAST(0.25 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (12, N'Electric Toothbrush', N'Personal Care', CAST(69.99 AS Decimal(10, 2)), 700, 150, 0, 8, N'Rechargeable electric toothbrush with multiple modes', CAST(N'2023-12-01' AS Date), CAST(0.20 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (13, N'Portable Charger', N'Electronics', CAST(49.99 AS Decimal(10, 2)), 1000, 200, 0, 9, N'High-capacity portable charger for mobile devices', CAST(N'2024-01-15' AS Date), CAST(0.30 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (14, N'Robot Vacuum', N'Appliances', CAST(299.99 AS Decimal(10, 2)), 300, 60, 0, 10, N'Smart robot vacuum with mapping technology', CAST(N'2024-02-01' AS Date), CAST(3.50 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (15, N'Wireless Keyboard', N'Electronics', CAST(59.99 AS Decimal(10, 2)), 800, 150, 0, 11, N'Ergonomic wireless keyboard with backlight', CAST(N'2024-03-01' AS Date), CAST(0.70 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (16, N'Air Purifier', N'Appliances', CAST(199.99 AS Decimal(10, 2)), 250, 50, 0, 12, N'HEPA air purifier for large rooms', CAST(N'2024-04-01' AS Date), CAST(5.80 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (17, N'Smart Light Bulbs', N'Home', CAST(29.99 AS Decimal(10, 2)), 1500, 300, 0, 13, N'Wi-Fi enabled color-changing smart light bulbs', CAST(N'2024-05-01' AS Date), CAST(0.10 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (18, N'Portable Speaker', N'Electronics', CAST(89.99 AS Decimal(10, 2)), 600, 120, 0, 14, N'Waterproof portable Bluetooth speaker', CAST(N'2024-06-01' AS Date), CAST(0.60 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (19, N'Electric Kettle', N'Appliances', CAST(39.99 AS Decimal(10, 2)), 400, 80, 0, 15, N'Fast-boiling electric kettle with temperature control', CAST(N'2024-07-01' AS Date), CAST(1.20 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (20, N'Smartwatch', N'Electronics', CAST(249.99 AS Decimal(10, 2)), 350, 70, 0, 16, N'Feature-rich smartwatch with fitness tracking', CAST(N'2024-08-01' AS Date), CAST(0.05 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (21, N'Wireless Mouse', N'Electronics', CAST(39.99 AS Decimal(10, 2)), 1000, 200, 0, 17, N'Ergonomic wireless mouse with long battery life', CAST(N'2024-09-01' AS Date), CAST(0.10 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (22, N'Toaster Oven', N'Appliances', CAST(79.99 AS Decimal(10, 2)), 300, 60, 0, 18, N'Multifunctional toaster oven with convection', CAST(N'2024-10-01' AS Date), CAST(5.50 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (23, N'Noise-Canceling Headphones', N'Electronics', CAST(199.99 AS Decimal(10, 2)), 400, 80, 0, 19, N'Over-ear noise-canceling headphones', CAST(N'2024-11-01' AS Date), CAST(0.25 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (24, N'Smart Door Lock', N'Home', CAST(159.99 AS Decimal(10, 2)), 200, 40, 0, 20, N'Wi-Fi enabled smart door lock with keypad', CAST(N'2024-12-01' AS Date), CAST(1.80 AS Decimal(8, 2)))
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [Category], [UnitPrice], [UnitsInStock], [ReorderLevel], [Discontinued], [SupplierID], [Description], [LaunchDate], [Weight]) VALUES (25, N'Cordless Drill', N'Tools', CAST(129.99 AS Decimal(10, 2)), 250, 50, 0, 21, N'Powerful cordless drill with lithium-ion battery', CAST(N'2025-01-01' AS Date), CAST(1.50 AS Decimal(8, 2)))
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProjectAssignments] ON 
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (1, 1, 1, N'Lead Developer', CAST(N'2024-01-01' AS Date), CAST(N'2024-06-30' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (2, 1, 2, N'UI/UX Designer', CAST(N'2024-01-01' AS Date), CAST(N'2024-06-30' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (3, 1, 3, N'Business Analyst', CAST(N'2024-01-01' AS Date), CAST(N'2024-06-30' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (4, 2, 4, N'Project Manager', CAST(N'2024-02-01' AS Date), CAST(N'2024-07-31' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (5, 2, 5, N'Technical Lead', CAST(N'2024-02-01' AS Date), CAST(N'2024-07-31' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (6, 2, 6, N'QA Engineer', CAST(N'2024-02-01' AS Date), CAST(N'2024-07-31' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (7, 3, 7, N'Data Scientist', CAST(N'2024-03-01' AS Date), CAST(N'2024-08-31' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (8, 3, 8, N'Database Administrator', CAST(N'2024-03-01' AS Date), CAST(N'2024-08-31' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (9, 3, 9, N'System Architect', CAST(N'2024-03-01' AS Date), CAST(N'2024-08-31' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (10, 4, 10, N'Marketing Specialist', CAST(N'2024-04-01' AS Date), CAST(N'2024-09-30' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (11, 4, 11, N'Content Writer', CAST(N'2024-04-01' AS Date), CAST(N'2024-09-30' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (12, 4, 12, N'SEO Expert', CAST(N'2024-04-01' AS Date), CAST(N'2024-09-30' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (13, 5, 13, N'Financial Analyst', CAST(N'2024-05-01' AS Date), CAST(N'2024-10-31' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (14, 5, 14, N'Accountant', CAST(N'2024-05-01' AS Date), CAST(N'2024-10-31' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (15, 5, 15, N'Auditor', CAST(N'2024-05-01' AS Date), CAST(N'2024-10-31' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (16, 6, 16, N'HR Manager', CAST(N'2024-06-01' AS Date), CAST(N'2024-11-30' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (17, 6, 17, N'Recruiter', CAST(N'2024-06-01' AS Date), CAST(N'2024-11-30' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (18, 6, 18, N'Training Coordinator', CAST(N'2024-06-01' AS Date), CAST(N'2024-11-30' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (19, 7, 19, N'Supply Chain Manager', CAST(N'2024-07-01' AS Date), CAST(N'2024-12-31' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (20, 7, 20, N'Logistics Coordinator', CAST(N'2024-07-01' AS Date), CAST(N'2024-12-31' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (21, 7, 21, N'Procurement Specialist', CAST(N'2024-07-01' AS Date), CAST(N'2024-12-31' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (22, 8, 22, N'Customer Support Lead', CAST(N'2024-08-01' AS Date), CAST(N'2025-01-31' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (23, 8, 23, N'Technical Support Specialist', CAST(N'2024-08-01' AS Date), CAST(N'2025-01-31' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (24, 8, 24, N'Service Delivery Manager', CAST(N'2024-08-01' AS Date), CAST(N'2025-01-31' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (25, 9, 25, N'Product Owner', CAST(N'2024-09-01' AS Date), CAST(N'2025-02-28' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (26, 9, 1, N'Scrum Master', CAST(N'2024-09-01' AS Date), CAST(N'2025-02-28' AS Date))
GO
INSERT [dbo].[ProjectAssignments] ([AssignmentID], [ProjectID], [EmployeeID], [Role], [StartDate], [EndDate]) VALUES (27, 9, 2, N'Front-End Developer', CAST(N'2024-09-01' AS Date), CAST(N'2025-02-28' AS Date))
GO
SET IDENTITY_INSERT [dbo].[ProjectAssignments] OFF
GO
SET IDENTITY_INSERT [dbo].[Projects] ON 
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (1, N'Website Redesign', CAST(N'2023-01-15' AS Date), CAST(N'2023-06-30' AS Date), CAST(150000.00 AS Decimal(15, 2)), 1, 5, N'In Progress', N'High', N'Complete overhaul of company website', CAST(65.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (2, N'Mobile App Development', CAST(N'2023-02-01' AS Date), CAST(N'2023-08-31' AS Date), CAST(200000.00 AS Decimal(15, 2)), 2, 7, N'In Progress', N'High', N'Develop a new mobile app for customer engagement', CAST(40.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (3, N'Cloud Migration', CAST(N'2023-03-10' AS Date), CAST(N'2023-09-30' AS Date), CAST(300000.00 AS Decimal(15, 2)), 3, 5, N'Planning', N'Medium', N'Migrate on-premise systems to cloud infrastructure', CAST(10.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (4, N'Data Analytics Platform', CAST(N'2023-04-01' AS Date), CAST(N'2024-03-31' AS Date), CAST(500000.00 AS Decimal(15, 2)), 4, 15, N'In Progress', N'High', N'Build a comprehensive data analytics platform', CAST(25.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (5, N'CRM Implementation', CAST(N'2023-05-15' AS Date), CAST(N'2023-11-30' AS Date), CAST(250000.00 AS Decimal(15, 2)), 5, 12, N'In Progress', N'Medium', N'Implement a new Customer Relationship Management system', CAST(50.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (6, N'Cybersecurity Upgrade', CAST(N'2023-06-01' AS Date), CAST(N'2023-12-31' AS Date), CAST(180000.00 AS Decimal(15, 2)), 6, 5, N'Planning', N'High', N'Enhance cybersecurity measures across the organization', CAST(5.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (7, N'AI Chatbot Development', CAST(N'2023-07-01' AS Date), CAST(N'2024-01-31' AS Date), CAST(120000.00 AS Decimal(15, 2)), 7, 7, N'Not Started', N'Medium', N'Develop an AI-powered chatbot for customer support', CAST(0.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (8, N'ERP System Upgrade', CAST(N'2023-08-15' AS Date), CAST(N'2024-08-14' AS Date), CAST(600000.00 AS Decimal(15, 2)), 8, 15, N'Planning', N'High', N'Upgrade the existing Enterprise Resource Planning system', CAST(15.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (9, N'Digital Marketing Campaign', CAST(N'2023-09-01' AS Date), CAST(N'2023-11-30' AS Date), CAST(100000.00 AS Decimal(15, 2)), 9, 8, N'In Progress', N'Medium', N'Launch a comprehensive digital marketing campaign', CAST(30.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (10, N'Supply Chain Optimization', CAST(N'2023-10-01' AS Date), CAST(N'2024-03-31' AS Date), CAST(350000.00 AS Decimal(15, 2)), 10, 12, N'Planning', N'High', N'Optimize the end-to-end supply chain process', CAST(5.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (11, N'Employee Training Program', CAST(N'2023-11-01' AS Date), CAST(N'2024-04-30' AS Date), CAST(80000.00 AS Decimal(15, 2)), 11, 4, N'Not Started', N'Medium', N'Develop and implement a company-wide training program', CAST(0.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (12, N'Product Launch', CAST(N'2023-12-01' AS Date), CAST(N'2024-05-31' AS Date), CAST(400000.00 AS Decimal(15, 2)), 12, 7, N'Planning', N'High', N'Launch a new flagship product', CAST(10.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (13, N'Office Expansion', CAST(N'2024-01-15' AS Date), CAST(N'2024-07-31' AS Date), CAST(1000000.00 AS Decimal(15, 2)), 13, 4, N'Planning', N'Medium', N'Expand office space to accommodate growth', CAST(5.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (14, N'Customer Loyalty Program', CAST(N'2024-02-01' AS Date), CAST(N'2024-08-31' AS Date), CAST(150000.00 AS Decimal(15, 2)), 14, 8, N'Not Started', N'Medium', N'Develop and launch a customer loyalty program', CAST(0.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (15, N'Blockchain Integration', CAST(N'2024-03-01' AS Date), CAST(N'2025-02-28' AS Date), CAST(500000.00 AS Decimal(15, 2)), 15, 5, N'Not Started', N'Low', N'Explore and implement blockchain technology', CAST(0.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (16, N'Green Initiative', CAST(N'2024-04-01' AS Date), CAST(N'2024-09-30' AS Date), CAST(200000.00 AS Decimal(15, 2)), 16, 4, N'Planning', N'Medium', N'Implement sustainability measures across the company', CAST(5.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (17, N'AR Product Visualization', CAST(N'2024-05-01' AS Date), CAST(N'2024-10-31' AS Date), CAST(250000.00 AS Decimal(15, 2)), 17, 7, N'Not Started', N'Low', N'Develop AR-based product visualization tools', CAST(0.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (18, N'Remote Work Infrastructure', CAST(N'2024-06-01' AS Date), CAST(N'2024-11-30' AS Date), CAST(300000.00 AS Decimal(15, 2)), 18, 5, N'Planning', N'High', N'Enhance infrastructure to support remote work', CAST(10.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (19, N'Customer Feedback System', CAST(N'2024-07-01' AS Date), CAST(N'2024-12-31' AS Date), CAST(100000.00 AS Decimal(15, 2)), 19, 18, N'Not Started', N'Medium', N'Implement a comprehensive customer feedback system', CAST(0.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (20, N'AI-Driven Forecasting', CAST(N'2024-08-01' AS Date), CAST(N'2025-07-31' AS Date), CAST(450000.00 AS Decimal(15, 2)), 20, 15, N'Not Started', N'Medium', N'Develop AI-driven forecasting models for business', CAST(0.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (21, N'Global Expansion', CAST(N'2024-09-01' AS Date), CAST(N'2025-08-31' AS Date), CAST(2000000.00 AS Decimal(15, 2)), 21, 12, N'Planning', N'High', N'Expand business operations to new international markets', CAST(5.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (22, N'Legacy System Retirement', CAST(N'2024-10-01' AS Date), CAST(N'2025-03-31' AS Date), CAST(150000.00 AS Decimal(15, 2)), 22, 5, N'Not Started', N'Low', N'Phase out and retire legacy systems', CAST(0.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (23, N'Employee Wellness Program', CAST(N'2024-11-01' AS Date), CAST(N'2025-04-30' AS Date), CAST(80000.00 AS Decimal(15, 2)), 23, 4, N'Not Started', N'Low', N'Implement a comprehensive employee wellness program', CAST(0.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (24, N'Vendor Management System', CAST(N'2024-12-01' AS Date), CAST(N'2025-05-31' AS Date), CAST(200000.00 AS Decimal(15, 2)), 24, 15, N'Not Started', N'Medium', N'Implement a new vendor management system', CAST(0.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Budget], [ClientID], [ProjectManager], [Status], [Priority], [Description], [CompletionPercentage]) VALUES (25, N'5G Network Implementation', CAST(N'2025-01-01' AS Date), CAST(N'2025-12-31' AS Date), CAST(1000000.00 AS Decimal(15, 2)), 25, 5, N'Not Started', N'High', N'Implement 5G network infrastructure', CAST(0.00 AS Decimal(5, 2)))
GO
SET IDENTITY_INSERT [dbo].[Projects] OFF
GO
SET IDENTITY_INSERT [dbo].[PurchaseOrderDetails] ON 
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (1, 1, 1, CAST(1000.00 AS Decimal(10, 2)), 50)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (2, 1, 2, CAST(1500.00 AS Decimal(10, 2)), 20)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (3, 2, 3, CAST(2000.00 AS Decimal(10, 2)), 10)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (4, 2, 4, CAST(2500.00 AS Decimal(10, 2)), 15)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (5, 3, 5, CAST(3000.00 AS Decimal(10, 2)), 25)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (6, 3, 6, CAST(3500.00 AS Decimal(10, 2)), 10)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (7, 4, 7, CAST(4000.00 AS Decimal(10, 2)), 5)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (8, 4, 8, CAST(4500.00 AS Decimal(10, 2)), 12)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (9, 5, 9, CAST(5000.00 AS Decimal(10, 2)), 18)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (10, 5, 10, CAST(5500.00 AS Decimal(10, 2)), 8)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (11, 6, 1, CAST(6000.00 AS Decimal(10, 2)), 30)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (12, 6, 2, CAST(6500.00 AS Decimal(10, 2)), 14)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (13, 7, 3, CAST(7000.00 AS Decimal(10, 2)), 20)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (14, 7, 4, CAST(7500.00 AS Decimal(10, 2)), 22)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (15, 8, 5, CAST(8000.00 AS Decimal(10, 2)), 10)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (16, 8, 6, CAST(8500.00 AS Decimal(10, 2)), 25)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (17, 9, 7, CAST(9000.00 AS Decimal(10, 2)), 12)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (18, 9, 8, CAST(9500.00 AS Decimal(10, 2)), 20)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (19, 10, 9, CAST(10000.00 AS Decimal(10, 2)), 5)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (20, 10, 10, CAST(10500.00 AS Decimal(10, 2)), 15)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (21, 11, 1, CAST(11000.00 AS Decimal(10, 2)), 25)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (22, 11, 2, CAST(11500.00 AS Decimal(10, 2)), 30)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (23, 12, 3, CAST(12000.00 AS Decimal(10, 2)), 10)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (24, 12, 4, CAST(12500.00 AS Decimal(10, 2)), 20)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (25, 13, 5, CAST(13000.00 AS Decimal(10, 2)), 8)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (26, 13, 6, CAST(13500.00 AS Decimal(10, 2)), 12)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (27, 14, 7, CAST(14000.00 AS Decimal(10, 2)), 14)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (28, 14, 8, CAST(14500.00 AS Decimal(10, 2)), 18)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (29, 15, 9, CAST(15000.00 AS Decimal(10, 2)), 16)
GO
INSERT [dbo].[PurchaseOrderDetails] ([PurchaseOrderDetailID], [PurchaseOrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (30, 15, 10, CAST(15500.00 AS Decimal(10, 2)), 20)
GO
SET IDENTITY_INSERT [dbo].[PurchaseOrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[PurchaseOrders] ON 
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (1, 1, 1, CAST(N'2024-01-01' AS Date), CAST(N'2024-01-10' AS Date), CAST(50000.00 AS Decimal(15, 2)), N'Pending')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (2, 2, 2, CAST(N'2024-01-05' AS Date), CAST(N'2024-01-15' AS Date), CAST(75000.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (3, 3, 3, CAST(N'2024-01-10' AS Date), CAST(N'2024-01-20' AS Date), CAST(60000.00 AS Decimal(15, 2)), N'Shipped')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (4, 4, 4, CAST(N'2024-01-15' AS Date), CAST(N'2024-01-25' AS Date), CAST(85000.00 AS Decimal(15, 2)), N'Pending')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (5, 5, 5, CAST(N'2024-01-20' AS Date), CAST(N'2024-01-30' AS Date), CAST(70000.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (6, 6, 6, CAST(N'2024-02-01' AS Date), CAST(N'2024-02-10' AS Date), CAST(90000.00 AS Decimal(15, 2)), N'Shipped')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (7, 7, 7, CAST(N'2024-02-05' AS Date), CAST(N'2024-02-15' AS Date), CAST(55000.00 AS Decimal(15, 2)), N'Pending')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (8, 8, 8, CAST(N'2024-02-10' AS Date), CAST(N'2024-02-20' AS Date), CAST(80000.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (9, 9, 9, CAST(N'2024-02-15' AS Date), CAST(N'2024-02-25' AS Date), CAST(95000.00 AS Decimal(15, 2)), N'Shipped')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (10, 10, 10, CAST(N'2024-03-01' AS Date), CAST(N'2024-03-10' AS Date), CAST(62000.00 AS Decimal(15, 2)), N'Pending')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (11, 11, 11, CAST(N'2024-03-05' AS Date), CAST(N'2024-03-15' AS Date), CAST(77000.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (12, 12, 12, CAST(N'2024-03-10' AS Date), CAST(N'2024-03-20' AS Date), CAST(68000.00 AS Decimal(15, 2)), N'Shipped')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (13, 13, 13, CAST(N'2024-03-15' AS Date), CAST(N'2024-03-25' AS Date), CAST(85000.00 AS Decimal(15, 2)), N'Pending')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (14, 14, 14, CAST(N'2024-04-01' AS Date), CAST(N'2024-04-10' AS Date), CAST(90000.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (15, 15, 15, CAST(N'2024-04-05' AS Date), CAST(N'2024-04-15' AS Date), CAST(72000.00 AS Decimal(15, 2)), N'Shipped')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (16, 16, 16, CAST(N'2024-04-10' AS Date), CAST(N'2024-04-20' AS Date), CAST(65000.00 AS Decimal(15, 2)), N'Pending')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (17, 17, 17, CAST(N'2024-04-15' AS Date), CAST(N'2024-04-25' AS Date), CAST(70000.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (18, 18, 18, CAST(N'2024-05-01' AS Date), CAST(N'2024-05-10' AS Date), CAST(75000.00 AS Decimal(15, 2)), N'Shipped')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (19, 19, 19, CAST(N'2024-05-05' AS Date), CAST(N'2024-05-15' AS Date), CAST(83000.00 AS Decimal(15, 2)), N'Pending')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (20, 20, 20, CAST(N'2024-05-10' AS Date), CAST(N'2024-05-20' AS Date), CAST(90000.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (21, 21, 1, CAST(N'2024-06-01' AS Date), CAST(N'2024-06-10' AS Date), CAST(95000.00 AS Decimal(15, 2)), N'Shipped')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (22, 22, 2, CAST(N'2024-06-05' AS Date), CAST(N'2024-06-15' AS Date), CAST(62000.00 AS Decimal(15, 2)), N'Pending')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (23, 23, 3, CAST(N'2024-06-10' AS Date), CAST(N'2024-06-20' AS Date), CAST(70000.00 AS Decimal(15, 2)), N'Completed')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (24, 24, 4, CAST(N'2024-06-15' AS Date), CAST(N'2024-06-25' AS Date), CAST(80000.00 AS Decimal(15, 2)), N'Shipped')
GO
INSERT [dbo].[PurchaseOrders] ([PurchaseOrderID], [SupplierID], [EmployeeID], [OrderDate], [DeliveryDate], [TotalAmount], [Status]) VALUES (25, 25, 5, CAST(N'2024-07-01' AS Date), CAST(N'2024-07-10' AS Date), CAST(85000.00 AS Decimal(15, 2)), N'Pending')
GO
SET IDENTITY_INSERT [dbo].[PurchaseOrders] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (1, 1, 1, 5, N'Excellent product, highly recommend!', CAST(N'2024-01-10' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (2, 1, 2, 4, N'Very good, but could be improved.', CAST(N'2024-01-12' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (3, 2, 3, 3, N'Average quality, not what I expected.', CAST(N'2024-02-05' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (4, 2, 4, 2, N'Not satisfied, arrived damaged.', CAST(N'2024-02-10' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (5, 3, 5, 5, N'Perfect! Exceeded all expectations.', CAST(N'2024-03-15' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (6, 3, 6, 4, N'Good value for the price.', CAST(N'2024-03-17' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (7, 4, 7, 2, N'Did not meet quality standards.', CAST(N'2024-04-20' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (8, 4, 8, 1, N'Terrible experience, will not buy again.', CAST(N'2024-04-22' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (9, 5, 9, 5, N'Absolutely fantastic, will buy more!', CAST(N'2024-05-10' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (10, 5, 10, 4, N'Good product but a bit expensive.', CAST(N'2024-05-12' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (11, 6, 11, 3, N'It’s okay, but I expected more.', CAST(N'2024-06-15' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (12, 6, 12, 2, N'Not worth the money.', CAST(N'2024-06-20' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (13, 7, 13, 4, N'Solid product, I am satisfied.', CAST(N'2024-07-10' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (14, 7, 14, 3, N'Decent product, nothing special.', CAST(N'2024-07-15' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (15, 8, 15, 5, N'Fantastic quality and performance.', CAST(N'2024-08-05' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (16, 8, 16, 4, N'Good, but delivery was late.', CAST(N'2024-08-10' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (17, 9, 17, 2, N'Below expectations, poor quality.', CAST(N'2024-09-12' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (18, 9, 18, 3, N'It’s okay, but had issues with packaging.', CAST(N'2024-09-15' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (19, 10, 19, 5, N'Exceeded all my expectations, great!', CAST(N'2024-10-05' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (20, 10, 20, 4, N'Good product, worth the price.', CAST(N'2024-10-10' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (21, 11, 21, 3, N'Product is fine but service was slow.', CAST(N'2024-11-05' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (22, 11, 22, 2, N'Quality not as expected, very disappointed.', CAST(N'2024-11-10' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (23, 12, 23, 5, N'Amazing product, will definitely recommend!', CAST(N'2024-12-01' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (24, 12, 24, 4, N'Very good, will consider buying again.', CAST(N'2024-12-05' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (25, 13, 25, 3, N'It’s acceptable but not the best.', CAST(N'2024-12-15' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (26, 13, 26, 2, N'Quality is not up to mark.', CAST(N'2024-12-20' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (27, 14, 1, 4, N'Nice product, will buy again.', CAST(N'2024-01-20' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (28, 14, 2, 5, N'Absolutely love it! Perfect.', CAST(N'2024-01-25' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (29, 15, 3, 2, N'Not great, had several issues.', CAST(N'2024-02-20' AS Date))
GO
INSERT [dbo].[Reviews] ([ReviewID], [ProductID], [CustomerID], [Rating], [Comment], [ReviewDate]) VALUES (30, 15, 4, 3, N'Decent, but could be better.', CAST(N'2024-02-25' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (1, N'Tech Solutions Inc.', N'John Doe', N'Sales Manager', N'123 Tech Ave', N'San Francisco', N'USA', N'555-1234', N'john.doe@techsolutions.com', N'Net 30', 5)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (2, N'Office Supplies Ltd.', N'Jane Smith', N'Purchasing Agent', N'456 Supply Rd', N'New York', N'USA', N'555-5678', N'jane.smith@officesupplies.com', N'Net 45', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (3, N'Furniture World', N'Emily Johnson', N'Account Executive', N'789 Furniture St', N'Chicago', N'USA', N'555-8765', N'emily.johnson@furnitureworld.com', N'Net 30', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (4, N'Electronic Essentials', N'Michael Brown', N'Vendor Manager', N'101 Electra Blvd', N'Los Angeles', N'USA', N'555-4321', N'michael.brown@electronicessentials.com', N'Net 60', 5)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (5, N'Gadget Hub', N'Sarah Davis', N'Product Specialist', N'202 Gadget Way', N'Houston', N'USA', N'555-3456', N'sarah.davis@gadgethub.com', N'Net 30', 3)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (6, N'Office Furniture Inc.', N'David Wilson', N'Regional Sales Manager', N'303 Office Park', N'Philadelphia', N'USA', N'555-6543', N'david.wilson@officefurniture.com', N'Net 45', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (7, N'Tech Gear Co.', N'Laura Lee', N'Marketing Director', N'404 Tech Lane', N'San Diego', N'USA', N'555-9876', N'laura.lee@techgear.com', N'Net 30', 5)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (8, N'Supplies Galore', N'Paul Harris', N'Sales Representative', N'505 Supplies Blvd', N'Dallas', N'USA', N'555-2468', N'paul.harris@suppliesgalore.com', N'Net 60', 3)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (9, N'Home Office Supplies', N'Anna Martinez', N'Customer Service', N'606 Home Office Dr', N'San Jose', N'USA', N'555-1357', N'anna.martinez@homeoffice.com', N'Net 45', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (10, N'Office Depot', N'Tom Clark', N'Senior Buyer', N'707 Depot St', N'Austin', N'USA', N'555-2469', N'tom.clark@officedepot.com', N'Net 30', 5)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (11, N'Workspace Solutions', N'Nancy Green', N'Supply Chain Manager', N'808 Workspace Ave', N'San Francisco', N'USA', N'555-3579', N'nancy.green@workspacesolutions.com', N'Net 30', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (12, N'Office Experts', N'Robert Lewis', N'Product Manager', N'909 Expert Dr', N'Seattle', N'USA', N'555-4680', N'robert.lewis@officeexperts.com', N'Net 60', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (13, N'Office Supplies Co.', N'Maria Hall', N'Operations Manager', N'1010 Supplies St', N'Denver', N'USA', N'555-5791', N'maria.hall@officesuppliesco.com', N'Net 30', 3)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (14, N'Furniture Express', N'James Young', N'Business Development', N'1111 Express Rd', N'Boston', N'USA', N'555-6802', N'james.young@furnitureexpress.com', N'Net 45', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (15, N'TechWorld Ltd.', N'Linda Scott', N'Sales Director', N'1212 TechWorld Blvd', N'Miami', N'USA', N'555-7913', N'linda.scott@techworld.com', N'Net 30', 5)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (16, N'Essential Supplies', N'Paul Wright', N'Account Manager', N'1313 Essential St', N'Orlando', N'USA', N'555-8024', N'paul.wright@essentialsupplies.com', N'Net 60', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (17, N'Pro Furniture', N'Karen Carter', N'Procurement Manager', N'1414 Pro Ave', N'Charlotte', N'USA', N'555-9135', N'karen.carter@profurniture.com', N'Net 45', 3)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (18, N'Tech Store', N'Steven Adams', N'Regional Manager', N'1515 Tech Store Blvd', N'Atlanta', N'USA', N'555-0246', N'steven.adams@techstore.com', N'Net 30', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (19, N'Office Supplies HQ', N'Betty Nelson', N'Head of Purchasing', N'1616 HQ Rd', N'Nashville', N'USA', N'555-1358', N'betty.nelson@officesuppliesshq.com', N'Net 60', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (20, N'Furniture Depot', N'George King', N'Director of Sales', N'1717 Depot Ave', N'Cleveland', N'USA', N'555-2467', N'george.king@furnituredepot.com', N'Net 45', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (21, N'Modern Tech', N'Emily Adams', N'Senior Account Manager', N'1818 Modern Tech Dr', N'Minneapolis', N'USA', N'555-3576', N'emily.adams@moderntech.com', N'Net 30', 5)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (22, N'Home Office Essentials', N'Jack Turner', N'Business Manager', N'1919 Home Office St', N'Saint Louis', N'USA', N'555-4681', N'jack.turner@homeofficeessentials.com', N'Net 30', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (23, N'Smart Solutions', N'Rebecca White', N'Product Coordinator', N'2020 Smart Ave', N'Baltimore', N'USA', N'555-5792', N'rebecca.white@smartsolutions.com', N'Net 45', 3)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (24, N'Elite Office Supplies', N'Christopher Walker', N'Logistics Manager', N'2121 Elite Blvd', N'Indianapolis', N'USA', N'555-6803', N'christopher.walker@eliteofficesupplies.com', N'Net 60', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (25, N'Office Gear Ltd.', N'Sophia Mitchell', N'Account Executive', N'2222 Gear Rd', N'Kansas City', N'USA', N'555-7914', N'sophia.mitchell@officegear.com', N'Net 30', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (26, N'Prime Suppliers', N'Daniel Hall', N'Client Relations', N'2323 Prime St', N'Fresno', N'USA', N'555-8025', N'daniel.hall@primesuppliers.com', N'Net 45', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (27, N'Global Tech', N'Olivia Brown', N'Sales Manager', N'2424 Global Blvd', N'Sacramento', N'USA', N'555-9136', N'olivia.brown@globaltech.com', N'Net 30', 5)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (28, N'Supply Co.', N'Ethan Smith', N'Product Specialist', N'2525 Supply Dr', N'Virginia Beach', N'USA', N'555-0247', N'ethan.smith@supplyco.com', N'Net 60', 4)
GO
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Country], [Phone], [Email], [PaymentTerms], [Rating]) VALUES (29, N'Tech Partners', N'Isabella Johnson', N'Operations Director', N'2626 Tech Partners St', N'Atlanta', N'USA', N'555-1359', N'isabella.johnson@techpartners.com', N'Net 30', 4)
GO
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[Training] ON 
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (1, N'Leadership Development', 1, CAST(N'2024-01-05' AS Date), 8, N'Conference Room A')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (2, N'Project Management', 2, CAST(N'2024-01-10' AS Date), 6, N'Conference Room B')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (3, N'Effective Communication', 3, CAST(N'2024-01-15' AS Date), 4, N'Conference Room C')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (4, N'Technical Skills Enhancement', 4, CAST(N'2024-01-20' AS Date), 8, N'Training Center')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (5, N'Customer Service Excellence', 5, CAST(N'2024-01-25' AS Date), 5, N'Conference Room A')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (6, N'Team Building Workshop', 6, CAST(N'2024-02-01' AS Date), 6, N'Conference Room B')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (7, N'Conflict Resolution', 7, CAST(N'2024-02-05' AS Date), 4, N'Conference Room C')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (8, N'Time Management', 8, CAST(N'2024-02-10' AS Date), 3, N'Training Center')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (9, N'Sales Techniques', 9, CAST(N'2024-02-15' AS Date), 5, N'Conference Room A')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (10, N'Product Knowledge', 10, CAST(N'2024-02-20' AS Date), 7, N'Conference Room B')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (11, N'Risk Management', 11, CAST(N'2024-03-01' AS Date), 6, N'Training Center')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (12, N'Innovation and Creativity', 12, CAST(N'2024-03-05' AS Date), 5, N'Conference Room C')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (13, N'Health and Safety Training', 13, CAST(N'2024-03-10' AS Date), 4, N'Conference Room A')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (14, N'Software Skills Training', 14, CAST(N'2024-03-15' AS Date), 6, N'Conference Room B')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (15, N'Legal Compliance', 15, CAST(N'2024-03-20' AS Date), 5, N'Training Center')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (16, N'Change Management', 16, CAST(N'2024-04-01' AS Date), 7, N'Conference Room C')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (17, N'Marketing Strategies', 17, CAST(N'2024-04-05' AS Date), 6, N'Conference Room A')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (18, N'Negotiation Skills', 18, CAST(N'2024-04-10' AS Date), 4, N'Conference Room B')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (19, N'Financial Management', 19, CAST(N'2024-04-15' AS Date), 5, N'Training Center')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (20, N'Leadership and Ethics', 20, CAST(N'2024-04-20' AS Date), 6, N'Conference Room C')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (21, N'Advanced Excel Training', 21, CAST(N'2024-05-01' AS Date), 8, N'Training Center')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (22, N'Customer Relationship Management', 22, CAST(N'2024-05-05' AS Date), 5, N'Conference Room A')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (23, N'Human Resources Management', 23, CAST(N'2024-05-10' AS Date), 6, N'Conference Room B')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (24, N'Digital Marketing', 24, CAST(N'2024-05-15' AS Date), 7, N'Training Center')
GO
INSERT [dbo].[Training] ([TrainingID], [TrainingName], [TrainerID], [TrainingDate], [DurationHours], [Location]) VALUES (25, N'Strategic Planning', 25, CAST(N'2024-05-20' AS Date), 6, N'Conference Room C')
GO
SET IDENTITY_INSERT [dbo].[Training] OFF
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[JobInterviews]  WITH CHECK ADD FOREIGN KEY([ApplicationID])
REFERENCES [dbo].[JobApplications] ([ApplicationID])
GO
ALTER TABLE [dbo].[JobInterviews]  WITH CHECK ADD FOREIGN KEY([InterviewerID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[ProjectAssignments]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[ProjectAssignments]  WITH CHECK ADD FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Projects] ([ProjectID])
GO
ALTER TABLE [dbo].[PurchaseOrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[PurchaseOrderDetails]  WITH CHECK ADD FOREIGN KEY([PurchaseOrderID])
REFERENCES [dbo].[PurchaseOrders] ([PurchaseOrderID])
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[PurchaseOrders]  WITH CHECK ADD FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[Training]  WITH CHECK ADD FOREIGN KEY([TrainerID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD CHECK  (([Rating]>=(1) AND [Rating]<=(5)))
GO
USE [master]
GO
ALTER DATABASE [simpledb] SET  READ_WRITE 
GO
