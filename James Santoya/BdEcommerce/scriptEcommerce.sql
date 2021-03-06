USE [master]
GO
/****** Object:  Database [ICommerce]    Script Date: 3/28/2016 5:08:27 PM ******/
CREATE DATABASE [ICommerce]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ICommerce', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ICommerce.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ICommerce_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ICommerce_log.ldf' , SIZE = 7040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ICommerce] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ICommerce].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ICommerce] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ICommerce] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ICommerce] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ICommerce] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ICommerce] SET ARITHABORT OFF 
GO
ALTER DATABASE [ICommerce] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ICommerce] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ICommerce] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ICommerce] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ICommerce] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ICommerce] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ICommerce] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ICommerce] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ICommerce] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ICommerce] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ICommerce] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ICommerce] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ICommerce] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ICommerce] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ICommerce] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ICommerce] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ICommerce] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ICommerce] SET RECOVERY FULL 
GO
ALTER DATABASE [ICommerce] SET  MULTI_USER 
GO
ALTER DATABASE [ICommerce] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ICommerce] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ICommerce] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ICommerce] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ICommerce] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ICommerce]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IdCategory] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NULL,
	[DescriptionCate] [nchar](100) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CheckIc]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckIc](
	[IdCheck] [int] IDENTITY(1,1) NOT NULL,
	[CheckNumber] [int] NULL,
	[CheckBank] [nchar](50) NULL,
 CONSTRAINT [PK_Check] PRIMARY KEY CLUSTERED 
(
	[IdCheck] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityCode] [tinyint] NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[StateCode] [tinyint] NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryCode] [tinyint] NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[IsoCode] [nchar](15) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CountryTax]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryTax](
	[CountryCode] [tinyint] NULL,
	[IdTax] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditCard]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCard](
	[IdCreditCard] [int] IDENTITY(1,1) NOT NULL,
	[CreditCardNumber] [int] NOT NULL,
	[ExpirationDate] [date] NOT NULL,
	[IdUser] [int] NOT NULL,
 CONSTRAINT [PK_CreditCard] PRIMARY KEY CLUSTERED 
(
	[IdCreditCard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Evaluation]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluation](
	[IdEvaluation] [tinyint] IDENTITY(1,1) NOT NULL,
	[Score] [nchar](10) NOT NULL,
	[IdUser] [int] NULL,
 CONSTRAINT [PK_Evaluation] PRIMARY KEY CLUSTERED 
(
	[IdEvaluation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Event]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[IdEvent] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nchar](100) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[IdEvent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Factory]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factory](
	[IdFactory] [int] NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[CountryCode] [tinyint] NULL,
	[IdEvaluation] [tinyint] NULL,
 CONSTRAINT [PK_Factory] PRIMARY KEY CLUSTERED 
(
	[IdFactory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FactoryEvaluation]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactoryEvaluation](
	[IdFactory] [int] NULL,
	[IdEvaluation] [tinyint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Offer]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offer](
	[IdOffer] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](100) NOT NULL,
	[DescriptionOffer] [nchar](150) NULL,
	[DateStart] [date] NOT NULL,
	[DateEnd] [date] NOT NULL,
	[PercentageOffer] [float] NOT NULL,
	[IdProduct] [int] NOT NULL,
 CONSTRAINT [PK_Offer] PRIMARY KEY CLUSTERED 
(
	[IdOffer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[IdOrder] [int] NOT NULL,
	[DateOrder] [date] NOT NULL,
	[IdStatus] [tinyint] NULL,
	[IdPayment] [int] NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[IdOrderDetail] [int] NOT NULL,
	[IdOrder] [int] NULL,
	[IdProduct] [int] NULL,
	[IdTax] [int] NULL,
	[QuantityTotal] [int] NULL,
	[SubTotal] [float] NULL,
	[Observation] [nchar](100) NULL,
	[Discount] [float] NULL,
	[DateOrder] [date] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[IdOrderDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[IdPayment] [int] NOT NULL,
	[DatePayment] [date] NULL,
	[IdPaymentType] [int] NULL,
	[Amount] [float] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[IdPayment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentType](
	[IdPaymentType] [int] NOT NULL,
	[IdCreditcard] [int] NULL,
	[IdPaypal] [int] NULL,
	[IdCheck] [int] NULL,
 CONSTRAINT [PK_PaymentType] PRIMARY KEY CLUSTERED 
(
	[IdPaymentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paypal]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paypal](
	[IdPaypal] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
 CONSTRAINT [PK_Paypal] PRIMARY KEY CLUSTERED 
(
	[IdPaypal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IdProduct] [int] NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[DescriptionProduct] [nchar](200) NOT NULL,
	[DateEntry] [date] NOT NULL,
	[DateExpiration] [date] NOT NULL,
	[IdCategory] [int] NOT NULL,
	[IdEvaluation] [tinyint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[ProductImage] [image] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductEvaluation]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductEvaluation](
	[IdProduct] [int] NULL,
	[IdEvaluation] [tinyint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductUser]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductUser](
	[IdProduct] [int] NULL,
	[IdUser] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IdRole] [tinyint] IDENTITY(1,1) NOT NULL,
	[Type] [nchar](20) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipment](
	[IdShipment] [int] NOT NULL,
	[IdOrder] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
	[IdFactory] [int] NOT NULL,
	[IdStatus] [tinyint] NOT NULL,
	[ShipmentDate] [date] NOT NULL,
	[ArrivalDate] [date] NOT NULL,
 CONSTRAINT [PK_Shipment] PRIMARY KEY CLUSTERED 
(
	[IdShipment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateCode] [tinyint] NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[CountryCode] [tinyint] NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[IdStatus] [tinyint] NOT NULL,
	[Description] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[IdStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tax]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax](
	[IdTax] [int] NOT NULL,
	[CountryCode] [tinyint] NULL,
	[TaxPercent] [float] NULL,
 CONSTRAINT [PK_Tax] PRIMARY KEY CLUSTERED 
(
	[IdTax] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeId]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeId](
	[IdTypeId] [tinyint] IDENTITY(1,1) NOT NULL,
	[Type] [nchar](10) NULL,
 CONSTRAINT [PK_TypeId] PRIMARY KEY CLUSTERED 
(
	[IdTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserEvent]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEvent](
	[IdEventUser] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
	[IdEvent] [int] NOT NULL,
	[DateLogin] [date] NOT NULL,
	[DateLogout] [date] NOT NULL,
	[ProcedureUser] [nchar](100) NULL,
	[Likes] [nchar](100) NULL,
 CONSTRAINT [PK_UserEvent] PRIMARY KEY CLUSTERED 
(
	[IdEventUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserIcommerce]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserIcommerce](
	[IdUser] [int] NOT NULL,
	[IdTypeId] [tinyint] NOT NULL,
	[UserName] [nchar](20) NOT NULL,
	[PasswordUser] [nchar](40) NOT NULL,
	[Name] [nchar](25) NOT NULL,
	[LastName] [nchar](25) NOT NULL,
	[Gender] [char](1) NOT NULL,
	[Email] [nchar](50) NOT NULL,
	[PhoneNumber] [nchar](30) NULL,
	[IdRole] [tinyint] NOT NULL,
	[CityCode] [tinyint] NOT NULL,
	[StateCode] [nchar](10) NULL,
	[FactoryName] [nchar](10) NOT NULL,
	[IdCreditCard] [int] NOT NULL,
	[IdPayPal] [int] NOT NULL,
	[IdStatus] [tinyint] NOT NULL,
	[PostalCode] [tinyint] NOT NULL,
	[Adress] [nchar](70) NOT NULL,
	[IdEvaluation] [tinyint] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[IdRole] [tinyint] NULL,
	[IdUserRole] [tinyint] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[IdUserRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_State1] FOREIGN KEY([StateCode])
REFERENCES [dbo].[State] ([StateCode])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_State1]
GO
ALTER TABLE [dbo].[CountryTax]  WITH CHECK ADD  CONSTRAINT [FK_CountryTax_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[CountryTax] CHECK CONSTRAINT [FK_CountryTax_Country]
GO
ALTER TABLE [dbo].[CountryTax]  WITH CHECK ADD  CONSTRAINT [FK_CountryTax_Tax] FOREIGN KEY([IdTax])
REFERENCES [dbo].[Tax] ([IdTax])
GO
ALTER TABLE [dbo].[CountryTax] CHECK CONSTRAINT [FK_CountryTax_Tax]
GO
ALTER TABLE [dbo].[CreditCard]  WITH CHECK ADD  CONSTRAINT [FK_CreditCard_UserIcommerce] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserIcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[CreditCard] CHECK CONSTRAINT [FK_CreditCard_UserIcommerce]
GO
ALTER TABLE [dbo].[Factory]  WITH CHECK ADD  CONSTRAINT [FK_Factory_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[Factory] CHECK CONSTRAINT [FK_Factory_Country]
GO
ALTER TABLE [dbo].[FactoryEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_FactoryEvaluation_Evaluation] FOREIGN KEY([IdEvaluation])
REFERENCES [dbo].[Evaluation] ([IdEvaluation])
GO
ALTER TABLE [dbo].[FactoryEvaluation] CHECK CONSTRAINT [FK_FactoryEvaluation_Evaluation]
GO
ALTER TABLE [dbo].[FactoryEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_FactoryEvaluation_Factory] FOREIGN KEY([IdFactory])
REFERENCES [dbo].[Factory] ([IdFactory])
GO
ALTER TABLE [dbo].[FactoryEvaluation] CHECK CONSTRAINT [FK_FactoryEvaluation_Factory]
GO
ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [FK_Offer_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [FK_Offer_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Payment] FOREIGN KEY([IdPayment])
REFERENCES [dbo].[Payment] ([IdPayment])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Payment]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([IdStatus])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[Order] ([IdOrder])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Tax] FOREIGN KEY([IdTax])
REFERENCES [dbo].[Tax] ([IdTax])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Tax]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_PaymentType] FOREIGN KEY([IdPaymentType])
REFERENCES [dbo].[PaymentType] ([IdPaymentType])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_PaymentType]
GO
ALTER TABLE [dbo].[PaymentType]  WITH CHECK ADD  CONSTRAINT [FK_PaymentType_Check] FOREIGN KEY([IdCheck])
REFERENCES [dbo].[CheckIc] ([IdCheck])
GO
ALTER TABLE [dbo].[PaymentType] CHECK CONSTRAINT [FK_PaymentType_Check]
GO
ALTER TABLE [dbo].[PaymentType]  WITH CHECK ADD  CONSTRAINT [FK_PaymentType_CreditCard] FOREIGN KEY([IdCreditcard])
REFERENCES [dbo].[CreditCard] ([IdCreditCard])
GO
ALTER TABLE [dbo].[PaymentType] CHECK CONSTRAINT [FK_PaymentType_CreditCard]
GO
ALTER TABLE [dbo].[PaymentType]  WITH CHECK ADD  CONSTRAINT [FK_PaymentType_Paypal] FOREIGN KEY([IdPaypal])
REFERENCES [dbo].[Paypal] ([IdPaypal])
GO
ALTER TABLE [dbo].[PaymentType] CHECK CONSTRAINT [FK_PaymentType_Paypal]
GO
ALTER TABLE [dbo].[Paypal]  WITH CHECK ADD  CONSTRAINT [FK_Paypal_UserIcommerce] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserIcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[Paypal] CHECK CONSTRAINT [FK_Paypal_UserIcommerce]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([IdCategory])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[ProductEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProductEvaluation_Evaluation] FOREIGN KEY([IdEvaluation])
REFERENCES [dbo].[Evaluation] ([IdEvaluation])
GO
ALTER TABLE [dbo].[ProductEvaluation] CHECK CONSTRAINT [FK_ProductEvaluation_Evaluation]
GO
ALTER TABLE [dbo].[ProductEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProductEvaluation_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[ProductEvaluation] CHECK CONSTRAINT [FK_ProductEvaluation_Product]
GO
ALTER TABLE [dbo].[ProductUser]  WITH CHECK ADD  CONSTRAINT [FK_ProductUser_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[ProductUser] CHECK CONSTRAINT [FK_ProductUser_Product]
GO
ALTER TABLE [dbo].[ProductUser]  WITH CHECK ADD  CONSTRAINT [FK_ProductUser_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserIcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[ProductUser] CHECK CONSTRAINT [FK_ProductUser_User]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Factory] FOREIGN KEY([IdFactory])
REFERENCES [dbo].[Factory] ([IdFactory])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Factory]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Order] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[Order] ([IdOrder])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Order]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([IdStatus])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Status]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserIcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_User]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country1] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_Country1]
GO
ALTER TABLE [dbo].[UserEvent]  WITH CHECK ADD  CONSTRAINT [FK_UserEvent_Event] FOREIGN KEY([IdEvent])
REFERENCES [dbo].[Event] ([IdEvent])
GO
ALTER TABLE [dbo].[UserEvent] CHECK CONSTRAINT [FK_UserEvent_Event]
GO
ALTER TABLE [dbo].[UserEvent]  WITH CHECK ADD  CONSTRAINT [FK_UserEvent_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserIcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[UserEvent] CHECK CONSTRAINT [FK_UserEvent_User]
GO
ALTER TABLE [dbo].[UserIcommerce]  WITH CHECK ADD  CONSTRAINT [FK_User_Country] FOREIGN KEY([CityCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[UserIcommerce] CHECK CONSTRAINT [FK_User_Country]
GO
ALTER TABLE [dbo].[UserIcommerce]  WITH CHECK ADD  CONSTRAINT [FK_User_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([IdStatus])
GO
ALTER TABLE [dbo].[UserIcommerce] CHECK CONSTRAINT [FK_User_Status]
GO
ALTER TABLE [dbo].[UserIcommerce]  WITH CHECK ADD  CONSTRAINT [FK_User_TypeId] FOREIGN KEY([IdTypeId])
REFERENCES [dbo].[TypeId] ([IdTypeId])
GO
ALTER TABLE [dbo].[UserIcommerce] CHECK CONSTRAINT [FK_User_TypeId]
GO
ALTER TABLE [dbo].[UserIcommerce]  WITH CHECK ADD  CONSTRAINT [FK_UserIcommerce_Evaluation] FOREIGN KEY([IdEvaluation])
REFERENCES [dbo].[Evaluation] ([IdEvaluation])
GO
ALTER TABLE [dbo].[UserIcommerce] CHECK CONSTRAINT [FK_UserIcommerce_Evaluation]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([IdRole])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserIcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
/****** Object:  StoredProcedure [dbo].[CreateCategory]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCategory]
@Name nchar(30),
@DescriptionCate nchar(100)

AS

BEGIN


SET NOCOUNT ON;
	insert into Category
	(Name, DescriptionCate)
	values (@Name,@DescriptionCate);

END


GO
/****** Object:  StoredProcedure [dbo].[CreateCheck]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCheck]
	@CheckNumber int,
	@CheckBank nchar (50)
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into CheckIc
	(CheckNumber,CheckBank)
	values (@CheckNumber,@CheckBank);

END


GO
/****** Object:  StoredProcedure [dbo].[CreateCity]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCity]
@CityCode tinyint,
@Name nchar(30),
@StateCode tinyint

AS
BEGIN
	

	SET NOCOUNT ON;

    insert into City (CityCode, Name,StateCode)
	values(@CityCode, @Name,@StateCode);
END

GO
/****** Object:  StoredProcedure [dbo].[CreateCountry]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCountry]

@CountryCode tinyint,
@Name nchar(30),
@IsoCode nchar(15)


AS
BEGIN
	
	SET NOCOUNT ON;

    
INSERT INTO  Country (CountryCode,Name, IsoCode)
VALUES
(@CountryCode, @Name,@IsoCode);



END

GO
/****** Object:  StoredProcedure [dbo].[CreateCountryTax]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCountryTax]

@CountryCode tinyint,
@IdTax int

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
insert into CountryTax (CountryCode,IdTax)
values
(@CountryCode,@IdTax);

END

GO
/****** Object:  StoredProcedure [dbo].[CreateCreditCard]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateCreditCard]
@IdCreditCard int,
@CreditCardNumber int,
@ExpirationDate date,
@IdUser int

AS
BEGIN

	SET NOCOUNT ON;

	insert into CreditCard (IdCreditCard,CreditCardNumber,ExpirationDate, IdUser)
	values
	(@IdCreditCard, @CreditCardNumber, @ExpirationDate,@IdUser)
END

GO
/****** Object:  StoredProcedure [dbo].[CreateEvaluation]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE
 [dbo].[CreateEvaluation]

@IdEvaluation tinyint,
@Score nchar (10)

AS

BEGIN
	
	SET NOCOUNT ON;

    
insert into Evaluation(IdEvaluation, Score)
values
(@IdEvaluation, @Score);



END

GO
/****** Object:  StoredProcedure [dbo].[CreateEvent]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateEvent]
@IdEvent int,
@Description nchar (100)

AS

BEGIN
	
	SET NOCOUNT ON;
insert into Event (IdEvent,Description)

values
(@IdEvent,@Description);

END

GO
/****** Object:  StoredProcedure [dbo].[CreateFactory]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateFactory]
	@IdFactory int,
	@Name nchar(50),
	@CountryCode tinyint,
	@IdEvaluation tinyint
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into Factory
	(IdFactory,Name,CountryCode,IdEvaluation)
	values (@IdFactory,@Name,@CountryCode,@IdEvaluation);

END

GO
/****** Object:  StoredProcedure [dbo].[CreateFactoryEvaluation]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateFactoryEvaluation]
	@IdFactory int,
	@IdEvaluation tinyint
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into FactoryEvaluation
	(IdFactory,IdEvaluation)
	values (@IdFactory,@IdEvaluation);

END


GO
/****** Object:  StoredProcedure [dbo].[CreateOffer]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateOffer]
	@Name nchar(100),
	@DescriptionOffer nchar(150),
	@DateStart date,
	@DateEnd date,
	@PercentageOffer float,
	@IdProduct int
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into Offer
	(Name, DescriptionOffer, DateStart, DateEnd,PercentageOffer,IdProduct)
	values ( @Name, @DescriptionOffer, @DateStart, @DateEnd,@PercentageOffer,@IdProduct);

END

GO
/****** Object:  StoredProcedure [dbo].[CreateOrder]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateOrder]
	@IdOrder int,
	@DateOrder date,
	@IdStatus tinyint,
	@IdPayment int,
	@Total float
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into [dbo].[Order]
	(IdOrder, DateOrder,IdStatus,IdPayment,Total)
	values (@IdOrder,@DateOrder,@IdStatus,@IdPayment,@Total);

END

GO
/****** Object:  StoredProcedure [dbo].[CreateOrderDetail]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateOrderDetail]
	@IdOrderDetail int,
	@IdOrder int,
	@IdProduct int,
	@IdTax int,
	@QuantityTotal int,
	@SubTotal float,
	@Observation nchar(100),
	@Discount float,
	@DataOrder date
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into OrderDetail
	(IdOrderDetail,IdOrder,IdProduct,Idtax,QuantityTotal,SubTotal,Observation,Discount,DateOrder)
	values (@IdOrderDetail,@IdOrder,@IdProduct,@Idtax,@QuantityTotal,@SubTotal,@Observation,@Discount,@DataOrder);

END


GO
/****** Object:  StoredProcedure [dbo].[CreatePayment]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreatePayment]
	@IdPayment int,
	@DatePayment date,
	@IdPaymentType int,
	@Amount float
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into Payment
	(IdPayment, DatePayment,IdPaymentType,Amount)
	values (@IdPayment,@DatePayment,@IdPaymentType,@Amount);

END


GO
/****** Object:  StoredProcedure [dbo].[CreatePaypal]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreatePaypal]
	@IdPaypal int,
	@IdUser int
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into Paypal
	(IdPaypal, IdUser)
	values (@IdPaypal, @IdUser);

END

GO
/****** Object:  StoredProcedure [dbo].[CreateProduct]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateProduct]
	@IdProduct int,
	@Name nchar(30),
	@DescriptionProduct nchar(200),
	@DateEntry date,
	@DateExpiration date,
	@IdCategory int,
	@IdEvaluation tinyint,
	@Quantity int,
	@UnitPrice float,
	@ProductImage image 
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into Product
	(IdProduct,Name,DescriptionProduct,DateEntry,DateExpiration,IdCategory,IdEvaluation,Quantity,UnitPrice,ProductImage)
	values (@IdProduct,@Name,@DescriptionProduct,@DateEntry,@DateExpiration,@IdCategory,
	@IdEvaluation,@Quantity,@UnitPrice,@ProductImage);

END

GO
/****** Object:  StoredProcedure [dbo].[CreateProductEvaluation]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateProductEvaluation]
	@IdProduct int,
	@IdEvaluation tinyint
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into ProductEvaluation
	(IdProduct,IdEvaluation)
	values (@IdProduct,@IdEvaluation);

END


GO
/****** Object:  StoredProcedure [dbo].[CreateProductUser]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateProductUser]
	@IdProduct int,
	@IdUser int
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into ProductUser
	(IdProduct,IdUser)
	values (@IdProduct, @IdUser);

END


GO
/****** Object:  StoredProcedure [dbo].[CreateRole]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateRole]
	
	@Type nchar (20)
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into Role
	([dbo].[Type])
	values (@Type);

END
GO
/****** Object:  StoredProcedure [dbo].[CreateShipment]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateShipment]
	@IdShipment int,
	@IdOrder int,
	@IdUser int,
	@IdFactory int,
	@IdStatus tinyint,
	@ShipmentDate date,
	@ArrivalDate date
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into Shipment
	(IdShipment,IdOrder,IdUser,IdFactory,IdStatus,ShipmentDate,ArrivalDate)
	values (@IdShipment,@IdOrder,@IdUser,@IdFactory,@IdStatus,@ShipmentDate,@ArrivalDate);

END


GO
/****** Object:  StoredProcedure [dbo].[CreateState]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateState]
	@StateCode tinyint,
	@Name nchar(30),
	@CountryCode tinyint
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into [dbo].[State]
	(StateCode, Name, CountryCode)
	values (@StateCode, @Name, @CountryCode);

END

GO
/****** Object:  StoredProcedure [dbo].[CreateStatus]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateStatus]
	@IdStatus tinyint,
	@Description nchar(20)
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into [dbo].[Status]
	(IdStatus, [dbo].[Description])
	values (@IdStatus,@Description);

END

GO
/****** Object:  StoredProcedure [dbo].[CreateTax]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateTax]
	@IdTax int,
	@CountryCode tinyint,
	@TaxPercent float
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into Tax
	(IdTax,CountryCode,TaxPercent)
	values (@IdTax,@CountryCode,@TaxPercent);

END

GO
/****** Object:  StoredProcedure [dbo].[CreateTypeId]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateTypeId]
	@IdTypeId tinyint,
	@Type nchar (10)
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into TypeId
	(IdTypeId,[dbo].[Type])
	values (@IdTypeId,@Type);

END

GO
/****** Object:  StoredProcedure [dbo].[CreateUserEvent]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateUserEvent]
	@IdEventUser int,
	@IdUser int,
	@IdEvent int,
	@DateLogin date,
	@DateLogout date,
	@ProcedureUser nchar(100),
	@Likes nchar(100)
	AS
BEGIN
	
	SET NOCOUNT ON;
	insert into UserEvent
	(IdEventUser, IdUser,IdEvent,DateLogin,DateLogout,ProcedureUser,Likes)
	values (@IdEventUser, @IdUser,@IdEvent,@DateLogin,@DateLogout,@ProcedureUser,@Likes);

END

GO
/****** Object:  StoredProcedure [dbo].[CreateUserIcommerce]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateUserIcommerce]
	@IdUser int,
	@IdTypeId tinyint,
	@UserName nchar(20),
	@PasswordUser nchar(40),
	@Name nchar(25),
	@LastName nchar(25),
	@Gender char(1),
	@Email nchar(50),
	@PhoneNumber nchar(30),
	@IdRole tinyint,
	@CountryCode tinyint,
	@FactoryName nchar(10),
	@IdCreditCard int,
	@IdPaypal int,
	@IdStatus tinyint,
	@PostalCode tinyint,
	@Adress nchar(70),
	@IdEvaluation tinyint
AS
BEGIN
	SET NOCOUNT ON;
	insert into [dbo].[UserIcommerce]
	(IdUser,IdTypeId,UserName,PasswordUser,Name,LastName,Gender,Email,PhoneNumber,IdRole,CountryCode,FactoryName,IdCreditCard,
	IdPayPal,IdStatus,PostalCode,Adress, IdEvaluation)
	values (@IdUser,@IdTypeId,@UserName,@PasswordUser,@Name,@LastName,@Gender,@Email,@PhoneNumber,@IdRole,@CountryCode,@FactoryName,@IdCreditCard,
	@IdPayPal,@IdStatus,@PostalCode,@Adress,@IdEvaluation);

END
GO
/****** Object:  StoredProcedure [dbo].[CreateUserRole]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateUserRole]
	@IdRole tinyint,
	@IdUserRole tinyint,
	@IdUser int
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into [dbo].[UserRole]
	(IdRole, IdUserRole,IdUser)
	values (@IdRole,@IdUserRole,@IdUser);

END

GO
/****** Object:  StoredProcedure [dbo].[DeleteCategory]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCategory] 
	@IdCategory int
AS
BEGIN
	
	SET NOCOUNT ON;

  delete from Category
  where IdCategory=@IdCategory;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteCheckIc]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCheckIc]
	@IdCheck int

AS
BEGIN
	
	SET NOCOUNT ON;

	delete from CheckIc
	where IdCheck=@IdCheck;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteCity]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCity] 
	@CityCode tinyint
AS
BEGIN
	
	SET NOCOUNT ON;

  delete from City
  where CityCode=@CityCode;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteCountry]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCountry] 
@CountryCode tinyint

AS
BEGIN
	
	SET NOCOUNT ON;

  delete from Country
  where CountryCode=@CountryCode;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteCountryTax]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCountryTax]
@CountryCode tinyint
AS
BEGIN
	
	SET NOCOUNT ON;
	delete from CountryTax
	where CountryCode=@CountryCode;
  
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteCreditCard]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCreditCard] 
	
	@IdCreditCard int
AS
BEGIN
	
	SET NOCOUNT ON;

  delete from CreditCard
  where IdCreditCard=@IdCreditCard;
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteEvaluation]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteEvaluation] 
	@IdEvaluation tinyint

AS

BEGIN
	
	SET NOCOUNT ON;

  delete from Evaluation
  where IdEvaluation=@IdEvaluation;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteEvent]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteEvent] 
	@IdEvent int
AS
BEGIN
	
	SET NOCOUNT ON;

  delete from Event
  where IdEvent=@IdEvent;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteFactory]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteFactory]
	@IdFactory int
AS
BEGIN
	
	SET NOCOUNT ON;

	delete from Factory
	where IdFactory=@IdFactory;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteFactoryEvaluation]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteFactoryEvaluation]
	@IdFactory int

AS
BEGIN
	
	SET NOCOUNT ON;

	delete from FactoryEvaluation
	where IdFactory=@IdFactory;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteOffer]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteOffer]
	@IdOffer int

AS
BEGIN
	
	SET NOCOUNT ON;

	delete from Offer
	where IdOffer=@IdOffer;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteOrder]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteOrder]
	@IdOrder int


AS
BEGIN
	
	SET NOCOUNT ON;

	delete from [dbo].[Order]
	where IdOrder=@IdOrder;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteOrderDetail]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteOrderDetail]
	@IdOrderDetail int

AS
BEGIN
	
	SET NOCOUNT ON;

	delete from OrderDetail
	where IdOrderDetail=@IdOrderDetail;
END

GO
/****** Object:  StoredProcedure [dbo].[DeletePayment]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeletePayment]
	@IdPayment int
AS
BEGIN
	
	SET NOCOUNT ON;

	delete from Payment
	where IdPayment=@IdPayment;
END

GO
/****** Object:  StoredProcedure [dbo].[DeletePaypal]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeletePaypal]
	@IdPaypal int
AS
BEGIN
	
	SET NOCOUNT ON;

	delete from Paypal
	where IdPaypal=@IdPaypal;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteProduct]
	@IdProduct int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	delete from Product
	where IdProduct=@IdProduct;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteProductEvaluation]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteProductEvaluation]
	@IdProduct int

AS
BEGIN
	
	SET NOCOUNT ON;

	delete from ProductEvaluation
	where IdProduct=@IdProduct;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteProductUser]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteProductUser]
	@IdProduct int
AS
BEGIN
	
	SET NOCOUNT ON;

	delete from ProductUser
	where IdProduct=@IdProduct;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteRole]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteRole]
	@IdRole tinyint

AS
BEGIN
	
	SET NOCOUNT ON;

	delete from [dbo].[Role]
	where IdRole=@IdRole;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteShipment]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteShipment]
	@IdShipment int

AS
BEGIN
	
	SET NOCOUNT ON;

	delete from Shipment
	where IdShipment=@IdShipment;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteState]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteState]
	@StateCode tinyint

AS
BEGIN
	
	SET NOCOUNT ON;

	delete from [dbo].[State]
	where StateCode=@StateCode;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteStatus]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteStatus]
	@IdStatus tinyint

AS
BEGIN
	
	SET NOCOUNT ON;

	delete from [dbo].[Status]
	where IdStatus=@IdStatus;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteTax]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteTax]
	@IdTax int,
	@CountryCode tinyint,
	@TaxPercent float

AS
BEGIN
	
	SET NOCOUNT ON;

	delete from Tax
	where IdTax=@IdTax;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteTypeId]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteTypeId]
	@IdTypeId tinyint

AS
BEGIN
	
	SET NOCOUNT ON;

	delete from TypeId
	where IdTypeId=@IdTypeId;
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteUserEvent]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteUserEvent]
	@IdEventUser int
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	delete from UserEvent
	where IdEventUser=@IdEventUser;
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteUserIcommerce]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteUserIcommerce]
	@IdUser int

AS
BEGIN
	
	SET NOCOUNT ON;

	delete from [dbo].[User]
	where IdUser=@IdUser;
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteUserRole]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteUserRole]
	@IdRole tinyint
AS
BEGIN
	
	SET NOCOUNT ON;

	delete from UserRole
	where IdRole=@IdRole;
END


GO
/****** Object:  StoredProcedure [dbo].[ReadCategory]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadCategory]
@IdCategory int,
@Name nchar (30),
@DescriptionCate nchar(100)
	
AS
BEGIN
	
	SET NOCOUNT ON;

 Select IdCategory,Name,DescriptionCate from Category 
 where IdCategory=@IdCategory;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadCheckIc]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadCheckIc] 
@IdCheck int,
@CheckNumber int,
@CheckBank nchar(50)	


AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT IdCheck, CheckNumber,CheckBank from CheckIc
	Where IdCheck = @IdCheck;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadCity]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadCity] 
@CityCode tinyint,
@Name nchar(30),
@State nchar(15)

AS
BEGIN

	SET NOCOUNT ON;
	select CityCode, Name, StateCode from City
	where CityCode=@CityCode;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadCountry]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadCountry]
@CountryCode tinyint,
@Name nchar(30),
@IsoCode nchar(15)

AS
BEGIN
	
	SET NOCOUNT ON;

	select CountryCode, Name, IsoCode from Country
	where CountryCode=@CountryCode;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadCountryTax]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadCountryTax]

@CountryCode tinyint,
@IdTax int

	
AS
BEGIN
	
	SET NOCOUNT ON;

 Select CountryCode,IdTax from CountryTax 
 where CountryCode=@CountryCode;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadCreditCard]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadCreditCard]
@IdCreditCard int,
@CreditCardNumber int,
@ExpirationDate date,
@IdUser int
	
AS
BEGIN
	
	SET NOCOUNT ON;

 Select IdCreditCard,CreditCardNumber,ExpirationDate, IdUser from CreditCard
 where IdCreditCard=@IdCreditCard;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadEvaluation]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadEvaluation]
@IdEvaluation tinyint,
@Score nchar (10)
	
AS
BEGIN
	
	SET NOCOUNT ON;

 Select IdEvaluation,Score from Evaluation 
 where IdEvaluation=@IdEvaluation;
END


GO
/****** Object:  StoredProcedure [dbo].[ReadEvent]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadEvent]
@IdEvent int,
@Description nchar(100)
	
AS
BEGIN
	
	SET NOCOUNT ON;

 Select IdEvent,Description from Event
 where IdEvent=@IdEvent;
END


GO
/****** Object:  StoredProcedure [dbo].[ReadFactory]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadFactory] 
@IdFactory int,
@Name nchar(50),
@CountryCode tinyint,
@IdEvaluation tinyint	


AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT IdFactory, Name,CountryCode,IdEvaluation from Factory
	Where IdFactory = @IdFactory;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadFactoryEvaluation]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadFactoryEvaluation] 
@IdFactory int,
@IdEvaluation tinyint	


AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT IdFactory,IdEvaluation from FactoryEvaluation
	Where IdFactory = @IdFactory;
END
GO
/****** Object:  StoredProcedure [dbo].[ReadOffer]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadOffer] 
@IdOffer int

AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT IdOffer, Name, DescriptionOffer, DateStart,DateEnd,PercentageOffer,IdProduct from Offer
	Where IdOffer = @IdOffer;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadOrder]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadOrder] 
@IdOrder int,
@DateOrder date,
@IdStatus tinyint,
@IdPayment int,
@Total float	


AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT IdOrder, DateOrder, IdStatus, IdPayment, Total from [dbo].[Order]
	Where IdOrder = @IdOrder;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadOrderDetail]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadOrderDetail] 
@IdOrderDetail int,
@IdOrder int,
@IdProduct int,
@IdTax int,
@QuantityTotal int,
@SubTotal float,
@Observation nchar (100),
@Discount float,
@DateOrder date

AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT IdOrderDetail, IdOrder, IdProduct, IdTax,QuantityTotal, SubTotal,Observation,
	Discount, DateOrder from OrderDetail
	Where IdOrderDetail = @IdOrderDetail;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadPayment]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadPayment] 
@IdPayment int,
@DatePayment date,
@IdPaymentType int,
@Amount float	


AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT IdPayment,DatePayment,IdPaymentType,Amount from Payment
	Where IdPayment = @IdPayment;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadPaypal]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadPaypal] 
@IdPaypal int,
@IdUser int	


AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT IdPaypal, IdUser from Paypal
	Where IdPaypal = @IdPaypal;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadProduct]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadProduct] 
@IdProduct int,
@Name nchar (30),
@DescriptionProduct nchar (200),
@DateEntry date,
@DateExpiration date,
@IdCategory int,
@IdEvaluation tinyint,
@Quantity int,
@UnitPrice float,
@ProductImage image


AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT IdProduct, Name, DescriptionProduct, DateEntry,DateExpiration,IdCategory, 
	IdEvaluation,Quantity,UnitPrice,ProductImage from [dbo].[Product]
	Where IdProduct = @IdProduct;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadProductEvaluation]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadProductEvaluation] 
@IdProduct int,
@IdEvaluation tinyint


AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT IdProduct, IdEvaluation from ProductEvaluation
	Where IdProduct= @IdProduct;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadProductUser]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadProductUser] 
@IdProduct int,
@IdUser int	


AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT IdProduct,IdUser from ProductUser
	Where IdProduct = @IdProduct;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadRole]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadRole] 
@IdRole tinyint,
@Type nchar (20)	


AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT IdRole, Type  from [dbo].[Role]
	Where IdRole=@IdRole;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadShipment]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadShipment] 
	@IdShipment int,
	@IdOrder int,
	@IdUser int,
	@IdFactory int,
	@IdStatus tinyint,
	@ShipmentDate date,
	@ArrivalDate date


AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT IdShipment,IdOrder,IdUser,IdFactory,IdStatus,ShipmentDate,ArrivalDate from Shipment
	Where IdShipment = @IdShipment;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadState]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadState] 
@StateCode tinyint,
@Name nchar (30),
@CountryCode tinyint

AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT StateCode, Name, CountryCode from [dbo].[State]
	Where StateCode=StateCode;
END


GO
/****** Object:  StoredProcedure [dbo].[ReadStatus]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadStatus] 
@IdStatus tinyint,
@Description nchar(20)	


AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT IdStatus, Description from [dbo].[Status]
	Where IdStatus = @IdStatus;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadTax]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ReadTax] 
@IdTax int,
@CountryCode tinyint,
@TaxPercent float


AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT IdTax, CountryCode,TaxPercent from Tax
	Where IdTax = @IdTax;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadTypeId]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadTypeId] 
@IdTypeId tinyint,
@Type nchar (10)


AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT IdTypeId, Type from TypeId
	Where IdTypeId = @IdTypeId;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadUserEvent]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadUserEvent] 
	@IdEventUser int,
	@IdUser int,
	@IdEvent int,
	@DateLogin date,
	@DateLogout date,
	@ProcedureUser nchar(100),
	@Likes nchar(100)

AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT IdEventUser, IdUser,IdEvent,DateLogin,DateLogout,ProcedureUser,Likes from UserEvent
	Where IdEventUser = @IdEventUser;
END


GO
/****** Object:  StoredProcedure [dbo].[ReadUserIcommerce]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadUserIcommerce] 
@IdUser int,
@IdTypeId tinyint,
@UserName nchar(20),
@PasswordUser nchar(40),
@Name nchar(25),
@LastName nchar(25),
@Gender char(1),
@Email nchar(50),
@PhoneNumber nchar(30),
@IdRole tinyint,
@CountryCode tinyint,
@FactoryName nchar(10),
@IdCreditCard int,
@IdPayPal int,
@IdStatus tinyint,
@PostalCode tinyint,
@Adress nchar(70),
@IdEvaluation tinyint


AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT IdUser,IdTypeId,UserName,PasswordUser,Name,LastName,Gender,Email,PhoneNumber,IdRole,CountryCode,FactoryName,
	IdCreditCard,IdPayPal,IdStatus,PostalCode,Adress, IdEvaluation from [dbo].[UserIcommerce]
	Where IdUser = @IdUser;
END

GO
/****** Object:  StoredProcedure [dbo].[ReadUserRole]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReadUserRole] 
	@IdRole tinyint,
	@IdUserRole tinyint,
	@IdUser int	


AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT IdRole, IdUserRole,IdUser from UserRole
	Where IdRole = @IdRole;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateCategory]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCategory]
@IdCategory int,
@Name nchar (30),
@DescriptionCate nchar(100)


AS
BEGIN
	SET NOCOUNT ON;

   Update Category set Name=@Name,DescriptionCate=@DescriptionCate
   where IdCategory= @IdCategory;

END

GO
/****** Object:  StoredProcedure [dbo].[UpdateCheckIc]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCheckIc]
@IdCheck int,
@CheckNumber int,
@CheckBank nchar(50)


AS
BEGIN

	SET NOCOUNT ON;

	Update CheckIc set CheckNumber=@CheckNumber, CheckBank=@CheckBank
	where IdCheck= @IdCheck;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateCity]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCity]

	
	@CityCode tinyint,
	@Name nchar(30),
	@StateCode tinyint
AS
BEGIN
	
	SET NOCOUNT ON;
		update City set CityCode=@CityCode, Name=@Name, StateCode=@StateCode
		where CityCode=@CityCode;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateCountry]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCountry]
@CountryCode tinyint,
@Name nchar(30),
@IsoCode nchar(15)

AS
BEGIN
	
	SET NOCOUNT ON;
	update Country set CountryCode=@CountryCode, Name=@Name, IsoCode=@IsoCode
	where CountryCode=@CountryCode;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateCountryTax]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCountryTax]
@Countrycode tinyint,
@IdTax int

AS
BEGIN
	
	SET NOCOUNT ON;
		update CountryTax set CountryCode=@CountryCode, IdTax=@IdTax
		where CountryCode=@CountryCode;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateCreditCard]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCreditCard]
@IdCreditCard int,
@CreditCardNumber int,
@ExpirationDate date,
@IdUser int


AS
BEGIN
	SET NOCOUNT ON;

   Update CreditCard set IdCreditCard=@IdCreditCard,CreditCardNumber=@CreditCardNumber,ExpirationDate=@ExpirationDate, IdUser=@IdUser
   where IdCreditCard= @IdCreditCard;

END


GO
/****** Object:  StoredProcedure [dbo].[UpdateEvaluation]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateEvaluation]
@IdEvaluation tinyint,
@Score nchar (10)


AS
BEGIN
	SET NOCOUNT ON;

   Update Evaluation set IdEvaluation=@IdEvaluation,Score=@Score
   where IdEvaluation= @IdEvaluation;

END

GO
/****** Object:  StoredProcedure [dbo].[UpdateEvent]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateEvent]
@IdEvent int,
@Description nchar (100)


AS
BEGIN
	SET NOCOUNT ON;

   Update Event set IdEvent=@IdEvent, Description=@Description
   where IdEvent= @IdEvent;

END

GO
/****** Object:  StoredProcedure [dbo].[UpdateFactory]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateFactory]
@IdFactory int,
@Name nchar(50),
@CountryCode tinyint,
@IdEvaluation tinyint

AS
BEGIN

	SET NOCOUNT ON;

	Update Factory set IdFactory=@IdFactory, Name=@Name,CountryCode=@CountryCode,IdEvaluation=IdEvaluation
	where IdFactory= @IdFactory;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateFactoryEvaluation]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateFactoryEvaluation]
@IdFactory int,
@IdEvaluation tinyint


AS
BEGIN

	SET NOCOUNT ON;

	Update FactoryEvaluation set IdFactory=@IdFactory, IdEvaluation=@IdEvaluation
	where IdFactory= @IdFactory;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateOffer]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateOffer]
@IdOffer int,
@Name nchar(100),
@DescriptionOffer nchar(150),
@DateStart date,
@DateEnd date,
@PercentageOffer float,
@IdProduct int


AS
BEGIN

	SET NOCOUNT ON;

	Update Offer set  Name=@Name, DescriptionOffer=@DescriptionOffer,
	 DateStart=@DateStart,DateEnd=@DateEnd,PercentageOffer=@PercentageOffer,IdProduct=@IdProduct
	where IdOffer= @IdOffer;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateOrder]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateOrder]
@IdOrder int,
@DateOrder date,
@IdStatus tinyint,
@IdPayment int,
@Total float


AS
BEGIN

	SET NOCOUNT ON;

	Update [dbo].[Order] set IdOrder=@IdOrder, DateOrder=@DateOrder, IdStatus=@IdStatus, 
	IdPayment=@IdPayment, Total=@Total
	where IdOrder= @IdOrder;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateOrderDetail]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateOrderDetail]
@IdOrderDetail int,
@IdOrder int,
@IdProduct int,
@IdTax int,
@QuantityTotal int,
@SubTotal float,
@Observation nchar(100),
@Disocunt float,
@DateOrder date

AS
BEGIN

	SET NOCOUNT ON;

	Update OrderDetail set IdOrderDetail=@IdOrderDetail, IdOrder=@IdOrder,
	 IdProduct=@IdProduct, IdTax=@IdTax, QuantityTotal=@QuantityTotal, Subtotal=@SubTotal, 
	 Observation=@Observation, Discount=@Disocunt, DateOrder=@DateOrder
	where IdOrderDetail= @IdOrderDetail;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdatePayment]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdatePayment]
@IdPayment int,
@DatePayment date,
@IdPaymentType int,
@Amount float


AS
BEGIN

	SET NOCOUNT ON;

	Update Payment set IdPayment=@IdPayment, DatePayment=@DatePayment, 
	IdPaymentType=@IdPaymentType, Amount=@Amount
	where IdPayment= @IdPayment;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdatePaypal]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdatePaypal]
@IdPaypal int,
@IdUser int


AS
BEGIN

	SET NOCOUNT ON;

	Update Paypal  set Idpaypal=@IdPaypal, IdUser=@IdUser
	where IdPaypal= @IdPaypal;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateProduct]
@IdProduct int,
@Name nchar(30),
@DescriptionProduct nchar(30),
@DateEntry date,
@DateExpiration date,
@IdCategory int,
@IdEvaluation tinyint,
@Quantity int,
@UnitPrice float,
@ProductImage image


AS
BEGIN

	SET NOCOUNT ON;

	Update Product set IdProduct=@IdProduct, Name=@Name, DescriptionProduct=@DescriptionProduct,
	 IdCategory=@IdCategory, IdEvaluation=@IdEvaluation,Quantity=@Quantity,
	 UnitPrice=@UnitPrice, ProductImage=@ProductImage
	where IdProduct= @IdProduct;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateProductEvaluation]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateProductEvaluation]
@IdProduct int,
@IdEvaluation tinyint


AS
BEGIN

	SET NOCOUNT ON;

	Update ProductEvaluation set IdProduct=@IdProduct, IdEvaluation=@IdEvaluation 
	where @IdProduct= @IdProduct;
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateProductUser]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateProductUser]
@IdProduct int,
@IdUser int


AS
BEGIN

	SET NOCOUNT ON;

	Update ProductUser set IdProduct=@IdProduct, IdUser=@IdUser
	where IdProduct= @IdProduct;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateRole]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateRole]
@IdRole tinyint,
@Type nchar(20)

AS
BEGIN

	SET NOCOUNT ON;

	Update [dbo].[Role] set  Type=@Type
	where IdRole= @IdRole;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateShipment]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateShipment]
	@IdShipment int,
	@IdOrder int,
	@IdUser int,
	@IdFactory int,
	@IdStatus tinyint,
	@ShipmentDate date,
	@ArrivalDate date


AS
BEGIN

	SET NOCOUNT ON;

	Update Shipment set IdShipment=@IdShipment,IdOrder=@IdOrder,IdUser=@IdUser,IdFactory=@IdFactory,IdStatus=@IdStatus,ShipmentDate=@ShipmentDate,ArrivalDate=@ArrivalDate
	where IdShipment=@IdShipment;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateState]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateState]
@StateCode tinyint,
@Name nchar (30),
@CountryCode tinyint


AS
BEGIN

	SET NOCOUNT ON;

	Update [dbo].[State] set StateCode=@StateCode, Name=@Name, CountryCode=@CountryCode
	where StateCode= @StateCode;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateStatus]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateStatus]
@IdStatus tinyint,
@Description nchar(20)


AS
BEGIN

	SET NOCOUNT ON;

	Update [dbo].[Status] set IdStatus=@IdStatus, Description=@Description
	where IdStatus= @IdStatus;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateTax]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateTax]
@IdTax int,
@CountryCode tinyint,
@TaxPercent float


AS
BEGIN

	SET NOCOUNT ON;

	Update Tax set IdTax=@IdTax, CountryCode=@CountryCode, TaxPercent=@TaxPercent
	where IdTax= @IdTax;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateTypeId]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateTypeId]
@IdTypeId tinyint,
@Type nchar(10)


AS
BEGIN

	SET NOCOUNT ON;

	Update TypeId set Type=@Type
	where IdTypeId= @IdTypeId;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateUserEvent]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateUserEvent]
	@IdEventUser int,
	@IdUser int,
	@IdEvent int,
	@DateLogin date,
	@DateLogout date,
	@ProcedureUser nchar(100),
	@Likes nchar(100)


AS
BEGIN

	SET NOCOUNT ON;

	Update UserEvent set IdUser=@IdUser,IdEvent=@IdEvent,DateLogin=@DateLogin,
	DateLogout=@DateLogout,ProcedureUser=@ProcedureUser,Likes=@Likes
	where IdEventUser= @IdEventUser;
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateUserIcommerce]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUserIcommerce]
@IdUser int,
@IdTypeId tinyint,
@UserName nchar(20),
@PasswordUser nchar(40),
@Name nchar(25),
@LastName nchar(25),
@Gender char(1),
@Email nchar(50),
@PhoneNumber nchar(30),
@IdRole tinyint,
@CountryCode tinyint,
@FactoryName nchar(10),
@IdCreditCard int,
@IdPayPal int,
@IdStatus tinyint,
@PostalCode tinyint,
@Adress nchar(70),
@IdEvaluation tinyint


AS
BEGIN

	SET NOCOUNT ON;

	Update [dbo].[UserIcommerce] set IdUser=@IdUser,IdTypeId=IdTypeId,UserName=@UserName,
	PasswordUser=@PasswordUser,Name=@Name,@LastName=LastName,Gender=@Gender,Email=@Email,PhoneNumber=@PhoneNumber,IdRole=@IdRole,
	CountryCode=@CountryCode,FactoryName=@FactoryName,IdCreditCard=@IdCreditCard,
	IdPayPal=@IdPayPal,IdStatus=@IdStatus,PostalCode=@PostalCode,Adress=@Adress, IdEvaluation=@IdEvaluation
	where IdUser= @IdUser;
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateUserRole]    Script Date: 3/28/2016 5:08:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateUserRole]
	@IdRole tinyint,
	@IdUserRole tinyint,
	@IdUser int

AS
BEGIN

	SET NOCOUNT ON;

	Update UserRole set IdRole=@IdRole, IdUser=@IdUser
	where IdUserRole= @IdUserRole;
END

GO
USE [master]
GO
ALTER DATABASE [ICommerce] SET  READ_WRITE 
GO
