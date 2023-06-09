USE [StandardMetalDB]
GO
/****** Object:  User [IIS APPPOOL\DefaultAppPool]    Script Date: 04/08/2023 08:39:37 ******/
CREATE USER [IIS APPPOOL\DefaultAppPool] FOR LOGIN [IIS APPPOOL\DefaultAppPool]
GO
/****** Object:  Table [dbo].[MachineMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MachineMaster](
	[SrNo] [bigint] IDENTITY(1,1) NOT NULL,
	[Cmp_Code] [varchar](10) NULL,
	[Groupp] [varchar](50) NULL,
	[CategoryCode] [varchar](50) NULL,
	[MachineNo] [varchar](50) NOT NULL,
	[MachineName] [varchar](50) NULL,
	[Make] [varchar](50) NULL,
	[Model] [varchar](50) NULL,
	[PMPlan] [varchar](50) NULL,
	[CapacityRangeFrom] [decimal](10, 2) NULL,
	[CapacityRangeTo] [decimal](10, 2) NULL,
	[Remark] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[PurchaseDate] [datetime] NULL,
	[MachineCostPerHr] [decimal](10, 2) NULL,
	[StdProdPerHr] [decimal](10, 2) NULL,
 CONSTRAINT [PK_MachineMaster] PRIMARY KEY CLUSTERED 
(
	[SrNo] ASC,
	[MachineNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoginDetails_back]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoginDetails_back](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[Branch] [varchar](50) NULL,
	[RoleId] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MaritalStatusMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaritalStatusMaster](
	[MSID] [int] IDENTITY(1,1) NOT NULL,
	[MaritalStatus] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MSID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManufacturerMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ManufacturerMaster](
	[ManufacturerId] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerName] [varchar](100) NOT NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ManufacturerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LeaveMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[LeaveMaster](
	[LeaveId] [int] IDENTITY(1,1) NOT NULL,
	[LeaveName] [varchar](max) NULL,
 CONSTRAINT [PK_LeaveMaster] PRIMARY KEY CLUSTERED 
(
	[LeaveId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LanguageMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LanguageMaster](
	[LanguageID] [int] IDENTITY(1,1) NOT NULL,
	[LanguageName] [varchar](500) NULL,
	[LanguageCode] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[LanguageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemVsSupplier]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemVsSupplier](
	[Isid] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](50) NULL,
	[SuppCode] [varchar](50) NULL,
 CONSTRAINT [PK__ItemVsSu__92708818662B2B3B] PRIMARY KEY CLUSTERED 
(
	[Isid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemVsCustomer]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemVsCustomer](
	[Icid] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](50) NULL,
	[CustCode] [varchar](50) NULL,
 CONSTRAINT [PK__ItemVsCu__B03CE05B625A9A57] PRIMARY KEY CLUSTERED 
(
	[Icid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IndentTypeMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IndentTypeMaster](
	[IndentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[IndentType] [varchar](50) NULL,
	[SystemEntryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IndentTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IndentNew]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IndentNew](
	[IndentId] [int] IDENTITY(1,1) NOT NULL,
	[IndentNo] [varchar](100) NULL,
	[IndentDate] [datetime] NULL,
	[IsApproved] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IndentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[GetWeek1]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[GetWeek1](@week datetime)
    returns datetime
    as
    begin
    Declare @weekno int =(Select DATEPART(QUARTER,(@week)))
    return @weekno
    end;
GO
/****** Object:  UserDefinedFunction [dbo].[FourDigitAutoGenNumber]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[FourDigitAutoGenNumber] ( @num varchar(50))returns varchar(50)asbeginDECLARE   @MaxCode varchar(10) = @numIF(@MaxCode<= 9)		BEGIN		SET @MaxCode = '000' + CONVERT(VARCHAR, @MaxCode) 		END				ELSE IF(@MaxCode >= 10 AND @MaxCode<= 99)		BEGIN			SET @MaxCode = '00' + CONVERT(VARCHAR, @MaxCode) 		END	ELSE IF(@MaxCode >= 100 AND @MaxCode<= 999)		BEGIN			SET @MaxCode = '0' + CONVERT(VARCHAR, @MaxCode) 		END		ELSE IF(@MaxCode >= 1000 AND @MaxCode<= 9999)		BEGIN			SET @MaxCode =  +CONVERT(VARCHAR, @MaxCode) 		END		RETURN  convert(varchar(20),@MaxCode)  end
GO
/****** Object:  UserDefinedFunction [dbo].[FiveDigitAutoGenNumber]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[FiveDigitAutoGenNumber] ( @num varchar(50))returns varchar(50)asbeginDECLARE   @MaxCode varchar(10) = @numIF(@MaxCode<= 9)		BEGIN		SET @MaxCode = '0000' + CONVERT(VARCHAR, @MaxCode) 		END				ELSE IF(@MaxCode >= 10 AND @MaxCode<= 99)		BEGIN			SET @MaxCode = '000' + CONVERT(VARCHAR, @MaxCode) 		END	ELSE IF(@MaxCode >= 100 AND @MaxCode<= 999)		BEGIN			SET @MaxCode = '00' + CONVERT(VARCHAR, @MaxCode) 		END		ELSE IF(@MaxCode >= 1000 AND @MaxCode<= 9999)		BEGIN			SET @MaxCode =  '0'+CONVERT(VARCHAR, @MaxCode) 		END				ELSE IF(@MaxCode >= 10000 AND @MaxCode<= 99999)		BEGIN			SET @MaxCode =  +CONVERT(VARCHAR, @MaxCode) 		END				RETURN  convert(varchar(20),@MaxCode)  end
GO
/****** Object:  Table [dbo].[GenderMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GenderMaster](
	[GID] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[GID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FreightType]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FreightType](
	[FreightId] [int] IDENTITY(1,1) NOT NULL,
	[FreightType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[FreightId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstimetMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstimetMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EstNo] [varchar](250) NOT NULL,
	[EstNoDate] [datetime] NOT NULL,
	[CustomerName] [varchar](250) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[ContactPerson] [varchar](max) NOT NULL,
	[State] [varchar](max) NOT NULL,
	[ContactNo] [decimal](10, 0) NOT NULL,
	[UserName] [varchar](max) NOT NULL,
	[Branch] [varchar](max) NOT NULL,
	[SystemEntryDate] [datetime] NOT NULL,
 CONSTRAINT [PK_EstimetMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstimateDetails]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstimateDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EstNo] [varchar](max) NOT NULL,
	[ItemCode] [varchar](max) NOT NULL,
	[UOM] [varchar](max) NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[Rate] [decimal](18, 0) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[CGST] [decimal](18, 0) NOT NULL,
	[CGSTValue] [decimal](18, 2) NOT NULL,
	[SGST] [decimal](18, 0) NOT NULL,
	[SGSTValue] [decimal](18, 2) NOT NULL,
	[IGST] [decimal](18, 0) NOT NULL,
	[IGSTValue] [decimal](18, 2) NOT NULL,
	[TotalGST] [decimal](18, 2) NOT NULL,
	[HSNNo] [varchar](max) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_EstimateDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DrawingbackRefund]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DrawingbackRefund](
	[DrawingId] [int] IDENTITY(1,1) NOT NULL,
	[DrawingRefund] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[DrawingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DesignationMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DesignationMaster](
	[DesignationId] [int] IDENTITY(1,1) NOT NULL,
	[DesignationName] [varchar](max) NULL,
 CONSTRAINT [PK_DesignationMaster] PRIMARY KEY CLUSTERED 
(
	[DesignationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DepartmentMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[DepartmentMaster](
	[did] [int] IDENTITY(1,1) NOT NULL,
	[dname] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeliveryTermMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeliveryTermMaster](
	[DeliveryTermId] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryTermType] [varchar](100) NULL,
	[DeliveryDescription] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[DeliveryTermId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BindSymbolMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BindSymbolMaster](
	[SymbolId] [int] IDENTITY(1,1) NOT NULL,
	[SymbolCharacter] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SymbolId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerTypeMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerTypeMaster](
	[CustomerTypeId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerType] [varchar](100) NOT NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[BindUserName]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BindUserName]
As
Begin
select * from LoginDetails
end
GO
/****** Object:  Table [dbo].[Admin_RoleMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin_RoleMaster](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[AutoGenNumber]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[AutoGenNumber]
(
@num varchar(50)
)
returns varchar(50)
as
begin
DECLARE   @MaxCode varchar(10) = @num

IF(@MaxCode<= 9)
		BEGIN
			SET @MaxCode = '000' + CONVERT(VARCHAR, @MaxCode+1) 
		END

	ELSE IF(@MaxCode >= 10 AND @MaxCode<= 99)
		BEGIN
			SET @MaxCode = '00' + CONVERT(VARCHAR, @MaxCode+1) 
		END
	ELSE IF(@MaxCode >= 100 AND @MaxCode<= 999)
		BEGIN
			SET @MaxCode = '0' + CONVERT(VARCHAR, @MaxCode+1) 
		END	
	ELSE IF(@MaxCode >= 1000 AND @MaxCode<= 9999)
		BEGIN
			SET @MaxCode =  CONVERT(VARCHAR, @MaxCode+1) 
		END

 RETURN  convert(varchar(20),@MaxCode)
  
end
GO
/****** Object:  StoredProcedure [dbo].[BindHSNCodeMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BindHSNCodeMaster]
as
begin
select * from HSNCodeMaster
end
GO
/****** Object:  StoredProcedure [dbo].[BindGstRateMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BindGstRateMaster]
as
begin
select * from GstRateMaster
end
GO
/****** Object:  Table [dbo].[CountryMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CountryMaster](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](250) NULL,
 CONSTRAINT [PK_CountryMaster] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractorMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[ContractorMaster](
	[ContractorId] [int] IDENTITY(1,1) NOT NULL,
	[ContractorName] [varchar](max) NULL,
 CONSTRAINT [PK_ContractorMaster] PRIMARY KEY CLUSTERED 
(
	[ContractorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompanyMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](max) NOT NULL,
	[Address1] [nvarchar](max) NOT NULL,
	[Address2] [nvarchar](max) NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[PinCode] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[EmailID] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[Website] [nvarchar](50) NULL,
	[GSTIN] [nvarchar](50) NULL,
	[SystemDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ColourMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ColourMaster](
	[ColourId] [int] IDENTITY(1,1) NOT NULL,
	[ColourName] [varchar](100) NOT NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ColourId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CityMasterDuplicate]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CityMasterDuplicate](
	[Id] [int] NOT NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CityMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CityMaster](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](250) NULL,
	[StateId] [int] NULL,
 CONSTRAINT [PK_CityMaster] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[checkpointMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[checkpointMaster](
	[checkpointid] [int] IDENTITY(1,1) NOT NULL,
	[checkpointname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[checkpointid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[CheckLoginDetails]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CheckLoginDetails]
@UserName varchar(50),
@Password varchar(50)
As
begin
select * from LoginDetails
where @UserName = UserName and @Password = Password
end
GO
/****** Object:  Table [dbo].[CategoryMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[CategoryMaster](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](max) NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[CategoryMaster] ADD [Description] [varchar](100) NULL
ALTER TABLE [dbo].[CategoryMaster] ADD  CONSTRAINT [PK_CategoryMaster] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BranchMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BranchMaster](
	[BranchId] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [varchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[BranchId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BloodGroupMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[BloodGroupMaster](
	[BID] [int] IDENTITY(1,1) NOT NULL,
	[BloodGroup] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[BID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuotationMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuotationMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QutationNo] [varchar](50) NOT NULL,
	[QuotationDate] [datetime] NOT NULL,
	[ValidTillDate] [datetime] NOT NULL,
	[CustCode] [varchar](max) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Branch] [varchar](50) NOT NULL,
	[SysytemEntryDate] [datetime] NOT NULL,
 CONSTRAINT [PK_QuotationMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuotationDetails]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuotationDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuotationNo] [varchar](50) NOT NULL,
	[QuotationDate] [datetime] NULL,
	[ItemCode] [varchar](50) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[ToolMouldName] [varchar](50) NOT NULL,
	[ToolMouldCode] [varchar](50) NOT NULL,
	[DeliveryLeadTime] [datetime] NOT NULL,
	[PackingCost] [decimal](10, 0) NOT NULL,
	[DevelopmentTool] [varchar](50) NOT NULL,
	[MouldCost] [decimal](10, 0) NOT NULL,
	[MouldCavity] [varchar](50) NOT NULL,
	[OtherCost] [decimal](10, 0) NOT NULL,
	[OtherCostRemark] [varchar](50) NOT NULL,
	[Material] [varchar](50) NOT NULL,
	[UnitId] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[Rate] [int] NOT NULL,
	[SymbolId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductionNote]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductionNote](
	[Pid] [int] IDENTITY(1,1) NOT NULL,
	[ProductionDate] [date] NOT NULL,
	[ItemCode] [varchar](max) NOT NULL,
	[UoM] [varchar](50) NULL,
	[Qty] [decimal](18, 0) NOT NULL,
	[Username] [varchar](max) NOT NULL,
	[SystemDate] [datetime] NOT NULL,
	[Branch] [varchar](max) NULL,
 CONSTRAINT [PK_ProductionNote] PRIMARY KEY CLUSTERED 
(
	[Pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlanTypeMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlanTypeMaster](
	[PlanTypeId] [int] IDENTITY(1,1) NOT NULL,
	[PlanType] [varchar](max) NULL,
 CONSTRAINT [PK_PlanTypeMaster] PRIMARY KEY CLUSTERED 
(
	[PlanTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PayTypeMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PayTypeMaster](
	[PayTypeId] [int] IDENTITY(1,1) NOT NULL,
	[PayTypeName] [varchar](max) NULL,
 CONSTRAINT [PK_PayTypeMaster] PRIMARY KEY CLUSTERED 
(
	[PayTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaymentTypeMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentTypeMaster](
	[PaymentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentType] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackingType]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PackingType](
	[PackingId] [int] IDENTITY(1,1) NOT NULL,
	[PackingType] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[PackingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[NoParameters]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[NoParameters]()
  RETURNS INT
  AS
    BEGIN 
       RETURN (SELECT DATEPART(QUARTER,(SYSDATETIME())))
    END;
GO
/****** Object:  Table [dbo].[NextGen_UT_UploadColumnTamplateMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NextGen_UT_UploadColumnTamplateMaster](
	[CollumnTamplateID] [int] IDENTITY(1,1) NOT NULL,
	[TamplateTypeID] [int] NULL,
	[SqlCollumnName] [varchar](max) NULL,
	[SqlDataType] [varchar](max) NULL,
	[ExcelCollName] [varchar](max) NULL,
	[ExcelDataType] [varchar](max) NULL,
	[SerialNumber] [varchar](max) NULL,
 CONSTRAINT [PK_NextGen_UT_CollumnTamplateMaster] PRIMARY KEY CLUSTERED 
(
	[CollumnTamplateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MaterialInvoiceMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaterialInvoiceMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UIN] [varchar](250) NOT NULL,
	[InwardDate] [datetime] NULL,
	[InvoiceNO] [varchar](250) NULL,
	[InvoiceDate] [datetime] NULL,
	[InwordBranch] [varchar](250) NULL,
	[SupplierCode] [varchar](250) NULL,
	[SubTotal] [decimal](20, 2) NULL,
	[GrandTotal] [decimal](20, 2) NULL,
	[Remark] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[TransportMode] [varchar](max) NULL,
	[LoadingCharges] [decimal](20, 2) NULL,
	[TransportChages] [decimal](20, 2) NULL,
	[FreightAmount] [decimal](20, 2) NULL,
	[PackingAmount] [decimal](20, 2) NULL,
	[VehicleNo] [varchar](max) NULL,
	[GSTReverseChargeYesORNO] [varchar](max) NULL,
	[GSTReverseCharge] [varchar](max) NULL,
	[SystemEntryDate] [datetime] NULL,
	[dateofSupply] [datetime] NULL,
	[placeofsupply] [varchar](255) NULL,
 CONSTRAINT [PK__MaterialInvoiceMaster__7D8391DF] PRIMARY KEY CLUSTERED 
(
	[UIN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MaterialInvoiceDetails]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaterialInvoiceDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UIN] [varchar](250) NOT NULL,
	[InwardDate] [datetime] NOT NULL,
	[InvoiceNO] [varchar](50) NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[ItemCode] [varchar](250) NULL,
	[ItemName] [varchar](max) NULL,
	[Rate] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[TotalQty] [int] NULL,
	[Discount] [decimal](18, 2) NULL,
	[TAXABLEVALUE] [decimal](20, 2) NULL,
	[CGST] [decimal](20, 2) NULL,
	[CGSTValue] [decimal](18, 2) NULL,
	[SGST] [decimal](20, 2) NULL,
	[SGSTValue] [decimal](18, 2) NULL,
	[IGST] [decimal](20, 2) NULL,
	[IGSTValue] [decimal](20, 2) NULL,
	[TotalGSTTax] [decimal](20, 2) NULL,
	[TotalGSTAMOUNT] [decimal](20, 2) NULL,
	[UOM] [varchar](max) NULL,
	[HSNCODE] [varchar](max) NULL,
	[RawMaterial] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Marketing_TransportMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marketing_TransportMaster](
	[TransportID] [int] IDENTITY(1,1) NOT NULL,
	[ModeOfTransport] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[TransportID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Marketing_ShipmentMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marketing_ShipmentMaster](
	[ShipmentID] [int] IDENTITY(1,1) NOT NULL,
	[ShipMentAccount] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ShipmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Marketing_MediumOfEnqMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marketing_MediumOfEnqMaster](
	[MedOfEnqID] [int] IDENTITY(1,1) NOT NULL,
	[MedOfEnqName] [varchar](max) NULL,
	[IsActive] [bit] NULL,
	[SystemEntryDate] [datetime] NULL,
	[LoginUserID] [int] NULL,
	[BranchID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MedOfEnqID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[modulemaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[modulemaster](
	[moduleid] [int] IDENTITY(1,1) NOT NULL,
	[modulename] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[moduleid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Received_Quantity_Master]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Received_Quantity_Master](
	[QtyId] [int] IDENTITY(1,1) NOT NULL,
	[Qty] [int] NULL,
	[Rate] [int] NULL,
	[SymbolId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[QtyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[InsertQuotationMasterData]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[InsertQuotationMasterData]
(@WithEnquiry bit,
@EnquiryNumber varchar(100),
@RevisionNumber varchar(100),
@QuotationNumber varchar(100),
@QuotationDate datetime,
@IsNewCustomer bit,
@CustomerName varchar(100),
@CustomerCode varchar(100),
@Address varchar(100),
@ItemName varchar(100),
@ItemCode varchar(100),
@ToolMouldCode varchar(100),
@ToolMouldName varchar(100),
@DeliveryLeadTime datetime,
@PackingCost decimal(10,2),
@DevelopmentTool varchar(100),
@MouldCost decimal(10,2),
@MouldCavity int,
@OtherCost decimal(10,2),
@OtherCostRemark varchar(100),
@Material varchar(100),
@UnitId int,
@Quantity int,
@Rate int,
@SymbolId int,
@Ecess int,
@ServiceTax int,
@Excise varchar(100),
@SaleTax int,
@PaymentTypeId int,
@TransportId int,
@FreightId int,
@PlanTypeId int,
@PackingId int,
@StatusId int,
@DrawingId int,
@SampleRequired varchar(100),
@DeliveryTermId int,
@DocumentRequired varchar(100),
@PreparedbyEmpCodeId int,
@PreparedbyEmpNameId int,
@ApprovedbyEmpCodeId int,
@ApprovedbyEmpNameId int,
@ReviewedByEmpCodeId int,
@ReviewedByEmpNameId int,
@ItemSubject varchar(100),
@ItemTerms varchar(100),
@ToolSubject varchar(100),
@ToolTerms varchar(100),
@SystemEntryDate datetime,
@LoginUserId int,
@BranchId int)
As
Begin
Insert into QuotationMasterModel
(WithEnquiry ,
EnquiryNumber ,
RevisionNumber ,
QuotationNumber,
QuotationDate,
IsNewCustomer,
CustomerName ,
CustomerCode ,
[Address],
ItemName ,
ItemCode ,
ToolMouldCode ,
ToolMouldName ,
DeliveryLeadTime,
PackingCost ,
DevelopmentTool ,
MouldCost ,
MouldCavity,
OtherCost ,
OtherCostRemark ,
Material,
UnitId,
Quantity,
Rate ,
SymbolId,
Ecess ,
ServiceTax ,
Excise ,
SaleTax ,
PaymentTypeId ,
TransportId ,
FreightId ,
PlanTypeId ,
PackingId ,
StatusId ,
DrawingId ,
SampleRequired ,
DeliveryTermId ,
DocumentRequired ,
PreparedbyEmpCodeId ,
PreparedbyEmpNameId ,
ApprovedbyEmpCodeId ,
ApprovedbyEmpNameId ,
ReviewedByEmpCodeId ,
ReviewedByEmpNameId ,
ItemSubject,
ItemTerms ,
ToolSubject,
ToolTerms ,
SystemEntryDate,
LoginUserId,
BranchId )
values
(@WithEnquiry ,
@EnquiryNumber ,
@RevisionNumber ,
@QuotationNumber,
@QuotationDate,
@IsNewCustomer,
@CustomerName ,
@CustomerCode ,
@Address,
@ItemName ,
@ItemCode ,
@ToolMouldCode ,
@ToolMouldName ,
@DeliveryLeadTime,
@PackingCost ,
@DevelopmentTool ,
@MouldCost ,
@MouldCavity,
@OtherCost ,
@OtherCostRemark ,
@Material,
@UnitId,
@Quantity,
@Rate ,
@SymbolId,
@Ecess ,
@ServiceTax ,
@Excise ,
@SaleTax ,
@PaymentTypeId ,
@TransportId ,
@FreightId ,
@PlanTypeId ,
@PackingId ,
@StatusId ,
@DrawingId ,
@SampleRequired ,
@DeliveryTermId ,
@DocumentRequired ,
@PreparedbyEmpCodeId ,
@PreparedbyEmpNameId ,
@ApprovedbyEmpCodeId ,
@ApprovedbyEmpNameId ,
@ReviewedByEmpCodeId ,
@ReviewedByEmpNameId ,
@ItemSubject,
@ItemTerms ,
@ToolSubject,
@ToolTerms ,
@SystemEntryDate,
@LoginUserId,
@BranchId)
End;
GO
/****** Object:  StoredProcedure [dbo].[GetAllQuotationMasterData]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetAllQuotationMasterData]
As
Begin
Select * from QuotationMasterModel
End;
GO
/****** Object:  Table [dbo].[Quotation_New_Details]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quotation_New_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EnquiryNo] [varchar](100) NOT NULL,
	[RevisionNo] [varchar](100) NULL,
	[QuotationNo] [varchar](100) NOT NULL,
	[QuotationDate] [date] NULL,
	[CustCode] [varchar](100) NULL,
	[CustName] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[ContactPerson] [varchar](100) NULL,
	[ItemCode] [varchar](100) NULL,
	[ItemName] [varchar](100) NULL,
	[ToolMouldCode] [varchar](100) NULL,
	[ToolMouldName] [varchar](100) NULL,
	[DeliveryDate] [date] NULL,
	[PackingCost] [decimal](10, 2) NULL,
	[DevelopmentTool] [varchar](100) NULL,
	[MouldCost] [decimal](10, 2) NULL,
	[MouldCavity] [varchar](100) NULL,
	[OtherCost] [decimal](10, 2) NULL,
	[OtherCostRemark] [varchar](100) NULL,
	[Material] [varchar](100) NULL,
	[Qty] [int] NULL,
	[Rate] [decimal](10, 2) NULL,
	[SymbolCharacter] [varchar](100) NULL,
	[EAccess] [varchar](100) NULL,
	[SeviceTax] [decimal](10, 2) NULL,
	[Excise] [varchar](100) NULL,
	[SaleTax] [decimal](10, 2) NULL,
	[Payment] [decimal](10, 2) NULL,
	[ModeOfDispatch] [varchar](100) NULL,
	[Freight] [varchar](100) NULL,
	[Validity] [datetime] NULL,
	[Packing] [varchar](100) NULL,
	[Status] [varchar](100) NULL,
	[AgainstFormNo] [varchar](100) NULL,
	[Remark] [varchar](100) NULL,
	[Drawing] [varchar](100) NULL,
	[SampleRequired] [varchar](100) NULL,
	[DeliveryTerm] [nvarchar](100) NULL,
	[DocumentRequired] [varchar](100) NULL,
	[Advance] [decimal](10, 2) NULL,
	[PreparedByEmpCode] [varchar](100) NULL,
	[ApprovedByEmpCode] [varchar](100) NULL,
	[PreparedByEmpName] [varchar](100) NULL,
	[ApprovedByEmpName] [varchar](100) NULL,
	[ReviewedByEmpCode] [varchar](100) NULL,
	[ReviewedByEmpName] [varchar](100) NULL,
	[ItemSubject] [varchar](100) NULL,
	[ItemTerms] [varchar](100) NULL,
	[ToolSubject] [varchar](100) NULL,
	[ToolTerms] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quotation_Master_Details]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quotation_Master_Details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuotationNo] [varchar](200) NOT NULL,
	[QuotationDate] [date] NULL,
	[Revision] [varchar](100) NULL,
	[EnquiryNumber] [varchar](100) NULL,
	[Validtilldate] [datetime] NULL,
	[CustCode] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QualificationMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QualificationMaster](
	[QualificationId] [int] IDENTITY(1,1) NOT NULL,
	[QualificationName] [varchar](max) NULL,
 CONSTRAINT [PK_QualificationMaster] PRIMARY KEY CLUSTERED 
(
	[QualificationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[rpt]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[rpt]
@emepcode varchar (50)
as
begin
if @emepcode=1
begin
print 'u entered empcode 0'
end
else
print 'u entered empcode not 0'
end
GO
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleMaster](
	[roleid] [int] IDENTITY(1,1) NOT NULL,
	[rolename] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesExecutive]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SalesExecutive](
	[SalesExecutiveID] [int] IDENTITY(1,1) NOT NULL,
	[SalesExecutive] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SalesExecutiveID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockTransfer]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockTransfer](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TransactionDate] [datetime] NULL,
	[FromBranch] [varchar](max) NULL,
	[ToBranch] [varchar](max) NULL,
	[ItemCode] [varchar](max) NULL,
	[UOM] [varchar](max) NULL,
	[Quantity] [decimal](20, 2) NULL,
	[SystemDate] [datetime] NULL,
	[Username] [varchar](max) NULL,
	[LoginBranch] [varchar](max) NULL,
 CONSTRAINT [PK_StockTransfer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](max) NOT NULL,
	[Branch] [varchar](max) NOT NULL,
	[InQty] [decimal](18, 0) NOT NULL,
	[OutQty] [decimal](18, 2) NOT NULL,
	[TransactionDate] [date] NOT NULL,
	[SystemDate] [datetime] NOT NULL,
	[Username] [varchar](max) NOT NULL,
	[InvoiceNo] [varchar](255) NULL,
 CONSTRAINT [PK_StockMaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StatusMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StatusMaster](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StateMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[StateMaster](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](250) NULL,
	[CountryId] [int] NULL,
 CONSTRAINT [PK_StateMaster] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[SplitString]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create FUNCTION [dbo].[SplitString]
(
  @List     nvarchar(max),
  @Delim    nvarchar(255)
)
RETURNS TABLE
AS
  RETURN ( SELECT [Value] FROM 
  ( 
    SELECT [Value] = LTRIM(RTRIM(SUBSTRING(@List, [Number],
      CHARINDEX(@Delim, @List + @Delim, [Number]) - [Number])))
    FROM (SELECT Number = ROW_NUMBER() OVER (ORDER BY name)
      FROM sys.all_columns) AS x WHERE Number <= LEN(@List)
      AND SUBSTRING(@Delim + @List, [Number], DATALENGTH(@Delim)/2) = @Delim
    ) AS y
  );
GO
/****** Object:  Table [dbo].[UnitMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[UnitMaster](
	[UnitId] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [varchar](max) NULL,
 CONSTRAINT [PK_UnitMaster] PRIMARY KEY CLUSTERED 
(
	[UnitId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[udfn_NumberToWords1]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- DECLARE @val varchar(max) = dbo.udfn_NumberToWords1(12548)
--PRINT  @val

CREATE FUNCTION  [dbo].[udfn_NumberToWords1] (@intNumberValue INTEGER)  
RETURNS VARCHAR(2000)
AS  
BEGIN 
  DECLARE @strNumberString VARCHAR(9)
  DECLARE @strReturn VARCHAR(2000)
  DECLARE @intUnits SMALLINT

  -- Create table of number groups  
  DECLARE @tblNumberGroups TABLE (Units SMALLINT, Hundreds SMALLINT, Tens SMALLINT)

   -- Handle errors and 'quick wins' 
  IF @intNumberValue IS NULL RETURN NULL
  IF ISNUMERIC(@intNumberValue)=0 RETURN NULL
  IF @intNumberValue = 0 RETURN 'ZERO'  

  IF @intNumberValue < 0
  BEGIN
    SET @strReturn='MINUS'
    SET @intNumberValue=ABS(@intNumberValue)
  END

  SET @intUnits =0

  -- Populate table of number groups  
  WHILE (@intNumberValue % 1000) > 0 OR  (@intNumberValue/1000) >0
  BEGIN
    INSERT INTO @tblNumberGroups (Units, Hundreds, Tens) VALUES (@intUnits, (@intNumberValue % 1000)/100, (@intNumberValue % 1000) % 100 )
    SELECT @intNumberValue = CAST (@intNumberValue / 1000 AS INTEGER)
    SET @intUnits = @intUnits + 1
  END

  -- Remove last unit added
  SET @intUnits = @intUnits-1  

  -- Concatenate text number by reading number groups in reverse order
  SELECT @strReturn = ISNULL(@strReturn,' ') +
  ISNULL(
  ISNULL((CASE Hundreds
    WHEN 1 THEN 'ONE HUNDRED'
    WHEN 2 THEN 'TWO HUNDRED'
    WHEN 3 THEN 'THREE HUNDRED'
    WHEN 4 THEN 'FOUR HUNDRED'
    WHEN 5 THEN 'FIVE HUNDRED'
    WHEN 6 THEN 'SIX HUNDRED'
    WHEN 7 THEN 'SEVEN HUNDRED'
    WHEN 8 THEN 'EIGHT HUNDRED '
    WHEN 9 THEN 'NINE HUNDRED '
  END),' ') + 
  CASE WHEN (Hundreds >0 OR Units<@intUnits) AND Tens > 0   THEN ' AND ' ELSE ' ' END +
  ISNULL((CASE Tens / 10
    WHEN 2 THEN 'TWENTY'
  WHEN 3 THEN 'THIRTY'
    WHEN 4 THEN 'FORTY'
    WHEN 5 THEN 'FIFTY'
    WHEN 6 THEN 'SIXTY'
    WHEN 7 THEN 'SEVENTY'
    WHEN 8 THEN 'EIGHTY'
    WHEN 9 THEN 'NINETY'
  END),' ') +
  ISNULL((CASE Tens
    WHEN 10 THEN 'TEN'
    WHEN 11 THEN 'ELEVEN'
    WHEN 12 THEN 'TWELVE'
    WHEN 13 THEN 'THIRTEEN'
    WHEN 14 THEN 'FOURTEEN'
    WHEN 15 THEN 'FIFTEEN'
    WHEN 16 THEN 'SIXTEEN'
    WHEN 17 THEN 'SEVENTEEN'
    WHEN 18 THEN 'EIGHTEEN'
    WHEN 19 THEN 'NINETEEN'
  END),' ') +
  COALESCE(
    CASE WHEN Tens %10 =1 AND Tens / 10  <> 1 THEN 'ONE ' END,
    CASE WHEN Tens %10 =2 AND Tens / 10  <> 1 THEN 'TWO ' END,
  CASE WHEN Tens %10 =3 AND Tens / 10  <> 1 THEN 'THREE ' END,
  CASE WHEN Tens %10 =4 AND Tens / 10  <> 1 THEN 'FOUR ' END,
    CASE WHEN Tens %10 =5 AND Tens / 10  <> 1 THEN 'FIVE ' END,
    CASE WHEN Tens %10 =6 AND Tens / 10  <> 1 THEN 'SIX ' END,
    CASE WHEN Tens %10 =7 AND Tens / 10  <> 1 THEN 'SEVEN ' END,
    CASE WHEN Tens %10 =8 AND Tens / 10  <> 1 THEN 'EIGHT ' END,
    CASE WHEN Tens %10 =9 AND Tens / 10  <> 1 THEN 'NINE ' END,
  ' ')+
  COALESCE(
   CASE WHEN Units=1 AND (Hundreds>0 OR Tens>0) THEN 'THOUSAND ' END,
    CASE WHEN Units=2 AND (Hundreds>0 OR Tens>0) THEN 'MILLION ' END,
   CASE WHEN Units=3 AND (Hundreds>0 OR Tens>0) THEN 'BILLION ' END,
   CASE WHEN Units=4 AND (Hundreds>0 OR Tens>0) THEN 'TRILLION ' END,
  ' ')
   ,' ')
  FROM @tblNumberGroups
  ORDER BY units DESC
  
  -- Get rid of all the spaces 
  WHILE CHARINDEX('  ', @strReturn)>0
   BEGIN
      SET @strReturn = REPLACE(@strReturn,'  ',' ')
   END

  SET @strReturn = LTRIM(RTRIM(@strReturn))

  RETURN @strReturn
END
GO
/****** Object:  Table [dbo].[TypeOfStaffMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TypeOfStaffMaster](
	[StaffId] [int] IDENTITY(1,1) NOT NULL,
	[TypeOfStaff] [varchar](max) NULL,
 CONSTRAINT [PK_TypeOfStaffMaster] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransportTypeMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransportTypeMaster](
	[TransportTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TransportType] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[TransportTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransporterTypeMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransporterTypeMaster](
	[TransporterTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TransporterType] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[TransporterTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ToolTermsMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ToolTermsMaster](
	[ToolId] [int] IDENTITY(1,1) NOT NULL,
	[ToolMouldCode] [varchar](100) NULL,
	[ToolMouldName] [varchar](100) NULL,
	[MouldCost] [decimal](10, 2) NULL,
	[MouldCavity] [int] NULL,
	[OtherCost] [decimal](10, 2) NULL,
	[OtherCostRemark] [varchar](100) NULL,
	[ToolSubject] [varchar](100) NULL,
	[ToolTerms] [varchar](100) NULL,
	[PreparedbyEmpCodeId] [int] NULL,
	[PreparedbyEmpNameId] [int] NULL,
	[ApprovedbyEmpCodeId] [int] NULL,
	[ApprovedbyEmpNameId] [int] NULL,
	[ReviewedByEmpCodeId] [int] NULL,
	[ReviewedByEmpNameId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ToolId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ToolMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ToolMaster](
	[ToolMouldId] [int] IDENTITY(1,1) NOT NULL,
	[ToolMouldCode] [varchar](300) NULL,
	[ToolmouldName] [varchar](300) NULL,
	[DeliveryLeadTime] [datetime] NULL,
	[PackingCost] [decimal](10, 2) NULL,
	[DevelopmentToolCost] [decimal](10, 2) NULL,
	[MouldCost] [decimal](10, 2) NULL,
	[MouldCavity] [int] NULL,
	[OtherCost] [decimal](10, 2) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[ToolMaster] ADD [OtherCostRemark] [varchar](100) NULL
ALTER TABLE [dbo].[ToolMaster] ADD PRIMARY KEY CLUSTERED 
(
	[ToolMouldId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TokenMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TokenMaster](
	[TokenId] [int] IDENTITY(1,1) NOT NULL,
	[TokenValue] [varchar](200) NULL,
	[GenDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TempIndent]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempIndent](
	[IndentId] [int] NOT NULL,
	[IndentNoAutoGen] [varchar](15) NOT NULL,
	[IndentNo] [int] NULL,
	[IndentTypeId] [int] NULL,
	[IndentType] [varchar](50) NULL,
	[IndentDate] [datetime] NULL,
	[IndentTime] [varchar](15) NULL,
	[Note] [varchar](150) NULL,
	[Remark] [varchar](150) NULL,
	[CreatedBy] [varchar](36) NULL,
	[ApprovedBy] [varchar](36) NULL,
	[ApprovedDate] [datetime] NULL,
	[ApprovedTime] [varchar](15) NULL,
	[StoredApproved] [bit] NULL,
	[purchaseOrService] [varchar](50) NULL,
	[ItemType] [varchar](100) NULL,
	[ShortClose] [bit] NULL,
	[ShortCloseReson] [varchar](250) NULL,
	[UserName] [varchar](50) NULL,
	[CmpId] [int] NULL,
	[FinancialYearId] [int] NULL,
	[IndentDetailId] [int] NOT NULL,
	[ItemCode] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[Specification] [varchar](50) NULL,
	[DrawingNo] [varchar](50) NULL,
	[DepartmentId] [int] NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[TempIndent] ADD [dname] [varchar](max) NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[TempIndent] ADD [Purpose] [varchar](50) NULL
ALTER TABLE [dbo].[TempIndent] ADD [CurrentStock] [decimal](10, 2) NULL
ALTER TABLE [dbo].[TempIndent] ADD [RequiredDate] [datetime] NULL
ALTER TABLE [dbo].[TempIndent] ADD [ToOrderQuantity] [decimal](10, 2) NULL
ALTER TABLE [dbo].[TempIndent] ADD [ToOrderUnit] [varchar](15) NULL
ALTER TABLE [dbo].[TempIndent] ADD [Length] [varchar](50) NULL
ALTER TABLE [dbo].[TempIndent] ADD [Grade] [varchar](50) NULL
ALTER TABLE [dbo].[TempIndent] ADD [Weight] [varchar](50) NULL
ALTER TABLE [dbo].[TempIndent] ADD [Rate] [decimal](10, 2) NULL
ALTER TABLE [dbo].[TempIndent] ADD [Amount] [decimal](10, 2) NULL
ALTER TABLE [dbo].[TempIndent] ADD [IsApproved] [bit] NULL
ALTER TABLE [dbo].[TempIndent] ADD [ApprovedQuantity] [decimal](10, 2) NULL
ALTER TABLE [dbo].[TempIndent] ADD [RejectedQty] [decimal](18, 2) NULL
ALTER TABLE [dbo].[TempIndent] ADD [SuppCode] [varchar](15) NULL
ALTER TABLE [dbo].[TempIndent] ADD [ItemName] [varchar](max) NULL
ALTER TABLE [dbo].[TempIndent] ADD [Manufacturer] [varchar](max) NULL
ALTER TABLE [dbo].[TempIndent] ADD [Material] [varchar](max) NULL
ALTER TABLE [dbo].[TempIndent] ADD [ItemSubType] [varchar](max) NULL
ALTER TABLE [dbo].[TempIndent] ADD [Color] [varchar](max) NULL
ALTER TABLE [dbo].[TempIndent] ADD [UOM] [varchar](255) NULL
ALTER TABLE [dbo].[TempIndent] ADD [HSNCODE] [varchar](255) NULL
ALTER TABLE [dbo].[TempIndent] ADD [PurchaseCost] [decimal](20, 2) NULL
ALTER TABLE [dbo].[TempIndent] ADD [SellingPrice] [decimal](20, 2) NULL
ALTER TABLE [dbo].[TempIndent] ADD [RawMaterial] [varchar](50) NULL
ALTER TABLE [dbo].[TempIndent] ADD [SuppName] [varchar](max) NULL
ALTER TABLE [dbo].[TempIndent] ADD [ContactPerson] [varchar](max) NULL
ALTER TABLE [dbo].[TempIndent] ADD [Address1] [varchar](max) NULL
ALTER TABLE [dbo].[TempIndent] ADD [Address2] [varchar](max) NULL
ALTER TABLE [dbo].[TempIndent] ADD [City] [varchar](max) NULL
ALTER TABLE [dbo].[TempIndent] ADD [State] [varchar](max) NULL
ALTER TABLE [dbo].[TempIndent] ADD [PinCode] [numeric](6, 0) NULL
ALTER TABLE [dbo].[TempIndent] ADD [EmailID] [varchar](max) NULL
ALTER TABLE [dbo].[TempIndent] ADD [Telephone] [numeric](18, 0) NULL
ALTER TABLE [dbo].[TempIndent] ADD [Mobile] [numeric](10, 0) NULL
ALTER TABLE [dbo].[TempIndent] ADD [Fax] [varchar](max) NULL
ALTER TABLE [dbo].[TempIndent] ADD [Website] [varchar](max) NULL
ALTER TABLE [dbo].[TempIndent] ADD [GSTIN] [varchar](max) NULL
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaxInvoiceMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaxInvoiceMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNO] [varchar](250) NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[CustomerCode] [varchar](250) NOT NULL,
	[PONO] [varchar](250) NULL,
	[PODate] [datetime] NULL,
	[AmontinRs] [decimal](20, 2) NULL,
	[TotalinvoiceRs] [decimal](20, 2) NULL,
	[SubTotal] [decimal](20, 2) NULL,
	[GrandTotal] [decimal](20, 2) NULL,
	[Remark] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[ShiptoCustcode] [varchar](max) NULL,
	[TransportMode] [varchar](max) NULL,
	[dateofSupply] [datetime] NULL,
	[placeofsupply] [varchar](max) NULL,
	[LoadingCharges] [decimal](20, 2) NULL,
	[TransportChages] [decimal](20, 2) NULL,
	[Freight] [decimal](20, 2) NULL,
	[FreightUnit] [varchar](max) NULL,
	[FreightAmount] [decimal](20, 2) NULL,
	[Packing] [decimal](20, 2) NULL,
	[PackingUnit] [varchar](max) NULL,
	[PackingAmount] [decimal](20, 2) NULL,
	[MASCGSTRATE] [decimal](20, 2) NULL,
	[MASSGSTRATE] [decimal](20, 2) NULL,
	[MASIGSTRATE] [decimal](20, 2) NULL,
	[MASCGSTAMT] [decimal](20, 2) NULL,
	[MASSGSTAMT] [decimal](20, 2) NULL,
	[MASIGSTAMT] [decimal](20, 2) NULL,
	[VehicleNo] [varchar](max) NULL,
	[GSTReverseChargeYesORNO] [varchar](max) NULL,
	[GSTReverseCharge] [varchar](max) NULL,
	[bankaccount] [varchar](max) NULL,
	[bankIFSC] [varchar](max) NULL,
	[POTYPE] [int] NULL,
	[SystemEntryDate] [datetime] NULL,
	[PaymentTerm] [varchar](255) NULL,
	[POClose] [varchar](255) NULL,
 CONSTRAINT [PK__TaxInvoiceMaster__7D8391DF] PRIMARY KEY CLUSTERED 
(
	[InvoiceNO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaxInvoiceDetails]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaxInvoiceDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNO] [varchar](50) NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[ItemCode] [varchar](250) NULL,
	[ItemName] [varchar](max) NULL,
	[Rate] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[TotalQty] [decimal](18, 2) NULL,
	[Discount] [decimal](18, 2) NULL,
	[TAXABLEVALUE] [decimal](20, 2) NULL,
	[CGST] [decimal](20, 2) NULL,
	[CGSTValue] [decimal](18, 2) NULL,
	[SGST] [decimal](20, 2) NULL,
	[SGSTValue] [decimal](18, 2) NULL,
	[IGST] [decimal](20, 2) NULL,
	[IGSTValue] [decimal](20, 2) NULL,
	[TotalGSTTax] [decimal](20, 2) NULL,
	[TotalGSTAMOUNT] [decimal](20, 2) NULL,
	[UOM] [varchar](max) NULL,
	[HSNCODE] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[suppliertypemaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[suppliertypemaster](
	[supptypeid] [int] IDENTITY(1,1) NOT NULL,
	[supptype] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[supptypeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ScheduleMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ScheduleMaster](
	[ScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[Schedule] [varchar](max) NULL,
 CONSTRAINT [PK_ScheduleMaster] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[BindSupplierPo]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BindSupplierPo]
--BindSupplierPo
--@PoNo Varchar(100)
AS
BEGIN
SELECT Id, PoNo FROM SupplierPo --Where PoNo=@PoNo
END
GO
/****** Object:  Table [dbo].[UT_SupplierMaster_Validation]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_SupplierMaster_Validation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SuppCode] [varchar](max) NULL,
	[SuppName] [varchar](max) NULL,
	[ContactPerson] [varchar](max) NULL,
	[Branch] [varchar](max) NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[State] [varchar](max) NULL,
	[PinCode] [numeric](6, 0) NULL,
	[Country] [varchar](max) NULL,
	[EmailID] [varchar](max) NULL,
	[Telephone] [numeric](18, 0) NULL,
	[Mobile] [numeric](10, 0) NULL,
	[Fax] [varchar](max) NULL,
	[Website] [varchar](max) NULL,
	[GSTIN] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[Username] [varchar](max) NULL,
	[LoginBranch] [varchar](max) NULL,
	[SystEmentryDate] [datetime] NULL,
	[supptypeid] [int] NULL,
	[ErrorStep] [varchar](100) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[IsValid] [int] NULL,
	[UploadId] [int] NULL,
 CONSTRAINT [PK_UT_SupplierMaster_Validation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_SupplierMaster_Error]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_SupplierMaster_Error](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SuppCode] [varchar](max) NULL,
	[SuppName] [varchar](max) NULL,
	[ContactPerson] [varchar](max) NULL,
	[Branch] [varchar](max) NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[State] [varchar](max) NULL,
	[PinCode] [numeric](6, 0) NULL,
	[Country] [varchar](max) NULL,
	[EmailID] [varchar](max) NULL,
	[Telephone] [numeric](18, 0) NULL,
	[Mobile] [numeric](10, 0) NULL,
	[Fax] [varchar](max) NULL,
	[Website] [varchar](max) NULL,
	[GSTIN] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[Username] [varchar](max) NULL,
	[LoginBranch] [varchar](max) NULL,
	[SystEmentryDate] [datetime] NULL,
	[supptypeid] [int] NULL,
	[ErrorStep] [varchar](100) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[IsValid] [int] NULL,
	[UploadId] [int] NULL,
 CONSTRAINT [PK_UT_SupplierMaster_Error] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_MachineVsCheckPoint_Varification]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_MachineVsCheckPoint_Varification](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[SrNo] [varchar](max) NULL,
	[MachineNumber] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[Parameter] [varchar](max) NULL,
	[CheckPt] [varchar](max) NULL,
	[PlaneType] [varchar](max) NULL,
	[Schedule] [varchar](max) NULL,
	[CompanyName] [varchar](max) NULL,
	[UploadId] [varchar](max) NULL,
 CONSTRAINT [PK_UT_MachineVsCheckPoint_Varification] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_MachineVsCheckPoint_Validation]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_MachineVsCheckPoint_Validation](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[SrNo] [varchar](max) NULL,
	[MachineNumber] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[Parameter] [varchar](max) NULL,
	[CheckPt] [varchar](max) NULL,
	[PlaneType] [varchar](max) NULL,
	[Schedule] [varchar](max) NULL,
	[CompanyName] [varchar](max) NULL,
	[ErrorStep] [varchar](max) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[IsValid] [int] NULL,
	[UploadId] [varchar](max) NULL,
 CONSTRAINT [PK_UT_MachineVsCheckPoint_Validation] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_MachineVsCheckPoint_Error]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_MachineVsCheckPoint_Error](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[SrNo] [varchar](max) NULL,
	[MachineNumber] [varchar](max) NULL,
	[Location] [varchar](max) NULL,
	[Parameter] [varchar](max) NULL,
	[CheckPt] [varchar](max) NULL,
	[PlaneType] [varchar](max) NULL,
	[Schedule] [varchar](max) NULL,
	[CompanyName] [varchar](max) NULL,
	[ErrorStep] [varchar](max) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[IsValid] [int] NULL,
	[UploadId] [varchar](max) NULL,
 CONSTRAINT [PK_UT_MachineVsCheckPoint_Error] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_ItemMaster_Verification]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_ItemMaster_Verification](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](255) NOT NULL,
	[ItemName] [varchar](max) NULL,
	[Manufacturer] [varchar](max) NULL,
	[Material] [varchar](max) NULL,
	[ItemType] [varchar](max) NULL,
	[ItemSubType] [varchar](max) NULL,
	[Color] [varchar](max) NULL,
	[UOM] [varchar](255) NULL,
	[HSNCODE] [varchar](255) NULL,
	[GSTRate] [decimal](20, 2) NULL,
	[PurchaseCost] [decimal](20, 2) NULL,
	[SellingPrice] [decimal](20, 2) NULL,
	[Username] [varchar](max) NULL,
	[LoginBranch] [varchar](max) NULL,
	[SystEmentryDate] [datetime] NULL,
	[RawMaterial] [varchar](50) NULL,
	[uploadId] [int] NULL,
	[SubCatagory] [varchar](50) NULL,
	[Catagory] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_ItemMaster_Validation]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_ItemMaster_Validation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](255) NOT NULL,
	[ItemName] [varchar](max) NULL,
	[Manufacturer] [varchar](max) NULL,
	[Material] [varchar](max) NULL,
	[ItemType] [varchar](max) NULL,
	[ItemSubType] [varchar](max) NULL,
	[Color] [varchar](max) NULL,
	[UOM] [varchar](255) NULL,
	[HSNCODE] [varchar](255) NULL,
	[GSTRate] [varchar](max) NULL,
	[PurchaseCost] [varchar](max) NULL,
	[SellingPrice] [varchar](max) NULL,
	[Username] [varchar](max) NULL,
	[LoginBranch] [varchar](max) NULL,
	[SystEmentryDate] [varchar](50) NULL,
	[RawMaterial] [varchar](50) NULL,
	[Errorstep] [varchar](50) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[isValid] [int] NULL,
	[uploadId] [int] NULL,
	[SubCatagory] [varchar](50) NULL,
	[Catagory] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_ItemMaster_Error]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_ItemMaster_Error](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](255) NOT NULL,
	[ItemName] [varchar](max) NULL,
	[Manufacturer] [varchar](max) NULL,
	[Material] [varchar](max) NULL,
	[ItemType] [varchar](max) NULL,
	[ItemSubType] [varchar](max) NULL,
	[Color] [varchar](max) NULL,
	[UOM] [varchar](255) NULL,
	[HSNCODE] [varchar](255) NULL,
	[GSTRate] [varchar](50) NULL,
	[PurchaseCost] [varchar](50) NULL,
	[SellingPrice] [varchar](50) NULL,
	[Username] [varchar](max) NULL,
	[LoginBranch] [varchar](max) NULL,
	[SystEmentryDate] [datetime] NULL,
	[RawMaterial] [varchar](50) NULL,
	[Errorstep] [varchar](50) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[isValid] [int] NULL,
	[uploadId] [int] NULL,
	[Subcategory] [varchar](50) NULL,
	[Category] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_EmployeeMaster_Varificaton]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[UT_EmployeeMaster_Varificaton](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[srId] [varchar](10) NULL,
	[EmpCode] [varchar](10) NULL,
	[Title] [varchar](max) NULL,
	[FristName] [varchar](20) NULL,
	[MiddleName] [varchar](15) NULL,
	[LastName] [varchar](15) NULL,
	[ContactNo] [varchar](10) NULL,
	[MobileNo] [varchar](10) NULL,
	[EmailId] [varchar](max) NULL,
	[DOB] [date] NULL,
	[Gender] [varchar](10) NULL,
	[BloodGroup] [varchar](10) NULL,
	[MSID] [varchar](30) NULL,
	[CTC] [numeric](18, 0) NULL,
	[GrossAmount] [varchar](30) NULL,
	[TempAddress] [varchar](20) NULL,
	[DocumentName] [varchar](max) NULL,
	[TrainingDetails] [varchar](20) NULL,
	[PanNo] [varchar](15) NULL,
	[ESICACCNO] [varchar](max) NULL,
	[AutoMail] [varchar](30) NULL,
	[Leave] [varchar](30) NULL,
	[Attendance] [varchar](30) NULL,
	[EmpPhoto] [varchar](max) NULL,
	[DateofJoin] [date] NULL,
	[Qualification] [varchar](30) NULL,
	[Designation] [varchar](30) NULL,
	[department] [varchar](30) NULL,
	[Category] [varchar](30) NULL,
	[WeekOffMaster] [varchar](30) NULL,
	[Contractor] [varchar](30) NULL,
	[StaffType] [varchar](30) NULL,
	[PayType] [varchar](30) NULL,
	[Unit] [varchar](30) NULL,
	[AadharNo] [varchar](30) NULL,
	[Balance] [numeric](18, 0) NULL,
	[PermanentAddress] [varchar](max) NULL,
	[Asset] [varchar](50) NULL,
	[ApprasalHistory] [varchar](max) NULL,
	[PFAccNo] [varchar](50) NULL,
	[IsLeft] [varchar](50) NULL,
	[LeftDate] [date] NULL,
	[City] [varchar](30) NULL,
	[State] [varchar](30) NULL,
	[Country] [varchar](30) NULL,
	[componyName] [varchar](30) NULL,
	[UploadId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_EmployeeMaster_Validation]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_EmployeeMaster_Validation](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[srId] [varchar](10) NULL,
	[EmpCode] [varchar](10) NULL,
	[Title] [varchar](max) NULL,
	[FristName] [varchar](20) NULL,
	[MiddleName] [varchar](15) NULL,
	[LastName] [varchar](15) NULL,
	[ContactNo] [varchar](10) NULL,
	[MobileNo] [varchar](10) NULL,
	[EmailId] [varchar](max) NULL,
	[DOB] [datetime] NULL,
	[Gender] [varchar](10) NULL,
	[BloodGroup] [varchar](10) NULL,
	[MSID] [varchar](30) NULL,
	[CTC] [numeric](18, 0) NULL,
	[GrossAmount] [varchar](30) NULL,
	[TempAddress] [varchar](20) NULL,
	[DocumentName] [varchar](max) NULL,
	[TrainingDetails] [varchar](20) NULL,
	[PanNo] [varchar](15) NULL,
	[ESICACCNO] [varchar](max) NULL,
	[AutoMail] [varchar](30) NULL,
	[Leave] [varchar](30) NULL,
	[Attendance] [varchar](30) NULL,
	[EmpPhoto] [varchar](max) NULL,
	[DateofJoin] [datetime] NULL,
	[Qualification] [varchar](30) NULL,
	[Designation] [varchar](30) NULL,
	[department] [varchar](30) NULL,
	[Category] [varchar](30) NULL,
	[WeekOffMaster] [varchar](30) NULL,
	[Contractor] [varchar](30) NULL,
	[StaffType] [varchar](30) NULL,
	[PayType] [varchar](30) NULL,
	[Unit] [varchar](30) NULL,
	[AadharNo] [varchar](30) NULL,
	[Balance] [numeric](18, 0) NULL,
	[PermanentAddress] [varchar](max) NULL,
	[Asset] [varchar](50) NULL,
	[ApprasalHistory] [varchar](max) NULL,
	[PFAccNo] [varchar](50) NULL,
	[IsLeft] [varchar](50) NULL,
	[LeftDate] [datetime] NULL,
	[City] [varchar](30) NULL,
	[State] [varchar](30) NULL,
	[Country] [varchar](30) NULL,
	[componyName] [varchar](30) NULL,
	[Errorstep] [varchar](max) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[isValid] [int] NULL,
	[uploadId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_EmployeeMaster_Error]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_EmployeeMaster_Error](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[srId] [varchar](10) NULL,
	[EmpCode] [varchar](10) NULL,
	[Title] [varchar](max) NULL,
	[FristName] [varchar](20) NULL,
	[MiddleName] [varchar](15) NULL,
	[LastName] [varchar](15) NULL,
	[ContactNo] [varchar](10) NULL,
	[MobileNo] [varchar](10) NULL,
	[EmailId] [varchar](max) NULL,
	[DOB] [date] NULL,
	[Gender] [varchar](10) NULL,
	[BloodGroup] [varchar](10) NULL,
	[MSID] [varchar](30) NULL,
	[CTC] [numeric](18, 0) NULL,
	[GrossAmount] [varchar](30) NULL,
	[TempAddress] [varchar](20) NULL,
	[DocumentName] [varchar](max) NULL,
	[TrainingDetails] [varchar](20) NULL,
	[PanNo] [varchar](15) NULL,
	[ESICACCNO] [varchar](max) NULL,
	[AutoMail] [varchar](30) NULL,
	[Leave] [varchar](30) NULL,
	[Attendance] [varchar](30) NULL,
	[EmpPhoto] [varchar](max) NULL,
	[DateofJoin] [date] NULL,
	[Qualification] [varchar](30) NULL,
	[Designation] [varchar](30) NULL,
	[department] [varchar](30) NULL,
	[Category] [varchar](30) NULL,
	[WeekOffMaster] [varchar](30) NULL,
	[Contractor] [varchar](30) NULL,
	[StaffType] [varchar](30) NULL,
	[PayType] [varchar](30) NULL,
	[Unit] [varchar](30) NULL,
	[AadharNo] [varchar](30) NULL,
	[Balance] [numeric](18, 0) NULL,
	[PermanentAddress] [varchar](max) NULL,
	[Asset] [varchar](50) NULL,
	[ApprasalHistory] [varchar](max) NULL,
	[PFAccNo] [varchar](50) NULL,
	[IsLeft] [varchar](50) NULL,
	[LeftDate] [date] NULL,
	[City] [varchar](30) NULL,
	[State] [varchar](30) NULL,
	[Country] [varchar](30) NULL,
	[componyName] [varchar](30) NULL,
	[Errorstep] [varchar](max) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[isValid] [int] NULL,
	[UploadId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_CustomerMaster_Varification]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_CustomerMaster_Varification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustCode] [varchar](max) NULL,
	[CustName] [varchar](max) NULL,
	[ContactPerson] [varchar](max) NULL,
	[Branch] [varchar](max) NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[State] [varchar](max) NULL,
	[PinCode] [numeric](6, 0) NULL,
	[Country] [varchar](max) NULL,
	[EmailID] [varchar](max) NULL,
	[Telephone] [numeric](18, 0) NULL,
	[Mobile] [numeric](10, 0) NULL,
	[Fax] [varchar](max) NULL,
	[Website] [varchar](max) NULL,
	[GSTIN] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[Username] [varchar](max) NULL,
	[LoginBranch] [varchar](max) NULL,
	[SystEmentryDate] [datetime] NULL,
	[uploadId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_CustomerMaster_Validation]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_CustomerMaster_Validation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustCode] [varchar](max) NULL,
	[CustName] [varchar](max) NULL,
	[ContactPerson] [varchar](max) NULL,
	[Branch] [varchar](max) NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[State] [varchar](max) NULL,
	[PinCode] [numeric](6, 0) NULL,
	[Country] [varchar](max) NULL,
	[EmailID] [varchar](max) NULL,
	[Telephone] [numeric](18, 0) NULL,
	[Mobile] [numeric](10, 0) NULL,
	[Fax] [varchar](max) NULL,
	[Website] [varchar](max) NULL,
	[GSTIN] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[Username] [varchar](max) NULL,
	[LoginBranch] [varchar](max) NULL,
	[SystEmentryDate] [datetime] NULL,
	[Errorstep] [varchar](max) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[isValid] [int] NULL,
	[uploadId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_CustomerMaster_Error]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_CustomerMaster_Error](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustCode] [varchar](max) NULL,
	[CustName] [varchar](max) NULL,
	[ContactPerson] [varchar](max) NULL,
	[Branch] [varchar](max) NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[State] [varchar](max) NULL,
	[PinCode] [numeric](6, 0) NULL,
	[Country] [varchar](max) NULL,
	[EmailID] [varchar](max) NULL,
	[Telephone] [numeric](18, 0) NULL,
	[Mobile] [numeric](10, 0) NULL,
	[Fax] [varchar](max) NULL,
	[Website] [varchar](max) NULL,
	[GSTIN] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[Username] [varchar](max) NULL,
	[LoginBranch] [varchar](max) NULL,
	[SystEmentryDate] [datetime] NULL,
	[Errorstep] [varchar](max) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[isValid] [int] NULL,
	[uploadId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WeekOffMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[WeekOffMaster](
	[WID] [int] IDENTITY(1,1) NOT NULL,
	[WeekOff] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[WID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Weekday]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weekday](
	[weekday] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Upload_ItemMaster_Validation_25July]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc  [dbo].[Upload_ItemMaster_Validation_25July]
 @UploadId Int
 as
 
 begin
 
BEGIN TRY
BEGIN Tran


--------------------------------------------------------Blank Data (Mandatory fields)----------------------------

-----------------------------------------------------------------------------------------------------------------




COMMIT
END TRY

BEGIN CATCH

ROLLBACK
print Error_Message()
print Error_Line()
END CATCH

 
 end
GO
/****** Object:  Table [dbo].[UT_UploadTypeMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_UploadTypeMaster](
	[UploadTypeID] [int] IDENTITY(1,1) NOT NULL,
	[UploadType] [varchar](max) NULL,
	[TamplateTypeID] [int] NULL,
 CONSTRAINT [PK_UT_UploadTypeMaster] PRIMARY KEY CLUSTERED 
(
	[UploadTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_UploadMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_UploadMaster](
	[uploadId] [int] IDENTITY(1,1) NOT NULL,
	[uploadName] [varchar](30) NULL,
	[uploadtype] [varchar](30) NULL,
	[ValidationStartDate] [date] NULL,
	[ValidationEndDate] [date] NULL,
	[ValidationStatus] [varchar](30) NULL,
	[ValidationSuccessCount] [int] NULL,
	[ValidationErrorCount] [int] NULL,
	[VerificationStartDate] [date] NULL,
	[VerificationEndDate] [date] NULL,
	[VerificationStatus] [varchar](30) NULL,
	[VerificationSuccessCount] [int] NULL,
	[VerificationErrorCount] [int] NULL,
	[UploadFileName] [varchar](max) NULL,
	[UserId] [int] NULL,
	[IpAddress] [varchar](30) NULL,
	[FinancialYearId] [int] NULL,
	[ComponyId] [int] NULL,
	[ValidationStartTime] [datetime] NULL,
	[ValidationEndTime] [datetime] NULL,
	[VerificationStartTime] [datetime] NULL,
	[VerificationEndTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[uploadId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_TamplateTypeMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_TamplateTypeMaster](
	[TamplateTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TamplateType] [varchar](max) NULL,
 CONSTRAINT [PK_UT_TamplateTypeMaster] PRIMARY KEY CLUSTERED 
(
	[TamplateTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UT_TamplateTypeDetail]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UT_TamplateTypeDetail](
	[TemplateTypeDetailId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateTypeId] [int] NULL,
	[DatabaseColumnName] [varchar](100) NULL,
	[ExcelColumnName] [varchar](100) NULL,
	[ColumnNumber] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TemplateTypeDetailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[UpdateTaxInvoiceMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[UpdateTaxInvoiceMaster]

@InvoiceNO varchar(50),
@InvoiceDate datetime,
@CustomerCode varchar(250),
@PONO	varchar(250),
@PODate	datetime,

@TotalinvoiceRs	decimal(20, 2),

--@SubTotal	decimal(20, 2),
@GrandTotal	decimal(20, 2),
@Remark	varchar(50)	,
@UserName	varchar(50),
@ShiptoCustcode	varchar(MAX),
@TransportMode	varchar(MAX),
@dateofSupply	datetime,
@placeofsupply	varchar(MAX),
@LoadingCharges	decimal(20, 2),
@TransportCharges	decimal(20, 2),
@FrightRate	decimal(20, 2)	,
@FrightUnit	varchar(MAX)	,
@FrightAmount	decimal(20, 2)	,
@PackingRate	decimal(20, 2)	,
@PackingUnit	varchar(MAX)	,
@PackingAmount	decimal(20, 2)	,
@MAXCGSTRATE	decimal(20, 2)	,
@MAXSGSTRATE	decimal(20, 2)	,
@MAXIGSTRATE	decimal(20, 2)	,
@MAXCGSTAMT	decimal(20, 2)	,
@MAXSGSTAMT	decimal(20, 2)	,
@MAXIGSTAMT	decimal(20, 2)	,
@VehicleNo	varchar(MAX)	,
@GSTReverseChargeYesORNO	varchar(MAX)	,
@GSTReverseCharge	varchar(MAX)	,
@bankaccount	varchar(MAX)	,
@bankIFSC	varchar(MAX)	,
@POTYPE	int	,
@PaymentTerm	varchar(255)	,
@POClose	varchar(255)=NULL	

as

UPDATE  TaxInvoiceMaster
SET  
 InvoiceDate =@InvoiceDate
, CustomerCode =@CustomerCode
, PONO =@PONO
, PODate =@PODate
, TotalinvoiceRs =@TotalinvoiceRs
--, SubTotal =@SubTotal
, GrandTotal =@GrandTotal
, Remark =@Remark
, UserName =@UserName
, ShiptoCustcode =@ShiptoCustcode
, TransportMode =@TransportCharges
, dateofSupply =@dateofSupply
, placeofsupply =@placeofsupply
, LoadingCharges =@LoadingCharges
, TransportChages =@TransportCharges
, Freight =@FrightRate
, FreightUnit =@FrightUnit
, FreightAmount =@FrightAmount
, Packing =@PackingRate
, PackingUnit =@PackingUnit
, PackingAmount =@PackingAmount
, MASCGSTRATE =@MAXCGSTRATE
, MASSGSTRATE =@MAXSGSTRATE
, MASIGSTRATE =@MAXIGSTRATE
, MASCGSTAMT =@MAXCGSTAMT
, MASSGSTAMT =@MAXSGSTAMT
, MASIGSTAMT =@MAXIGSTAMT
, VehicleNo =@VehicleNo
, GSTReverseChargeYesORNO =@GSTReverseChargeYesORNO
, GSTReverseCharge =@GSTReverseCharge
, bankaccount =@bankaccount
, bankIFSC =@bankIFSC
, POTYPE =@POTYPE
, SystemEntryDate =GETDATE()
, PaymentTerm =@PaymentTerm
, POClose =@POClose


where
InvoiceNO=@InvoiceNO

RETURN
GO
/****** Object:  StoredProcedure [dbo].[Upload_ItemMaster_Validation_12July]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Upload_ItemMaster_Validation_12July]
@UploadId Int
as
begin

BEGIN TRY

BEGIN TRAN


--------------------------------------------------------Blank Data (Mandatory fields)----------------------------
UPDATE UT_ItemMaster_Validation SET ErrorMessage= ISNULL(ErrorMessage,'')+ ','+'Item name should not blank', isValid=0
WHERE (ItemName is null OR LTRIM( RTRIM(ItemName))='')
AND uploadId=@UploadId

UPDATE UT_ItemMaster_Validation SET ErrorMessage= ISNULL(ErrorMessage,'')+ ','+ 'Material should not blank', isValid=0
WHERE (Material is null OR LTRIM( RTRIM(Material))='')
AND uploadId=@UploadId

UPDATE UT_ItemMaster_Validation SET ErrorMessage= ISNULL(ErrorMessage,'')+ ','+ 'GSTRate should not blank', isValid=0
WHERE (GSTRate is null OR LTRIM( RTRIM(GSTRate))='')
AND uploadId=@UploadId

------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------Number Validation(int, flot,double,decimal)----------------------------
-- isnumeric function

UPDATE UT_ItemMaster_Validation SET ErrorMessage= ISNULL(ErrorMessage,'')+ ','+ 'GST RATE is not in valid format', isValid=0
WHERE (GSTRate is NOT null OR LTRIM( RTRIM(GSTRate))!='')
AND ISNUMERIC(GSTRate)=0
AND uploadId=@UploadId

-----------------------------------------------------------------------------------------------------------------
-------------------------------------------------------Date Validation----------------------------
-- isDate function
-----------------------------------------------------------------------------------------------------------------
-------------------------------------------------------Email Validation----------------------------
-- google it
-----------------------------------------------------------------------------------------------------------------

-------------------------------------------------------Data Format Validation(Aadhar, pan card,mobile number,bank acount,)----------------------------

-----------------------------------------------------------------------------------------------------------------



-------------------------------------------------------Duplicate row(Duplicate record in sheet)----------------------------

 INSERT INTO  UT_ItemMaster_Error (
 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,SystEmentryDate,RawMaterial,Errorstep,ErrorMessage,isValid,uploadId,Subcategory,Category
 )
  SELECT 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,SystEmentryDate,RawMaterial,'Validation',ErrorMessage,isValid,uploadId,SubCatagory,Catagory
  FROM UT_ItemMaster_Validation
WHERE Uploadid=@uploadId AND Isvalid=0
------------------------------------------------------------------------------------------------------------------------------





  -------------------------------------------Record count----------------------------------------
  DECLARE @SuccessCount int = (Select COUNT(ID) FROM UT_ItemMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=1)
  DECLARE @InValidCount int = (Select COUNT(ID) FROM UT_ItemMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=0)
  ---------------------------------------------------------------------------------------------
  
PRINT @SuccessCount
PRINT @InValidCount


  ----------------------- Put invalid records in error table and delete them from validation table ----
 
 INSERT INTO  UT_ItemMaster_Error (
 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,SystEmentryDate,
 	RawMaterial,Errorstep,ErrorMessage,isValid,uploadId,Subcategory,Category
 )
  SELECT 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,SystEmentryDate,
  RawMaterial,'Validation',ErrorMessage,isValid,uploadId,SubCatagory,Catagory
  FROM UT_ItemMaster_Validation
WHERE Uploadid=@uploadId AND Isvalid=0
  
 -----------------------------------------------------------------------------------------------------------------------------
 
 
 -------------------------------------------------------Delete invalid records from Validation table---------------------------------------------------------------
 Delete from UT_ItemMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=0
 ---------------------------------------------------------------------------------------------------------

 

COMMIT TRAN
END TRY

BEGIN CATCH

ROLLBACK TRAN
print Error_Message()
print Error_Line()

END CATCH

end
GO
/****** Object:  StoredProcedure [dbo].[Upload_ItemMaster_Validation_10July]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Upload_ItemMaster_Validation_10July]
-- Upload_ItemMaster_Validation_10July 1
@UploadId Int
as
begin

BEGIN TRY
BEGIN Tran

--------------------------------------------------------Blank Data (Mandatory fields)----------------------------

update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : Item Name should not blank..' 
WHERE (ItemName IS NULL OR LTRIM(ItemName) ='')
AND uploadId=1

update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : Manufacturer Name should not blank..' 
WHERE (Manufacturer IS NULL OR LTRIM(Manufacturer) ='')
AND uploadId=1

update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : Manufacturer Name should not blank..' 
WHERE (Manufacturer IS NULL OR LTRIM(Manufacturer) ='')
AND uploadId=1

update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : Material Name should not blank..' 
WHERE (Material IS NULL OR LTRIM(Material) ='')
AND uploadId=1

update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : Color Name should not blank..' 
WHERE (Color IS NULL OR LTRIM(Color) ='')
AND uploadId=1

update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : Unit of Measurement Name should not blank..' 
WHERE (UOM IS NULL OR LTRIM(UOM) ='')
AND uploadId=1

update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : Catagory Name should not blank..' 
WHERE (Catagory IS NULL OR LTRIM(Catagory) ='')
AND uploadId=1

update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : Sub Catagory Name should not blank..' 
WHERE (SubCatagory IS NULL OR LTRIM(SubCatagory) ='')
AND uploadId=1
-----------------------------------------------------------------------------------------------------------------

-------------------------------------------------------Number Validation(int, flot,double,decimal)----------------------------
-- isnumeric function
update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : GstRate is a number' 
WHERE (GSTRate IS NOT NULL OR LTRIM(GSTRate) !='') AND ISNUMERIC(GSTRate)=0
AND uploadId=1

update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : SellingPrice is a number' 
WHERE (SellingPrice IS NOT NULL OR LTRIM(GSTRate) !='') AND ISNUMERIC(SellingPrice)=0
AND uploadId=1

update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : PurchaseCost is a number' 
WHERE (PurchaseCost IS NOT NULL OR LTRIM(PurchaseCost) !='') AND ISNUMERIC(PurchaseCost)=0
AND uploadId=1


-----------------------------------------------------------------------------------------------------------------
-------------------------------------------------------Date Validation----------------------------
-- isDate function
-----------------------------------------------------------------------------------------------------------------
-------------------------------------------------------Email Validation----------------------------
-- google it
-----------------------------------------------------------------------------------------------------------------

-------------------------------------------------------Data Format Validation(Aadhar, pan card,mobile number,bank acount,)----------------------------

-----------------------------------------------------------------------------------------------------------------

-------------------------------------------------------Duplicate row(Duplicate record in sheet)----------------------------

 Update UT_ItemMaster_Validation  set isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : Duplicate item exist in the sheet..' 
  where   uploadId=@uploadId And Id IN(  
SELECT Id FROM (
     
     SELECT 
         Id,ItemName,
         ROW_NUMBER() OVER (PARTITION BY ItemName ORDER BY Id) AS intRow
     FROM UT_ItemMaster_Validation WHERE uploadId=@uploadId
      
) AS d
WHERE d.intRow != 1 AND
uploadId= @uploadId
 )
-----------------------------------------------------------------------------------------------------------------




  -------------------------------------------Record count----------------------------------------
  DECLARE @SuccessCount int = (Select COUNT(ID) FROM UT_ItemMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=1)
  DECLARE @InValidCount int = (Select COUNT(ID) FROM UT_ItemMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=0)
  ---------------------------------------------------------------------------------------------
  
PRINT @SuccessCount
PRINT @InValidCount


  ----------------------- Put invalid records in error table and delete them from validation table ----
 
 INSERT INTO  UT_ItemMaster_Error (
 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,SystEmentryDate,
 	RawMaterial,Errorstep,ErrorMessage,isValid,uploadId,Subcategory,Category
 )
  SELECT 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,
  SystEmentryDate,RawMaterial,'Validation',ErrorMessage,isValid,uploadId,SubCatagory,Catagory
  FROM UT_ItemMaster_Validation
WHERE Uploadid=@uploadId AND Isvalid=0
  
 -----------------------------------------------------------------------------------------------------------------------------
 
 
 -------------------------------------------------------Delete invalid records from Validation table---------------------------------------------------------------
 Delete from UT_ItemMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=0
 ---------------------------------------------------------------------------------------------------------

COMMIT
END TRY

BEGIN CATCH

ROLLBACK
print Error_Message()
print Error_Line()
END CATCH

end
GO
/****** Object:  View [dbo].[V1]    Script Date: 04/08/2023 08:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[V1]
As
Select StateId,StateName from StateMaster;
GO
/****** Object:  StoredProcedure [dbo].[Upload_MachineVsCheckPoint_Validation]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Upload_MachineVsCheckPoint_Validation] --1
-- Upload_MachineVsCheckPoint_Validation 1
@UploadId int,
@UserId int =1,
 @CmpId int =1 , 
 @UploadType varchar(30)='New',
 @UploadName varchar(30)='MachineVsCheckpoint',
 @IPAddress varchar(30)='192.168.1.1',
 @FinancialYearId int =1


AS

BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
		
		
    ----------------- Insert in Uplad Master ------------------------------
    INSERT INTO UT_UploadMaster(uploadName,uploadtype,UserId,
    ValidationStartDate,ValidationStartTime)
    select  @UploadName,@UploadType,@UserId,GETDATE(),CURRENT_TIMESTAMP
    ----------------------------------------------------------------------
   -----------------------Get Upload id here-----------------------------------
   SET @UploadId  =(Select Distinct SCOPE_IDENTITY() From
   UT_UploadMaster )
   ------------------------------------------------------

-----------------------Update upload id in Employeevalidation----
 
  Update UT_MachineVsCheckPoint_Validation set UploadId=@UploadId
  where UploadId is null or UploadId =0
  -----------------------------------------------------------------  

		
		
		-----------------------------------Check Blank Data-----------------------------------
		
		UPDATE UT_MachineVsCheckPoint_Validation
		SET ErrorMessage=  ISNULL(ErrorMessage,' ')+','+'Error: MachineCode Is Blank',
		IsValid=0
		WHERE LTRIM(MachineNumber) IS NULL OR LTRIM(MachineNumber)=''
		AND UploadId=@UploadId
		
		UPDATE UT_MachineVsCheckPoint_Validation
		SET ErrorMessage=isnull(ErrorMessage,'')+','+'Error: Location Is Blank',
		IsValid=0
		WHERE LTRIM(Location) IS NULL OR LTRIM(Location)=''
		AND UploadId=@UploadId
		
		UPDATE UT_MachineVsCheckPoint_Validation
		SET ErrorMessage=isnull(ErrorMessage,'')+','+'Error: CheckPoint Is Blank',
		IsValid=0
		WHERE LTRIM(CheckPt) IS NULL OR LTRIM(CheckPt)=''
		AND UploadId=@UploadId
		
		UPDATE UT_MachineVsCheckPoint_Validation
		SET ErrorMessage=isnull(ErrorMessage,'')+','+'Error: PlaneType Is Blank',
		IsValid=0
		WHERE LTRIM(PlaneType) IS NULL OR LTRIM(PlaneType)=''
		AND UploadId=@UploadId

		UPDATE UT_MachineVsCheckPoint_Validation
		SET ErrorMessage=isnull(ErrorMessage,'')+','+'Error: Schedule should not be Blank',
		IsValid=0
		WHERE LTRIM(Schedule) IS NULL OR LTRIM(Schedule)=''
		AND UploadId=@UploadId
		
		UPDATE UT_MachineVsCheckPoint_Validation
		SET ErrorMessage=isnull(ErrorMessage,'')+','+'Error: CompanyName Is Blank',
		IsValid=0
		WHERE LTRIM(CompanyName) IS NULL OR LTRIM(CompanyName)=''
		AND UploadId=@UploadId
		---------------------------------------------------------------------------------------------------------		
 

		----------------------------------Check Duplicate Entries In Excel Sheet--------------------------------------
		UPDATE IV WITH(ROWLock) SET ErrorMessage=ISNULL(ErrorMessage,'') + ' Error: Duplicate data with key(Machine No,Plan Type, Checkpoint)"',
		IsValid = 0
		FROM UT_MachineVsCheckPoint_Validation IV 
		WHERE IV.UploadId =  @UploadId
		AND EXISTS
			(      
				SELECT 1 FROM
				(   
					SELECT * FROM
								(	
									SELECT  Uid,  _A.MachineNumber, _A.CheckPt,_A.PlaneType ,
									 ROW_NUMBER() OVER(PARTITION BY _A.MachineNumber, _A.CheckPt,_A.PlaneType
									 ORDER BY _A.MachineNumber, _A.CheckPt,_A.PlaneType) AS _Row
									FROM  UT_MachineVsCheckPoint_Validation  _A 
									WHERE UploadId = @UploadId
									GROUP BY   
									_A.MachineNumber, _A.CheckPt,_A.PlaneType 
									,Uid
								) T1 WHERE _Row > 1			
				) AS T
				 WHERE
				 IV.MachineNumber= T.MachineNumber 
				 AND IV.CheckPt = T.CheckPt
				 AND IV.PlaneType = T.PlaneType 				  
		 		 AND T._Row > 1		
		)

		-----------------------------------------------------------------------------------

-------------------------------------------------------------------------------------


--------------------------------insert into UT_MachineVsCheckPoint_Error--------------------------------------------------

INSERT INTO UT_MachineVsCheckPoint_Error(SrNo,MachineNumber,Location,Parameter,CheckPt,PlaneType,Schedule,CompanyName,ErrorStep,ErrorMessage,IsValid,UploadId)
Select SrNo,MachineNumber,Location,Parameter,CheckPt,PlaneType,Schedule,CompanyName,'Validation',ErrorMessage,IsValid,UploadId
FROM UT_MachineVsCheckPoint_Validation 
WHERE IsValid=0 and UploadId=@uploadId
----------------------------------------------------------------------------------

----------------------------------------------------------------------------
  update UT_UploadMaster 
   set ValidationSuccessCount=(select COUNT(*) from UT_MachineVsCheckPoint_Validation
   where isValid=1 and UploadId=@UploadId)
   
   update UT_UploadMaster
   set ValidationErrorCount=(select COUNT (*)  from UT_MachineVsCheckPoint_Validation
   where isValid=0 and UploadId=@UploadId) 
  ----------------------------------- -----------------------------------------

------------------------------------Delete from UT_MachineVsCheckPoint_Validation---------------------------------
 DELETE FROM UT_MachineVsCheckPoint_Validation WHERE IsValid=0 and UploadId=@uploadId
------------------------------------------------------------------------------------------------------------


------------------------------------------------------------------------------
    update UT_UploadMaster SET  ValidationEndDate=GETDATE(),
    ValidationEndTime = CURRENT_TIMESTAMP 
     WHERE uploadId=@UploadId
------------------------------------------------------------------------------
 		
		
		-----------------------------------------------------------------------------------		
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		
	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[Upload_ItemMaster_Verification10July]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Upload_ItemMaster_Verification10July]
(@uploadId int)

as
begin

DECLARE @ErrorMessage varchar(max)
begin try
begin tran

-----------------------------Validate master data-------------------------------------------------------------
 
 select * From UT_ItemMaster_Validation
 
 -- manufacturer
 
 

----------------------------------------------------------
  

commit tran
end try

begin catch
rollback tran

 SET @ErrorMessage= 'ERROR IN :'+ ERROR_MESSAGE() + ' ERROR Line : '+ ERROR_LINE()
 
PRINT @ErrorMessage
end catch
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateMaterialInvoiceMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[UpdateMaterialInvoiceMaster]

@UIN varchar(250),
@InwardDate datetime,
@InvoiceNO varchar(250)= null,
@InvoiceDate datetime= null,
@InwordBranch varchar(250)= null,
@SupplierCode varchar(250)= null,
@SubTotal decimal(20, 2)= null,
@GrandTotal decimal(20, 2)= null,
@Remark varchar(50)= null,
@UserName varchar(50)= null,
@TransportMode varchar(MAX)= null,
@LoadingCharges decimal(20, 2)= null,
@TransportChages decimal(20, 2)= null,
@FreightAmount decimal(20, 2)= null,
@PackingAmount decimal(20, 2)= null,
@VehicleNo varchar(MAX)= null,
@GSTReverseChargeYesORNO varchar(MAX)= null,
@GSTReverseCharge varchar(MAX)= null,
@SystemEntryDate datetime= null,
@dateofSupply datetime= null,
@placeofsupply varchar(255)= null


as
begin

Update MaterialInvoiceMaster SET


InwardDate =@InwardDate,
InvoiceNO=@InvoiceNO,
InvoiceDate=InvoiceDate,
InwordBranch=@InwordBranch,
SupplierCode=@SupplierCode,
SubTotal=@SubTotal,
GrandTotal=@GrandTotal,
Remark=@Remark,
UserName=@UserName,
TransportMode=@TransportMode,
LoadingCharges=@LoadingCharges,
TransportChages=@TransportChages,
FreightAmount=@FreightAmount,
PackingAmount=@PackingAmount,
VehicleNo=@VehicleNo,
GSTReverseChargeYesORNO=@GSTReverseChargeYesORNO,
GSTReverseCharge=@GSTReverseCharge,
SystemEntryDate=GETDATE(),
dateofSupply=@dateofSupply,
placeofsupply=@placeofsupply

where  UIN=@UIN


end
GO
/****** Object:  StoredProcedure [dbo].[UpdateMachineNameRemark]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[UpdateMachineNameRemark]
@Id int,
@MachineName varchar(max),
@Remark varchar(max)
as
begin
Update  MachineMaster set MachineName=@MachineName , Remark=@Remark where SrNo=@Id
end;
GO
/****** Object:  StoredProcedure [dbo].[UpdateMachineMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[UpdateMachineMaster](
@SrNo bigint,
	@Cmp_Code varchar(10) ,
	@Groupp varchar(50) ,
	@CategoryCode varchar(50),
	@MachineNo varchar(50) ,
	@MachineName varchar(50),
	@Make varchar(50) ,
	@Model varchar(50),
	@PMPlan varchar(50) ,
	@CapacityRangeFrom decimal(10, 2),
	@CapacityRangeTo decimal(10, 2) ,
	@Remark varchar(50) ,
	@Location varchar(50),
	@PurchaseDate datetime ,
	@MachineCostPerHr decimal(10, 2),
	@StdProdPerHr decimal(10, 2) )
As
Begin 
Update MachineMaster set
Cmp_Code=@Cmp_Code ,
Groupp =@Groupp,
CategoryCode=@CategoryCode,
MachineNo=@MachineNo,
MachineName=@MachineName,
Make=@Make,
Model=@Model,
PMPlan=@PMPlan,
CapacityRangeFrom=@CapacityRangeFrom,
CapacityRangeTo=@CapacityRangeTo,
Remark=@Remark,
Location=@Location,
PurchaseDate=@PurchaseDate,
MachineCostPerHr=@MachineCostPerHr,
StdProdPerHr=@StdProdPerHr where SrNo=@SrNo
	end;
GO
/****** Object:  StoredProcedure [dbo].[UpdateCompany]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateCompany]

@CompanyName nvarchar(MAX),
@Address1 nvarchar(MAX),
@Address2 nvarchar(MAX),
@City nvarchar(MAX),
@State nvarchar(MAX),
@PinCode nvarchar(MAX),
@Country nvarchar(MAX),
@EmailID nvarchar(MAX),
@Telephone nvarchar(50),
@Mobile nvarchar(50),
@ContactPerson nvarchar(MAX),
@Website nvarchar(MAX),
@GSTIN nvarchar(MAX),
@SystemDate datetime
AS
BEGIN

Update CompanyMaster SET

CompanyName = @CompanyName,
Address1= @Address1,
Address2 = @Address2,
City = @City,
State = @State ,
PinCode = @PinCode ,
Country = @Country ,
EmailID = @EmailID ,
Telephone = @Telephone ,
Mobile = @Mobile ,
ContactPerson = @ContactPerson ,
Website = @Website ,
GSTIN = @GSTIN,
SystemDate= @SystemDate
WHERE
CompanyName=@CompanyName

END
GO
/****** Object:  StoredProcedure [dbo].[Update_SupplierMaster_Validation]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--dbo.Update_SupplierMaster_Validation 1

CREATE proc [dbo].[Update_SupplierMaster_Validation]
(@UploadId int)
As
Begin

Begin Try
Begin Transaction

--------------------------Check for Blank/no data in columns---------------
Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Supplier Code is blank',
IsValid=0 where ISNULL(SuppCode,'')='' and  UploadId = @UploadId;
 
 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Supplier name is blank',
IsValid=0 where ISNULL(SuppName,'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Contact Person is blank',
IsValid=0 where ISNULL(ContactPerson,'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Branch is blank',
IsValid=0 where ISNULL(Branch,'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Address1 is blank',
IsValid=0 where ISNULL(Address1,'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Address2 is blank',
IsValid=0 where ISNULL(Address2,'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: City is blank',
IsValid=0 where ISNULL(City,'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: State is blank',
IsValid=0 where ISNULL(State,'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: PinCode is blank',
IsValid=0 where ISNULL(CONVERT(varchar(50),PinCode),'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Country is blank',
IsValid=0 where ISNULL(Country,'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: EmailId is blank',
IsValid=0 where ISNULL(EmailId,'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Telephone is blank',
IsValid=0 where ISNULL(CONVERT(varchar(50),Telephone),'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Mobile is blank',
IsValid=0 where ISNULL(Convert(varchar(50),Mobile),'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Fax is blank',
IsValid=0 where ISNULL(Fax,'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Website is blank',
IsValid=0 where ISNULL(Website,'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: GSTIN is blank',
IsValid=0 where ISNULL(GSTIN,'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Remarks is blank',
IsValid=0 where ISNULL(Remarks,'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Username is blank',
IsValid=0 where ISNULL(Username,'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: LoginBranch is blank',
IsValid=0 where ISNULL(LoginBranch,'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: SystEmentryDate is blank',
IsValid=0 where ISNULL(convert(varchar(50),SystEmentryDate),'')='' and UploadId=@UploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Supplier type id is blank',
IsValid=0 where ISNULL(supptypeid,'')='' and UploadId=@UploadId;

-----------------------------Numeric check---------------------------------
 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Pincode should be number',
 isvalid=0 where ISNUMERIC(PinCode)=0 and UploadId=@UploadId;
 
 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Telephone should be number',
IsValid=0 where ISNUMERIC(Telephone)=0 and uploadId=@uploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Mobile should be number',
IsValid=0 where ISNUMERIC(Mobile)=0 and uploadId=@uploadId;

 Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: SystEmentryDate should be date',
IsValid=0 where ISDATE(SystEmentryDate)=0 and uploadId=@uploadId;

------------------------------Email format check---------------------------------

Update UT_SupplierMaster_Validation set ErrorMessage=ISNULL(ErrorMessage,'')+'Error:'+'Not Valid EmailId'+';'
where EmailID not in (SELECT EmailID AS NotValidEmail FROM UT_SupplierMaster_Validation 
WHERE NOT EmailID LIKE '%_@__%.__%'
        AND PATINDEX('%[^a-z,0-9,@,.,_,\-]%', EmailID) = 0
        and LTRIM(RTRIM(EmailID)) is not null
        or  LTRIM(RTRIM(EmailID))!=''
        and UploadId=@UploadId
        )
        and UploadId=@UploadId;
        
-----------------------------Duplicate entry check-----------------------------------

Update UT_SupplierMaster_Validation set ErrorMessage='Supplier entered is dulicate',
IsValid=0 where UploadId=@UploadId and Id in(
select Id from(
select Id,SuppName,row_number() over (partition by SuppName order by Id) as intRow
from UT_SupplierMaster_Validation where UploadId=@UploadId)
AS d where d.intRow !=1 and UploadId=@UploadId)

-------------------------getting valid and invalid count in variable-------------
  DECLARE @SuccessCount int = (Select COUNT(ID) FROM UT_SupplierMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=1)
  DECLARE @InValidCount int = (Select COUNT(ID) FROM UT_SupplierMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=0)


---------------------------Invalid entry to error master---------------------------
Insert Into UT_SupplierMaster_Error (SuppCode,SuppName,ContactPerson,Branch,Address1,Address2,City,[State],PinCode,Country,EmailID,Telephone,Mobile,Fax,Website,GSTIN,Remarks,Username,LoginBranch,SystEmentryDate,supptypeid,ErrorStep,ErrorMessage,isValid,UploadId)
select SuppCode,SuppName,ContactPerson,Branch,Address1,Address2,City,[State],PinCode,Country,EmailID,Telephone,Mobile,Fax,Website,GSTIN,Remarks,Username,LoginBranch,SystEmentryDate,supptypeid,'Validaton',ErrorMessage,isValid,UploadId
from UT_SupplierMaster_Validation where UploadId=@UploadId and IsValid=0

---------------------------deleting invalid entrys from validation table-----------
Delete from UT_SupplierMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=0
-----------------

commit transaction 
print 'Commit'

end try
begin catch
print Error_Message()
print Error_Line()
rollback transaction
end Catch
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_InsertTokenValue]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Sp_InsertTokenValue]
(@TokenValue varchar(100))
As
Begin
Insert into TokenMaster (TokenValue,GenDate,IsActive) values(@TokenValue,getdate(),1)
end;
GO
/****** Object:  StoredProcedure [dbo].[SaveToolMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SaveToolMaster]
(@ToolMouldCode varchar(100),
@ToolMouldName varchar(100),
@MouldCost decimal(10,2),
@MouldCavity int,
@OtherCost decimal(10,2),
@OtherCostRemark varchar(100),
@ToolSubject varchar(100),
@ToolTerms varchar(100),
@PreparedbyEmpCodeId int,
@PreparedbyEmpNameId int,
@ApprovedbyEmpCodeId int,
@ApprovedbyEmpNameId int,
@ReviewedByEmpCodeId int,
@ReviewedByEmpNameId int)
As
begin
Insert into ToolTermsMaster 
(ToolMouldCode,
ToolMouldName,
MouldCost ,
MouldCavity,
OtherCost ,
OtherCostRemark,
ToolSubject,
ToolTerms ,
PreparedbyEmpCodeId ,
PreparedbyEmpNameId ,
ApprovedbyEmpCodeId ,
ApprovedbyEmpNameId ,
ReviewedByEmpCodeId ,
ReviewedByEmpNameId )
values
(@ToolMouldCode,
@ToolMouldName,
@MouldCost ,
@MouldCavity,
@OtherCost ,
@OtherCostRemark,
@ToolSubject,
@ToolTerms ,
@PreparedbyEmpCodeId ,
@PreparedbyEmpNameId ,
@ApprovedbyEmpCodeId ,
@ApprovedbyEmpNameId ,
@ReviewedByEmpCodeId ,
@ReviewedByEmpNameId )
end;
GO
/****** Object:  StoredProcedure [dbo].[SaveTaxInvoiceMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[SaveTaxInvoiceMaster]

@InvoiceNO varchar(50),
@InvoiceDate datetime,
@CustomerCode varchar(250),
@PONO	varchar(250),
@PODate	datetime,

@TotalinvoiceRs	decimal(20, 2),

--@SubTotal	decimal(20, 2),
@GrandTotal	decimal(20, 2),
@Remark	varchar(50)	,
@UserName	varchar(50),
@ShiptoCustcode	varchar(MAX),
@TransportMode	varchar(MAX),
@dateofSupply	datetime,
@placeofsupply	varchar(MAX),
@LoadingCharges	decimal(20, 2),
@TransportCharges	decimal(20, 2),
@FrightRate	decimal(20, 2)	,
@FrightUnit	varchar(MAX)	,
@FrightAmount	decimal(20, 2)	,
@PackingRate	decimal(20, 2)	,
@PackingUnit	varchar(MAX)	,
@PackingAmount	decimal(20, 2)	,
@MASCGSTRATE	decimal(20, 2)	,
@MASSGSTRATE	decimal(20, 2)	,
@MASIGSTRATE	decimal(20, 2)	,
@MASCGSTAMT	decimal(20, 2)	,
@MASSGSTAMT	decimal(20, 2)	,
@MASIGSTAMT	decimal(20, 2)	,
@VehicleNo	varchar(MAX)	,
@GSTReverseChargeYesORNO	varchar(MAX)	,
@GSTReverseCharge	varchar(MAX)	,
@bankaccount	varchar(MAX)	,
@bankIFSC	varchar(MAX)	,
@POTYPE	int	,
@PaymentTerm	varchar(255),	
@POClose	varchar(255)=NULL	

as
insert into TaxInvoiceMaster
(
	   [InvoiceNO]
      ,[InvoiceDate]
      ,[CustomerCode]
      ,[PONO]
      ,[PODate]
      
      ,[TotalinvoiceRs]
      ,[SubTotal]
      ,[GrandTotal]
      ,[Remark]
      ,[UserName]
      ,[ShiptoCustcode]
      ,[TransportMode]
      ,[dateofSupply]
      ,[placeofsupply]
      ,[LoadingCharges]
      ,[TransportChages]
      ,[Freight]
      ,[FreightUnit]
      ,[FreightAmount]
      ,[Packing]
      ,[PackingUnit]
      ,[PackingAmount]
      ,[MASCGSTRATE]
      ,[MASSGSTRATE]
      ,[MASIGSTRATE]
      ,[MASCGSTAMT]
      ,[MASSGSTAMT]
      ,[MASIGSTAMT]
      ,[VehicleNo]
      ,[GSTReverseChargeYesORNO]
      ,[GSTReverseCharge]
      ,[bankaccount]
      ,[bankIFSC]
      ,[POTYPE]
      ,[SystemEntryDate]
      ,[PaymentTerm]
      ,[POClose] 
)
values(
	   @InvoiceNO
      ,@InvoiceDate
      ,@CustomerCode
      ,@PONO
      ,@PODate
      
      ,@TotalinvoiceRs
      ,0
      ,@GrandTotal
      ,@Remark
      ,@UserName
      ,@ShiptoCustcode
      ,@TransportMode
      ,@dateofSupply
      ,@placeofsupply
      ,@LoadingCharges
      ,@TransportCharges
      ,@FrightRate
      ,@FrightUnit
      ,@FrightAmount
      ,@PackingRate
      ,@PackingUnit
      ,@PackingAmount
      ,@MASCGSTRATE
      ,@MASSGSTRATE
      ,@MASIGSTRATE
      ,@MASCGSTAMT
      ,@MASSGSTAMT
      ,@MASIGSTAMT
      ,@VehicleNo
      ,@GSTReverseChargeYesORNO
      ,@GSTReverseCharge
      ,@bankaccount
      ,@bankIFSC
      ,@POTYPE
      ,GETDATE()
      ,@PaymentTerm
      ,0
)
return
GO
/****** Object:  StoredProcedure [dbo].[SaveTaxInvoiceDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SaveTaxInvoiceDetails]
@InvoiceNO	varchar(50)	,
@InvoiceDate	datetime	,
@ItemCode	varchar(250)	,
@ItemName	varchar(MAX)	,
@Rate	decimal(18, 2)	,
@Amount	decimal(18, 2)	,
@TotalQty	decimal(18, 2)	,
@Discount	decimal(18, 2)	,
@TAXABLEVALUE	decimal(20, 2)	,
@CGST	decimal(20, 2)	,
@CGSTValue	decimal(18, 2)	,
@SGST	decimal(20, 2)	,
@SGSTValue	decimal(18, 2)	,
@IGST	decimal(20, 2)	,
@IGSTValue	decimal(20, 2)	,
@TotalGSTTax	decimal(20, 2)	,
@TotalGSTAMOUNT	decimal(20, 2)	,
@UOM	varchar(MAX)	,
@HSNCODE	varchar(MAX)	
	
	as 
	insert into TaxInvoiceDetails
	(
	  InvoiceNO, InvoiceDate, ItemCode, ItemName, Rate, Amount, TotalQty
	, Discount, TAXABLEVALUE, CGST, CGSTValue, SGST, SGSTValue
	, IGST, IGSTValue, TotalGSTTax, TotalGSTAMOUNT, UOM, HSNCODE
	)
	values
	(
		  @InvoiceNO, @InvoiceDate, @ItemCode, @ItemName, @Rate, @Amount, @TotalQty
		, @Discount, @TAXABLEVALUE, @CGST, @CGSTValue, @SGST, @SGSTValue, @IGST, @IGSTValue, @TotalGSTTax
		, @TotalGSTAMOUNT, @UOM, @HSNCODE
	 )
	
return
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetTokenValue]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Sp_GetTokenValue]
(@TokenValue varchar(100))
As
Begin
Select * from TokenMaster where TokenValue=@TokenValue
end;
GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteTokenValue]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Sp_DeleteTokenValue]
(@TokenValue varchar(100))
As
Begin
Delete from TokenMaster where TokenValue=@TokenValue
end;
GO
/****** Object:  StoredProcedure [dbo].[NewDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[NewDetails] 
@QuotationNo varchar(50),
@QuotationDate datetime,
@ItemCode varchar(50),
@ItemName varchar(50),
@ToolMouldCode varchar(50),
@ToolMouldName varchar(50),
@DeliveryLeadTime datetime,
@PackingCost decimal(10,0),
@DevelopmentTool varchar(50),
@MouldCost decimal(10,0),
@MouldCavity varchar(100),
@OtherCost decimal(10,0),
@OtherCostRemark varchar(50),
@Material varchar(50),
@UnitId int,
@Qty int ,
@Rate int,
@SymbolId int
As
Begin
Insert into QuotationDetails(
QuotationNo ,
QuotationDate,
ItemCode,
ItemName,
ToolMouldCode,
ToolMouldName,
DeliveryLeadTime,
PackingCost,
DevelopmentTool,
MouldCost,
MouldCavity,
OtherCost,
OtherCostRemark,
Material,
UnitId,
Qty,
Rate ,
SymbolId
)
Values
(
@QuotationNo,
@QuotationDate ,
@ItemCode ,
@ItemName ,
@ToolMouldCode ,
@ToolMouldName ,
@DeliveryLeadTime,
@PackingCost ,
@DevelopmentTool ,
@MouldCost ,
@MouldCavity ,
@OtherCost ,
@OtherCostRemark ,
@Material,
@UnitId ,
@Qty  ,
@Rate,
@SymbolId
)
end;
GO
/****** Object:  Table [dbo].[SubCategoryMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubCategoryMaster](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
	[CategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[submodulemaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[submodulemaster](
	[submoduleid] [int] IDENTITY(1,1) NOT NULL,
	[submodulename] [varchar](50) NULL,
	[moduleid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[submoduleid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Sp_UpdateTokenValue]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Sp_UpdateTokenValue]
(@TokenValue varchar(100))
As
Begin
update TokenMaster set GenDate=GetDate() where TokenValue=@TokenValue
end;
GO
/****** Object:  StoredProcedure [dbo].[RptViewStock]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[RptViewStock]
@ItemCode varchar(MAX)
as
BEGIN
select ItemCode, (SUM(InQty)-SUM(OutQty))as Available  from StockMaster
where ItemCode=@ItemCode
group by ItemCode
end
GO
/****** Object:  StoredProcedure [dbo].[RptTotalSale]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[RptTotalSale]
@FromDate varchar(MAX),
@ToDate varchar(MAX)
as
begin

select distinct( TaxInvoiceMaster.InvoiceNO),TaxInvoiceMaster.InvoiceDate,TaxInvoiceMaster.GrandTotal ,sum(TaxInvoiceDetails.TAXABLEVALUE) as TotalTax FROM TaxInvoiceMaster 	inner join TaxInvoiceDetails on
TaxInvoiceMaster.InvoiceNO=TaxInvoiceDetails.InvoiceNO
where (TaxInvoiceMaster.InvoiceDate>=@FromDate and TaxInvoiceMaster.InvoiceDate<=@ToDate)
group by TaxInvoiceMaster.InvoiceNO,TaxInvoiceMaster.InvoiceDate,TaxInvoiceMaster.GrandTotal
end
GO
/****** Object:  StoredProcedure [dbo].[RptMachineMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[RptMachineMaster]
--RptMachineMaster 'Machine001'
@SrNo Varchar(max)
AS 
BEGIN
	IF(@SrNo='0')
	BEGIN
	SELECT * FROM MachineMaster
	END
	ELSE
	BEGIN
	SELECT * FROM MachineMaster WHERE SrNo=@SrNo
	END

END
GO
/****** Object:  StoredProcedure [dbo].[rptmachinedetail1]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[rptmachinedetail1]
@machine varchar(50)= null
as
begin
if @machine is not null
begin
select srno, cmp_code, categorycode, machineno, machinename, make, pmplan, capacityrangefrom, capacityrangeto, remark, location, purchasedate, machinecostperhr, stdprodperhr, mcchar from machinemaster
where @machine=MachineNo
end
else
begin
select srno, cmp_code, categorycode, machineno, machinename, make, pmplan, capacityrangefrom, capacityrangeto, remark, location, purchasedate, machinecostperhr, stdprodperhr, mcchar from machinemaster
end
end
GO
/****** Object:  StoredProcedure [dbo].[rptmachinedetail]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[rptmachinedetail]
@input varchar(50)
as
begin
if @input=0
begin select * from MachineMaster
end
else
print 'you entered wrong code'
end
GO
/****** Object:  StoredProcedure [dbo].[rptcheckpointdetail]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[rptcheckpointdetail]
@input varchar(50)
as
begin
if @input=0
begin select * from checkpointMaster
end
else
print 'you entered wrong code'
end
GO
/****** Object:  StoredProcedure [dbo].[RptCompanyDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[RptCompanyDetails]
as
begin 
select *,(Address1+' '+Address2 +' '+'Email-Id'+'-'+EmailID+ ' '+'Mobile No'+'-'+Telephone+'/'+mobile+' '+Website)as [address] from companymaster
end
GO
/****** Object:  StoredProcedure [dbo].[SaveMachineMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SaveMachineMaster]
@Cmp_Code varchar(20),
@Group varchar(50),
@MachineNo varchar(50),
@MachineName varchar(50),
@Make varchar(50),
@Model varchar(50),
@PMPLan varchar(50),
@CapacityRangeFrom decimal(10,2),
@CapacityRangeTo decimal(10,2),
@Remark varchar(50),
@Location varchar(50),
@PurchaseDate datetime,
@MachineCostPerHr decimal(10, 2),
@StdProdPerHr decimal(10, 2)
As
Begin
Insert into MachineMaster (
Cmp_Code,
Groupp,
MachineNo,
MachineName,
Make,
Model,
PMPLan,
CapacityRangeFrom,
CapacityRangeTo,
Remark,
Location,
PurchaseDate,
MachineCostPerHr,
StdProdPerHr)
values(
@Cmp_Code,
@Group,
@MachineNo,
@MachineName,
@Make,
@Model,
@PMPLan,
@CapacityRangeFrom,
@CapacityRangeTo,
@Remark,
@Location,
@PurchaseDate,
@MachineCostPerHr,
@StdProdPerHr)
End;
GO
/****** Object:  StoredProcedure [dbo].[SaveStockMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SaveStockMaster]

@ItemCode	varchar(MAX)	,
@Branch	varchar(MAX)	,
@InQty	decimal(18, 0)	,
@OutQty	decimal(18, 2)	,
@TransactionDate	date	,

@Username	varchar(MAX),
@InvoiceNo	varchar(255)		


As

Begin
  
  Insert Into StockMaster 
  (ItemCode,Branch,InQty,OutQty,TransactionDate,SystemDate ,Username,InvoiceNo)
  values
  (@ItemCode ,@Branch,@InQty,@OutQty,@TransactionDate,GETDATE(),@Username,@InvoiceNo)

END
GO
/****** Object:  StoredProcedure [dbo].[SaveProductionNote]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SaveProductionNote]
@ProductionDate	date	,
@ItemCode	varchar(MAX)	,
@UoM	varchar(50)	,
@Qty	decimal(18, 0)	,
@Username	varchar(MAX)	,
@Branch	varchar(MAX)	

AS
Begin

Insert Into ProductionNote  (ProductionDate,ItemCode,UoM,Qty,Username,Branch,SystemDate)
Values(@ProductionDate,@ItemCode,@UoM,@Qty,@Username,@Branch,GETDATE())

INSERT 
INTO   StockMaster( ItemCode, Branch, InQty, OutQty, TransactionDate, SystemDate, Username)
VALUES     (@ItemCode,'Godown',@Qty,0,@ProductionDate,GETDATE(),@Username)

END
GO
/****** Object:  StoredProcedure [dbo].[SaveMaterialInvoiceMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[SaveMaterialInvoiceMaster]


@UIN varchar(250),
@InwardDate datetime,
@InvoiceNO varchar(250),
@InvoiceDate datetime,
@InwordBranch varchar(250),
@SupplierCode varchar(250),
@SubTotal decimal(20, 2),
@GrandTotal decimal(20, 2),
@Remark varchar(50),
@UserName varchar(50),
@TransportMode varchar(MAX),
@LoadingCharges decimal(20, 2),
@TransportChages decimal(20, 2)= null,
@FreightAmount decimal(20, 2),
@PackingAmount decimal(20, 2),
@VehicleNo varchar(MAX),
@GSTReverseChargeYesORNO varchar(MAX),
@GSTReverseCharge varchar(MAX),
@SystemEntryDate datetime,
@dateofSupply datetime,
@placeofsupply varchar(255)


as
begin
insert into MaterialInvoiceMaster
(
UIN,
InwardDate,
InvoiceNO,
InvoiceDate,
InwordBranch,
SupplierCode,
SubTotal,
GrandTotal,
Remark,
UserName,
TransportMode,
LoadingCharges,
TransportChages,
FreightAmount,
PackingAmount,
VehicleNo,
GSTReverseChargeYesORNO,
GSTReverseCharge,
SystemEntryDate,
dateofSupply,
placeofsupply


)
values
(
@UIN,
@InwardDate,
@InvoiceNO,
@InvoiceDate,
@InwordBranch,
@SupplierCode,
@SubTotal,
@GrandTotal,
@Remark,
@UserName,
@TransportMode,
@LoadingCharges,
@TransportChages,
@FreightAmount,
@PackingAmount,
@VehicleNo,
@GSTReverseChargeYesORNO,
@GSTReverseCharge,
GETDATE(),
@dateofSupply,
@placeofsupply


)
end
GO
/****** Object:  StoredProcedure [dbo].[SaveMaterialInvoiceDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SaveMaterialInvoiceDetails]

@UIN varchar(MAX),
@InwardDate datetime,
@InvoiceNO varchar(50),
@InvoiceDate datetime,
@ItemCode varchar(MAX),
@ItemName varchar(MAX),
@Rate decimal(18, 2),
@Amount decimal(18, 2),
@TotalQty int,
@Discount decimal(20, 2),
@TAXABLEVALUE decimal(20, 2),
@CGST decimal(18, 2),
@CGSTValue decimal(20, 2),
@SGST decimal(18, 2),
@SGSTValue decimal(20, 2),
@IGST decimal(20, 2),
@IGSTValue decimal(20, 2),
@TotalGSTTax decimal(20, 2),
@TotalGSTAMOUNT decimal(20, 2),
@UOM varchar(MAX),
@HSNCODE varchar(MAX),
@RawMaterial varchar(50)


as
begin
insert into MaterialInvoiceDetails
(
UIN,
InwardDate,
InvoiceNO,
InvoiceDate,
ItemCode,
ItemName,
Rate,
Amount,
TotalQty,
Discount,
TAXABLEVALUE,
CGST,
CGSTValue,
SGST,
SGSTValue,
IGST,
IGSTValue,
TotalGSTTax,
TotalGSTAMOUNT,
UOM,
HSNCODE
,RawMaterial

)
values
(

@UIN,
@InwardDate,
@InvoiceNO,
@InvoiceDate,
@ItemCode,
@ItemName,
@Rate,
@Amount,
@TotalQty,
@Discount,
@TAXABLEVALUE,
@CGST,
@CGSTValue,
@SGST,
@SGSTValue,
@IGST,
@IGSTValue,
@TotalGSTTax,
@TotalGSTAMOUNT,
@UOM,
@HSNCODE
,@RawMaterial
)
end
GO
/****** Object:  StoredProcedure [dbo].[Purchase_BindPayment]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[Purchase_BindPayment]
As
Begin 

Select PaymentType from PaymentTypeMaster

End
GO
/****** Object:  StoredProcedure [dbo].[RetriveMaterialInwardDetail]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[RetriveMaterialInwardDetail]
@UIN varchar(max)

as
Begin

SELECT  UIN, InwardDate, InvoiceNO, InvoiceDate, 
ItemCode, ItemName, Rate, Isnull(Amount,0) as Amount , 
Isnull(TotalQty,0) as TotalQty, Isnull(Discount,0) as Discount, Isnull(TAXABLEVALUE,0) as TAXABLEVALUE
, Isnull(CGST,0) as CGST, Isnull(CGSTValue,0) as CGSTValue, Isnull(SGST,0) as  SGST, 
Isnull(SGSTValue,0) as SGSTValue, Isnull(IGST,0) as IGST
, Isnull(IGSTValue,0) as IGSTValue, Isnull(TotalGSTTax,0) as TotalGSTTax
, Isnull(TotalGSTAMOUNT,0) as TotalGSTAMOUNT
, UOM, HSNCODE,isnull(RawMaterial,0) RawMaterial
FROM         MaterialInvoiceDetails
where UIN=@UIN

END
GO
/****** Object:  StoredProcedure [dbo].[RetriveMaterialInwardData]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[RetriveMaterialInwardData]
@UIN varchar(MAX)

AS
Begin

	Select ID, UIN, InwardDate, InvoiceNO, 
	InvoiceDate, InwordBranch, SupplierCode, 
	Isnull(SubTotal,0) as SubTotal, Isnull(GrandTotal,0) as GrandTotal, Remark, UserName, 
	TransportMode, Isnull(LoadingCharges,0) as LoadingCharges, 
    TransportChages, Isnull(FreightAmount,0) as FreightAmount, ISnull(PackingAmount,0) as PackingAmount 
    ,VehicleNo, GSTReverseChargeYesORNO, 
    GSTReverseCharge, SystemEntryDate, dateofSupply, 
    placeofsupply
	FROM         MaterialInvoiceMaster
	Where UIN=@UIN

END
GO
/****** Object:  StoredProcedure [dbo].[RetriveEstimateDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[RetriveEstimateDetails]
@EstNo varchar(max)
as
begin
select * from EstimetMaster
inner join EstimateDetails on EstimetMaster.EstNo=EstimateDetails.EstNo
where EstimetMaster.EstNo=@EstNo
end
GO
/****** Object:  StoredProcedure [dbo].[RetriveData]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[RetriveData]
@TaxInvoiceNo varchar(MAX)
as
begin
select TaxInvoiceMaster.[InvoiceNO]
      ,TaxInvoiceMaster.[InvoiceDate]
      ,TaxInvoiceMaster.[CustomerCode]
      ,TaxInvoiceMaster.[PONO]
      ,TaxInvoiceMaster.[PODate]
      ,TaxInvoiceMaster.[AmontinRs]
      ,TaxInvoiceMaster.[TotalinvoiceRs]
      ,TaxInvoiceMaster.[SubTotal]
      ,TaxInvoiceMaster.[GrandTotal]
      ,TaxInvoiceMaster.[Remark]
      ,TaxInvoiceMaster.[UserName]
      ,TaxInvoiceMaster.[ShiptoCustcode]
      ,TaxInvoiceMaster.[TransportMode]
      ,TaxInvoiceMaster.[dateofSupply]
      ,TaxInvoiceMaster.[placeofsupply]
      ,TaxInvoiceMaster.[LoadingCharges]
      ,TaxInvoiceMaster.[TransportChages]
      ,isNULL(TaxInvoiceMaster.[Freight],0) as Freight
      ,isNULL(TaxInvoiceMaster.[FreightUnit],0) as FreightUnit
      ,isNULL(TaxInvoiceMaster.[FreightAmount],0) as FreightAmount
      ,isNULL(TaxInvoiceMaster.[Packing],0) as Packing
      ,isNULL(TaxInvoiceMaster.[PackingUnit],0) as PackingUnit
      ,isNULL(TaxInvoiceMaster.[PackingAmount],0) as PackingAmount
      ,isNULL(TaxInvoiceMaster.[MASCGSTRATE],0) as MASCGSTRATE
      ,isNULL(TaxInvoiceMaster.[MASSGSTRATE],0) as MASSGSTRATE
      ,isNULL(TaxInvoiceMaster.[MASIGSTRATE],0) as MASIGSTRATE
      ,isNULL(TaxInvoiceMaster.[MASCGSTAMT],0) as MASCGSTAMT
      ,isNULL(TaxInvoiceMaster.[MASSGSTAMT],0) as MASSGSTAMT
      ,isNULL(TaxInvoiceMaster.[MASIGSTAMT],0) as MASIGSTAMT
      ,TaxInvoiceMaster.[VehicleNo]
      ,TaxInvoiceMaster.[GSTReverseChargeYesORNO]
      ,TaxInvoiceMaster.[GSTReverseCharge]
      ,TaxInvoiceMaster.[bankaccount]
      ,TaxInvoiceMaster.[bankIFSC]
      ,TaxInvoiceMaster.[POTYPE]
      ,TaxInvoiceMaster.[SystemEntryDate]
      ,TaxInvoiceMaster.[PaymentTerm]
      ,ISNULL(TaxInvoiceMaster.[POClose],0) as POClose
      ,TaxInvoiceDetails.[ItemCode]
      ,TaxInvoiceDetails.[ItemName]
      ,ISNULL(TaxInvoiceDetails.[Rate],0) as Rate
      ,ISNULL(TaxInvoiceDetails.[Amount],0) as Amount
      ,ISNULL(TaxInvoiceDetails.[TotalQty],0) as TotalQty
      ,ISNULL(TaxInvoiceDetails.[Discount],0) as  Discount
      ,ISNULL(TaxInvoiceDetails.[TAXABLEVALUE],0) as TAXABLEVALUE
      ,ISNULL(TaxInvoiceDetails.[CGST],0) as CGST
      ,ISNULL(TaxInvoiceDetails.[CGSTValue],0) as CGSTValue
      ,ISNULL(TaxInvoiceDetails.[SGST],0) as SGST
      ,ISNULL(TaxInvoiceDetails.[SGSTValue],0) as SGSTValue
      ,ISNULL(TaxInvoiceDetails.[IGST],0) as IGST
      ,ISNULL(TaxInvoiceDetails.[IGSTValue],0) as IGSTValue
      ,ISNULL(TaxInvoiceDetails.[TotalGSTTax],0) as TotalGSTTax
      ,ISNULL(TaxInvoiceDetails.[TotalGSTAMOUNT],0) as TotalGSTAMOUNT
      ,[UOM]
      ,[HSNCODE]

 from TaxInvoiceMaster inner join TaxInvoiceDetails on TaxInvoiceMaster.InvoiceNO=TaxInvoiceDetails.InvoiceNO
where TaxInvoiceMaster.InvoiceNO=@TaxInvoiceNo 
end


--select ItemCode,ItemName,UOM,TotalQty,Rate,Amount,Discount,TAXABLEVALUE,CGST,CGSTValue,SGST,SGSTValue,IGST,IGSTValue,HSNCODE,TotalGSTTax,TotalGSTAMOUNT from TaxInvoiceDetails
GO
/****** Object:  StoredProcedure [dbo].[RptItemWise]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[RptItemWise]
@FromDate varchar(MAX),
@ToDate varchar(MAX)
as
begin

select ItemCode,ItemName, Rate ,SUM(TotalQty) as Qty, sum(CGSTValue) as CGST,sum(SGSTValue) as SGST, sum(IGSTValue) as IGST, SUM(TAXABLEVALUE) as TaxableAmt, SUM(TotalGSTTax) as TaxAmt, sum(TotalGSTAMOUNT) as Total  from TaxInvoiceDetails
where InvoiceDate>=@FromDate and InvoiceDate<=@ToDate
group by ItemCode,ItemName,Rate order by Qty DESC
end

select (TaxInvoiceDetails.ItemCode + '/'+ TaxInvoiceDetails.ItemName)as Item, TaxInvoiceDetails.TotalQty from TaxInvoiceMaster inner join TaxInvoiceDetails on TaxInvoiceMaster.InvoiceNO=TaxInvoiceDetails.InvoiceNO
GO
/****** Object:  StoredProcedure [dbo].[Purchase_BindTransporterType]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[Purchase_BindTransporterType]

As
Begin

Select TransporterType From TransporterTypeMaster

End
GO
/****** Object:  StoredProcedure [dbo].[Purchase_BindTransport]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[Purchase_BindTransport]
As
Begin 

Select TransportType from TransportTypeMaster

End
GO
/****** Object:  StoredProcedure [dbo].[Marketing_GetProductCategory]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Marketing_GetProductCategory]
AS 
BEGIN
SELECT * FROM CategoryMaster
END
GO
/****** Object:  StoredProcedure [dbo].[Marketing_GetMedOfEnq]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Marketing_GetMedOfEnq]
AS
BEGIN
SELECT * FROM Marketing_MediumOfEnqMaster
END
GO
/****** Object:  StoredProcedure [dbo].[Marketing_GetDeliveryType]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Marketing_GetDeliveryType]
AS 
BEGIN
SELECT * FROM suppliertypemaster
END
GO
/****** Object:  StoredProcedure [dbo].[ModeOfTransPort]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ModeOfTransPort]
AS
BEGIN
SELECT * FROM Marketing_TransportMaster
END
GO
/****** Object:  Table [dbo].[MasterMenu]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MasterMenu](
	[MasterMenuId] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[IsMaster] [bit] NULL,
	[BranchID] [int] NULL,
	[SystemEntryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MasterMenuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Next_uplo_Employee_validation]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Next_uplo_Employee_validation]
---Next_uplo_Employee_validation 1
@UserId int =1,
 @CmpId int =1 , 
 @UploadType varchar(30)='New',
 @UploadName varchar(30)='EmployeeUpload',
 @IPAddress varchar(30)='192.168.1.1',
 @FinancialYearId int =1

 --select * from UT_UploadMaster
as 
begin
BEGIN TRY
 BEGIN TRANSACTION
          DECLARE @ERRORMESSAGE VARCHAR(MAX)
       
       
    ----------------- Insert in Uplad Master ------------------------------
    INSERT INTO UT_UploadMaster(uploadName,uploadtype,UserId,
    ValidationStartDate,ValidationStartTime)
    select  @UploadName,@UploadType,@UserId,GETDATE(),CURRENT_TIMESTAMP
    ----------------------------------------------------------------------
   -----------------------Get Upload id here-----------------------------------
   DECLARE @Upload int =(Select Distinct SCOPE_IDENTITY() From
   UT_UploadMaster )
   ------------------------------------------------------
-----------------------Update upload id in Employeevalidation----
 
  Update UT_EmployeeMaster_Validation set UploadId=1
  where UploadId is null or UploadId =0
  -----------------------------------------------------------------  
  --declare @EmpCode int=(select EmpCode from EmployeeMaster
  --where EmpCode in(select EmpCode from UT_EmployeeMaster_Validation
  --where UploadId=1))
  
  -------------------------check mandetory field----------------------
  update UT_EmployeeMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'EmpCode is Blank'+';',
 Isvalid=0 
 where LTRIM(RTRIM(EmpCode))='' or LTRIM(RTRIM(EmpCode)) is null
 and UploadId=1
 
 update UT_EmployeeMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'FristName is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(FristName))='' or LTRIM(RTRIM(FristName)) is null
 and UploadId=1
 
  update UT_EmployeeMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'MiddleName is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(MiddleName))='' or LTRIM(RTRIM(MiddleName)) is null
 and UploadId=1
 
 update UT_EmployeeMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'LastName is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(LastName))='' or LTRIM(RTRIM(LastName)) is null
 and UploadId=1
 
 update UT_EmployeeMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'ContactNo is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(ContactNo))='' or LTRIM(RTRIM(ContactNo)) is null
 and UploadId=1
 
 update UT_EmployeeMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'EmailId is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(EmailId))='' or LTRIM(RTRIM(EmailId)) is null
 and UploadId=1
 
 update UT_EmployeeMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'DOB is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(DOB))='' or LTRIM(RTRIM(DOB)) is null
 and UploadId=1
 
 update UT_EmployeeMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'BloodGroup is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(BLOODGROUP))='' or LTRIM(RTRIM(BLOODGROUP)) is null
 and UploadId=1
 
-- update UT_EmployeeMaster_Validation
-- set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'MaritalStatus is Blank'+';',
--Isvalid=0
-- where LTRIM(RTRIM(MaritalStatus))='' or LTRIM(RTRIM(MaritalStatus)) is null
-- and UploadId=@uploadid
 
-- update UT_EmployeeMaster_Validation
-- set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'PanNo is Blank'+';',
--Isvalid=0
-- where LTRIM(RTRIM(PanNo))='' or LTRIM(RTRIM(PanNo)) is null
-- and UploadId=1
 
 update UT_EmployeeMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'Qualification is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(Qualification))='' or LTRIM(RTRIM(Qualification)) is null
 and UploadId=1
 
 update UT_EmployeeMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'Designation is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(Designation))='' or LTRIM(RTRIM(Designation)) is null
 and UploadId=1
 
 update UT_EmployeeMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'Department is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(Department))='' or LTRIM(RTRIM(Department)) is null
 and UploadId=1
 
 update UT_EmployeeMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'TypeofStaff is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(StaffType))='' or LTRIM(RTRIM(StaffType)) is null
 and UploadId=1
  
  --------------------------------------------------------------------
  -------------------Email validation-----------------------------------
  --update UT_EmployeeMaster_Validation
  --set ErrorMessage=ISNULL(ErrorMessage,'')+'Error: Email is not correct format',
  --isValid=0
  --where EmailId not in(select EmailId from UT_EmployeeMaster_Validation
  --where EmailId LIKE '%_@__%.__%' 
  --  AND PATINDEX('%[^a-z,0-9,@,.,_]%','EmailId')=0 or EmailId is not null
  --  or EmailId !='')
  --  and UploadId=1
    
    
    -------------------------check email format-----------------------------
Update UT_EmployeeMaster_Validation 
set ErrorMessage=ISNULL(ErrorMessage,'')+'ErrorMessage:'+'Not Valid EmailId'+';'
where Emailid not in (SELECT EmailId AS NotValidEmail
FROM UT_EmployeeMaster_Validation
WHERE NOT EmailId LIKE '%_@__%.__%'
        AND PATINDEX('%[^a-z,0-9,@,.,_,\-]%', EmailId) = 0
        and LTRIM(RTRIM(EmailId)) is not null
        or  LTRIM(RTRIM(EmailId))!=''
        and UpLoadID=1
        )
        and UpLoadID=1
    
  ----------------------------------------------------------------------
 
  -----------------------check in number-----------------------------------
  update UT_EmployeeMaster_Validation 
Set ErrorMessage=ISNULL(ErrorMessage,'')+'ErrorMessage:'+'Not Valid AadharNo'+';'
Where AadharNo not in(Select AadharNo from UT_EmployeeMaster_Validation
where ISNUMERIC(AadharNo)=0
AND AadharNo is not null OR
 AadharNo !='')
and UpLoadID=1
   
  
  update UT_EmployeeMaster_Validation 
Set ErrorMessage=ISNULL(ErrorMessage,'')+'ErrorMessage:'+'Not Valid MobileNo'+';'
Where MobileNo not in(Select MobileNo from UT_EmployeeMaster_Validation
where ISNUMERIC(MobileNo)=0
AND MobileNo is not null OR
 MobileNo !='')
and UpLoadID=1
  
  update UT_EmployeeMaster_Validation 
Set ErrorMessage=ISNULL(ErrorMessage,'')+'ErrorMessage:'+'Not Valid ContactNo'+';'
Where ContactNo not in(Select ContactNo from UT_EmployeeMaster_Validation
where ISNUMERIC(ContactNo)=0
AND ContactNo is not null OR
 ContactNo !='')
and UpLoadID=1
  
   
  update UT_EmployeeMaster_Validation 
Set ErrorMessage=ISNULL(ErrorMessage,'')+'ErrorMessage:'+'Not Valid GrossAmount'+';'
Where GrossAmount not in(Select GrossAmount from UT_EmployeeMaster_Validation
where ISNUMERIC(GrossAmount)=0
AND GrossAmount is not null OR
 GrossAmount !='')
and UpLoadID=1
  ----------------------------------------------------------------------

  ------------------------check in Date---------------------------------------
  update UT_EmployeeMaster_Validation
  set ErrorMessage=ISNULL(ErrorMessage,'')+'Error: DOB is not in date format',
  isValid=0
  Where DOB in(Select DOB From UT_EmployeeMaster_Validation 
  where isDate(DOB)=0) 
  --and LTRIM(RTRIM(DOB)) is not null 
  --or LTRIM(RTRIM(DOB))!='' 
  and UploadId=1
  
  update UT_EmployeeMaster_Validation
  set ErrorMessage=ISNULL(ErrorMessage,'')+'Error: DateofJoin is not in date format',
  isValid=0
  Where DateofJoin in(Select DateofJoin From UT_EmployeeMaster_Validation 
  where isDate(DateofJoin)=0)
  -- and LTRIM(RTRIM(DateofJoin)) is not null
  --or LTRIM(RTRIM(DateofJoin))!='' 
  and UploadId=1
  ----------------------------------------------------------------------------
 ---- ---------------------check gender-------------------------------------------
 --update UT_EmployeeMaster_Validation
 -- set ErrorMessage=ISNULL(ErrorMessage,'')+'Error: Gender is not match',
 -- isValid=0
 -- where Gender in(select Gender from UT_EmployeeMaster_Validation
 -- where Gender='male' or Gender='Female' or Gender='other'
 -- )
 -- and UploadId=1
 ---- ----------------------------------------------------------------------------
  ---------------------check Duplicate Record---------------------------------
  update UT_EmployeeMaster_Validation
  set ErrorMessage=ISNULL(ErrorMessage,'')+'Error: Duplicate record in sheet',
  isValid=0
  where Uid in(select Uid from(select Uid,Row_Number()
  over(PARTITION BY FristName,Middlename,LastName,EmailId,DOB order by EmpCode)
  rownum
  from UT_EmployeeMaster_Validation)tbl where rownum >1
  )
  and UploadId=1
  
  update  UT_EmployeeMaster_Validation
set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'Duplicate record is alredy exits'+';',
IsValid=0
where Uid in( 
Select uid  from (Select Uid,uploadid,Empcode,
ROW_NUMBER() OVER(Partition By EmpCode,EmailId  ORDER by Uid DESC) Rownum
From UT_EmployeeMaster_Validation ) tbl Where Rownum > 1 
 )
and UploadId=1
  ----------------------------------------------------------------------------
  ---------------------Error and Success Count--------------------------------
   declare @SuccessCount int =(select COUNT (*) from UT_EmployeeMaster_Validation
  where IsValid=1 and UploadId=1) 
  
   declare @ErrorCount int =(select COUNT (*) from UT_EmployeeMaster_Validation
  where IsValid=0 and UploadId=1)
  
  print @SuccessCount
  print @ErrorCount
  
  ----------------------------------------------------------------------------
  ---------------------insert into Error table---------------------------------
  insert into UT_EmployeeMaster_Error(srId,EmpCode,Title,FristName,
  MiddleName,LastName,ContactNo,MobileNo,
  EmailId,DOB,Gender,BloodGroup,MSID,CTC,GrossAmount,TempAddress,DocumentName,
  TrainingDetails,PanNo,ESICACCNO,
  AutoMail,Leave,Attendance,EmpPhoto,DateofJoin,Qualification,Designation,
  department,Category,WeekOffMaster,
  Contractor,StaffType,PayType,Unit,AadharNo,Balance,PermanentAddress,Asset,
  ApprasalHistory,PFAccNo,IsLeft,LeftDate,
  City,state,Country,componyName,Errorstep,ErrorMessage,isValid,UploadId)
  
  select srId,EmpCode,Title,FristName,MiddleName,LastName,ContactNo,
  MobileNo,
  EmailId,DOB,Gender,BloodGroup,MSID,CTC,GrossAmount,TempAddress,DocumentName,
  TrainingDetails,PanNo,ESICACCNO,
  AutoMail,Leave,Attendance,EmpPhoto,DateofJoin,Qualification,Designation,
  department,Category,WeekOffMaster,
  Contractor,StaffType,PayType,Unit,AadharNo,Balance,PermanentAddress,Asset,
  ApprasalHistory,PFAccNo,IsLeft,LeftDate,
  City,state,Country,componyName,'validation',ErrorMessage,isValid,UploadId
  from UT_EmployeeMaster_Validation
  where isValid=0 and UploadId=1
  -----------------------------------------------------------------------------
  --------------------------Delete Error from Validation-----------------------
  --delete from UT_EmployeeMaster_Validation
  --where isValid=0 and UploadId=1
  -----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
  update UT_UploadMaster 
   set ValidationSuccessCount=(select COUNT(*) from UT_EmployeeMaster_Validation
   where isValid=1)
   
   update UT_UploadMaster
   set ValidationErrorCount=(select COUNT (*)  from UT_EmployeeMaster_Validation
   where isValid=0) 
  ----------------------------------- -----------------------------------------
------------------------------------------------------------------------------
     insert into UT_UploadMaster(ValidationEndDate,ValidationEndTime)
     select GETDATE(),CURRENT_TIMESTAMP
------------------------------------------------------------------------------
  COMMIT TRANSACTION
  END TRY
  BEGIN CATCH
  SET @ERRORMESSAGE='ERROR IN :'+ERROR_MESSAGE() + 'ERROR LINE:'+ERROR_LINE()
  PRINT @ERRORMESSAGE
  ROLLBACK TRANSACTION
   END CATCH
   
end
GO
/****** Object:  StoredProcedure [dbo].[Next_uplo_Customer_validation]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Next_uplo_Customer_validation]
---Next_uplo_Customer_validation 1
@UserId int =1,
@CmpId int =1 , 
@UploadType varchar(30)='New',
@UploadName varchar(30)='EmployeeUpload',
@IPAddress varchar(30)='100.20..32',
@FinancialYearId int =1

 --select * from UT_CustomerMaster_Error
 --select * from UT_UploadMaster
as 
begin
BEGIN TRY
BEGIN TRANSACTION
DECLARE @ERRORMESSAGE VARCHAR(MAX)
       
       
    ----------------- Insert in Uplad Master ------------------------------
    INSERT INTO UT_UploadMaster(uploadName,uploadtype,UserId,
    ValidationStartDate,ValidationStartTime)
    select  @UploadName,@UploadType,@UserId,GETDATE(),CURRENT_TIMESTAMP
    ----------------------------------------------------------------------
   -----------------------Get Upload id here-----------------------------------
   DECLARE @Uploadid int =(Select Distinct SCOPE_IDENTITY() From
   UT_UploadMaster )
   ------------------------------------------------------
-----------------------Update upload id in Employeevalidation----
 
  Update UT_CustomerMaster_Validation set uploadId=1
  where uploadId is null or uploadId =0
  -----------------------------------------------------------------  

  -------------------------check mandetory field----------------------
  update UT_CustomerMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'CustCode is Blank'+';',
 Isvalid=0 
 where LTRIM(RTRIM(CustCode))='' or LTRIM(RTRIM(CustCode)) is null
 and uploadId=@UploadId
 
 update UT_CustomerMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'CustName is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(CustName))='' or LTRIM(RTRIM(CustName)) is null
 and uploadId=@UploadId
 
  update UT_CustomerMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'Branch is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(Branch))='' or LTRIM(RTRIM(Branch)) is null
 and uploadId=@UploadId
 
 update UT_CustomerMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'EmailID is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(EmailID))='' or LTRIM(RTRIM(EmailID)) is null
 and uploadId=@UploadId
 
 update UT_CustomerMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'Mobile is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(Mobile))='' or LTRIM(RTRIM(Mobile)) is null
 and uploadId=@UploadId
 
 update UT_CustomerMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'Address1 is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(Address1))='' or LTRIM(RTRIM(Address1)) is null
 and uploadId=@UploadId
 
 update UT_CustomerMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'ContactPerson is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(ContactPerson))='' or LTRIM(RTRIM(ContactPerson)) is null
 and uploadId=@UploadId
 
 update UT_CustomerMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'GSTIN is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(GSTIN))='' or LTRIM(RTRIM(GSTIN)) is null
 and uploadId=@UploadId
 
 update UT_CustomerMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'PinCode is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(PinCode))='' or LTRIM(RTRIM(PinCode)) is null
 and uploadId=@UploadId
 
 update UT_CustomerMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'City is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(City))='' or LTRIM(RTRIM(City)) is null
 and uploadId=@UploadId
 
 update UT_CustomerMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'State is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(State))='' or LTRIM(RTRIM(State)) is null
 and uploadId=@UploadId
 
 update UT_CustomerMaster_Validation
 set ErrorMessage= ISNULL(ErrorMessage,'')+'ERROR :'+'Country is Blank'+';',
Isvalid=0
 where LTRIM(RTRIM(Country))='' or LTRIM(RTRIM(Country)) is null
 and uploadId=@UploadId
 
  
  --------------------------------------------------------------------
    
    -------------------------check email format-----------------------------
Update UT_CustomerMaster_Validation 
set ErrorMessage=ISNULL(ErrorMessage,'')+'ErrorMessage:'+'Not Valid EmailId'+';'
where EmailID not in (SELECT EmailID AS NotValidEmail
FROM UT_CustomerMaster_Validation 
WHERE NOT EmailID LIKE '%_@__%.__%'
        AND PATINDEX('%[^a-z,0-9,@,.,_,\-]%', EmailID) = 0
        and LTRIM(RTRIM(EmailID)) is not null
        or  LTRIM(RTRIM(EmailID))!=''
        and UploadId=@UploadId
        )
        and UploadId=@UploadId
    
  ----------------------------------------------------------------------

--  ^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$

    -------------------------check email format-----------------------------
Update UT_CustomerMaster_Validation 
set ErrorMessage=ISNULL(ErrorMessage,'')+'ErrorMessage:'+'GSTIN IS Not Valid'+';'
where EmailID not in (SELECT EmailID AS NotValidEmail
FROM UT_CustomerMaster_Validation 
WHERE NOT EmailID LIKE '%_@__%.__%'
        AND PATINDEX('%[^a-z,0-9,@,.,_,\-]%', EmailID) = 0
        and LTRIM(RTRIM(EmailID)) is not null
        or  LTRIM(RTRIM(EmailID))!=''
        and UploadId=@UploadId
        )
        and UploadId=@UploadId
    
  ----------------------------------------------------------------------

    -------------------------check email format-----------------------------
Update UT_CustomerMaster_Validation 
set ErrorMessage=ISNULL(ErrorMessage,'')+'ErrorMessage:'+'Not Valid EmailId'+';'
where EmailID not in (SELECT EmailID AS NotValidEmail
FROM UT_CustomerMaster_Validation 
WHERE NOT EmailID LIKE '%_@__%.__%'
        AND PATINDEX('%[^a-z,0-9,@,.,_,\-]%', EmailID) = 0
        and LTRIM(RTRIM(EmailID)) is not null
        or  LTRIM(RTRIM(EmailID))!=''
        and UploadId=@UploadId
        )
        and UploadId=@UploadId
    
  ----------------------------------------------------------------------

  -----------------------check in number-----------------------------------
   update UT_CustomerMaster_Validation 
Set ErrorMessage=ISNULL(ErrorMessage,'')+'ErrorMessage:'+'Not Valid Mobile'+';',
isValid=0
where ISNUMERIC(Mobile)=0 
and uploadId=@UploadId

 update UT_CustomerMaster_Validation 
Set ErrorMessage=ISNULL(ErrorMessage,'')+'ErrorMessage:'+'Not Valid PinCode'+';',
isValid=0
where ISNUMERIC(PinCode)=0 
and uploadId=@UploadId

-- update UT_CustomerMaster_Validation 
--Set ErrorMessage=ISNULL(ErrorMessage,'')+'ErrorMessage:'+'Not Valid GSTIN'+';',
--isValid=0
--where ISNUMERIC(GSTIN)=0 
--and uploadId=@UploadId

  ---------------------------------------------------------------------

  ---------------------check Duplicate Record---------------------------------
  update UT_CustomerMaster_Validation
  set ErrorMessage=ISNULL(ErrorMessage,'')+'Error: Duplicate record in sheet',
  isValid=0
  where Id in(select Id from(select Id,Row_Number()
  over(PARTITION BY CustCode,EmailId,GSTIN order by CustCode)
  rownum
  from UT_CustomerMaster_Validation)tbl where rownum >1
  )
  and UploadId=@UploadId
  
  ----------------------------------------------------------------------------
  ---------------------Error and Success Count--------------------------------
declare @SuccessCount int =(select COUNT (*) from UT_CustomerMaster_Validation
where IsValid=1 and UploadId=@UploadId) 
  
declare @ErrorCount int =(select COUNT (*) from UT_CustomerMaster_Validation
where IsValid=0 and UploadId=@UploadId)
  
  print @SuccessCount
  print @ErrorCount
  
  ----------------------------------------------------------------------------
  ---------------------insert into Error table---------------------------------
  -- SELECT * FROM UT_CustomerMaster_Error
insert into UT_CustomerMaster_Error(
CustCode, CustName , ContactPerson , Branch , Address1 , Address2 , City , State,
PinCode, Country, EmailID, Telephone, Mobile, Fax, Website, GSTIN, Remarks, Username,
LoginBranch, SystEmentryDate , Errorstep, ErrorMessage, isValid, uploadId)
select CustCode, CustName , ContactPerson , Branch , Address1 , Address2 , City , State,
PinCode, Country, EmailID, Telephone, Mobile, Fax, Website, GSTIN, Remarks,
Username, LoginBranch, SystEmentryDate , 'Validation', ErrorMessage, isValid, uploadId
from UT_CustomerMaster_Validation 
where isValid=0 and uploadId=@UploadId
  -----------------------------------------------------------------------------
  --------------------------Delete Error from Validation-----------------------
  --delete from UT_CustomerMaster_Validation
  --where isValid=0 and UploadId=@UploadId
  -----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
  update UT_UploadMaster 
   set ValidationSuccessCount=(select COUNT(*) from UT_CustomerMaster_Validation
   where isValid=1)
   
   update UT_UploadMaster
   set ValidationErrorCount=(select COUNT (*)  from UT_CustomerMaster_Validation
   where isValid=0) 
  ----------------------------------- -----------------------------------------
------------------------------------------------------------------------------
     update UT_UploadMaster set ValidationEndDate = GETDATE(),ValidationEndTime
     =CURRENT_TIMESTAMP where Uploadid = @Uploadid
------------------------------------------------------------------------------
  COMMIT TRANSACTION
  END TRY
  BEGIN CATCH
  SET @ERRORMESSAGE='ERROR IN :'+ERROR_MESSAGE() + 'ERROR LINE:'+ERROR_LINE()
  PRINT @ERRORMESSAGE
  ROLLBACK TRANSACTION
   END CATCH
   
end
GO
/****** Object:  StoredProcedure [dbo].[NextGen_UT_CommonEmployeeUpload]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[NextGen_UT_CommonEmployeeUpload]
	--NextGen_UT_CommonEmployeeUpload 1
	 @TamplateTypeId int
	 AS
BEGIN
	 
	 Select * from NextGen_UT_UploadColumnTamplateMaster UM
  	 where TamplateTypeId=@TamplateTypeId Order by SerialNumber
	 
END
GO
/****** Object:  StoredProcedure [dbo].[next_upload_Employee_varification]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[next_upload_Employee_varification]
----next_upload_Employee_varification 1
@UploadId int,
 @UserId int =1, 
 @CmpId int =1 , 
 @UploadType varchar(30)='New',
 @UploadName varchar(30)='EmployeeUpload',
 @IPAddress varchar(30)='100.20..32',
 @FinancialYearId int =1
as
begin
 BEGIN TRY
   BEGIN TRANSACTION
   DECLARE @EmployeeId int
   DECLARE @SuccessCount int
   DECLARE @ErrorCount int
   DECLARE @ErrorMessage varchar(max)
              set @EmployeeId=(select distinct em.EmpId from EmployeeMaster em
              inner join UT_EmployeeMaster_Validation uev
              on em.EmpId=uev.Uid
              where uev.UploadId=@UploadId)
--------------------------------------------------------------------------
insert into UT_UploadMaster(VerificationStartDate,VerificationStartTime,
uploadName,uploadtype,UserId)
select GETDATE(),CURRENT_TIMESTAMP, @UploadName,@UploadType,@UserId
--------------------------------------------------------------------------
 -----------------------------------------------------------------------------
  update UT_EmployeeMaster_Validation   
 set ErrorMessage=isnull(ErrorMessage,'')+'ERROR :'+'Emp code is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from EmployeeMaster em
 INNER JOIN UT_EmployeeMaster_Validation uev
 ON em.EmpCode=uev.EmpCode
 AND uev.UploadId=1
 )
 and UploadId=1
  
 update UT_EmployeeMaster_Validation   
 set ErrorMessage=isnull(ErrorMessage,'')+'ERROR :'+'Gender is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from GenderMaster gm
 INNER JOIN UT_EmployeeMaster_Validation uev
 ON gm.Gender=uev.Gender
 AND uev.UploadId=1
 )
 and UploadId=1
 
 update UT_EmployeeMaster_Validation   
 set ErrorMessage=isnull(ErrorMessage,'')+'ERROR :'+'Bloodgroup is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from BloodGroupMaster bm
 INNER JOIN UT_EmployeeMaster_Validation uev
 ON bm.BloodGroup=uev.BloodGroup
 AND uev.UploadId=1
 )
 and UploadId=1
 
 update UT_EmployeeMaster_Validation   
 set ErrorMessage=isnull(ErrorMessage,'')+'ERROR :'+'Leave is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from LeaveMaster lm
 INNER JOIN UT_EmployeeMaster_Validation uev
 ON lm.LeaveName=uev.Leave
 AND uev.UploadId=1
 )
 and UploadId=1
 
 update UT_EmployeeMaster_Validation   
 set ErrorMessage=isnull(ErrorMessage,'')+'ERROR :'+'department is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from DepartmentMaster dm
 INNER JOIN UT_EmployeeMaster_Validation uev
 ON dm.dname=uev.department
 AND uev.UploadId=1
 )
 and UploadId=1
 
 update UT_EmployeeMaster_Validation   
 set ErrorMessage=isnull(ErrorMessage,'')+'ERROR :'+'category is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from CategoryMaster cm
 inner JOIN UT_EmployeeMaster_Validation uev
 ON cm.CategoryName=uev.Category
 AND uev.UploadId=1
 )
 and UploadId=1
 
 
 update UT_EmployeeMaster_Validation   
 set ErrorMessage=isnull(ErrorMessage,'')+'ERROR :'+'Qualification is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from QualificationMaster qm
 INNER JOIN UT_EmployeeMaster_Validation uev
 ON qm.QualificationName=uev.Qualification
 AND uev.UploadId=1
 )
 and UploadId=1
 
 update UT_EmployeeMaster_Validation   
 set ErrorMessage=isnull(ErrorMessage,'')+'ERROR :'+'WeekOff is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from WeekOffMaster wm
 INNER JOIN UT_EmployeeMaster_Validation uev
 ON wm.WeekOff=uev.WeekOffMaster
 AND uev.UploadId=1
 )
 and UploadId=1
 
 update UT_EmployeeMaster_Validation   
 set ErrorMessage=isnull(ErrorMessage,'')+'ERROR :'+'Cotractor is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from ContractorMaster cm
 inner JOIN UT_EmployeeMaster_Validation uev
 ON cm.ContractorName=uev.Contractor
 AND uev.UploadId=1
 )
 and UploadId=1
 
 update UT_EmployeeMaster_Validation   
 set ErrorMessage=isnull(ErrorMessage,'')+'ERROR :'+'Type of staff is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from TypeStaffMaster tm
 INNER JOIN UT_EmployeeMaster_Validation uev
 ON tm.StaffType=uev.StaffType
 AND uev.UploadId=1
 )
 and UploadId=1
  
 
 update UT_EmployeeMaster_Validation   
 set ErrorMessage=isnull(ErrorMessage,'')+'ERROR :'+'pay type is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from PayTypeMaster pm
 INNER JOIN UT_EmployeeMaster_Validation uev
 ON pm.PayTypeName=uev.PayType
 AND uev.UploadId=1
 )
  and UploadId=1     
  
 
 update UT_EmployeeMaster_Validation   
 set ErrorMessage=isnull(ErrorMessage,'')+'ERROR :'+'Unit is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from UnitMaster um
 INNER JOIN UT_EmployeeMaster_Validation uev
 ON um.UnitName=uev.Unit
 AND uev.UploadId=1
 )
 and UploadId=1
 
 
 update UT_EmployeeMaster_Validation   
 set ErrorMessage=isnull(ErrorMessage,'')+'ERROR :'+'designation is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from DesignationMaster dm
 INNER JOIN UT_EmployeeMaster_Validation uev
 ON dm.DesignationName=uev.Designation
 AND uev.UploadId=1
 )
 and UploadId=1
 
 update UT_EmployeeMaster_Validation   
 set ErrorMessage=isnull(ErrorMessage,'')+'ERROR :'+'city is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from CityMaster cm
 INNER JOIN UT_EmployeeMaster_Validation uev
 ON cm.CityName=uev.City
 inner join CountryMaster cm3
 on cm3.CountryName=uev.Country
 AND uev.UploadId=1
 )
 and UploadId=1
 
 update UT_EmployeeMaster_Validation   
 set ErrorMessage=isnull(ErrorMessage,'')+'ERROR :'+'state is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from StateMaster sm
 INNER JOIN UT_EmployeeMaster_Validation uev
 ON sm.StateName=uev.State
 AND uev.UploadId=1
 )
 and UploadId=1
 
 update UT_EmployeeMaster_Validation   
 set ErrorMessage= isnull(ErrorMessage,'')+'ERROR :'+'country is not match',
 IsValid=0
 where  Uid NOT in(
 Select uev.Uid  from CountryMaster cm
 INNER JOIN UT_EmployeeMaster_Validation uev
 ON cm.CountryName=uev.Country
 AND uev.UploadId=1
 )
 and UploadId=1
 -----------------------------------------------------------------------------
 Update UT_EmployeeMaster_Validation
 set ErrorStep='Verification' where IsValid=0 
 and UploadId=@UploadId
 
 --select * from UT_EmployeeMaster_Varificaton
 -----------------------------------------------------------------------------
 ---------------------------------------------------------------------
 SET @ErrorCount =( SELECT COUNT(*) FROM UT_EmployeeMaster_Validation
 WHERE IsValid =0 AND UploadId=1)
 SET @SuccessCount =( SELECT COUNT(*) FROM UT_EmployeeMaster_Validation
 WHERE isValid=1 and UploadId=1)
 print @SuccessCount
 print @ErrorCount
 ------------------------------------------------------------------------
insert into UT_EmployeeMaster_Error(srId,EmpCode,Title,FristName,
  MiddleName,LastName,ContactNo,MobileNo,
  EmailId,DOB,Gender,BloodGroup,MSID,CTC,GrossAmount,TempAddress,DocumentName,
  TrainingDetails,PanNo,ESICACCNO,
  AutoMail,Leave,Attendance,EmpPhoto,DateofJoin,Qualification,Designation,
  department,Category,WeekOffMaster,
  Contractor,StaffType,PayType,Unit,AadharNo,Balance,PermanentAddress,Asset,
  ApprasalHistory,PFAccNo,IsLeft,LeftDate,
  City,state,Country,componyName,Errorstep,ErrorMessage,isValid,UploadId)
  
  select srId,EmpCode,Title,FristName,MiddleName,LastName,ContactNo,
  MobileNo,
  EmailId,DOB,Gender,BloodGroup,MSID,CTC,GrossAmount,TempAddress,DocumentName,
  TrainingDetails,PanNo,ESICACCNO,
  AutoMail,Leave,Attendance,EmpPhoto,DateofJoin,Qualification,Designation,
  department,Category,WeekOffMaster,
  Contractor,StaffType,PayType,Unit,AadharNo,Balance,PermanentAddress,Asset,
  ApprasalHistory,PFAccNo,IsLeft,LeftDate,
  City,state,Country,componyName,'varification',ErrorMessage,isValid,UploadId
  from UT_EmployeeMaster_Validation
  where isValid=0 and UploadId=1
-------------------------------------------------------------------
insert into UT_EmployeeMaster_Varificaton(EmpCode,Title,FristName,MiddleName,LastName,ContactNo,
  MobileNo,
  EmailId,DOB,Gender,BloodGroup,MSID,CTC,GrossAmount,TempAddress,DocumentName,
  TrainingDetails,PanNo,ESICACCNO,
  AutoMail,Leave,Attendance,EmpPhoto,DateofJoin,Qualification,Designation,
  department,Category,WeekOffMaster,
  Contractor,StaffType,PayType,Unit,AadharNo,Balance,PermanentAddress,Asset,
  ApprasalHistory,PFAccNo,IsLeft,LeftDate,
  City,state,Country,componyName,UploadId)
  
  select EmpCode,Title,FristName,MiddleName,LastName,ContactNo,
  MobileNo,
  EmailId,DOB,Gender,BloodGroup,MSID,CTC,GrossAmount,TempAddress,DocumentName,
  TrainingDetails,PanNo,ESICACCNO,
  AutoMail,Leave,Attendance,EmpPhoto,DateofJoin,Qualification,Designation,
  department,Category,WeekOffMaster,
  Contractor,StaffType,PayType,Unit,AadharNo,Balance,PermanentAddress,Asset,
  ApprasalHistory,PFAccNo,IsLeft,LeftDate,
  City,state,Country,componyName,UploadId from UT_EmployeeMaster_Validation
  where isValid=1 and UploadId=1
-------------------------------------------------------------------
 -----------------------------------------------------------------------------
 --DELETE FROM UT_EmployeeMaster_Validation where IsValid=0 and 
 -- UploadId=@UploadId
 ---------------------------------------------------------------------------             
 ------------------------------------------------------------------------
 insert into UT_UploadMaster(VerificationEndDate,VerificationEndTime)
select GETDATE(),CURRENT_TIMESTAMP
 ----------------------------------------------------------------------- 
   COMMIT
 END TRY
 BEGIN CATCH
 
 SET @ErrorMessage= 'ERROR IN :'+ ERROR_MESSAGE() + ' ERROR Line : '+ ERROR_LINE()
 
    print @ErrorMessage
 
 ROLLBACK
 
 END CATCH
end
GO
/****** Object:  StoredProcedure [dbo].[BinQuatationNumber]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BinQuatationNumber]
AS
BEGIN
SELECT Id,QutationNo FROM QuotationMaster
END
GO
/****** Object:  StoredProcedure [dbo].[BindWeekOff]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BindWeekOff]
As
Begin
Select * from WeekOffMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindValidityType]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[BindValidityType]
As
Begin
Select PlanTypeId,PlanType from PlanTypeMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindLeaveRule]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[BindLeaveRule]
As
Begin 
Select * from LeaveMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindEmpGender]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BindEmpGender]
As
Begin
Select * from GenderMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindEmpQualification]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BindEmpQualification]
As
Begin 
Select * from QualificationMaster;
End;
GO
/****** Object:  StoredProcedure [dbo].[BindDrpdownSymbol]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[BindDrpdownSymbol]
As
begin
Select SymbolId,SymbolCharacter from BindSymbolMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindDrawingBack]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[BindDrawingBack]
As
Begin
Select * from Drawingbackrefund
End;
GO
/****** Object:  StoredProcedure [dbo].[BindDesignation]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[BindDesignation]
As
Begin
select * from DesignationMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindDepartmentDrp]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[BindDepartmentDrp]
As
Begin
Select * from DepartmentMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindDepartment]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BindDepartment]
AS
BEGIN
SELECT did, dname FROM DepartmentMaster
END
GO
/****** Object:  StoredProcedure [dbo].[BindDeliveryTerm]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[BindDeliveryTerm]
As
Begin
Select DeliveryTermId,DeliveryTermType from DeliveryTermMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindDeliveryDataTerms]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[BindDeliveryDataTerms]
As
Begin
Select DeliveryTermId,DeliveryTermType from DeliveryTermMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindCategoryMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[BindCategoryMaster]
As
Begin
Select * from CategoryMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindBranchMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BindBranchMaster]
As
Begin
select * from BranchMaster
end
GO
/****** Object:  StoredProcedure [dbo].[BindBloodGroup]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BindBloodGroup]
As
Begin
Select * from BloodGroupMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindAllEmployeeDropDownList]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[BindAllEmployeeDropDownList]
@Action VARCHAR(max)
AS
BEGIN
	IF(@Action = 'QualificationName')
	Select * from QualificationMaster
	IF(@Action = 'Designation')
	Select * from DesignationMaster
	IF(@Action = 'Gender')
	Select * from GenderMaster
	IF(@Action = 'Department')
	Select * from DepartmentMaster
	IF(@Action = 'Category')
	Select * from CategoryMaster
	IF(@Action = 'WeekOf')
	Select * from WeekOffMaster
	IF(@Action = 'Contractor')
	Select * from ContractorMaster
	IF(@Action = 'TypeOfStaff')
	Select * from TypeOfStaffMaster
	IF(@Action = 'PayType')
	Select * from PayTypeMaster
	IF(@Action = 'UnitName')
	Select * from UnitMaster
	IF(@Action = 'MaritalStatus')
	Select * from MaritalStatusMaster
	IF(@Action = 'BloodGroup')
	Select * from BloodGroupMaster
	IF(@Action='LeaveName')
	SELECT * FROM LeaveMaster
	END
GO
/****** Object:  StoredProcedure [dbo].[BindContractorMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BindContractorMaster]
As
Begin
Select * from ContractorMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindCompany]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BindCompany]
AS
BEGIN
 
 SELECT Id, CompanyName FROM CompanyMaster
END
GO
/****** Object:  StoredProcedure [dbo].[BindColourMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BindColourMaster]
as
begin
select * from ColourMaster
end
GO
/****** Object:  Table [dbo].[Admin_LoginUserMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin_LoginUserMaster](
	[LoginUserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[IsActive] [int] NOT NULL,
	[RoleId] [int] NULL,
	[EmployeeId] [int] NULL,
	[BranchId] [varchar](50) NULL,
	[SystemEntryDate] [datetime] NULL,
 CONSTRAINT [PK_LoginDetails] PRIMARY KEY CLUSTERED 
(
	[LoginUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Admin_GetRoleDetails]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Admin_GetRoleDetails]
as
begin
select * from Admin_RoleMaster
end
GO
/****** Object:  StoredProcedure [dbo].[Admin_GetRoleDetail]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Admin_GetRoleDetail]
as
begin
Select * From Admin_RoleMaster
end
GO
/****** Object:  StoredProcedure [dbo].[Admin_SaveRoleMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Admin_SaveRoleMaster]
@RoleName varchar(100),
@IsActive bit =true,
@RoleId int out
as
begin

INSERT INTO Admin_RoleMaster(RoleName,IsActive) values(@RoleName,@IsActive)
set @RoleId = (Select SCOPE_IDENTITY())
end
GO
/****** Object:  StoredProcedure [dbo].[BindUploadType]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BindUploadType] 
@TamplateTypeID int
AS
BEGIN
 SELECT UploadTypeID,UploadType FROM UT_UploadTypeMaster where TamplateTypeID =@TamplateTypeID
END
GO
/****** Object:  StoredProcedure [dbo].[BindUploadName]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BindUploadName] 
AS
BEGIN
  SELECT TamplateTypeID,TamplateType FROM UT_TamplateTypeMaster
END
GO
/****** Object:  StoredProcedure [dbo].[BindUnitType]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[BindUnitType]
As
Begin 
Select * from UnitMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindUnitMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BindUnitMaster]
As
Begin
select * from UnitMaster
end
GO
/****** Object:  StoredProcedure [dbo].[BindUnit]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BindUnit]
AS
BEGIN
SELECT UnitId, UnitName FROM UnitMaster
END
GO
/****** Object:  StoredProcedure [dbo].[BindTypeOffStaff]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[BindTypeOffStaff]
As
Begin
Select * from TypeOfStaffMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindToolMasterName]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[BindToolMasterName]
As
begin
Select ToolMouldId,ToolMouldName from ToolMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindToolMasterCode]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[BindToolMasterCode]
As
begin
Select * from ToolMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindToolDetails]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BindToolDetails]
@Id int
As
Begin
Select * FRom ToolMaster where ToolMouldId=@Id  
end;
GO
/****** Object:  StoredProcedure [dbo].[BindMartialStatus]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BindMartialStatus]
As
Begin
Select * from MaritalStatusMaster;
End;
GO
/****** Object:  StoredProcedure [dbo].[BindManufacturerMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BindManufacturerMaster]
as
begin
select * from ManufacturerMaster
end
GO
/****** Object:  StoredProcedure [dbo].[BindMachineType]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[BindMachineType]
As
Begin
Select McChar from MachineMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindMachineName]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDUre [dbo].[BindMachineName]
AS
BEGIN

SELECT MachineNo, MachineName FROM MachineMaster

END
GO
/****** Object:  StoredProcedure [dbo].[BindPmPlan]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BindPmPlan]
As
Begin
Select * from MachineMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindPayType]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[BindPayType]
As
Begin 
Select * from PayTypeMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindPaymentTypeMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BindPaymentTypeMaster]
As
begin
select * from PaymentTypeMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindPackingType]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[BindPackingType]
As
Begin
Select PackingId,PackingType from PackingType
End;
GO
/****** Object:  StoredProcedure [dbo].[DeleteTaxInvoiceDetails]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[DeleteTaxInvoiceDetails]

@InvoiceNO Varchar(255)


AS
Begin

Delete From TaxInvoiceDetails
where InvoiceNO=@InvoiceNO

Delete From StockMaster
Where InvoiceNo=@InvoiceNO



END
GO
/****** Object:  StoredProcedure [dbo].[DeleteMaterialInwardInvoice]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  Proc [dbo].[DeleteMaterialInwardInvoice]
@UIN varchar(MAX)

AS
Begin

Delete From MaterialInvoiceDetails
where UIN=@UIN


Delete From StockMaster
Where InvoiceNo=@UIN

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteMachineMasterById]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[DeleteMachineMasterById]
@SrNo int
As
Begin
Delete From MachineMaster where SrNo=@SrNo
end;
GO
/****** Object:  StoredProcedure [dbo].[DisplayQuantityMaster1]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[DisplayQuantityMaster1]
As
Begin
Select 
Qty,Rate
from Received_Quantity_Master
end;
GO
/****** Object:  StoredProcedure [dbo].[DisplaQuantityMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[DisplaQuantityMaster]
As
Begin
Select Qty,
Rate,
SymbolId 
from Received_Quantity_Master
end;
GO
/****** Object:  StoredProcedure [dbo].[BindStatusMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[BindStatusMaster]
As
Begin
Select * from StatusMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindIndentType]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BindIndentType]
AS
BEGIN
select IndentTypeId, IndentType from IndentTypeMaster
END
GO
/****** Object:  StoredProcedure [dbo].[FreightMasterType]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[FreightMasterType]
As
Begin
Select * from FreightType
End;
GO
/****** Object:  StoredProcedure [dbo].[FindDepartmentId]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[FindDepartmentId]
as
begin
select * from DepartmentMaster
end
GO
/****** Object:  StoredProcedure [dbo].[FindCurrentStock]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[FindCurrentStock]
@ItemCode varchar(100),
@Branch varchar(max)
AS
BEGIN
select InQty, OutQty, InQty-OutQty AS CurrentQty from StockMaster
where ItemCode=@ItemCode and Branch =@Branch
END
GO
/****** Object:  StoredProcedure [dbo].[FillEstimateno]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[FillEstimateno]
as
begin
select EstNo from EstimetMaster
end
GO
/****** Object:  StoredProcedure [dbo].[FillMachineMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[FillMachineMaster]
As
Begin
Select * from MachineMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[GetCountryData]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetCountryData]
  As
  Begin
  Select CountryId,CountryName from CountryMaster
  end;
GO
/****** Object:  StoredProcedure [dbo].[GetCompanyMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetCompanyMaster]
@Cmp_Code varchar(50)
-- @flag int

As

Begin
	Select * from CompanyMaster
	where id=@Cmp_Code


END
GO
/****** Object:  StoredProcedure [dbo].[GetColourData]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetColourData]AsBeginSelect ColourId,ColourName from ColourMaster;End;
GO
/****** Object:  StoredProcedure [dbo].[GetCategoryMasterInfo1]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetCategoryMasterInfo1]
As
Begin
Select CategoryId,CategoryName, Case When CategoryName='RM' Then 'Raw material from Suppliers'
when CategoryName='FG' Then 'Finish good to Customer'
when CategoryName='SG' Then 'S Good'
Else 'No Category' End As 'CategoryName'
from CategoryMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[GetCategoryMasterInfo]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetCategoryMasterInfo]AsBeginSelect CategoryId,CategoryName from CategoryMasterEnd;
GO
/****** Object:  StoredProcedure [dbo].[GetItemStock]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[GetItemStock]
@CmpCode varchar(100),
@ItemName varchar(255),
@Branch varchar(255),
@Flag int
AS 
Begin

	--Select ItemCode,SUM(Isnull(InQty,0)) as InQty,SUM(Isnull(OutQty,0)) as OutQty
	--,cast((SUM(Isnull(InQty,0))-SUM(Isnull(OutQty,0))) as decimal(18,2))as Stock
	--from StockMaster
	
	Select ItemCode,SUM(Isnull(InQty,0)) as InQty,SUM(Isnull(OutQty,0)) as OutQty
	,(cast(SUM(Isnull(InQty,0)) as decimal(18,2))-cast(SUM(Isnull(OutQty,0))as decimal (18,2)) ) as Stock
	from StockMaster
	Where ItemCode=@ItemName
	AND Branch=@Branch
	Group By ItemCode

END
GO
/****** Object:  UserDefinedFunction [dbo].[GetDay]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[GetDay]()
    returns int
    As
    Begin
    return (SELECT DATEPART(DAY,(weekday)) from Weekday)
    End;
GO
/****** Object:  StoredProcedure [dbo].[GetDashboardDetails]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetDashboardDetails]
@Flag int
As

If(@Flag=1)
Begin
select Round(SUM(IsNull(GrandTotal,0)),0)as Total from TaxInvoiceMaster
where POClose=1
end
else if (@Flag=2)
begin
select COUNT(InvoiceNO) as Count from TaxInvoiceMaster
end
else if (@Flag=3)
begin
select COUNT(InvoiceNO) as Count from TaxInvoiceMaster where POClose=0
end
else if (@Flag=4)
begin
select Round(SUM(IsNull(GrandTotal,0)),0)as Total from TaxInvoiceMaster
where POClose=0
end
GO
/****** Object:  UserDefinedFunction [dbo].[GetWeek]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[GetWeek]()
    returns int
    as
    begin
    return (SELECT DATEPART(QUARTER,(weekday)) from Weekday)
    End;
GO
/****** Object:  StoredProcedure [dbo].[GetUom]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetUom]AsBeginSelect UnitID,UnitName from UnitMasterEnd;
GO
/****** Object:  StoredProcedure [dbo].[GetTaxInvoiceNo]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[GetTaxInvoiceNo]
as
begin
select InvoiceNO from TaxInvoiceMaster where POClose<2 order by InvoiceNO asc
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_Quotation_New_Details]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Insert_Quotation_New_Details]
@EnquiryNo varchar(100),
@RevisionNo varchar(100),
@QuotationNo varchar(100),
@QuotationDate date,
@CustCode varchar(100),
@CustName varchar(100),
@Address varchar(100),
@ContactPerson varchar(100),
@ItemCode varchar(100),
@ItemName varchar(100),
@ToolMouldCode varchar(100),
@ToolMouldName varchar(100),
@DeliveryDate datetime,
@PackingCost decimal(10,2),
@DevelopmentTool varchar(100),
@MouldCost decimal(10,2),
@MouldCavity varchar(100),
@OtherCost decimal(10,2),
@OtherCostRemark varchar(100),
@Material varchar(100),
@Qty int ,
@Rate int,
@SymbolCharacter varchar(100),
@EAccess varchar(100),
@SeviceTax decimal(10,2),
@Excise varchar(100),
@SaleTax decimal(10,2),
@Payment decimal(10,2),
@ModeOfDispatch varchar(100),
@Freight varchar(100),
@Validity datetime,
@Packing varchar(100),
@Status bit,
@AgainstFormNo varchar(100),
@Remark varchar(100),
@Drawing varchar(100),
@SampleRequired varchar(100),
@DeliveryTerm nvarchar(100),
@DocumentRequired varchar(100),
@Advance decimal(10,2),
@PreparedByEmpCode varchar(100),
@ApprovedByEmpCode varchar(100),
@PreparedByEmpName varchar(100),
@ApprovedByEmpName varchar(100),
@ReviewedByEmpCode varchar(100),
@ReviewedByEmpName varchar(100),
@ItemSubject varchar(100),
@ItemTerms varchar(100),
@ToolSubject varchar(100),
@ToolTerms varchar(100)
As
Begin
Insert into Quotation_New_Details(
EnquiryNo,
RevisionNo,
QuotationNo,
QuotationDate,
CustCode,
CustName,
[Address],
ContactPerson,
ItemCode,
ItemName,
ToolMouldCode,
ToolMouldName,
DeliveryDate,
PackingCost,
DevelopmentTool,
MouldCost,
MouldCavity,
OtherCost,
OtherCostRemark,
Material,
Qty,
Rate ,
SymbolCharacter ,
EAccess ,
SeviceTax ,
Excise,
SaleTax,
Payment,
ModeOfDispatch,
Freight,
Validity,
Packing,
[Status],
AgainstFormNo,
Remark,
Drawing,
SampleRequired,
DeliveryTerm,
DocumentRequired,
Advance,
PreparedByEmpCode,
ApprovedByEmpCode,
PreparedByEmpName,
ApprovedByEmpName,
ReviewedByEmpCode,
ReviewedByEmpName,
ItemSubject,
ItemTerms ,
ToolSubject,
ToolTerms)
values(
@EnquiryNo,
@RevisionNo,
@QuotationNo,
@QuotationDate,
@CustCode,
@CustName,
@Address,
@ContactPerson,
@ItemCode,
@ItemName,
@ToolMouldCode,
@ToolMouldName,
@DeliveryDate,
@PackingCost,
@DevelopmentTool,
@MouldCost,
@MouldCavity,
@OtherCost,
@OtherCostRemark,
@Material,
@Qty,
@Rate,
@SymbolCharacter,
@EAccess,
@SeviceTax,
@Excise,
@SaleTax,
@Payment,
@ModeOfDispatch,
@Freight,
@Validity,
@Packing,
@Status,
@AgainstFormNo,
@Remark,
@Drawing,
@SampleRequired,
@DeliveryTerm,
@DocumentRequired,
@Advance,
@PreparedByEmpCode,
@ApprovedByEmpCode,
@PreparedByEmpName,
@ApprovedByEmpName,
@ReviewedByEmpCode,
@ReviewedByEmpName,
@ItemSubject,
@ItemTerms,
@ToolSubject,
@ToolTerms
)
End;
GO
/****** Object:  StoredProcedure [dbo].[GetSalesExecutive]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetSalesExecutive]
As
Begin 
	
	Select * From SalesExecutive

End
GO
/****** Object:  StoredProcedure [dbo].[GetQuotationNo]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[GetQuotationNo]
as
begin
select QutationNo from QuotationMaster            
end
GO
/****** Object:  StoredProcedure [dbo].[GetMaxEstimateN]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[GetMaxEstimateN]
as
select MAX(EstNo) as ESTNo from EstimetMaster
GO
/****** Object:  StoredProcedure [dbo].[GetMaxQuotationNo]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[GetMaxQuotationNo]
as
begin
select MAX(QutationNo) as QuotationNo  from quotationmaster
end
GO
/****** Object:  StoredProcedure [dbo].[GetMaxUIN]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[GetMaxUIN]
--@CmpCode as Varchar(10),
--@SerchTag as Varchar(100),
--@YEARID varchar(10)
as
Begin
	Select Max(UIN)as InvoiceNO 
	from MaterialInvoiceMaster 
	--where InvoiceNO like @SerchTag+'%'
	
END
GO
/****** Object:  StoredProcedure [dbo].[GetMaxTaxInvoiceNo]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetMaxTaxInvoiceNo]
--@CmpCode as Varchar(10),
--@SerchTag as Varchar(100),
--@YEARID varchar(10)
as
Begin
	Select Max(InvoiceNO)as InvoiceNO 
	from TaxInvoiceMaster 
	--where InvoiceNO like @SerchTag+'%'
	
END
GO
/****** Object:  StoredProcedure [dbo].[GetMachineMasterDataById]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetMachineMasterDataById]
@Id int
As
begin
Select * from MachineMaster where SrNo=@Id 
end;
GO
/****** Object:  StoredProcedure [dbo].[GetMachineMasterData]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetMachineMasterData]
As
Begin
Select * from MachineMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[GetMatInvoiceNo]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetMatInvoiceNo]
--@CmpCode as Varchar(10),
--@SerchTag as Varchar(100),
--@YEARID varchar(10)
as
Begin
	Select Max(InvoiceNO)as InvoiceNO 
	from MaterialInvoiceMaster 
	--where InvoiceNO like @SerchTag+'%'
	
END
GO
/****** Object:  StoredProcedure [dbo].[GetMaterialInwardNo]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure[dbo].[GetMaterialInwardNo]
as
begin
select UIN from MaterialInvoiceMaster order by UIN asc
end
GO
/****** Object:  StoredProcedure [dbo].[GetManufacturerData]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetManufacturerData]AsBeginSelect ManufacturerId,ManufacturerName from ManufacturerMasterEnd;
GO
/****** Object:  Table [dbo].[IndentMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IndentMaster](
	[IndentId] [int] IDENTITY(1,1) NOT NULL,
	[IndentNoAutoGen] [varchar](15) NOT NULL,
	[IndentNo] [int] NULL,
	[IndentTypeId] [int] NULL,
	[IndentDate] [datetime] NULL,
	[IndentTime] [varchar](15) NULL,
	[Note] [varchar](150) NULL,
	[Remark] [varchar](150) NULL,
	[CreatedBy] [varchar](20) NULL,
	[ApprovedBy] [varchar](20) NULL,
	[ApprovedDate] [datetime] NULL,
	[ApprovedTime] [varchar](15) NULL,
	[StoredApproved] [bit] NULL,
	[purchaseOrService] [varchar](50) NULL,
	[ItemType] [varchar](100) NULL,
	[ShortClose] [bit] NULL,
	[ShortCloseReson] [varchar](250) NULL,
	[UserName] [varchar](50) NULL,
	[IPAddress] [varchar](50) NULL,
	[systemEntryDate] [datetime] NULL,
	[CmpId] [int] NULL,
	[FinancialYearId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IndentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[ItemMaster_Validation]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from UT_ItemMaster_Validation
CREATE procedure [dbo].[ItemMaster_Validation]
--[dbo].[ItemMaster_Validation] 1
(@uploadId int)
As 
Begin

BEGIN TRY
BEGIN TRANSACTION
 --------------------------------------------------------Blank Data (Mandatory fields)-----------------------------
 --select * from UT_ItemMaster_Validation
 
 Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Item Code is blank',
 IsValid=0 where ISNULL(ItemCode,'')='' and uploadId=@uploadId;
 
 Update UT_ItemMaster_Validation set ErrorMessage = ISNULL(ErrorMessage,'')+','+'Error : ItemName is blank',
 IsValid=0 where  IsNull(ItemName,'')='' and uploadId=@uploadId  
 
 Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Manufacturer is blank',
 IsValid=0 where ISNULL(Manufacturer,'')='' and uploadId=@uploadId;
 
 Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Material is blank',
 IsValid=0 where ISNULL(Material,'')='' and uploadId=@uploadId;
 
  Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: ItemType is blank',
 IsValid=0 where ISNULL(ItemType,'')='' and uploadId=@uploadId;
 
  Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: ItemSubType is blank',
 IsValid=0 where ISNULL(ItemSubType,'')='' and uploadId=@uploadId;
 
  Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Color is blank',
 IsValid=0 where ISNULL(Color,'')='' and uploadId=@uploadId;

  Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: UOM is blank',
 IsValid=0 where ISNULL(UOM,'')='' and uploadId=@uploadId;
 
  Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: HSNCODE is blank',
 IsValid=0 where ISNULL(HSNCODE,'')='' and uploadId=@uploadId;
  
 Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: GSTRate is blank',
 IsValid=0 where ISNULL(Convert(varchar(50),GSTRate),'')='' and uploadId=@uploadId 
 
 Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: PurchaseCost is blank',
 IsValid=0 where ISNULL(Convert(varchar(50),PurchaseCost),'')='' and uploadId=@uploadId
 
 Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: SellingPrice is blank',
 IsValid=0 where ISNULL(Convert(varchar(50),SellingPrice),'')='' and uploadId=@uploadId 
 
 Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Username is blank',
 IsValid=0 where ISNULL(Username,'')='' and uploadId=@uploadId;

 Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: LoginBranch is blank',
 IsValid=0 where ISNULL(LoginBranch,'')='' and uploadId=@uploadId;
 
 Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: SystEmentryDate is blank',   
 IsValid=0 where ISNULL(CONVERT(varchar(100),SystEmentryDate),'')='' and uploadId=@uploadId;
 
 Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: RawMaterial is blank',
 IsValid=0 where ISNULL(RawMaterial,'')='' and uploadId=@uploadId;
 
 Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: SubCatagory is blank',
 IsValid=0 where ISNULL(SubCatagory,'')='' and uploadId=@uploadId;
 
 Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Catagory is blank',
 IsValid=0 where ISNULL(Catagory,'')='' and uploadId=@uploadId;
   
 ---------------------------------------------------------------------------------------------------------
 -------------------------------------------------------Number validation-------------------------

Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: GST Rate should be number',
IsValid=0 where ISNUMERIC(GSTRate)=0 and uploadId=@uploadId --and (GSTRate is not null or GSTRate !='') --

Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: Purchase Cost should be number',
IsValid=0 where ISNUMERIC(PurchaseCost)=0 and uploadId=@uploadId

Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: SellingPrice should be number',
IsValid=0 where ISNUMERIC(SellingPrice)=0 and uploadId=@uploadId
 
 
 ---------------------------------------------------------------------------------------------------------

 -------------------------------------------------------Date validation-------------------------
 
 Update UT_ItemMaster_Validation  set ErrorMessage=ISNULL(ErrorMessage,'')+','+'Error: SystemEmentryDate should be date',
 IsValid=0 where ISDate(SystEmentryDate)=0 and uploadId=@uploadId;
 
 ---------------------------------------------------------------------------------------------------------
 
 -------------------------------------------------------Dplicate Records-------------------------

 Update UT_ItemMaster_Validation  set ErrorMessage='Error: Item Name is duplicate',
 IsValid=0 where   uploadId=@uploadId And Id IN(  
SELECT Id FROM (
     
     SELECT 
         Id,ItemName,
         ROW_NUMBER() OVER (PARTITION BY ItemName ORDER BY Id) AS intRow
     FROM UT_ItemMaster_Validation WHERE uploadId=@uploadId
      
) AS d
WHERE d.intRow != 1 AND
uploadId= @uploadId
 )
  
  -------------------------------------------Record count----------------------------------------
  DECLARE @SuccessCount int = (Select COUNT(ID) FROM UT_ItemMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=1)
  DECLARE @InValidCount int = (Select COUNT(ID) FROM UT_ItemMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=0)
  ---------------------------------------------------------------------------------------------
  
 ---------------------------------------------------------------------------------------------------------
  ----------------------- Put invalid records in error table and delete them from validation table ----
 
 INSERT INTO  UT_ItemMaster_Error (
 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,SystEmentryDate,RawMaterial,Errorstep,ErrorMessage,isValid,uploadId,Subcategory,Category
 )
  SELECT 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,SystEmentryDate,RawMaterial,'Validation',ErrorMessage,isValid,uploadId,SubCatagory,Catagory
  FROM UT_ItemMaster_Validation
WHERE Uploadid=@uploadId AND Isvalid=0
  
 
 Delete from UT_ItemMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=0
 ---------------------------------------------------------------------------------------------------------
  
 
commit transaction 
print 'Commit'

end try
begin catch
print Error_Message()
print Error_Line()
rollback transaction
end Catch
end
GO
/****** Object:  Table [dbo].[MachineVsCheckPoint]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MachineVsCheckPoint](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[MachineCode] [varchar](50) NOT NULL,
	[Location] [varchar](max) NULL,
	[Parameter] [varchar](max) NULL,
	[PlanType] [varchar](50) NOT NULL,
	[Scheduler] [varchar](50) NULL,
	[EnteryDate] [datetime] NULL,
	[CmpName] [varchar](50) NULL,
	[IPAddress] [varchar](50) NULL,
	[FinancialYear] [int] NULL,
	[UserName] [varchar](max) NULL,
	[Password] [varchar](max) NULL,
	[SrNo] [int] NULL,
	[checkpointid] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Marketing_BindShipMentAccount]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Marketing_BindShipMentAccount]
AS
BEGIN
SELECT * FROM Marketing_ShipmentMaster
END
GO
/****** Object:  StoredProcedure [dbo].[InsertQuotationMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[InsertQuotationMaster]
@QutationNo varchar(50),
@QuotationDate datetime,
@ValidTillDate datetime,
@CustCode varchar(MAX),
@UserName varchar(50),
@Branch varchar(50),
@SysytemEntryDate datetime

as
begin
insert into QuotationMaster
(
QutationNo,
QuotationDate,
ValidTillDate,
CustCode,
UserName,
Branch,
SysytemEntryDate

)
values
(
@QutationNo,
@QuotationDate,
@ValidTillDate,
@CustCode,
@UserName,
@Branch,
@SysytemEntryDate
)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertQuotationDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[InsertQuotationDetails]
@QuotationNo varchar(50),
@ItemCode varchar(50),
@ItemName varchar(MAX),
@UOM varchar(50),
@Qty decimal(18, 0),
@Rate decimal(18, 0),
@Amount decimal(18, 0)

as
begin 
insert into QuotationDetails
(
QuotationNo,
ItemCode,
ItemName,
UOM,
Qty,
Rate,
Amount

)
values
(
@QuotationNo,
@ItemCode,
@ItemName,
@UOM,
@Qty,
@Rate,
@Amount
)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertMachineMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[InsertMachineMaster](
	@Cmp_Code varchar(10) ,
	@Groupp varchar(50) ,
	@CategoryCode varchar(50),
	@MachineNo varchar(50) ,
	@MachineName varchar(50),
	@Make varchar(50) ,
	@Model varchar(50),
	@PMPlan varchar(50) ,
	@CapacityRangeFrom decimal(10, 2),
	@CapacityRangeTo decimal(10, 2) ,
	@Remark varchar(50) ,
	@Location varchar(50),
	@PurchaseDate datetime ,
	@MachineCostPerHr decimal(10, 2),
	@StdProdPerHr decimal(10, 2) )
As
Begin 
Insert into MachineMaster(
Cmp_Code,
Groupp ,
CategoryCode,
MachineNo,
MachineName,
Make,
Model,
PMPlan,
CapacityRangeFrom,
CapacityRangeTo,
Remark,
Location,
PurchaseDate,
MachineCostPerHr,
StdProdPerHr)
values(
@Cmp_Code ,
	@Groupp ,
	@CategoryCode,
	@MachineNo ,
	@MachineName ,
	@Make ,
	@Model ,
	@PMPlan ,
	@CapacityRangeFrom,
	@CapacityRangeTo,
	@Remark ,
	@Location ,
	@PurchaseDate ,
	@MachineCostPerHr,
	@StdProdPerHr )
	end;
GO
/****** Object:  StoredProcedure [dbo].[InsertDataInQuantityMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[InsertDataInQuantityMaster]
(@Qty int,
@Rate int,
@SymbolId int)
As
Begin
Insert into Received_Quantity_Master(
Qty,
Rate,
SymbolId)
values
(@Qty,
@Rate,
@SymbolId)
End;
GO
/****** Object:  StoredProcedure [dbo].[InsertEstimateDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertEstimateDetails]

@EstNo varchar(MAX),
@ItemCode varchar(MAX),
@UOM varchar(MAX),
@Quantity decimal(18, 2),
@Rate decimal(18, 0),
@Amount decimal(18, 2),
@CGST decimal(18, 0),
@CGSTValue decimal(18, 2),
@SGST decimal(18, 0),
@SGSTValue decimal(18, 2),
@IGST decimal(18, 0),
@IGSTValue decimal(18, 2),
@TotalGST decimal(18, 2),
@HSNNo varchar(MAX),
@TotalAmount decimal(18, 2)
as
begin
insert into EstimateDetails
(
EstNo,
ItemCode,
UOM,
Quantity,
Rate,
Amount,
CGST,
CGSTValue,
SGST,
SGSTValue,
IGST,
IGSTValue,
TotalGST,
HSNNo,
TotalAmount
)
values
(
@EstNo,
@ItemCode,
@UOM,
@Quantity,
@Rate,
@Amount,
@CGST,
@CGSTValue,
@SGST,
@SGSTValue,
@IGST,
@IGSTValue,
@TotalGST,
@HSNNo,
@TotalAmount

)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertEstimate]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertEstimate]

@EstNo varchar(250),
@EstNoDate datetime,
@CustomerName varchar(250),
@Address varchar(MAX),
@ContactPerson varchar(MAX),
@State varchar(MAX),
@ContactNo decimal(10, 0) =isnull,
@UserName varchar(MAX),
@Branch varchar(MAX),
@SystemEntryDate datetime
as
begin
insert into EstimetMaster
(
EstNo,
EstNoDate,
CustomerName,
Address,
ContactPerson,
State,
ContactNo,
UserName,
Branch,
SystemEntryDate
)
values
(
@EstNo,
@EstNoDate,
@CustomerName,
@Address,
@ContactPerson,
@State,
@ContactNo,
@UserName,
@Branch,
GETDATE()
)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertIndentMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[InsertIndentMaster]
@IndentNoAutoGen varchar(max),
@IndentTypeId int,
--@IndentDate datetime,
@IndentRemark varchar(max),
@IndentNote varchar(max),
@CreatedBy varchar(max),
@IndentId int Out
as 
begin
Insert into IndentMaster
(
IndentNoAutoGen,
IndentTypeId,
--IndentDate,
Remark,
Note,
CreatedBy
)
 values
 (
 @IndentNoAutoGen,
@IndentTypeId,
--@IndentDate,
@IndentRemark ,
@IndentNote,
@CreatedBy 
 )
 
 SET @IndentId= (SELECT SCOPE_IDENTITY())
end
GO
/****** Object:  Table [dbo].[ItemMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](255) NOT NULL,
	[ItemName] [varchar](max) NULL,
	[Material] [varchar](max) NULL,
	[ItemType] [varchar](max) NULL,
	[ItemSubType] [varchar](max) NULL,
	[Color] [varchar](max) NULL,
	[UOM] [varchar](255) NULL,
	[HSNCODE] [varchar](255) NULL,
	[GSTRate] [decimal](20, 2) NULL,
	[PurchaseCost] [decimal](20, 2) NULL,
	[SellingPrice] [decimal](20, 2) NULL,
	[Username] [varchar](max) NULL,
	[LoginBranch] [varchar](max) NULL,
	[SystEmentryDate] [datetime] NULL,
	[RawMaterial] [varchar](50) NULL,
	[SubCategoryId] [int] NULL,
	[ManufacturerId] [int] NULL,
	[ColourId] [int] NULL,
	[UnitId] [int] NULL,
	[UserId] [int] NULL,
	[BranchId] [int] NULL,
	[CategoryId] [int] NULL,
	[DrawingNo] [varchar](50) NULL,
	[Specification] [varchar](500) NULL,
 CONSTRAINT [PK_ItemMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[ItemCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IndentDetailMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IndentDetailMaster](
	[IndentDetailId] [int] IDENTITY(1,1) NOT NULL,
	[IndentId] [int] NULL,
	[ItemCode] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[Specification] [varchar](50) NULL,
	[DrawingNo] [varchar](50) NULL,
	[DepartmentId] [int] NULL,
	[Purpose] [varchar](50) NULL,
	[CurrentStock] [decimal](10, 2) NULL,
	[RequiredDate] [varchar](50) NULL,
	[ToOrderQuantity] [decimal](10, 2) NULL,
	[ToOrderUnit] [varchar](15) NULL,
	[ConversionQuantity] [decimal](10, 2) NULL,
	[ConversionUnit] [varchar](15) NULL,
	[Length] [varchar](50) NULL,
	[Grade] [varchar](50) NULL,
	[Weight] [varchar](50) NULL,
	[Rate] [decimal](10, 2) NULL,
	[Amount] [decimal](10, 2) NULL,
	[Make] [varchar](50) NULL,
	[IsApproved] [bit] NULL,
	[ApprovedQuantity] [decimal](10, 2) NULL,
	[RejectedQty] [decimal](18, 2) NULL,
	[SuppCode] [varchar](15) NULL,
 CONSTRAINT [PK__IndentDe__B13A2FAE662B2B3B] PRIMARY KEY CLUSTERED 
(
	[IndentDetailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[GetMachineVsCheckPoint]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[GetMachineVsCheckPoint]
@cid int
AS
BEGIN
SELECT * FROM MachineVsCheckPoint WHERE cid=@cid
END
GO
/****** Object:  StoredProcedure [dbo].[GetMaxIndentNumber]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetMaxIndentNumber]
AS
BEGIN
SELECT TOP 1 IndentId, IndentNoAutoGen, SUBSTRING(IndentNoAutoGen,7,10) as IndentNoAutoGen2
from IndentMaster
order by IndentNoAutoGen DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GetSubCategoryMasterInformation]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetSubCategoryMasterInformation]As BeginSelect SubCategoryId,SubCategoryName from SubCategoryMasterEnd;
GO
/****** Object:  StoredProcedure [dbo].[GetSubCategoryMasterInfo1]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetSubCategoryMasterInfo1]AsBeginSelect SubCategoryId,SubCategoryName from SubCategoryMaster End;
GO
/****** Object:  StoredProcedure [dbo].[GetSubCategoryMasterInfo]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetSubCategoryMasterInfo]@CategoryId intAs BeginSelect SubCategoryId,SubCategoryName from SubCategoryMaster where CategoryId=@CategoryIdEnd;
GO
/****** Object:  StoredProcedure [dbo].[BindIndentNumber]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[BindIndentNumber]
as
begin
select * from IndentMaster
end
GO
/****** Object:  Table [dbo].[EmployMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployMaster](
	[ESrNo] [int] IDENTITY(1,2) NOT NULL,
	[EmpCode] [varchar](10) NULL,
	[Title] [varchar](max) NULL,
	[FristName] [varchar](20) NULL,
	[MiddleName] [varchar](15) NULL,
	[LastName] [varchar](15) NULL,
	[ContactNo] [varchar](10) NULL,
	[MobileNo] [varchar](10) NULL,
	[EmailId] [varchar](max) NULL,
	[DOB] [date] NULL,
	[GID] [int] NULL,
	[BloodGroupID] [int] NULL,
	[MSID] [int] NULL,
	[CTC] [numeric](18, 0) NULL,
	[GrossAmount] [numeric](18, 0) NULL,
	[TempAddress] [varchar](20) NULL,
	[DocumentName] [varchar](max) NULL,
	[TrainingDetails] [varchar](20) NULL,
	[PanNo] [varchar](15) NULL,
	[ESICACCNO] [varchar](max) NULL,
	[AutoMail] [varchar](30) NULL,
	[LeaveId] [int] NULL,
	[AttendanceID] [int] NULL,
	[EmpPhoto] [varchar](max) NULL,
	[DateofJoin] [date] NULL,
	[QualificationId] [int] NULL,
	[DesignationId] [int] NULL,
	[did] [int] NULL,
	[CategoryId] [int] NULL,
	[WID] [int] NULL,
	[ContractorId] [int] NULL,
	[StaffId] [int] NULL,
	[PayTypeId] [int] NULL,
	[UnitId] [int] NULL,
	[AadharNo] [int] NULL,
	[Balance] [numeric](18, 0) NULL,
	[PermanentAddress] [varchar](max) NULL,
	[Asset] [varchar](50) NULL,
	[ApprasalHistory] [varchar](max) NULL,
	[PFAccNo] [varchar](50) NULL,
	[IsLeft] [varchar](50) NULL,
	[LeftDate] [date] NULL,
	[CityId] [int] NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
	[cid] [int] NULL,
	[LoginUserId] [int] NULL,
 CONSTRAINT [PK__EmployMa__F8C73C831A14E395] PRIMARY KEY CLUSTERED 
(
	[ESrNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustCode] [varchar](max) NULL,
	[CustName] [varchar](max) NULL,
	[ContactPerson] [varchar](max) NULL,
	[Branch] [varchar](max) NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[State] [varchar](max) NULL,
	[PinCode] [numeric](6, 0) NULL,
	[Country] [varchar](max) NULL,
	[EmailID] [varchar](max) NULL,
	[Telephone] [numeric](18, 0) NULL,
	[Mobile] [numeric](10, 0) NULL,
	[Fax] [varchar](max) NULL,
	[Website] [varchar](max) NULL,
	[GSTIN] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[Username] [varchar](max) NULL,
	[LoginBranch] [varchar](max) NULL,
	[SystEmentryDate] [datetime] NULL,
	[CustomerTypeId] [int] NULL,
	[CityId] [int] NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
	[BranchId] [int] NULL,
	[LoginUserId] [int] NULL,
 CONSTRAINT [PK_CustomerMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[BindMenuMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[BindMenuMaster]
as
begin
Select * from MasterMenu
end
GO
/****** Object:  StoredProcedure [dbo].[BindMachineCode]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BindMachineCode]
AS
BEGIN

SELECT cid, MachineCode, PlanType, Scheduler FROM MachineVsCheckPoint

END
GO
/****** Object:  StoredProcedure [dbo].[AllMachineVsCheckPoint]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AllMachineVsCheckPoint]
@MachineCode varchar='0'
AS
BEGIN
If(@MachineCode!='0')
BEGIN
SELECT * FROM MachineVsCheckPoint WHERE MachineCode=@MachineCode
END
Else
BEGIN
SELECT * FROM MachineVsCheckPoint
END
END
GO
/****** Object:  StoredProcedure [dbo].[BindCategorySubCategory]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[BindCategorySubCategory]
--BindCategorySubCategory 1 
@CategoryId int = 0
AS

BEGIN
if(@CategoryId = 0)
BEGIN
select CategoryId,CategoryName From CategoryMaster
END
ELSE
BEGIN
select SubCategoryId,SubCategoryName From SubCategoryMaster WHERE CategoryId=@CategoryId
END

END
GO
/****** Object:  StoredProcedure [dbo].[Admin_SaveLoginUserMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Admin_SaveLoginUserMaster]

 @UserName Varchar(100),
 @Password Varchar(100),
 @RoleId int,
 @IsActive bit,
 @EmployeeId int,
 @BranchId int

as
begin
INSERT INTO Admin_LoginUserMaster(UserName,Password,IsActive,RoleId,EmployeeId,BranchId,SystemEntryDate)
Values(@UserName,@Password, @IsActive, @RoleId,@EmployeeId,@BranchId,GETDATE() )
end
GO
/****** Object:  Table [dbo].[PagesMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PagesMaster](
	[pageid] [int] IDENTITY(1,1) NOT NULL,
	[pagename] [varchar](50) NULL,
	[submoduleid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pageid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Purchase_GetUserDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Purchase_GetUserDetails]
@UserName varchar(100),
@UserID int out
as
 begin 
 
select @UserID=LoginUserId from Admin_LoginUserMaster where UserName=@UserName
 
return
end

--exec Purchase_GetUserDetails 'SM'
GO
/****** Object:  StoredProcedure [dbo].[SaveMasterMenu]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SaveMasterMenu]
@MenuName varchar(100),
@IsActive bit,
@BranchName varchar(100)
AS
BEGIN
declare @BrachId int
 select @BrachId=BranchId from BranchMaster bm where bm.BranchName=@BranchName
insert into MasterMenu(MenuName,IsActive,BranchID,SystemEntryDate) 
values(@MenuName, @IsActive ,@BrachId, GETDATE())

END
GO
/****** Object:  StoredProcedure [dbo].[rptmachinevscheckpointdetail]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[rptmachinevscheckpointdetail]
@input varchar(50)
as
begin
if @input=0
begin select * from MachineVsCheckPoint
end
else
print 'you entered wrong code'
end
GO
/****** Object:  StoredProcedure [dbo].[RptMachineVsCheckPoint]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[RptMachineVsCheckPoint]
-- RptMachineVsCheckPoint '0'
-- RptMachineVsCheckPoint 'Machine002'
@MachineCode VARCHAR(MAX)
AS
BEGIN

IF (@MachineCode != '0')
BEGIN

IF OBJECT_ID('tempdb.dbo.#TempMVCP') IS NOT NULL
DROP TABLE #TempMVCP
 
SELECT
MVCP.MachineCode, MM.MachineName, MVCP.PlanType,
MVCP.Location, CPM.CheckPointName, MVCP.Scheduler
INTO #TempMVCP
FROM MachineVsCheckPoint MVCP
INNER JOIN MachineMaster MM
ON MM.MachineNo=MVCP.MachineCode
INNER JOIN CheckPointMaster CPM
ON CPM.CheckPointId=MVCP.CheckPointId
WHERE MachineCode=@MachineCode

SELECT * FROM #TempMVCP

END	--End of MachineCode Wise
ELSE
BEGIN

IF OBJECT_ID('tempdb.dbo.#TempMVCP1') IS NOT NULL
DROP TABLE #TempMVCP1
 
SELECT
MVCP.MachineCode, MM.MachineName, MVCP.PlanType,
MVCP.Location, CPM.CheckPointName, MVCP.Scheduler
INTO #TempMVCP1
FROM MachineVsCheckPoint MVCP
INNER JOIN MachineMaster MM
ON MM.MachineNo=MVCP.MachineCode
INNER JOIN CheckPointMaster CPM
ON CPM.CheckPointId=MVCP.CheckPointId

SELECT * FROM #TempMVCP1

END	--End of ALL Report


END
GO
/****** Object:  StoredProcedure [dbo].[rptcheckpointdetail1]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[rptcheckpointdetail1]
@machinecode varchar(50) = null
as
begin
if @machinecode is not null
begin
select cid, machinecode, location, parameter, PlanType, scheduler, enterydate, cmpname, ipaddress, financialyear, username, password, srno, checkpointname from MachineVsCheckPoint mvcp
inner join checkpointmaster cpm
on mvcp.checkpointid=cpm.checkpointid
where @machinecode=MachineCode
end
else
begin
select cid, machinecode, location, parameter, PlanType, scheduler, enterydate, cmpname, ipaddress, financialyear, username, password, srno, checkpointname from MachineVsCheckPoint mvcp
inner join checkpointmaster cpm
on mvcp.checkpointid=cpm.checkpointid
end
end
GO
/****** Object:  Table [dbo].[SubMasterMenu]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubMasterMenu](
	[SubMasterMenuId] [int] IDENTITY(1,1) NOT NULL,
	[SubMenuName] [varchar](100) NULL,
	[MenuLink] [varchar](500) NULL,
	[MasterMenuId] [int] NULL,
	[IsActive] [bit] NULL,
	[BranchID] [int] NULL,
	[SystemEntryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubMasterMenuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SaveStockTransfer]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[SaveStockTransfer]

@TransactionDate	datetime	,
@FromBranch	varchar(MAX)	,
@ToBranch	varchar(MAX)	,
@ItemCode	varchar(MAX)	,
@UOM	varchar(MAX)	,
@Qty	decimal(20, 0)	,
--@SystemDate	datetime	,
@Username	varchar(MAX)	,
@LoginBranch	varchar(MAX)

As
Begin

	Insert Into StockTransfer
	(TransactionDate,FromBranch,ToBranch,ItemCode,UOM,Quantity,SystemDate,Username,LoginBranch)
	Values
	(@TransactionDate,@FromBranch,@ToBranch,@ItemCode,@UOM,@Qty,GETDATE(),@Username,@LoginBranch)

	if(@Qty>0)
	Begin
		Exec SaveStockMaster @ItemCode ,@FromBranch,0,@Qty,@TransactionDate,@Username,'StockTransfer'
		Exec SaveStockMaster @ItemCode ,@ToBranch,@Qty,0,@TransactionDate,@Username,'StockTransfer'
	
	END

END
GO
/****** Object:  StoredProcedure [dbo].[Update_IndentMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_IndentMaster]

 
@IndentTypeId int,
--@IndentDate datetime,
@IndentRemark varchar(max),
@IndentNote varchar(max),
@CreatedBy varchar(max),
@IndentId int Out
AS
BEGIN
UPDATE IndentMaster SET  IndentTypeId=@IndentTypeId, Remark=@IndentRemark, Note=@IndentNote, 
CreatedBy=@CreatedBy where IndentId=@IndentId
END
GO
/****** Object:  Table [dbo].[SupplierMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SupplierMaster](
	[Id] [int] NOT NULL,
	[SuppCode] [varchar](max) NULL,
	[SuppName] [varchar](max) NULL,
	[ContactPerson] [varchar](max) NULL,
	[Branch] [varchar](max) NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[State] [varchar](max) NULL,
	[PinCode] [numeric](6, 0) NULL,
	[Country] [varchar](max) NULL,
	[EmailID] [varchar](max) NULL,
	[Telephone] [numeric](18, 0) NULL,
	[Mobile] [numeric](10, 0) NULL,
	[Fax] [varchar](max) NULL,
	[Website] [varchar](max) NULL,
	[GSTIN] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[Username] [varchar](max) NULL,
	[LoginBranch] [varchar](max) NULL,
	[SystEmentryDate] [datetime] NULL,
	[supptypeid] [int] NULL,
	[CountryId] [int] NULL,
	[StateId] [int] NULL,
	[CityId] [int] NULL,
	[BranchId] [int] NULL,
	[LoginUserId] [int] NULL,
 CONSTRAINT [PK_SupplierMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Upload_ItemMaster_Verification_10July]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Upload_ItemMaster_Verification_10July]
-- Upload_ItemMaster_Verification_10July 1
@UploadId Int
as
begin

BEGIN TRY
BEGIN Tran
 
-----------------------------Master data vefication-------------------------------------------------------------


update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : Manuufacturer is not exist' 
WHERE  Manufacturer not IN(
select ManufacturerName from ManufacturerMaster
)
and uploadId=@UploadId

-- colour
--categiry
--sub category
--branch
--user
--unit

update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : Colour is not exist' 
WHERE  Color not IN(
select ColourName from ColourMaster
)
and uploadId=@UploadId

update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : Catagory is not exist' 
WHERE  Catagory not IN(
select CategoryName from CategoryMaster
)
and uploadId=@UploadId

update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : Login branch is not exist' 
WHERE  LoginBranch not IN(
select BranchName from BranchMaster
)
and uploadId=@UploadId

update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : user is not exist' 
WHERE Username not IN(
select Username from Admin_LoginUserMaster
)
and uploadId=@UploadId

update UT_ItemMaster_Validation SET isValid=0, ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : Manuufacturer is not exist' 
WHERE  UOM not IN(
select UnitName from UnitMaster
)
and uploadId=@UploadId

--update ut  SET ut.isValid=0, ut.ErrorMessage= ISNULL(ErrorMessage,'') +','+ 'eRROR : Manuufacturer is not exist' 
--FROM UT_ItemMaster_Validation ut 
--INNER JOIN ManufacturerMaster MF
--ON MF.ManufacturerName=ut.Manufacturer
--WHERE   uploadId=@UploadId


---------------------------------------------------------------------------------------------------------------
 

-----------------------------Duplicate data vefication-------------------------------------------------------------
-- ALREADY EXIST ITEM (Key : ItemName + Category + subcategory)

-- duplicate item in database
---------------------------------------------------------------------------------------------------------------



  -------------------------------------------Record count----------------------------------------
  DECLARE @SuccessCount int = (Select COUNT(ID) FROM UT_ItemMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=1)
  DECLARE @InValidCount int = (Select COUNT(ID) FROM UT_ItemMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=0)
  ---------------------------------------------------------------------------------------------
  
PRINT @SuccessCount
PRINT @InValidCount



-----------------------------Valid data to Verification table-------------------------------------------------------------
-- valid records

INSERT INTO  UT_ItemMaster_Verification (
 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,SystEmentryDate,RawMaterial,uploadId,SubCatagory,Catagory
 )
  SELECT 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,SystEmentryDate,RawMaterial,uploadId,SubCatagory,Catagory
  FROM UT_ItemMaster_Validation
WHERE Uploadid=@uploadId AND Isvalid=1
-------------------------------------------------------------------------------------------------------------------



  ----------------------- Put invalid records in error table and delete them from validation table ----
 

 INSERT INTO  UT_ItemMaster_Error (
 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,SystEmentryDate,RawMaterial,Errorstep,ErrorMessage,isValid,uploadId,SubCategory,Category
 )
  SELECT 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,SystEmentryDate,RawMaterial,'Verification',ErrorMessage,isValid,uploadId,SubCatagory,Catagory
  FROM UT_ItemMaster_Validation
WHERE Uploadid=@uploadId AND Isvalid=0

  
 -----------------------------------------------------------------------------------------------------------------------------
 
 
 -------------------------------------------------------Delete invalid and valid  records from Validation table---------------------------------------------------------------
 Delete from UT_ItemMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=0
 Delete from UT_ItemMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=1
 
 ---------------------------------------------------------------------------------------------------------

COMMIT
print 'commited'
END TRY

BEGIN CATCH
PRINT 'INside a catch... rolledback'
ROLLBACK
print Error_Message()
print Error_Line()
END CATCH

end
GO
/****** Object:  Table [dbo].[UserAccessMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccessMaster](
	[moduleid] [int] NULL,
	[submoduleid] [int] NULL,
	[pageid] [int] NULL,
	[roleid] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_EmployMaster]    Script Date: 04/08/2023 08:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_EmployMaster]
AS
 Select 
 [ESrNo] ,[EmpCode] ,[Title] ,[FristName] ,[MiddleName] ,[LastName] 
 ,[ContactNo] ,[MobileNo] ,[EmailId] ,[DOB] ,EM.GID  ,[CTC] 
 ,[GrossAmount] ,[TempAddress] ,[DocumentName] ,[TrainingDetails] ,[PanNo]
 ,[ESICACCNO] ,[AutoMail] ,EM.LeaveId ,[AttendanceID] ,[EmpPhoto] ,[DateofJoin]
 ,QualificationId ,DesignationId  ,CategoryId  ,ContractorId ,StaffId
 ,PayTypeId ,UnitId ,[AadharNo] ,[Balance] ,[PermanentAddress] ,[Asset] 
 ,[ApprasalHistory] ,[PFAccNo] ,[IsLeft] ,[LeftDate],
  BM.BloodGroup, GM.Gender, WM.WeekOff,MSt.MaritalStatus,DM.dname,CM.CityName,SM.StateName,
COM.CountryName 
 from EmployMaster EM
 INNER JOIN BloodGroupMaster BM
ON EM.BloodGroupID= BM.BID
INNER JOIN GenderMaster GM
ON EM.GID=GM.GID
INNER JOIN WeekOffMaster WM
ON EM.WID= WM.WID
 INNER JOIN MaritalStatusMaster MST
ON EM.MSID= MST.MSID 
INNER JOIN DepartmentMaster DM
ON EM.did=DM.did
LEFT JOIN CityMaster CM
ON EM.CityId=CM.CityId
LEFT JOIN StateMaster SM
ON CM.StateId=SM.StateID
LEFT JOIN CountryMaster COM
ON SM.CountryId=COM.CountryId
GO
/****** Object:  StoredProcedure [dbo].[UpdataItemData1]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[UpdataItemData1]  (	  @ID int,	  @ItemCode  varchar(255) ,      @ItemName  varchar(max),       @Material  varchar(max),       @ItemType  varchar(max)='',       @ItemSubType  varchar(max)='',       @Color  varchar(max),       @UOM  varchar(255),       @HSNCODE  varchar(255) ,      @GSTRate  decimal(20,2),       @PurchaseCost  decimal(20,2) ,      @SellingPrice  decimal(20,2) ,           @RawMaterial  varchar(50) ,      @SubCategoryId  int,       @CategoryId  int,      @ManufacturerId  int )asbeginUpdate [StandardMetalDB].[dbo].[ItemMaster] set           ItemName=@ItemName,Material=@Material,ItemType=@ItemType,ItemSubType=@ItemSubType,Color=@Color,UOM=@UOM,HSNCODE=@HSNCODE,            GSTRate=@GSTRate,PurchaseCost=@PurchaseCost,SellingPrice=@SellingPrice,RawMaterial=@RawMaterial,SubCategoryId=@SubCategoryId,CategoryId=@CategoryId,            ManufacturerId=@ManufacturerId where ID=@ID And ItemCode=@ItemCode   End;
GO
/****** Object:  StoredProcedure [dbo].[Upload_ItemMaster_Verification]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Upload_ItemMaster_Verification]
(@uploadId int)

as
begin

DECLARE @ErrorMessage varchar(max)
begin try
begin tran


-----------------------------Master data vefication-------------------------------------------------------------

-- duplicate item
Update UT_ItemMaster_Validation set ErrorMessage = ISNULL(ErrorMessage,'')+','+'Error : Item Is duplocate',
 IsValid=0 where ID
  IN(
 
Select ID FROM UT_ItemMaster_Validation  where ItemName IN(
select  ItemName From ItemMaster 
)
AND uploadId=@uploadId
)
AND uploadId=@uploadId

------------------------------color-------------------

Update UT_ItemMaster_Validation set ErrorMessage = ISNULL(ErrorMessage,'')+','+'Error : Color is not valid',
 IsValid=0 where ID
NOT  IN(
select ID From  UT_ItemMaster_Validation UTV
INNER JOIN ColourMaster  CM
ON CM.ColourName=UTV.Color
 AND uploadId=@uploadId
)
AND uploadId=@uploadId
AND( Color is not null OR Color='' ) 
  
 
Update UT_ItemMaster_Validation set ErrorMessage = ISNULL(ErrorMessage,'')+','+'Error : Category is not valid',
 IsValid=0 where ID
  NOT IN(
select ID From  UT_ItemMaster_Validation  UTV
  INNER JOIN CategoryMaster CM
  ON CM.CategoryName= UTV.Catagory
  AND UTV.uploadId=@uploadId
  ) AND uploadId=@uploadId
  

Update UT_ItemMaster_Validation set ErrorMessage = ISNULL(ErrorMessage,'')+','+'Error : sub Category  is not valid',
 IsValid=0 where ID
 NOT IN(
Select UTV.ID from CategoryMaster CM
INNER JOIN SubCategoryMaster SCM
ON CM.CategoryId=SCM.CategoryId
INNER JOIN UT_ItemMaster_Validation UTV
ON UTV.Catagory= CM.CategoryName and UTV.SubCatagory= SCM.SubCategoryName
AND UTV.uploadId=@uploadId
)
AND uploadId=@uploadId


-- manufacturer
 Update UT_ItemMaster_Validation set ErrorMessage = ISNULL(ErrorMessage,'')+','+'Error : Manufacturer is not exist',
 IsValid=0 where Manufacturer NOT IN(
 Select distinct ManufacturerName from ManufacturerMaster
 ) and uploadId=@uploadId  
 
 Update UT_ItemMaster_Validation set ErrorMessage = ISNULL(ErrorMessage,'')+','+'Error : Manufacturer is not exist',
 IsValid=0 where Color NOT IN(
 Select distinct ColourName from ColourMaster
 ) and uploadId=@uploadId  
 
 Update UT_ItemMaster_Validation set ErrorMessage = ISNULL(ErrorMessage,'')+','+'Error : Manufacturer is not exist',
 IsValid=0 where UOM NOT IN(
 Select distinct UnitName from UnitMaster
 ) and uploadId=@uploadId  
 
 Update UT_ItemMaster_Validation set ErrorMessage = ISNULL(ErrorMessage,'')+','+'Error : Manufacturer is not exist',
 IsValid=0 where SubCatagory NOT IN(
 Select distinct SubCategoryName from SubCategoryMaster
 ) and uploadId=@uploadId  

 Update UT_ItemMaster_Validation set ErrorMessage = ISNULL(ErrorMessage,'')+','+'Error : Manufacturer is not exist',
 IsValid=0 where Catagory NOT IN(
 Select distinct CategoryName from CategoryMaster
 ) and uploadId=@uploadId
 
----------------------------------------------------------------------------------------------------------------

-----------------------------Duplicate data vefication-------------------------------------------------------------
-- ALREADY EXIST ITEM (Key : ItemName + Category + subcategory)

Update UT_ItemMaster_Validation set ErrorMessage = ISNULL(ErrorMessage,'')+','+'Error : Item is already exist',
IsValid=0 where ID IN (Select UTV.ID From ItemMaster IM 
INNER JOIN SubCategoryMaster SC
ON IM.SubCategoryid = SC.SubCategoryId
INNER JOIN CategoryMaster CM
ON CM.CategoryId = SC.CategoryId
INNER JOIN UT_ItemMaster_Validation UTV
ON UTV.ItemName = IM.ItemName AND UTV.Catagory= CM.CategoryName
AND UTV.SubCatagory = SC.SubCategoryName)and uploadId=@uploadId

----------------------------------------------------------------------------------------------------------------


-----------------------------Record count-------------------------------------------------------------
DECLARE @SuccessCount int = (Select COUNT(ID) FROM UT_ItemMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=1)
DECLARE @InValidCount int = (Select COUNT(ID) FROM UT_ItemMaster_Validation WHERE Uploadid=@uploadId AND Isvalid=0)
----------------------------------------------------------------------------------------------------------------


-----------------------------Valid data to Verification table-------------------------------------------------------------
-- valid records

INSERT INTO  UT_ItemMaster_Verification (
 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,SystEmentryDate,RawMaterial,uploadId,SubCatagory,Catagory
 )
  SELECT 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,SystEmentryDate,RawMaterial,uploadId,SubCatagory,Catagory
  FROM UT_ItemMaster_Validation
WHERE Uploadid=@uploadId AND Isvalid=1



--- invalid data

 INSERT INTO  UT_ItemMaster_Error (
 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,SystEmentryDate,RawMaterial,Errorstep,ErrorMessage,isValid,uploadId,SubCategory,Category
 )
  SELECT 	ItemCode,ItemName,Manufacturer,Material,ItemType,ItemSubType,Color,UOM,HSNCODE,GSTRate,PurchaseCost,SellingPrice,Username,LoginBranch,SystEmentryDate,RawMaterial,'Verification',ErrorMessage,isValid,uploadId,SubCatagory,Catagory
  FROM UT_ItemMaster_Validation
WHERE Uploadid=@uploadId AND Isvalid=0

----------------------------------------------------------------------------------------------------------------

-----------------------------Delete records from validation table-------------------------------------------------------------
Delete from UT_ItemMaster_Validation WHERE Uploadid=@uploadId  
----------------------------------------------------------------------------------------------------------------
 

commit tran
end try

begin catch
rollback tran

 SET @ErrorMessage= 'ERROR IN :'+ ERROR_MESSAGE() + ' ERROR Line : '+ ERROR_LINE()
 
PRINT @ErrorMessage
end catch
end
GO
/****** Object:  StoredProcedure [dbo].[Upload_ItemMaster_FinalUpload_10July]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Upload_ItemMaster_FinalUpload_10July]
-- Upload_ItemMaster_Verification_10July 1
@UploadId Int
as
begin

BEGIN TRY
BEGIN Tran
 
-----------------------------Enter records in Item Master-------------------------------------------------------------

INSERT INTO ItemMaster(ItemCode,ItemName,Material,ManufacturerId,UnitId,UserId,ColourId)
SELECT ItemCode,ItemName,Material,MM.ManufacturerId,UM.UnitId, ALM.LoginUserId ,CM.ColourId 
FROM UT_ItemMaster_Verification UTV
INNER JOIN ManufacturerMaster MM
ON MM.ManufacturerName= UTV.Manufacturer
INNER JOIN UnitMaster UM
ON UM.UnitName= UTV.UOM
INNER JOIN Admin_LoginUserMaster ALM
ON ALM.UserName= UTV.Username
INNER JOIN ColourMaster CM
ON CM.ColourName= UTV.Color
WHERE uploadId=1

---------------------------------------------------------------------------------------------------------------
 
 
 -------------------------------------------------------Delete invalid and valid  records from Validation table---------------------------------------------------------------
 Delete from UT_ItemMaster_Verification WHERE Uploadid=@uploadId  
 ---------------------------------------------------------------------------------------------------------

COMMIT
print 'commited'
END TRY

BEGIN CATCH
PRINT 'INside a catch... rolledback'
ROLLBACK
print Error_Message()
print Error_Line()
END CATCH

end
GO
/****** Object:  UserDefinedFunction [dbo].[SuppCodeAutoGen]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SuppCodeAutoGen]( @SuppliertypeId int, @SupplierName Varchar(100))RETURNS VARCHAR(100)ASBEGIN   declare @st1 varchar(10)=(select 'S'+SUBSTRING(Upper(supptype),1,2)from suppliertypemaster   where supptypeid=@SuppliertypeId)  
    Declare @val Varchar(MAX);
    
    select @val =  COALESCE(@val + ', ' + SUBSTRING(Value,1,1), SUBSTRING(Value,1,1)) 
        from [dbo].[SplitString](@SupplierName,' ') 
        
      Declare @val1 Varchar(MAX)=  (Select Replace(@val,',',''));
              Declare @SuppInitial Varchar(MAX)= (Select Replace(@val1,' ',''));     DECLARE @suppCount int = (select count(*) from SupplierMaster)   DECLARE   @MaxCode varchar(10)=00001if(@suppCount = 0)BEGINset  @MaxCode=00001ENDELSEBEGIN set  @MaxCode=00002END RETURN  @st1+@val1+convert(varchar(20),@MaxCode)  END
GO
/****** Object:  StoredProcedure [dbo].[UpdateItemData2]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UpdateItemData2](	  @ID int,	  @ItemCode  varchar(255) ,      @ItemName  varchar(max),       @Material  varchar(max),       @ItemType  varchar(max),       @ItemSubType  varchar(max),       @Color  varchar(max),       @UOM  varchar(255),       @HSNCODE  varchar(255) ,      @GSTRate  decimal(20,2),       @PurchaseCost  decimal(20,2) ,      @SellingPrice  decimal(20,2) ,           @RawMaterial  varchar(50) ,      @SubCategoryId  int,       @CategoryId  int,      @ManufacturerId  int )asbeginUpdate [StandardMetalDB].[dbo].[ItemMaster] set           ItemCode=@ItemCode,ItemName=@ItemName,Material=@Material,ItemType=@ItemType,ItemSubType=@ItemSubType,Color=@Color,UOM=@UOM,HSNCODE=@HSNCODE,            GSTRate=@GSTRate,PurchaseCost=@PurchaseCost,SellingPrice=@SellingPrice,RawMaterial=@RawMaterial,SubCategoryId=@SubCategoryId,CategoryId=@CategoryId,            ManufacturerId=@ManufacturerId where ID=@ID   End;
GO
/****** Object:  StoredProcedure [dbo].[UpdateItemData]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[UpdateItemData](	  @ID int,	  @ItemCode  varchar(255) ,      @ItemName  varchar(max),       @Material  varchar(max),       @ItemType  varchar(max),       @ItemSubType  varchar(max),       @Color  varchar(max),       @UOM  varchar(255),       @HSNCODE  varchar(255) ,      @GSTRate  decimal(20,2),       @PurchaseCost  decimal(20,2) ,      @SellingPrice  decimal(20,2) ,           @RawMaterial  varchar(50) ,      @SubCategoryId  int,       @CategoryId  int,      @ManufacturerId  int )asbeginUpdate [StandardMetalDB].[dbo].[ItemMaster] set           ItemName=@ItemName,Material=@Material,ItemType=@ItemType,ItemSubType=@ItemSubType,Color=@Color,UOM=@UOM,HSNCODE=@HSNCODE,            GSTRate=@GSTRate,PurchaseCost=@PurchaseCost,SellingPrice=@SellingPrice,RawMaterial=@RawMaterial,SubCategoryId=@SubCategoryId,CategoryId=@CategoryId,            ManufacturerId=@ManufacturerId where ID=@ID OR ItemCode=@ItemCode End;
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployeeData1]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateEmployeeData1]
@EmpCode varchar(max),
@Title Varchar(MAX),
@FristName varchar(max),
@MiddleName varchar(max),
@LastName varchar(max),
@ContactNo varchar(MAX),
@MobileNo varchar(max),
@EmailId Varchar(max),
@DOB date,
@GenderID int,
@BloodGroupID int,
@MaritalStatusID int,
@CTC int,
@GrossAmount int,
@TempAddress varchar(max),
@DocumentName varchar(max),
@TrainingDetails varchar(max),
@PanNo varchar(max),
@ESICACCNO varchar(max),
@AutoMail varchar(max),
@LeaveRule int,
@AttendanceID int,
@EmpPhoto varchar(max),
@DateofJoin date,
@Qualification int,
@Designation int,
@DepartmentID int,
@Category int,
@WeekOffID int,
@Contractor int,
@TypeofStaff int,
@PayType int,
@Unit int,
@AadharNo int,
@Balance int,
@PermanentAddress varchar(max),
@Asset varchar(max),
@ApprasalHistory varchar(max),
@PFAccNo varchar(max),
@IsLeft varchar(max),
@LeftDate date,
@LoginUserId int
AS
BEGIN
Update EmployMaster SET
Title =@Title,
FristName=@FristName,
MiddleName=@MiddleName,
LastName=@LastName,
ContactNo=@ContactNo,
MobileNo =@MobileNo,
EmailId =@EmailId,
DOB =@DOB,
GID=@GenderID,
BloodGroupID=@BloodGroupID,
MSID=@MaritalStatusID,
CTC =@CTC,
GrossAmount =@GrossAmount,
TempAddress=@TempAddress,
DocumentName =@DocumentName,
TrainingDetails =@TrainingDetails,
PanNo =@PanNo,
ESICACCNO =@ESICACCNO,
AutoMail =@AutoMail,
LeaveId=@LeaveRule,
AttendanceID =@AttendanceID,
EmpPhoto =@EmpPhoto,
DateofJoin =@DateofJoin,
QualificationId=@Qualification,
DesignationId=@Designation,
did=@DepartmentID,
CategoryId=@Category,
WID=@WeekOffID,
ContractorId=@Contractor,
StaffId=@TypeofStaff,
PayTypeId=@PayType,
UnitId=@Unit,
AadharNo =@AadharNo,
Balance =@Balance,
PermanentAddress =@PermanentAddress,
Asset =@Asset,
ApprasalHistory =@ApprasalHistory,
PFAccNo =@PFAccNo,
IsLeft =@IsLeft,
LeftDate=@LeftDate,
LoginUserId=@LoginUserId
where EmpCode=@EmpCode
 
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployeeData]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateEmployeeData]
@EmpCode varchar(max),
@Title Varchar(MAX),
@FristName varchar(max),
@MiddleName varchar(max),
@LastName varchar(max),
@ContactNo varchar(MAX),
@MobileNo varchar(max),
@EmailId Varchar(max),
@DOB date,
@GenderID int,
@BloodGroupID int,
@MaritalStatusID int,
@CTC int,
@GrossAmount int,
@TempAddress varchar(max),
@DocumentName varchar(max),
@TrainingDetails varchar(max),
@PanNo varchar(max),
@ESICACCNO varchar(max),
@AutoMail varchar(max),
@LeaveRule int,
@AttendanceID int,
@EmpPhoto varchar(max),
@DateofJoin date,
@Qualification int,
@Designation int,
@DepartmentID int,
@Category int,
@WeekOffID int,
@Contractor int,
@TypeofStaff int,
@PayType int,
@Unit int,
@AadharNo int,
@Balance int,
@PermanentAddress varchar(max),
@Asset varchar(max),
@ApprasalHistory varchar(max),
@PFAccNo varchar(max),
@IsLeft varchar(max),
@LeftDate date
AS
BEGIN
Update EmployMaster SET
Title =@Title,
FristName=@FristName,
MiddleName=@MiddleName,
LastName=@LastName,
ContactNo=@ContactNo,
MobileNo =@MobileNo,
EmailId =@EmailId,
DOB =@DOB,
GID=@GenderID,
BloodGroupID=@BloodGroupID,
MSID=@MaritalStatusID,
CTC =@CTC,
GrossAmount =@GrossAmount,
TempAddress=@TempAddress,
DocumentName =@DocumentName,
TrainingDetails =@TrainingDetails,
PanNo =@PanNo,
ESICACCNO =@ESICACCNO,
AutoMail =@AutoMail,
LeaveId=@LeaveRule,
AttendanceID =@AttendanceID,
EmpPhoto =@EmpPhoto,
DateofJoin =@DateofJoin,
QualificationId=@Qualification,
DesignationId=@Designation,
did=@DepartmentID,
CategoryId=@Category,
WID=@WeekOffID,
ContractorId=@Contractor,
StaffId=@TypeofStaff,
PayTypeId=@PayType,
UnitId=@Unit,
AadharNo =@AadharNo,
Balance =@Balance,
PermanentAddress =@PermanentAddress,
Asset =@Asset,
ApprasalHistory =@ApprasalHistory,
PFAccNo =@PFAccNo,
IsLeft =@IsLeft,
LeftDate=@LeftDate
where EmpCode=@EmpCode
 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateDemoItemMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateDemoItemMaster]
@ItemCode	varchar(255)	='0',
@ItemName	varchar(MAX)	,
--@Manufacturer	varchar(MAX),
@Material	varchar(MAX)	 

AS
Begin

 	Update ItemMaster
	 SET 
	 [ItemName] =@ItemName
	--,[ManufacturerId],
	,[Material] = @Material
 where ItemCode= @ItemCode	
	
 	 
 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCustomerData]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateCustomerData]
(@Id int,
@CustCode varchar(max),
@CustName varchar(max),
@ContactPerson varchar(max),
@Branch varchar(max),
@Address1 varchar(max),
@Address2 varchar(max),
@City varchar(max),
@State varchar(max),
@PinCode numeric(6,0),
@Country varchar(max),
@EmailID varchar(max),
@Telephone numeric(18,0),
@Mobile numeric(10,0),
@Fax varchar(max),
@Website varchar(max),
@GSTIN varchar(max),
@Remarks varchar(max))
As 
Begin 
Update CustomerMaster set CustName=@CustName,ContactPerson=@ContactPerson,Branch=@Branch,Address1=@Address1,Address2=@Address2,City=@City,State=@State,PinCode=@PinCode,Country=@Country,EmailID=@EmailID,Telephone=@Telephone,Mobile=@Mobile,Fax=@Fax,WebSite=@WebSite,GSTIN=@GSTIN,Remarks=@Remarks where Id=@Id OR CustCode=@CustCode
End;
GO
/****** Object:  StoredProcedure [dbo].[UpdateCustomer]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateCustomer]
@CustCode	varchar(MAX)	,
@ContactPerson	varchar(MAX)	,
@Branch	varchar(MAX)	,
@Address1	varchar(MAX)	,
@Address2	varchar(MAX)	,
@City	varchar(MAX)	,
@State	varchar(MAX)	,
@PinCode	Varchar(Max)	,
@Country	varchar(MAX)	,
@EmailID	varchar(MAX)	,
@Telephone	varchar(MAX)	,
@Mobile	varchar(MAX)	,
@Fax	varchar(MAX)	,
@Website	varchar(MAX)	,
@GSTIN	varchar(MAX)	,
@Remarks	varchar(MAX),	
@username varchar(max),
@LoginBranch varchar(max),
@systemEntryDate datetime
AS
BEGIN
Update CustomerMaster SET
ContactPerson=@ContactPerson,
Branch=@Branch,
Address1=@Address1,
Address2=@Address2,
City=@City,
State=@State,
PinCode=@PinCode,
Country=@Country,
EmailID=@EmailID,
Telephone=@Telephone,
Mobile=@Mobile,
Fax=Fax,
Website=@Website,
GSTIN=@GSTIN,
Remarks=@Remarks,
Username=@username,
LoginBranch=@LoginBranch,
SystEmentryDate=GETDATE()
where CustCode=@CustCode
 
 END
GO
/****** Object:  StoredProcedure [dbo].[Update_IndentDetailMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_IndentDetailMaster]
@IndentId int,
@ItemCode varchar(max),
@ItemName varchar(max),
@Specification varchar(max),
@DrawingNo varchar(max),
@DepartmentId int,
@Purpose varchar(max),
@CurrentStock decimal(10,2),
@RequiredDate varchar(50),
@RequiredQuantity decimal(10,2),
@RequiredQuantityUnit varchar(15),
@IsApporved BIT
AS
BEGIN
UPDATE IndentDetailMaster SET ItemCode=@ItemCode, Specification=@Specification, 
DrawingNo=@DrawingNo,DepartmentId=@DepartmentId,Purpose=@Purpose,
CurrentStock=@CurrentStock,RequiredDate=@RequiredDate,ToOrderQuantity=@RequiredQuantity,
ToOrderUnit=@RequiredQuantityUnit, IsApproved=@IsApporved Where IndentId=@IndentId
END
GO
/****** Object:  StoredProcedure [dbo].[Update_ItemMaster_27March]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Update_ItemMaster_27March]
@ItemCode	varchar(255),
@ItemName	varchar(MAX)	,
@ManufacturerId	int,
@Material	varchar(MAX)	,
@ItemCategoryId int	,
@ItemSubCategoryId	int	,
@ColorId	int,
@UOMId	int	,
@HSNCODE	varchar(255)	,
@GSTRate	decimal(20, 2)	,
@PurchaseCost	decimal(20, 2)	,
@SellingPrice	decimal(20, 2)	,
@UserId int,
@LoginBranchId int,
--@SystemEntryDate datetime,
@RawMaterial varchar(50)


AS

Begin
	UPDATE ItemMaster SET ItemName = @ItemName, [ManufacturerId] = @ManufacturerId, [Material] = @Material, 
	[CategoryId] = @ItemCategoryId,[SubCategoryId] = @ItemSubCategoryId, ColourId = @ColorId, [UnitId] = @UOMId, 
	[HSNCode] = @HSNCODE,[GstRate] = @GSTRate, [PurchaseCost] = @PurchaseCost, [SellingPrice] = @SellingPrice, 
	UserId = @UserId, SystEmentryDate = GETDATE(), RawMaterial = @RawMaterial WHERE ItemCode = @ItemCode
	

END
GO
/****** Object:  StoredProcedure [dbo].[SelectItemMasterbyId]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SelectItemMasterbyId]
@ID int
As
Begin
Select * from ItemMaster where ItemCode=@ID;
End;
GO
/****** Object:  StoredProcedure [dbo].[SelectItemMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SelectItemMaster]
As
Begin
Select * from ItemMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[Searchitem]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Searchitem]
@ItemCode varchar (MAX)
as
begin

select * from ItemMaster where ItemCode=@ItemCode

end
GO
/****** Object:  StoredProcedure [dbo].[Search_ItemMaster_March27]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Search_ItemMaster_March27]
-- Search_ItemMaster_March27 'SM0001'
@ItemCode VARCHAR(MAX)
AS
BEGIN
SELECT * FROM ItemMaster  WHERE ItemCode=@ItemCode
END

--CategoryId
--SubCategoryId
--ManufacturerId
--Material
--ColourId
--UnitId
--GSTRate
--PurchaseCost
--SellingPrice
--RawMaterial
GO
/****** Object:  StoredProcedure [dbo].[Scheduler_TransferInvoice]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Scheduler_TransferInvoice]
@CurrentDate varchar(50)
as
begin

select * from IndentMaster im
inner join IndentDetailMaster idm
on im.IndentId=idm.IndentId
where im.IndentDate =@CurrentDate
end
GO
/****** Object:  StoredProcedure [dbo].[SaveSupplierMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[SaveSupplierMaster]
    @SuppCode varchar(max),
	@SuppName varchar(MAX),
	@ContactPerson	varchar(MAX),
	@Branch	varchar(MAX),
	@Address1	varchar(MAX),
	@Address2	varchar(MAX),
	@City	varchar(MAX),
	@State	varchar(MAX),
	@PinCode int,
	@Country	varchar(MAX),
	@EmailID	varchar(MAX),
	@Telephone	int,
	@Mobile	int,
	@Fax	varchar(MAX),
	@Website varchar(MAX),
	@GSTIN	varchar(MAX),
	@Remarks varchar(MAX),	
	@Username	varchar(MAX),
	@LoginBranch	varchar(MAX),
	@SystEmentryDate datetime,
	@supptypeid int
	
As
Begin

Declare @CNT numeric(18,0)

Set @CNT=0

Set @CNT=(Select ISNULL(COUNT(*),0) from SupplierMaster where SuppCode=@SuppCode)
 
 If(@CNT>0)
 Begin
 update SupplierMaster Set
 SuppName=@SuppName,
 ContactPerson=@ContactPerson,
 Branch=@Branch,
 Address1=@Address1,
 Address2=@Address2,
 City=@City,
[State]=@State,
PinCode=@PinCode,
Country=@Country,
EmailID=@EmailID,
Telephone=@Telephone,
Mobile=@Mobile,
Fax=@Fax,
Website=@Website,
GSTIN=@GSTIN,
Remarks=@Remarks,	
Username=@Username,
LoginBranch=@LoginBranch,
SystEmentryDate=@SystEmentryDate,
supptypeid=@supptypeid
	
where SuppCode=@SuppCode

End

Else
Begin
Insert into SupplierMaster
(SuppCode,
SuppName,
ContactPerson,
Branch,
Address1,
Address2,
City,
[State],
PinCode,
Country,
EmailID,
Telephone,
Mobile,
Fax,
Website,
GSTIN,
Remarks,	
Username,
LoginBranch,
SystEmentryDate,
supptypeid)

values (
@SuppCode,
@SuppName,
@ContactPerson,
@Branch,
@Address1,
@Address2,
@City,
@State,
@PinCode,
@Country,
@EmailID,
@Telephone,
@Mobile,
@Fax,
@Website,
@GSTIN,
@Remarks,	
@Username,
@LoginBranch,
@SystEmentryDate,
@supptypeid
)
end
end
GO
/****** Object:  StoredProcedure [dbo].[SaveSubMasterMenu]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SaveSubMasterMenu]
@SubMenuName varchar(100),
@SubMenuLink varchar(max),
@MasterMenuId int,
@IsActive bit,
@BranchName varchar(100)
AS
BEGIN
declare @BrachId int
select @BrachId=BranchId from BranchMaster bm where bm.BranchName=@BranchName
insert into SubMasterMenu(SubMenuName,MenuLink,MasterMenuId,IsActive,BranchID,SystemEntryDate) 
values(@SubMenuName,@SubMenuLink,@MasterMenuId,@IsActive,@BrachId, GETDATE())

END

--execute SaveSubMasterMenu 'ItemMaster','master/submenumaster',1,'true','Katraj'


--select * from SubMasterMenu
GO
/****** Object:  Table [dbo].[SupplierPOMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SupplierPOMaster](
	[SupplierPoId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierPONo] [varchar](100) NULL,
	[IndentId] [int] NULL,
	[SupplierPoDate] [datetime] NULL,
	[SupplierPoTime] [time](7) NULL,
	[CreatedBy] [varchar](50) NULL,
	[VerifiedBy] [varchar](50) NULL,
	[ApprovedBy] [varchar](50) NULL,
	[TotalAmount] [numeric](18, 0) NULL,
	[Note] [varchar](50) NULL,
	[Remark] [varchar](50) NULL,
	[SystemEntryDate] [datetime] NULL,
	[UserId] [int] NULL,
	[CmpId] [int] NULL,
	[IpAddress] [varchar](50) NULL,
	[FinancialYearId] [int] NULL,
	[PaymentTypeId] [int] NULL,
	[TransportTypeId] [int] NULL,
	[Packing] [int] NULL,
	[Height] [int] NULL,
	[Warrenty] [int] NULL,
	[ServiceTax] [int] NULL,
	[OtherCharges] [decimal](10, 2) NULL,
	[NetTotal] [decimal](10, 2) NULL,
	[TransporterTypeId] [int] NULL,
	[VerifiedById] [int] NULL,
	[LoginUserId] [int] NULL,
	[BranchId] [int] NULL,
	[SupplierId] [int] NULL,
 CONSTRAINT [PK_SupplierPO] PRIMARY KEY CLUSTERED 
(
	[SupplierPoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[RptSupplierList]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure[dbo].[RptSupplierList]
as
begin
select * from SupplierMaster
end
GO
/****** Object:  StoredProcedure [dbo].[rptsupplierdetail1]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[rptsupplierdetail1]
@suppcode varchar(50)=null
as
begin
if @suppcode is not null
begin 
select ID, suppcode,suppname, contactperson, branch, address1, address2, City, State, pincode, Country, emailid, telephone, mobile, fax, website, gstin, remarks, username, loginbranch, systementrydate, supptype from SupplierMaster sm
inner join suppliertypemaster stm
on sm.supptypeid=stm.supptypeid
where SuppCode=@suppcode
end
else
begin
select ID, suppcode,suppname, contactperson, branch, address1, address2, City, State, pincode, Country, emailid, telephone, mobile, fax, website, gstin, remarks, username, loginbranch, systementrydate, supptype from SupplierMaster sm
inner join suppliertypemaster stm
on sm.supptypeid=stm.supptypeid
end
end
GO
/****** Object:  StoredProcedure [dbo].[rptsupplierdetail]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[rptsupplierdetail]
@input varchar(50)
as
begin
if @input=0
begin select * from SupplierMaster
end
else
print 'you entered wrong code'
end
GO
/****** Object:  StoredProcedure [dbo].[RptStockTransfer]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[RptStockTransfer]
@FromDate varchar(MAX),
@ToDate varchar(MAX)
as
begin

select TransactionDate,FromBranch,ToBranch,(ItemMaster.ItemName+' '+ItemMaster.Material+' '+ ItemMaster.ItemType +' ' +ItemMaster.ItemSubType + ' ' + ItemMaster.Color)as ItemName,StockTransfer.UOM,Quantity 
from StockTransfer 
inner join ItemMaster on StockTransfer.ItemCode=ItemMaster.ItemCode
where
TransactionDate>=@FromDate and TransactionDate<=@ToDate
end
GO
/****** Object:  StoredProcedure [dbo].[RptStock]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[RptStock]
as 
begin

select StockMaster.Branch,StockMaster.ItemCode, (ItemMaster.ItemName+' '+ItemMaster.Material+' '+ ItemMaster.ItemType +' ' +ItemMaster.ItemSubType + ' ' + ItemMaster.Color)as Item,
sum(StockMaster.InQty) as InQty, SUM(StockMaster.OutQty) as OutQty,(sum(StockMaster.InQty)-SUM(StockMaster.OutQty)) as AvailableStock
from StockMaster inner join ItemMaster on StockMaster.ItemCode=ItemMaster.ItemCode
group by StockMaster.Branch,StockMaster.ItemCode,ItemMaster.ItemName,ItemMaster.Material,ItemMaster.ItemType,ItemMaster.ItemSubType,ItemMaster.Color
end
GO
/****** Object:  StoredProcedure [dbo].[RptRawMaterialStock]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure[dbo].[RptRawMaterialStock]
@FromDate varchar(MAX),
@ToDate varchar(MAX)
as
begin
select StockMaster.Branch,StockMaster.ItemCode, (ItemMaster.ItemName+' '+ItemMaster.Material+' '+ ItemMaster.ItemType +' ' +ItemMaster.ItemSubType + ' ' + ItemMaster.Color)as Item,
sum(StockMaster.InQty) as InQty, SUM(StockMaster.OutQty) as OutQty,(sum(StockMaster.InQty)-SUM(StockMaster.OutQty)) as AvailableStock
  from StockMaster inner join  ItemMaster on StockMaster.ItemCode=ItemMaster.ItemCode
  where ItemMaster.RawMaterial='1' 
  and StockMaster.TransactionDate>=@FromDate and TransactionDate<=@ToDate
  group by StockMaster.Branch,StockMaster.ItemCode,ItemMaster.ItemName,ItemMaster.Material,ItemMaster.ItemType,ItemMaster.ItemSubType,ItemMaster.Color


end
GO
/****** Object:  StoredProcedure [dbo].[RptQuotation]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[RptQuotation]
@QuotationNo Varchar(MAX)
as
begin
select * from QuotationMaster inner join QuotationDetails on QuotationMaster.QutationNo=QuotationDetails.QuotationNo
inner join CustomerMaster on CustomerMaster.CustCode=QuotationMaster.CustCode
where QuotationMaster.QutationNo=@QuotationNo
end
GO
/****** Object:  StoredProcedure [dbo].[RptProductionNote]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[RptProductionNote]
@FromDate varchar(MAX),
@ToDate varchar(MAX)
as
begin
select ProductionDate,(ItemMaster.ItemName+' '+ItemMaster.Material+' '+ ItemMaster.ItemType +' ' +ItemMaster.ItemSubType + ' ' + ItemMaster.Color)as Item,
ProductionNote.UoM,SUM(Qty) as Qty
from ProductionNote inner join ItemMaster on ProductionNote.ItemCode=ItemMaster.ItemCode
where ProductionDate>=@FromDate and ProductionDate<=@ToDate
group by ProductionNote.ProductionDate,ItemMaster.ItemName,ItemMaster.Material,ItemMaster.ItemType,ItemMaster.ItemSubType,ItemMaster.Color,ProductionNote.UoM
end
GO
/****** Object:  StoredProcedure [dbo].[RptMaterialInwardDetailsAndRptMaterialInwardStock]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[RptMaterialInwardDetailsAndRptMaterialInwardStock]
@FromDate varchar(MAX),
@ToDate varchar(MAX),
@Action int
as
begin
if @Action=1
begin 
select * from MaterialInvoiceMaster 
inner join MaterialInvoiceDetails on MaterialInvoiceDetails.UIN = MaterialInvoiceMaster.UIN
inner join SupplierMaster on MaterialInvoiceMaster.SupplierCode=SupplierMaster.SuppCode
where MaterialInvoiceMaster.InwardDate>=@FromDate and MaterialInvoiceMaster.InwardDate<=@ToDate
end

if @Action=2

begin 
select * from MaterialInvoiceMaster
inner join MaterialInvoiceDetails on MaterialInvoiceDetails.UIN = MaterialInvoiceMaster.UIN
inner join SupplierMaster on MaterialInvoiceMaster.SupplierCode=SupplierMaster.SuppCode
where MaterialInvoiceMaster.InwardDate>=@FromDate and MaterialInvoiceMaster.InwardDate<=@ToDate and 
MaterialInvoiceDetails.RawMaterial='1'
end
end
GO
/****** Object:  StoredProcedure [dbo].[RptItemWiseDetail]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[RptItemWiseDetail]
@ItemCode varchar(50)
AS
BEGIN
IF(@ItemCode='0')
BEGIN
SELECT * FROM ItemMaster
END
ELSE
BEGIN
SELECT * FROM ItemMaster where ItemCode=@ItemCode
END
END
GO
/****** Object:  StoredProcedure [dbo].[SaveItemData1]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SaveItemData1](	  @Itemcode varchar(255)='0',	  @ItemName  varchar(max), 	  @Material  varchar(max), 	  @ItemType  varchar(max)='',       @ItemSubType  varchar(max)='', 	  @Color  varchar(max),       @UOM  varchar(255),       @HSNCODE  varchar(255) ,      @GSTRate  decimal(20,2),       @PurchaseCost  decimal(20,2) ,      @SellingPrice  decimal(20,2) ,           @RawMaterial  varchar(50) ,      @SubCategoryId  int,       @CategoryId  int,      @ManufacturerId  int )asbegin INSERT into [StandardMetalDB].[dbo].[ItemMaster]           ([ItemCode] ,[ItemName],[Material],[ItemType],[ItemSubType],[Color],[UOM],[HSNCODE],            [GSTRate],[PurchaseCost],[SellingPrice], [RawMaterial],[SubCategoryId],[CategoryId],            [ManufacturerId])     VALUES(@ItemCode,@ItemName,@Material,@ItemType,@ItemSubType,@Color,@UOM,@HSNCODE,@GSTRate,			@PurchaseCost,@SellingPrice,@RawMaterial,@SubCategoryId,@ManufacturerId,@CategoryId)End;
GO
/****** Object:  StoredProcedure [dbo].[SaveItemData]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SaveItemData](	  @ItemCode  varchar(255)='0' ,      @ItemName  varchar(max),       @Material  varchar(max),       @ItemType  varchar(max),       @ItemSubType  varchar(max),       @Color  varchar(max),       @UOM  varchar(255),       @HSNCODE  varchar(255) ,      @GSTRate  decimal(20,2),       @PurchaseCost  decimal(20,2) ,      @SellingPrice  decimal(20,2) ,           @RawMaterial  varchar(50) ,      @SubCategoryId  int,       @CategoryId  int,      @ManufacturerId  int )asbeginINSERT into [StandardMetalDB].[dbo].[ItemMaster]           ([ItemCode] ,[ItemName],[Material],[ItemType],[ItemSubType],[Color],[UOM],[HSNCODE],            [GSTRate],[PurchaseCost],[SellingPrice], [RawMaterial],[SubCategoryId],[CategoryId],            [ManufacturerId])     VALUES(@ItemCode,@ItemName,@Material ,@ItemType,@ItemSubType,@Color,@UOM,@HSNCODE,@GSTRate,			@PurchaseCost,@SellingPrice,@RawMaterial,@SubCategoryId,@ManufacturerId,@CategoryId)End;
GO
/****** Object:  StoredProcedure [dbo].[SaveDemoItemMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SaveDemoItemMaster]
@ItemCode	varchar(255)	='0',
@ItemName	varchar(MAX)	,
--@Manufacturer	varchar(MAX),
@Material	varchar(MAX)	 

AS
Begin

 	Insert Into ItemMaster
	([ItemCode]
	,[ItemName]
	--,[ManufacturerId],
	,[Material]
	)
 
	
	
	Values
	(@ItemCode,
	@ItemName,
	 
	@Material
	)
	 
 
END
GO
/****** Object:  StoredProcedure [dbo].[SaveCustomerInfo]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SaveCustomerInfo]
(
@CustCode varchar(max),
@CustName varchar(max),
@ContactPerson varchar(max),
@Branch varchar(max),
@Address1 varchar(max),
@Address2 varchar(max),
@City varchar(max),
@State varchar(max),
@PinCode numeric(6,0),
@Country varchar(max),
@EmailID varchar(max),
@Telephone numeric(18,0),
@Mobile numeric(10,0),
@Fax varchar(max),
@Website varchar(max),
@GSTIN varchar(max),
@Remarks varchar(max))
As 
Begin 
Insert into CustomerMaster (CustCode,CustName,ContactPerson,Branch,Address1,Address2,City,State,PinCode,Country,EmailID,Telephone,Mobile,Fax,WebSite,GSTIN,Remarks) values (@CustCode,@CustName,@ContactPerson,@Branch,@Address1,@Address2,@City,@State,@PinCode,@Country,@EmailID,@Telephone,@Mobile,@Fax,@WebSite,@GSTIN,@Remarks)
End;
GO
/****** Object:  StoredProcedure [dbo].[rptitemvssuppdetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[rptitemvssuppdetails]
@inpt varchar (50)
as
begin
if @inpt=0
begin
select * from ItemMaster im
inner join  ItemVsSupplier ivs
on im.itemcode=ivs.itemcode
inner join  suppliermaster sm
on ivs.SuppCode=sm.SuppCode
end
else
print 'u entered empcode not 0'
end
GO
/****** Object:  StoredProcedure [dbo].[rptitemvscustdetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[rptitemvscustdetails]
@inpt varchar (50)
as
begin
if @inpt=0
begin
select * from ItemMaster im
inner join  ItemVsCustomer ics
on im.itemcode=ics.itemcode
inner join  CustomerMaster cm
on ics.CustCode=cm.CustCode
end
else
print 'u entered empcode not 0'
end
GO
/****** Object:  StoredProcedure [dbo].[RptItemDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure[dbo].[RptItemDetails]
as
begin
select * from ItemMaster
end
GO
/****** Object:  StoredProcedure [dbo].[rptitemdetail]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[rptitemdetail]
@input varchar(50)
as
begin
if @input=0
begin select * from ItemMaster
end
else
print 'you entered wrong code'
end
GO
/****** Object:  StoredProcedure [dbo].[rptInvoiceDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[rptInvoiceDetails]
@TaxinvoiceNo varchar(max)
as
begin
select 
 TaxInvoiceMaster.InvoiceNO, 
 Convert(varchar(MAX),TaxInvoiceMaster.InvoiceDate,103) as InvoiceDate, CustomerCode, PONO, 
 Convert(varchar(MAX),PODate,103) as PODate, AmontinRs
, TotalinvoiceRs, SubTotal, GrandTotal, Remark, TaxInvoiceMaster.UserName, ShiptoCustcode, 
TransportMode, Convert(varchar(MAX),dateofSupply,103) as dateofSupply , placeofsupply, LoadingCharges, TransportChages
, Freight, FreightUnit, FreightAmount, Packing, PackingUnit, PackingAmount, 
MASCGSTRATE, MASSGSTRATE, MASIGSTRATE, MASCGSTAMT, MASSGSTAMT, MASIGSTAMT
, VehicleNo, GSTReverseChargeYesORNO, GSTReverseCharge, 
bankaccount, bankIFSC, POTYPE, 
Convert(varchar(MAX),TaxInvoiceMaster.SystemEntryDate,103) as SystemEntryDate, PaymentTerm, POClose

,ItemCode, ItemName, Rate, Amount, TotalQty, Discount, TAXABLEVALUE, CGST, CGSTValue, SGST, SGSTValue, IGST, 
                      IGSTValue, TotalGSTTax, TotalGSTAMOUNT, UOM, HSNCODE
,CustCode, CustName, ContactPerson, Branch, Address1, Address2, 
City, State, PinCode, Country, EmailID, Telephone, Mobile, Fax, Website, GSTIN, 
Remarks
from TaxInvoiceMaster 
inner join TaxInvoiceDetails on TaxInvoiceMaster.InvoiceNO=TaxInvoiceDetails.InvoiceNO
inner join CustomerMaster on CustomerMaster.CustCode= TaxInvoiceMaster.CustomerCode

where TaxInvoiceMaster.InvoiceNO=@TaxinvoiceNo
end
GO
/****** Object:  StoredProcedure [dbo].[RptIndetDetailIReport]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[RptIndetDetailIReport]
-- RptIndetDetailIReport  '0' 
--RptIndetDetailIReport '2018-05-16 00:00:00.000','2018-05-17 00:00:00.000'
@IndentNo varchar(100),
@FromDate datetime =null,
@ToDate datetime =null
 
As
BEGIN

if(@IndentNo !='0')
BEGIN

			--	Report By IndentNo		 
			 
			IF OBJECT_ID('tempdb.dbo.#TempIndent') IS NOT NULL
			DROP TABLE  #TempIndent

			SELECT IM.IndentId,  IM.IndentNoAutoGen, IM.IndentNo,
			IM.IndentTypeId, ITM.IndentType,
			IM.IndentDate, IM.IndentTime, IM.Note, IM.Remark,
			EM1.FristName+' ' +EM1.LastName AS 'CreatedBy', 
			EM.FristName+' '+em.LastName AS 'ApprovedBy',
			IM.ApprovedDate, IM.ApprovedTime, IM.StoredApproved, IM.purchaseOrService,
			IM.ItemType, IM.ShortClose, Im.ShortCloseReson, IM.UserName,
			IM.CmpId, IM.FinancialYearId, IDM.IndentDetailId, --IDM.IndentId,
			IDM.ItemCode, IDM.Description, IDM.Specification, IDM.DrawingNo, 
			IDM.DepartmentId, DM.dname, IDM.Purpose, IDM.CurrentStock, IDM.RequiredDate, IDM.ToOrderQuantity, 
			IDM.ToOrderUnit, IDM.Length, IDM.Grade, IDM.Weight, IDM.Rate, IDM.Amount,    IDM.IsApproved, 
			IDM.ApprovedQuantity, IDM.RejectedQty, IDM.SuppCode,  
			PN.ItemName, PN.ManufacturerId, PN.Material, PN.ItemSubType, 
			PN.Color, PN.UOM, PN.HSNCODE, PN.PurchaseCost, PN.SellingPrice, PN.RawMaterial,  sm.SuppName,
			SM.ContactPerson, SM.Address1, SM.Address2, SM.City, SM.State, SM.PinCode, SM.EmailID, SM.Telephone, SM.Mobile, 
			SM.Fax, SM.Website, SM.GSTIN,
					CASE
	WHEN
	IDM.IsApproved =1
	THEN
		'Yes'
	ELSE
		'No' 
	END
	as 'ApprovedStatus'
			INTO #TempIndent
			 FROM IndentMaster IM
			INNER JOIN   IndentDetailMaster IDM
			ON IM.IndentId = IDM.IndentId
			INNER JOIN  IndentTypeMaster ITM
			ON ITM.IndentTypeId = IM.IndentTypeId
			INNER JOIN  DepartmentMaster DM
			ON IDM.DepartmentId= DM.did
			INNER JOIN  ItemMaster   PN
			ON PN.ItemCode = IDM.ItemCode
			LEFT JOIN  EmployMaster EM --it's for approved by emplyye
			ON EM.EmpCode =IM.ApprovedBy
			LEFT JOIN  EmployMaster EM1 --it's for Created by emplyye
			ON EM1.EmpCode =IM.CreatedBy
			INNER JOIN SupplierMaster SM
			ON SM.SuppCode= IDM.SuppCode
			 INNER JOIN  ItemVsSupplier IVS
			ON IVS.SuppCode = SM.SuppCode
			and PN.ItemCode= IVS.ItemCode 
			 WHERE
			 IM.IndentNoAutoGen =  @IndentNo  -- 'PMRSMP0001' 
			 

			IF OBJECT_ID('tempdb.dbo.#TotalAmount') IS NOT NULL
			DROP TABLE  #TotalAmount
			 
			DECLARE @TotalAmnt int
			SET @TotalAmnt=(SELECT  SUM(Amount) FROM #TempIndent)
			PRINT @TotalAmnt
			  
			SELECT IndentId,  IndentNoAutoGen, IndentNo,
			IndentTypeId, IndentType,
			IndentDate, IndentTime,Note, Remark,
			CreatedBy, ApprovedBy,
			ApprovedDate, ApprovedTime, StoredApproved, purchaseOrService,
			ItemType, ShortClose, ShortCloseReson, UserName,
			CmpId, FinancialYearId,IndentDetailId, 
			ItemCode, Description, Specification, DrawingNo, 
			DepartmentId, dname, Purpose,CurrentStock, RequiredDate,ToOrderQuantity, 
			ToOrderUnit, Length,Grade, Weight, Rate, 
			Amount, @TotalAmnt AS 'TotalAmount', dbo.udfn_NumberToWords1(@TotalAmnt)     AS 'AmountInWord',
			IsApproved, ApprovedQuantity, RejectedQty, SuppCode,  
			ItemName, ManufacturerId, Material, ItemSubType, 
			Color, UOM, HSNCODE, PurchaseCost,SellingPrice, RawMaterial,  SuppName,
			ContactPerson, Address1, Address2,City, State, PinCode, EmailID,Telephone, Mobile, 
			Fax, Website, GSTIN 
			FROM #TempIndent
  
END			--End IF
ELSE
BEGIN
if(@IndentNo ='0')
BEGIN
		/*								All Indent Report 							`*/

		IF OBJECT_ID('tempdb.dbo.#TempIndent1') IS NOT NULL
		DROP TABLE  #TempIndent1

		SELECT IM.IndentId,  IM.IndentNoAutoGen, IM.IndentNo,
		IM.IndentTypeId, ITM.IndentType,
		IM.IndentDate, IM.IndentTime, IM.Note, IM.Remark,
		EM1.FristName+' ' +EM1.LastName AS 'CreatedBy', 
		EM.FristName+' '+em.LastName AS 'ApprovedBy',
		IM.ApprovedDate, IM.ApprovedTime, IM.StoredApproved, IM.purchaseOrService,
		IM.ItemType, IM.ShortClose, Im.ShortCloseReson, IM.UserName,
		IM.CmpId, IM.FinancialYearId, IDM.IndentDetailId,
		IDM.ItemCode, IDM.Description, IDM.Specification, IDM.DrawingNo, 
		IDM.DepartmentId, DM.dname, IDM.Purpose, IDM.CurrentStock, IDM.RequiredDate, IDM.ToOrderQuantity, 
		IDM.ToOrderUnit, IDM.Length, IDM.Grade, IDM.Weight, IDM.Rate, IDM.Amount, IDM.IsApproved, 
		IDM.ApprovedQuantity, IDM.RejectedQty, IDM.SuppCode,  
		PN.ItemName, PN.ManufacturerId, PN.Material, PN.ItemSubType, 
		PN.Color, PN.UOM, PN.HSNCODE, PN.PurchaseCost, PN.SellingPrice, PN.RawMaterial,  sm.SuppName,
		SM.ContactPerson, SM.Address1, SM.Address2, SM.City, SM.State, SM.PinCode, SM.EmailID, SM.Telephone, SM.Mobile, 
		SM.Fax, SM.Website, SM.GSTIN,
		CASE
	WHEN
	IDM.IsApproved =1
	THEN
		'Yes'
	ELSE
		'No' 
	END
	as 'ApprovedStatus'
		INTO #TempIndent1 
		FROM IndentMaster IM
		INNER JOIN   IndentDetailMaster IDM
		ON IM.IndentId = IDM.IndentId
		INNER JOIN  IndentTypeMaster ITM
		ON ITM.IndentTypeId = IM.IndentTypeId
		INNER JOIN  DepartmentMaster DM
		ON IDM.DepartmentId= DM.did
		INNER JOIN  ItemMaster   PN
		ON PN.ItemCode = IDM.ItemCode
		INNER JOIN  EmployMaster EM --it's for approved by emplyye
		ON EM.EmpCode =IM.ApprovedBy
		INNER JOIN  EmployMaster EM1 --it's for Created by emplyye
		ON EM1.EmpCode =IM.CreatedBy
		INNER JOIN SupplierMaster SM
		ON SM.SuppCode= IDM.SuppCode
		 INNER JOIN  ItemVsSupplier IVS
		ON IVS.SuppCode = SM.SuppCode
		and PN.ItemCode= IVS.ItemCode 
		  
		IF OBJECT_ID('tempdb.dbo.#TotAmt1') IS NOT NULL
		DROP TABLE  #TotAmt1
		 
		SELECT  IndentId, IndentNoAutoGen ,  SUM(Amount) AS 'TotalAmount' 
		INTO #TotAmt1 
		FROM  #TempIndent1
		GROUP BY IndentId, IndentNoAutoGen

		select T1.*,T2.TotalAmount from #TempIndent1 T1
		INNER JOIN  #TotAmt1 T2
		ON T1.IndentId = T2.IndentId



END		--END IF
ELSE

BEGIN
--	FromDate And ToDate
if(@FromDate!='0' AND @ToDate!='0')
BEGIN


IF OBJECT_ID('tempdb.dbo.#TempIndent2') IS NOT NULL
DROP TABLE  #TempIndent2

SELECT IM.IndentId,  IM.IndentNoAutoGen, IM.IndentNo,
IM.IndentTypeId, ITM.IndentType,
IM.IndentDate, IM.IndentTime, IM.Note, IM.Remark,
EM1.FristName+' ' +EM1.LastName AS 'CreatedBy', 
EM.FristName+' '+em.LastName AS 'ApprovedBy',
IM.ApprovedDate, IM.ApprovedTime, IM.StoredApproved, IM.purchaseOrService,
IM.ItemType, IM.ShortClose, Im.ShortCloseReson, IM.UserName,
IM.CmpId, IM.FinancialYearId, IDM.IndentDetailId, --IDM.IndentId,
IDM.ItemCode, IDM.Description, IDM.Specification, IDM.DrawingNo, 
IDM.DepartmentId, DM.dname, IDM.Purpose, IDM.CurrentStock, IDM.RequiredDate, IDM.ToOrderQuantity, 
IDM.ToOrderUnit, IDM.Length, IDM.Grade, IDM.Weight, IDM.Rate, IDM.Amount,
 IDM.IsApproved, 
IDM.ApprovedQuantity, IDM.RejectedQty, IDM.SuppCode,  
PN.ItemName, PN.ManufacturerId, PN.Material, PN.ItemSubType, 
PN.Color, PN.UOM, PN.HSNCODE, PN.PurchaseCost, PN.SellingPrice, PN.RawMaterial,  sm.SuppName,
SM.ContactPerson, SM.Address1, SM.Address2, SM.City, SM.State, SM.PinCode, SM.EmailID, SM.Telephone, SM.Mobile, 
SM.Fax, SM.Website, SM.GSTIN,
		CASE
	WHEN
	IDM.IsApproved =1
	THEN
		'Yes'
	ELSE
		'No' 
	END
	as 'ApprovedStatus'

INTO #TempIndent2 
 FROM IndentMaster IM
INNER JOIN   IndentDetailMaster IDM
ON IM.IndentId = IDM.IndentId
INNER JOIN  IndentTypeMaster ITM
ON ITM.IndentTypeId = IM.IndentTypeId
INNER JOIN  DepartmentMaster DM
ON IDM.DepartmentId= DM.did
INNER JOIN  ItemMaster   PN
ON PN.ItemCode = IDM.ItemCode
INNER JOIN  EmployMaster EM --it's for approved by emplyye
ON EM.EmpCode =IM.ApprovedBy
INNER JOIN  EmployMaster EM1 --it's for Created by emplyye
ON EM1.EmpCode =IM.CreatedBy
INNER JOIN SupplierMaster SM
ON SM.SuppCode= IDM.SuppCode
 INNER JOIN  ItemVsSupplier IVS
ON IVS.SuppCode = SM.SuppCode
and PN.ItemCode= IVS.ItemCode 
  
IF OBJECT_ID('tempdb.dbo.#TotAmt2') IS NOT NULL
DROP TABLE  #TotAmt2
 
SELECT  IndentId, IndentNoAutoGen ,  SUM(Amount) AS 'TotalAmount' 
INTO #TotAmt2 
FROM  #TempIndent2
GROUP BY IndentId, IndentNoAutoGen

select T1.*, T2.TotalAmount from #TempIndent2 T1
INNER JOIN  #TotAmt2 T2
ON T1.IndentId=T2.IndentId
WHERE 
T1.IndentDate BETWEEN @FromDate--'2018-05-17 00:00:00.000'
AND @ToDate-- '2018-05-18 00:00:00.000'

-- FromDate And ToDate
END
END

END



END
GO
/****** Object:  StoredProcedure [dbo].[RptGetCustomerDtlCodeWise]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RptGetCustomerDtlCodeWise]
--RptGetCustomerDtlCodeWise '0'
@CustCode Varchar(MAX)
AS
BEGIN
if(@CustCode ='0')
BEGIN
	SELECT * FROM CustomerMaster
END
else
BEGIN
SELECT * FROM CustomerMaster WHERE CustCode=@CustCode
END
END
GO
/****** Object:  StoredProcedure [dbo].[RptEstimate]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[RptEstimate]
@estno varchar(max)
as
begin
select * from EstimetMaster
inner join EstimateDetails on EstimetMaster.EstNo=EstimateDetails.EstNo
inner join ItemMaster on ItemMaster.ItemCode=EstimateDetails.ItemCode
where EstimetMaster.EstNo=@estno
end
GO
/****** Object:  StoredProcedure [dbo].[rptemploydetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[rptemploydetails]
@empcode varchar(50) = null
as
begin
if @empcode is not null
begin
select esrno, empcode, Title, FristName, MiddleName, LastName, ContactNo,
MobileNo, EmailId, DOB, Gender, BloodGroup, MaritalStatus, CTC, GrossAmount,
TempAddress, DocumentName, TrainingDetails, PanNo, ESICACCNO, AutoMail, leavename,
EmpPhoto, DateofJoin, qualificationname, designationname, dname,
categoryname, WeekOff, ContractorName, TypeOfStaff, paytypename, unitname, 
AadharNo, Balance, PermanentAddress, Asset, ApprasalHistory, PFAccNo, IsLeft, 
LeftDate, cityname, statename, CountryName from EmployMaster em
inner join  GenderMaster gm
on em.GID=gm.GID
inner join BloodGroupMaster bm
on em.BloodGroupID=bm.BID
inner join MaritalStatusMaster msm
on em.MSID=msm.MSID
inner join LeaveMaster lm
on em.LeaveId=lm.LeaveId
inner join QualificationMaster qm
on em.QualificationId=qm.QualificationId
inner join DesignationMaster dm
on em.DesignationId=dm.DesignationId
inner join DepartmentMaster dtm
on em.did=dtm.did
inner join CategoryMaster cm
on em.CategoryId=cm.CategoryId
inner join WeekOffMaster wom
on em.WID=wom.WID
inner join ContractorMaster com
on em.ContractorId=com.ContractorId
inner join TypeOfStaffMaster tsm
on em.StaffId=tsm.StaffId
inner join PayTypeMaster ptm
on em.PayTypeId=ptm.PayTypeId
inner join UnitMaster um
on em.UnitId=um.UnitId
inner join CityMaster ctm
on em.CityId=ctm.CityId
inner join StateMaster stm
on em.StateId=stm.StateId
inner join CountryMaster cntym
on em.CountryId=cntym.CountryId
where empcode = @empcode
end
else
begin
select esrno, empcode, Title, FristName, MiddleName, LastName, ContactNo,
MobileNo, EmailId, DOB, Gender, BloodGroup, MaritalStatus, CTC, GrossAmount,
TempAddress, DocumentName, TrainingDetails, PanNo, ESICACCNO, AutoMail, leavename,
EmpPhoto, DateofJoin, qualificationname, designationname, dname,
categoryname, WeekOff, ContractorName, TypeOfStaff, paytypename, unitname, 
AadharNo, Balance, PermanentAddress, Asset, ApprasalHistory, PFAccNo, IsLeft, 
LeftDate, cityname, statename, CountryName from EmployMaster em
inner join  GenderMaster gm
on em.GID=gm.GID
inner join BloodGroupMaster bm
on em.BloodGroupID=bm.BID
inner join MaritalStatusMaster msm
on em.MSID=msm.MSID
inner join LeaveMaster lm
on em.LeaveId=lm.LeaveId
inner join QualificationMaster qm
on em.QualificationId=qm.QualificationId
inner join DesignationMaster dm
on em.DesignationId=dm.DesignationId
inner join DepartmentMaster dtm
on em.did=dtm.did
inner join CategoryMaster cm
on em.CategoryId=cm.CategoryId
inner join WeekOffMaster wom
on em.WID=wom.WID
inner join ContractorMaster com
on em.ContractorId=com.ContractorId
inner join TypeOfStaffMaster tsm
on em.StaffId=tsm.StaffId
inner join PayTypeMaster ptm
on em.PayTypeId=ptm.PayTypeId
inner join UnitMaster um
on em.UnitId=um.UnitId
inner join CityMaster ctm
on em.CityId=ctm.CityId
inner join StateMaster stm
on em.StateId=stm.StateId
inner join CountryMaster cntym
on em.CountryId=cntym.CountryId
end
end
GO
/****** Object:  StoredProcedure [dbo].[rptemploydetail]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[rptemploydetail]
@input varchar(50)
as
begin
if @input=0
begin select * from EmployMaster
end
else
print 'you entered wrong code'
end
GO
/****** Object:  StoredProcedure [dbo].[RptCustomerWiseItemCount]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[RptCustomerWiseItemCount]
-- RptCustomerWiseItemCount
AS

BEGIN

DECLARE @TotalItem int=0


SET @TotalItem = (

Select  COUNT(IM.ItemCode)  
From ItemMaster IM
INNER JOIN ItemVsCustomer IVC
ON IVC.ItemCode = IM.ItemCode
INNER JOIN CustomerMaster CM
ON CM.CustCode= IVC.CustCode


)

Select  Cm.CustName,CM.CustCode,COUNT(IM.ItemCode)  AS 'ItemCount', @TotalItem AS 'TotalItem'
From ItemMaster IM
INNER JOIN ItemVsCustomer IVC
ON IVC.ItemCode = IM.ItemCode
INNER JOIN CustomerMaster CM
ON CM.CustCode= IVC.CustCode

GROUP BY Cm.CustName ,CM.CustCode
  
END
GO
/****** Object:  StoredProcedure [dbo].[RptCustomerWise]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[RptCustomerWise]
@FromDate varchar(MAX),
@ToDate varchar(MAX)
as
begin
select CustomerMaster.CustName,TaxInvoiceMaster.InvoiceDate,TaxInvoiceMaster.InvoiceNO,TaxInvoiceDetails.ItemName,TaxInvoiceDetails.TotalQty,
TaxInvoiceDetails.Rate,TaxInvoiceDetails.TAXABLEVALUE,TaxInvoiceDetails.TotalGSTTax,TaxInvoiceDetails.TotalGSTAMOUNT,TaxInvoiceMaster.GrandTotal
 from TaxInvoiceMaster inner join TaxInvoiceDetails on TaxInvoiceMaster.InvoiceNO=TaxInvoiceDetails.InvoiceNO
inner join CustomerMaster on TaxInvoiceMaster.CustomerCode=CustomerMaster.CustCode
where (TaxInvoiceMaster.InvoiceDate>=@FromDate and TaxInvoiceMaster.InvoiceDate<=@ToDate)

group by CustomerMaster.CustName,TaxInvoiceMaster.InvoiceDate,TaxInvoiceMaster.InvoiceNO,TaxInvoiceMaster.InvoiceNO,TaxInvoiceDetails.ItemName,TaxInvoiceDetails.TotalQty,
TaxInvoiceDetails.Rate,TaxInvoiceDetails.TAXABLEVALUE,TaxInvoiceDetails.TotalGSTTax,TaxInvoiceDetails.TotalGSTAMOUNT,TaxInvoiceMaster.GrandTotal


end
GO
/****** Object:  StoredProcedure [dbo].[RptCustomerDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[RptCustomerDetails]
as
begin
select * from CustomerMaster
end
GO
/****** Object:  StoredProcedure [dbo].[rptcustomerdetail]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[rptcustomerdetail]
@input varchar(50)
as
begin
if @input=0
begin select * from CustomerMaster
end
else
print 'you entered wrong code'
end
GO
/****** Object:  StoredProcedure [dbo].[rptcustdetail]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[rptcustdetail]
@c varchar(50) = null
as 
begin
if @c is not null
begin
select ID, custcode,custname, contactperson,	branch, address1, address2, City, State, pincode, country, emailid, telephone, mobile, fax, website, gstin, remarks, username, loginbranch, systementrydate from CustomerMaster
where @c=CustCode
end
else
begin 
select ID, custcode,custname, contactperson,	branch, address1, address2, City, State, pincode, country, emailid, telephone, mobile, fax, website, gstin, remarks, username, loginbranch, systementrydate from CustomerMaster
end
end
GO
/****** Object:  StoredProcedure [dbo].[Rpt_ItemVsSupplier]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Rpt_ItemVsSupplier]
--  Rpt_ItemVsSupplier

AS

BEGIN
Declare @TotalCount int

SELECT 
SM.SuppName, IVS.SuppCode, IVS.ItemCode INTO #TempIvs
FROM ItemVsSupplier IVS
INNER JOIN ItemMaster IM
ON IVS.ItemCode=IM.ItemCode
INNER JOIN SupplierMaster SM
ON SM.SuppCode=IVS.SuppCode

SET @TotalCount=(SELECT COUNT(ItemCode) FROM #TempIvs)

select SuppName,SuppCode, COUNT(ItemCode) AS 'ItemWiseCount' ,@TotalCount as 'TotalItemCount'
 From #TempIvs
GROUP BY SuppName,SuppCode
 

END
GO
/****** Object:  StoredProcedure [dbo].[Rpt_ItemVsCustomer]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_ItemVsCustomer] 

AS
BEGIN

DECLARE @TotCount int

SELECT
CM.CustName, IVC.CustCode, IVC.ItemCode
FROM ItemVsCustomer IVC
INNER JOIN ItemMaster IM
ON IVC.ItemCode=IM.ItemCode
INNER JOIN CustomerMaster CM
ON IVC.CustCode=CM.CustCode
  
SET @TotCount=  (Select COUNT(ItemCode) from ItemVsCustomer) 

SELECT 
CustName,TC.CustCode, COUNT(ItemCode) AS No_Of_Items
,@TotCount as TotalCount
FROM ItemVsCustomer TC  
INNER JOIN CustomerMaster CM
ON CM.CustCode=TC.CustCode
GROUP BY TC.CustCode, CustName

  

 
 
END
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetItemMasterAllData]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_GetItemMasterAllData]
@ItemCode Varchar(MAX)
AS
BEGIN
if(@ItemCode ='0 ')
BEGIN
	SELECT * FROM ItemMaster
END
else
BEGIN
SELECT * FROM ItemMaster WHERE ItemCode=@ItemCode
END
END
GO
/****** Object:  StoredProcedure [dbo].[RPT_GetItemDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RPT_GetItemDetails]
-- RPT_GetItemDetails  'SM0001' 
@ItemCode varchar(50)= NULL 
AS
BEGIN
	IF(@ItemCode IS NULL)
	BEGIN  
	 Select * FROm ItemMaster
	 END
	 ELSE
	BEGIN  
	 Select * FROm ItemMaster WHERE ItemCode=@ItemCode
	 END
	 
END
GO
/****** Object:  StoredProcedure [dbo].[rpdetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[rpdetails]
@input varchar(50)
as
begin
if @input='0'
begin
select * from EmployMaster EM
INNER JOIN BloodGroupMaster BM
ON EM.BloodGroupID= BM.BID
INNER JOIN GenderMaster GM
ON EM.GID=GM.GID
INNER JOIN WeekOffMaster WM
ON EM.WID= WM.WID
INNER JOIN MaritalStatusMaster MST
ON EM.MSID= MST.MSID 
INNER JOIN DepartmentMaster DM
ON EM.did=DM.did
left join CityMaster CM
ON EM.CityId=CM.CityId
left JOIN StateMaster SM
ON CM.StateId=SM.StateID
left JOIN CountryMaster COM
ON SM.CountryId=COM.CountryId
end
else
begin
print 'u entered empcode not 0'
end
end
GO
/****** Object:  StoredProcedure [dbo].[RetriveItemMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[RetriveItemMaster]
-- RetriveItemMaster 'SM0001'
@ItemCode varchar(MAX)
as
select * from ItemMaster  where ItemCode=@ItemCode
GO
/****** Object:  StoredProcedure [dbo].[Purchase_BindItemName_ItemCode]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Purchase_BindItemName_ItemCode]
@IndentId int = 0
AS
BEGIN

IF(@IndentId=0)
BEGIN
SELECT ItemCode, ItemName FROM ItemMaster

END
ELSE
BEGIN

SELECT IM.ItemCode,IM.ItemName FROM IndentDetailMaster IDM
INNER JOIN ItemMaster IM
ON  IM.ItemCode= IDM.ItemCode
WHERE IDM.IndentId=@IndentId
END
END
GO
/****** Object:  StoredProcedure [dbo].[Purchase_ApprovedIndentSPO]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Purchase_ApprovedIndentSPO]

AS

Begin

Select  InM.IndentNoAutoGen, InDM.IndentId 
From IndentDetailMaster InDM
Inner Join IndentMaster InM
ON InDM.IndentId = InM.IndentId
WHERE InDM.IsApproved=1
 

End
GO
/****** Object:  StoredProcedure [dbo].[Purchase_ItemNameVsSupplierName]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Purchase_ItemNameVsSupplierName]
@ItemCode  varchar(100)
--Purchase_ItemNameVsSupplierName

AS

BEGIN

SELECT 
SM.SuppName, IvsS.SuppCode
FROM ItemVsSupplier IvsS
INNER JOIN SupplierMaster SM
ON IvsS.SuppCode=SM.SuppCode
INNER JOIN ItemMaster IM
ON IM.ItemCode= IvsS.ItemCode
 
WHERE IM.ItemCode=@ItemCode


END
GO
/****** Object:  Table [dbo].[QuotationMasterFinal]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[QuotationMasterFinal](
	[QuotationId] [int] IDENTITY(1,1) NOT NULL,
	[WithEnquiry] [bit] NULL,
	[EnquiryId] [int] NULL,
	[RevisionNumber] [varchar](100) NULL,
	[QuotationNumber] [varchar](100) NULL,
	[QuotationDate] [datetime] NULL,
	[IsNewCustomer] [bit] NULL,
	[NewCustomerName] [varchar](100) NULL,
	[NewCustomerCode] [varchar](100) NULL,
	[Id] [int] NULL,
	[Address] [varchar](100) NULL,
	[ContactPerson] [varchar](100) NULL,
	[LoginUserId] [int] NULL,
	[BranchId] [int] NULL,
	[SystemEntryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuotationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Purchase_GetUnitRateByItem]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Purchase_GetUnitRateByItem]
@ItemCode varchar(100)
as

begin

Select UM.UnitId,IM.PurchaseCost from ItemMaster IM
INNER JOIN UnitMaster UM
ON IM.UnitId= UM.UnitId
WHERE  IM.ItemCode=@ItemCode

end
GO
/****** Object:  StoredProcedure [dbo].[Purchase_GetQuantityByIndentItem]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Purchase_GetQuantityByIndentItem]
@IndentId int,
@ItemCode varchar(100)
as

begin

Select ISNULL(ApprovedQuantity,'0.00') as ApprovedQuantity from IndentDetailMaster

WHERE  IndentId=@IndentId and ItemCode=@ItemCode

end
GO
/****** Object:  StoredProcedure [dbo].[Purchase_GetNonApprovedIndentDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[Purchase_GetNonApprovedIndentDetails]
 -- exec Purchase_GetNonApprovedIndentDetails '2018-06-22','2018-06-22'
 @FromDate datetime=null, 
@ToDate datetime =null
as
begin
select IndentNoAutoGen,IDM.ItemCode,ItemName,idm.Purpose,IDM.CurrentStock,
 IDM.RequiredDate,IDM.ToOrderQuantity,ApprovedQuantity,RejectedQty,Remark,CreatedBy from IndentMaster IM
inner join  IndentDetailMaster IDM on IM.IndentId = IDM.IndentID
inner join ItemMaster ITM on IDM.ItemCode=ITM.ItemCode 
And IsApproved=0
--And IndentDate between @FromDate and @ToDate 
end
GO
/****** Object:  StoredProcedure [dbo].[Purchase_BindSupplierPOType]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Purchase_BindSupplierPOType]
AS
BEGIN

Select STM.supptypeid, STM.supptype, SM.SuppCode, SM.SuppName
From suppliertypemaster STM
Inner Join SupplierMaster SM
ON STM.supptypeid = SM.supptypeid 

END
GO
/****** Object:  StoredProcedure [dbo].[Purchase_BindSupplierPO_Rate]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Purchase_BindSupplierPO_Rate]
As
Begin

select InDM.Description, InDM.ItemCode, InDM.Rate, SM.SuppCode, SM.SuppName, InM.IndentNoAutoGen
From IndentDetailMaster InDM
Inner Join SupplierMaster SM
ON InDM.SuppCode = SM.SuppCode
inner Join IndentMaster InM
ON InDM.IndentId = InM.IndentId
End
GO
/****** Object:  StoredProcedure [dbo].[Purchase_UpdateApprovedIndentDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Purchase_UpdateApprovedIndentDetails]
		@IsApproved bit,
        @IndentNoAutoGen varchar(max),
        @ItemCode varchar(max),
        @ItemName varchar(max),
        @Purpose varchar(max),
        @CurrentStock varchar(max),
        @RequiredDate varchar(max),
        @ToOrderQuantity decimal(10, 2),
        @ApprovedQuantity decimal(10, 2),
        @RejectedQuantity decimal(18, 2),
        @Remark varchar(max),
        @IndentCreateBy varchar(max),
        @IndentApprovedByCode varchar(max),
        @CurrentDate DateTime,
        @CurrentTime varchar(max)
        
as

begin
Declare @IndentId int

update IndentMaster set
ApprovedBy=@IndentApprovedByCode,
ApprovedDate=@CurrentDate,
ApprovedTime=@CurrentTime,
Remark=@Remark 
where IndentNoAutoGen=@IndentNoAutoGen
 
 select @IndentId=IndentId from IndentMaster where IndentNoAutoGen=@IndentNoAutoGen
update IndentDetailMaster set
ApprovedQuantity=@ApprovedQuantity,
IsApproved=@IsApproved,
RejectedQty=@RejectedQuantity
where  IndentId=@IndentId
end

select * from IndentDetailMaster
select * from IndentMaster

 

select * from IndentMaster
GO
/****** Object:  StoredProcedure [dbo].[Master_GetSuppWise_ItemCount]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Master_GetSuppWise_ItemCount]
AS
BEGIN

DECLARE @TotItemCount INT =(

Select  Count(IM.ItemCode)  from SupplierMaster SM
INNER JOIN ItemVsSupplier IVS ON SM.SuppCode= IVS.SuppCode
INNER JOIN ItemMaster IM ON IM.ItemCode= IVS.ItemCode
 )
 
 PRINT  @TotItemCount

Select SM.SuppCode,SM.SuppName, Count(IM.ItemCode) as SuppWiseItemCount , @TotItemCount as TotalItemCount from SupplierMaster SM
INNER JOIN ItemVsSupplier IVS ON SM.SuppCode= IVS.SuppCode
INNER JOIN ItemMaster IM ON IM.ItemCode= IVS.ItemCode
GROUP BY  SM.SuppCode,SM.SuppName
END
GO
/****** Object:  StoredProcedure [dbo].[Marketing_BindCustomerCode]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Marketing_BindCustomerCode]
As
Begin
Select Id,CustCode from CustomerMaster
end;
GO
/****** Object:  StoredProcedure [dbo].[Marketing_BindCustDtls3]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Marketing_BindCustDtls3]
@CustCode varchar(100)
As
Begin
Select CM.Address1, CM.ContactPerson from CustomerMaster CM
Where CM.CustCode=@CustCode
End;
GO
/****** Object:  StoredProcedure [dbo].[Marketing_BindCustDtls2]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Marketing_BindCustDtls2]
@Id int,
@CustName varchar(100)
As
begin
SELECT CM.Address1, CM.ContactPerson FROM CustomerMaster CM
WHERE CM.CustName=@CustName And Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[Marketing_BindCustDtls1]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CreaTE PROCEDURE [dbo].[Marketing_BindCustDtls1]
@CustCode VARCHAR(100),
@CustName varchar(100)
AS
BEGIN
SELECT CM.Address1, CM.ContactPerson FROM CustomerMaster CM
WHERE CM.CustCode=@CustCode And CM.CustName=@CustName;
END
GO
/****** Object:  StoredProcedure [dbo].[Marketing_BindCustDtls]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Marketing_BindCustDtls]
@Id int
--@CustCode VARCHAR(100)
AS
BEGIN
SELECT ContactPerson,Address1 FROM CustomerMaster 
WHERE  Id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[Marketing_BindCustomerName]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Marketing_BindCustomerName]
AS
BEGIN
SELECT Id,CustName FROM CustomerMaster
END;
GO
/****** Object:  StoredProcedure [dbo].[Marketing_CustItemDtls]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Marketing_CustItemDtls]
AS
BEGIN
SELECT
CM.CustCode+ '-' + IM.ItemCode AS CustItemCode,
CM.CustName + '-' + IM.ItemName AS CustItemName
FROM CustomerMaster CM
INNER JOIN ItemMaster IM
ON IM.ID=CM.Id
END
GO
/****** Object:  Table [dbo].[Marketing_EnquiryMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marketing_EnquiryMaster](
	[EnquiryId] [int] IDENTITY(1,1) NOT NULL,
	[EnquiryNumber] [varchar](max) NULL,
	[EnquiryDate] [varchar](max) NULL,
	[EnqRefNumber] [varchar](max) NULL,
	[IsNewCustomer] [bit] NULL,
	[CustomerId] [int] NULL,
	[CategoryID] [int] NULL,
	[SuppTypeId] [int] NULL,
	[NewCustName] [varchar](max) NULL,
	[NewCustCode] [varchar](max) NULL,
	[Address1] [varchar](max) NULL,
	[ContactPerson] [varchar](max) NULL,
	[SystemEntryDate] [datetime] NULL,
	[LoginBranch] [varchar](50) NULL,
	[LoginUserId] [int] NULL,
	[BranchId] [int] NULL,
	[Remark] [varchar](max) NULL,
	[QuotationNumber] [varchar](max) NULL,
	[QuotationDate] [varchar](max) NULL,
	[SampleStatus] [varchar](max) NULL,
	[SampleRequiredDate] [varchar](max) NULL,
	[SampleProductionDate] [varchar](max) NULL,
	[SampleSubmissionQuantity] [varchar](max) NULL,
	[SampeSubmissionDate] [varchar](max) NULL,
	[MedOfEnqId] [int] NULL,
	[EmpId] [int] NULL,
	[CustomerCode] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[EnquiryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Next_Upload_Employee_FinalUpload]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Next_Upload_Employee_FinalUpload]
  ---Next_Upload_Employee_FinalUpload 1
  
  @UploadId int
  as
  Begin
  
	 BEGIN TRY
		BEGIN TRANSACTION
		DECLARE @ErrorMessage varchar(500)
  
     --Declare @Employee int=(select EmpId from EmployeeMaster
     --where EmpCode in (select EmpCode from  UT_EmployeeMaster_Validation 
     --where UploadId = @UploadId))
    
    ------------------------- insert record in nextgen ---------------------------
    
    insert into EmployMaster(EmpCode,Title,FristName,MiddleName,
    LastName,ContactNo,MobileNo,EmailId,DOB,GenderId,BloodGroupId,MSID,CTC,
    GrossAmount,TempAddress, DocumentName,TrainingDetails,
    PanNo,ESICACCNO,AutoMail,LeaveId,AttendanceID,EmpPhoto,DateofJoin,
    QualificationId,DesignationId,departmentid,CategoryId,WeekOffMasterID,
    ContractorId,StaffTypeId,PayTypeId, UnitId,AadharNo,Balance,PermanentAddress,
    Asset,ApprasalHistory,PFAccNo,IsLeft,LeftDate,CityId,StateId,CountryId,cid)
    
    select EmpCode,Title,FristName,MiddleName,LastName,ContactNo,
  MobileNo,EmailId,DOB,
  gm.GenderID,bm.BloodGroupId,MSID,CTC,GrossAmount,TempAddress,DocumentName,
  TrainingDetails,PanNo,ESICACCNO,
  AutoMail,lm.LeaveId,Attendance,EmpPhoto,DateofJoin,qm.QualificationId,
dm.DesignationId,dm1.departmentid,cm.CategoryId,wm.WeekOffMasterID,
cm1.ContractorId,tm.StaffTypeId,pm.PayTypeId,um.UnitId,AadharNo,Balance,PermanentAddress,
Asset,ApprasalHistory,PFAccNo,IsLeft,LeftDate,cm2.CityId,sm.StateId,
cm3.CountryId,componyName 
from UT_EmployeeMaster_Varificaton uev
inner join GenderMaster gm
on gm.Gender=uev.Gender
inner join BloodGroupMaster bm
on bm.BloodGroup=uev.BloodGroup
inner join LeaveMaster lm
on lm.LeaveName=uev.Leave
inner join QualificationMaster qm
on qm.QualificationName=uev.Qualification
inner join DesignationMaster dm
on dm.DesignationName=uev.Designation
inner join DepartmentMaster dm1
on dm1.dname=uev.department
inner join CategoryMaster cm
on cm.CategoryName=uev.Category
inner join WeekOffMaster wm
on wm.WeekOff=uev.WeekOffMaster
inner join ContractorMaster cm1
on cm1.ContractorName=uev.Contractor
inner join TypeStaffMaster tm
on tm.StaffType=uev.StaffType
inner join PayTypeMaster pm
on pm.PayTypeName=uev.PayType
inner join UnitMaster um
on um.UnitName=uev.Unit
inner join CityMaster cm2
on cm2.CityName=uev.City
inner join StateMaster sm
on sm.StateName=uev.State
inner join CountryMaster cm3
on cm3.CountryName=uev.Country
 where  UploadId=1
    
    ----------------------------------------------------------------
  
     
  --------------------delete verification data---------------------------
  DELETE FROM UT_EmployeeMaster_Varificaton where UploadId=@UploadId 
  --------------------------------------------------------------------
  
  COMMIT TRANSACTION
  END TRY
   
  BEGIN CATCH
   ROLLBACK TRANSACTION
   SET @ErrorMessage= 'ERROR IN :'+ ERROR_MESSAGE() + ' ERROR Line : '+ ERROR_LINE()
    print @ErrorMessage
 
 END CATCH
  End
GO
/****** Object:  StoredProcedure [dbo].[next_CustomerMaster_varification]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[next_CustomerMaster_varification]
----next_CustomerMaster_varification 1
@UploadId int,
 @UserId int =1, 
 @CmpId int =1 , 
 @UploadType varchar(30)='New',
 @UploadName varchar(30)='EmployeeUpload',
 @IPAddress varchar(30)='100.20..32',
 @FinancialYearId int =1
as
begin
 BEGIN TRY
   BEGIN TRANSACTION
   DECLARE @CustCode int
   DECLARE @SuccessCount int
   DECLARE @ErrorCount int
   DECLARE @ErrorMessage varchar(max)
              --set @CustCode=(select distinct cm.CustCode from CustomerMaster cm
              --inner join UT_CustomerMaster_Validation UCM
              --on cm.CustCode=UCM.Id
              --where UCM.UploadId=@UploadId)
--------------------------------------------------------------------------
insert into UT_UploadMaster(VerificationStartDate,VerificationStartTime,
uploadName,uploadtype,UserId)
select GETDATE(),CURRENT_TIMESTAMP, @UploadName,@UploadType,@UserId
--------------------------------------------------------------------------
 -----------------------------------------------------------------------------
UPDATE UT_CustomerMaster_Validation   
SET ErrorMessage=ISNULL(ErrorMessage,'')+'ERROR :'+'Custcode is Alredy Present in Database',
 IsValid=0
WHERE Id IN(
SELECT UCM.Id  FROM CustomerMaster cm
 INNER JOIN UT_CustomerMaster_Validation UCM
 ON cm.CustCode=UCM.CustCode
 AND UCM.UploadId=@UploadId
 )
 AND UploadId=@UploadId

--UPDATE UT_CustomerMaster_Validation   
--SET ErrorMessage=ISNULL(ErrorMessage,'')+'ERROR :'+'GSTIN is Already Present in Database',
-- IsValid=0
-- WHERE Id IN(
-- SELECT UCM.Id  FROM CustomerMaster cm
-- INNER JOIN UT_CustomerMaster_Validation UCM
-- ON cm.GSTIN=UCM.GSTIN
-- AND UCM.UploadId=@UploadId
-- )
-- AND UploadId=@UploadId

 
 -----------------------------------------------------------------------------
 UPDATE UT_CustomerMaster_Validation
 SET ErrorStep='Verification'
WHERE IsValid=0 
 AND UploadId=@UploadId
 
 
 -----------------------------------------------------------------------------
 ---------------------------------------------------------------------
 SET @ErrorCount =( SELECT COUNT(*) FROM UT_CustomerMaster_Validation
 WHERE IsValid =0 AND UploadId=1)
 SET @SuccessCount =( SELECT COUNT(*) FROM UT_CustomerMaster_Validation
 WHERE isValid=1 and UploadId=@UploadId)
-- PRINT @SuccessCount
 --PRINT @ErrorCount
 ------------------------------------------------------------------------
INSERT INTO UT_CustomerMaster_Error(
CustCode, CustName , ContactPerson , Branch , Address1 ,
Address2 , City , State, PinCode, Country, EmailID, Telephone,
Mobile, Fax, Website, GSTIN, Remarks, Username, LoginBranch, SystEmentryDate ,
Errorstep, ErrorMessage, isValid, uploadId)
SELECT CustCode, CustName , ContactPerson , Branch , Address1 ,
Address2 , City , State, PinCode, Country, EmailID, Telephone,
Mobile, Fax, Website, GSTIN, Remarks, Username, LoginBranch,
SystEmentryDate , 'Verification', ErrorMessage, isValid, uploadId
FROM UT_CustomerMaster_Validation
WHERE isValid=0 and uploadId=@UploadId
-------------------------------------------------------------------
INSERT INTO UT_CustomerMaster_Verification( CustCode, CustName , ContactPerson , Branch , Address1 , Address2 ,
City , State, PinCode, Country, EmailID, Telephone, Mobile,
Fax, Website, GSTIN, Remarks, Username, LoginBranch, SystEmentryDate, uploadId )
SELECT CustCode, CustName , ContactPerson , Branch , Address1 , Address2 ,
City , State, PinCode, Country, EmailID, Telephone, Mobile,
Fax, Website, GSTIN, Remarks, Username, LoginBranch, SystEmentryDate , uploadId
FROM UT_CustomerMaster_Validation
WHERE isValid=1 and uploadId=@UploadId
-------------------------------------------------------------------
 -----------------------------------------------------------------------------
 --DELETE FROM UT_EmployeeMaster_Validation where IsValid=0 and 
 -- UploadId=@UploadId
 ---------------------------------------------------------------------------             
 ------------------------------------------------------------------------
 INSERT INTO UT_UploadMaster(VerificationEndDate,VerificationEndTime)
SELECT GETDATE(),CURRENT_TIMESTAMP
 ----------------------------------------------------------------------- 
   COMMIT
 END TRY
 BEGIN CATCH
 
 SET @ErrorMessage= 'ERROR IN :'+ ERROR_MESSAGE() + ' ERROR Line : '+ ERROR_LINE()
 
PRINT @ErrorMessage
 
 ROLLBACK
 
 END CATCH
end
GO
/****** Object:  StoredProcedure [dbo].[CheckDuplicateItem]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CheckDuplicateItem]
-- CheckDuplicateItem 'dgsdfsfsdffd','RMLQ1140'
@ItemName varchar(100),
@ItemCode varchar(50)
as
Begin

if(@ItemCode='0')
BEGIN
Select top 1 1 from ItemMaster 
where ItemName =@ItemName

END
ELSE
BEGIN
Select top 1 1 from ItemMaster 
where ItemName =@ItemName AND ItemCode !=@ItemCode
END
End
GO
/****** Object:  StoredProcedure [dbo].[BindEmpSearch]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BindEmpSearch]
AS
BEGIN
	SELECT * FROM EmployMaster
END
GO
/****** Object:  StoredProcedure [dbo].[BindEmployee]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BindEmployee]
AS
BEGIN
SELECT EmpCode, FristName+' '+LastName AS EmpName FROM EmployMaster
END
GO
/****** Object:  StoredProcedure [dbo].[BindEmpCodeName]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BindEmpCodeName]
As
Begin
Select * from EmployMaster;
End;
GO
/****** Object:  StoredProcedure [dbo].[BindEmpCode]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[BindEmpCode]
As
Begin
Select * from EmployMaster;
End;
GO
/****** Object:  StoredProcedure [dbo].[BindDrpEmpName]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[BindDrpEmpName]
As
Begin
Select * From EmployMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindItemMaster1]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[BindItemMaster1]
As
Begin
Select ItemCode,ItemName from ItemMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindItemMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BindItemMaster]
AS
BEGIN
SELECT ItemCode, ItemName+' '+Material+' '+ItemType+' '+ItemSubType+' '+Color as ItemDescription FROM ItemMaster
END
GO
/****** Object:  StoredProcedure [dbo].[BindItemDetails]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BindItemDetails]
@Id int
As
Begin
Select * from ItemMaster where ID=@id
end;
GO
/****** Object:  StoredProcedure [dbo].[BindGridIndentDetails]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BindGridIndentDetails]
@ItemCode varchar(50)
AS
BEGIN
SELECT IM.Specification,IM.DrawingNo,UM.UnitId,UM.UnitName FROM ItemMaster IM 
INNER JOIN UnitMaster UM
ON IM.UnitId = UM.UnitId

 WHERE IM.ItemCode= @ItemCode

END
GO
/****** Object:  StoredProcedure [dbo].[BinDCustometerMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BinDCustometerMaster]
AS
BEGIN
SELECT * FROM CustomerMaster
END
GO
/****** Object:  StoredProcedure [dbo].[BindCustomer]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BindCustomer] 
AS
BEGIN
 
 SELECT CustCode,CustName FROM CustomerMaster
END
GO
/****** Object:  Table [dbo].[Admin_RoleAccessDetail]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin_RoleAccessDetail](
	[RoleAccessDetailId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[MasterMenuId] [int] NULL,
	[SubMasterMenuId] [int] NULL,
	[AddAccess] [bit] NULL,
	[UpdateAccess] [bit] NULL,
	[SearchAccess] [bit] NULL,
	[DeleteAccess] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleAccessDetailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[AutoGenItemCode]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[AutoGenItemCode](
 @CategoryId int,
 @SubCategoryId int
 )
 returns Varchar(50)
 as
  begin
  
  
Declare @CatName Varchar(50) =( select CategoryName 
From CategoryMaster where CategoryId = @CategoryId)
--PRINT @CatName
Declare @SubCatName Varchar(50) =( select SubCategoryName 
From SubCategoryMaster where SubCategoryId = @SubCategoryId and CategoryId=@CategoryId)
--PRINT @SubCatName

Declare @CatSubName Varchar(50) = @CatName+@SubCatName

--print @CatSubName

-------------------get last item code and get number from it -----
--1) How to get last item code record
--2) How to remove category and subgatery from item code
--3) Incr current item code number + 1


Declare @ExtMaxNum Varchar(50) = (SELECT SUBSTRING(ItemCode,5,LEN(ItemCode)) FROM  ItemMaster WHERE ID = 
(SELECT MAX(ID)  FROM ItemMaster))

--PRINT @ExtMaxNum  
Declare @NewMaxNum Varchar(50) = (select [dbo].[AutoGenNumber](@ExtMaxNum))
--PRINT @NewMaxNum

DECLARE @FinalItemCode varchar(100)= @CatSubName+@NewMaxNum
 
 --print @FinalItemCode
  
  return @FinalItemCode
  end
GO
/****** Object:  Table [dbo].[CustomerPOMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[CustomerPOMaster](
	[CustomerPOID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyCode] [varchar](50) NULL,
	[FinancialYearID] [int] NULL,
	[CustomerPONo] [varchar](50) NULL,
	[PODate] [datetime] NULL,
	[ScheduleNo] [varchar](50) NULL,
	[ScheduleDate] [datetime] NULL,
	[CustCode] [varchar](15) NULL,
	[CustName] [varchar](150) NULL,
	[IsPoOpen] [bit] NULL,
	[QuatationNo] [varchar](50) NULL,
	[Total] [decimal](20, 4) NULL,
	[VAT] [decimal](20, 4) NULL,
	[NetTotal] [decimal](20, 4) NULL,
	[Remark] [varchar](500) NULL,
	[RevisionNo] [int] NULL,
	[IsClosed] [bit] NULL,
	[ClosedReason] [varchar](250) NULL,
	[systemEntryDate] [datetime] NULL,
	[ExciseDuty] [decimal](20, 4) NULL,
	[ThirdPartyPONo] [varchar](50) NULL,
	[ThirdPartyPODate] [datetime] NULL,
	[CustomerLotNo] [varchar](100) NULL,
	[ThirdPartyLotNo] [varchar](100) NULL,
	[DeliveryName] [varchar](250) NULL,
	[DeliveryAddress] [varchar](250) NULL,
	[DeliveryECCNo] [varchar](250) NULL,
	[DeliveryCSTNo] [varchar](250) NULL,
	[DeliveryTINNo] [varchar](250) NULL,
	[DeliverySINo] [varchar](250) NULL,
	[Vatamt] [decimal](20, 4) NULL,
	[SubTot] [decimal](20, 4) NULL,
	[ShipmentAccount] [varchar](100) NULL,
	[Freight] [decimal](20, 4) NULL,
	[FreightRate] [decimal](20, 4) NULL,
	[FreightUnit] [varchar](max) NULL,
	[FreightAmount] [decimal](20, 4) NULL,
	[PackingAmount] [decimal](20, 4) NULL,
	[MAXCGSTRATE] [decimal](20, 4) NULL,
	[MAXSGSTRATE] [decimal](20, 4) NULL,
	[MAXIGSTRATE] [decimal](20, 4) NULL,
	[MAXCGSTAMT] [decimal](20, 4) NULL,
	[MAXSGSTAMT] [decimal](20, 4) NULL,
	[MAXIGSTAMT] [decimal](20, 4) NULL,
	[PackingRate] [decimal](20, 4) NULL,
	[PackingUOM] [varchar](max) NULL,
	[GStNetTotal] [decimal](20, 4) NULL,
	[FreightCGST] [decimal](20, 4) NULL,
	[FreightCGSTAmount] [decimal](20, 4) NULL,
	[FreightSGST] [decimal](20, 4) NULL,
	[FreightSGSTAmount] [decimal](18, 4) NULL,
	[FreightIGST] [decimal](20, 4) NULL,
	[FreightIGSTAmount] [decimal](20, 4) NULL,
	[FreightTotalGSTTax] [decimal](20, 4) NULL,
	[INSURANCERate] [decimal](20, 4) NULL,
	[INSURANCEUnit] [varchar](max) NULL,
	[INSURANCEAmount] [decimal](20, 4) NULL,
	[INSURANCECGST] [decimal](20, 4) NULL,
	[INSURANCECGSTAmount] [decimal](20, 4) NULL,
	[INSURANCESGST] [decimal](20, 4) NULL,
	[INSURANCESGSTAmount] [decimal](20, 4) NULL,
	[INSURANCEIGST] [decimal](20, 4) NULL,
	[INSURANCEIGSTAmount] [decimal](20, 4) NULL,
	[INSURANCETotalGSTTax] [decimal](20, 4) NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerPOID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[BindSupplierName]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BindSupplierName]
As
Begin
Select * from SupplierMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[BindSupplierCode]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[BindSupplierCode]
@Id int
As
begin
Select * from SupplierMaster where Id=@Id
End;
GO
/****** Object:  StoredProcedure [dbo].[BindSupplier]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BindSupplier]
AS
BEGIN
SELECT SuppCode,SuppName FROM SupplierMaster
END
GO
/****** Object:  StoredProcedure [dbo].[EmployeeMasterAllData]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EmployeeMasterAllData]
@EmpCode Varchar(MAX)
AS
BEGIN
if(@EmpCode ='0 ')
	BEGIN
		SELECT * FROM EmployMaster
	END
else
	BEGIN
		SELECT * FROM EmployMaster WHERE EmpCode=@EmpCode
	END
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmployeeDetails]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DeleteEmployeeDetails]
@EmpCode varchar(10)
As
Begin
delete from EmployMaster where EmpCode=@EmpCode
end
GO
/****** Object:  StoredProcedure [dbo].[Dashboard_ItemVsSupplierDtl]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Dashboard_ItemVsSupplierDtl]
    -- Dashboard_ItemVsSupplierDtl 
    AS
    BEGIN
    DECLARE @TotCount int =(
     select  Count(IM.ItemCode) AS NotOfItem  From ItemMaster IM
    INNER JOIN ItemVsSupplier IVS
    ON IM.ItemCode= IVS.ItemCode
    INNER JOIN SupplierMaster  SM
    ON SM.SuppCode = IVS.SuppCode   
   
    )
     select SM.SuppCode, SM.SuppName, Count(IM.ItemCode) AS NotOfItem,@TotCount As TotalCount   From ItemMaster IM
    INNER JOIN ItemVsSupplier IVS
    ON IM.ItemCode= IVS.ItemCode
    INNER JOIN SupplierMaster  SM
    ON SM.SuppCode = IVS.SuppCode   
    GROUP BY SM.SuppCode, SM.SuppName
    
    END
GO
/****** Object:  StoredProcedure [dbo].[DashBoard_ItemVsSupplier]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DashBoard_ItemVsSupplier]

AS

BEGIN

DECLARE @TotalCount int
IF OBJECT_ID('tempdb.dbo.#TempSupp') IS NOT NULL
DROP TABLE  #TempSupp

SELECT 
SM.SuppName, IVS.SuppCode, IVS.ItemCode
INTO #TempSupp
FROM ItemVsSupplier IVS
INNER JOIN ItemMaster IM
ON IVS.ItemCode=IM.ItemCode
INNER JOIN SupplierMaster SM
ON SM.SuppCode=IVS.SuppCode

SET @TotalCount=(SELECT COUNT(ItemCode) FROM #TempSupp)

SELECT
SuppName, SuppCode, COUNT(ItemCode) AS No_Of_Items,
@TotalCount AS TotalCount
FROM #TempSupp
GROUP BY SuppCode, SuppName

END
GO
/****** Object:  StoredProcedure [dbo].[DashBoard_ItemVsCustomer]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DashBoard_ItemVsCustomer] 

AS
BEGIN

DECLARE @TotCount int
IF OBJECT_ID('tempdb.dbo.#TempCust') IS NOT NULL 
DROP TABLE  #TempCust

SELECT
CM.CustName, IVC.CustCode, IVC.ItemCode
INTO #TempCust
FROM ItemVsCustomer IVC
INNER JOIN ItemMaster IM
ON IVC.ItemCode=IM.ItemCode
INNER JOIN CustomerMaster CM
ON IVC.CustCode=CM.CustCode
  
SET @TotCount=  (Select COUNT(ItemCode) from #TempCust) 

SELECT 
TC.CustName,TC.CustCode, COUNT(ItemCode) AS No_Of_Items,
 @TotCount as TotalCount
FROM #TempCust TC  
GROUP BY TC.CustCode, TC.CustName

  

 
 
END
GO
/****** Object:  StoredProcedure [dbo].[DashBoard_EmployeeDtl]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DashBoard_EmployeeDtl]

@EmpId INT=0,
@AllDtl VARCHAR(MAX),
@Dept VARCHAR(MAX) 

AS

BEGIN

 IF OBJECT_ID('tempdb.dbo.#TempEmp') IS NOT NULL 
 DROP TABLE  #TempEmp
 
SELECT  
 [ESrNo] ,[EmpCode] ,[Title] ,[FristName] ,[MiddleName] ,[LastName] 
 ,[ContactNo] ,[MobileNo] ,[EmailId] ,[DOB] ,EM.GID  ,[CTC] 
 ,[GrossAmount] ,[TempAddress] ,[DocumentName] ,[TrainingDetails] ,[PanNo]
 ,[ESICACCNO] ,[AutoMail] ,LeaveId,[AttendanceID] ,[EmpPhoto] ,[DateofJoin]
 ,QualificationId ,DesignationId ,CategoryId  ,ContractorId ,StaffId
 ,PayTypeId ,UnitId ,[AadharNo] ,[Balance] ,[PermanentAddress] ,[Asset] 
 ,[ApprasalHistory] ,[PFAccNo] ,[IsLeft] ,[LeftDate],
 BM.BloodGroup, GM.Gender, WM.WeekOff,MM.MaritalStatus,DM.dname,CM.CityName,SM.StateName,
CM1.CountryName 
INTO #TempEmp
FROM EmployMaster EM
INNER JOIN BloodGroupMaster BM
ON EM.BloodGroupID=BM.BID
INNER JOIN GenderMaster GM
ON em.GID=GM.GID
INNER JOIN WeekOffMaster WM
ON EM.WID=WM.WID
INNER JOIN MaritalStatusMaster MM
ON EM.MSID=MM.MSID
INNER JOIN DepartmentMaster DM
ON EM.did=DM.did
LEFT JOIN CityMaster CM
ON EM.CityId=CM.CityId
LEFT JOIN StateMaster SM
ON EM.StateId = SM.StateId
LEFT JOIN CountryMaster CM1
ON EM.CountryId=CM1.CountryId

IF(@EmpId!=0)
BEGIN
SELECT * FROM #TempEmp TM WHERE TM.ESrNo=@EmpId
END

IF(@AllDtl!='')
BEGIN
SELECT * FROM #TempEmp
END

IF(@Dept!='')
BEGIN
SELECT * FROM #TempEmp TM ORDER BY TM.dname
END

DROP TABLE #TempEmp

END
GO
/****** Object:  StoredProcedure [dbo].[Dash_ItemVsSupplydtl]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Dash_ItemVsSupplydtl]

as
begin
set NOCOUNT ON

IF OBJECT_ID('tempdb.dbo.#TempSUP') IS NOT NULL 
DROP TABLE  #TempSUP


select im.ItemCode,SM.SuppCode,SM.SuppName INTO #TempSUP from  ItemMaster IM 
inner join ItemVsSupplier ITS on 
IM.ItemCode=ITS.ItemCode 
inner join SupplierMaster SM on 
SM.SuppCode=ITS.SuppCode 

DECLARE @Total int = (select Count(ItemCode) from #TempSUP)

select  suppCode, SuppName, Count( ItemCode) As NoOfITEM, @Total as TotalCount from  
 #TempSUP
  GROUP BY  SuppCode, SuppName



SET NOCOUNT OFF
end
GO
/****** Object:  StoredProcedure [dbo].[GetPaymentTermInfo]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[GetPaymentTermInfo]
@Flag int
AS
Begin
   
  if(@Flag=1)
  begin
			select InvoiceNO,InvoiceDate,PaymentTerm
			,(select CustName from CustomerMaster where CustCode=TaxInvoiceMaster.CustomerCode) as CustName
			,Convert(varchar(MAX),DateADD(day,ISNULL(Convert(Numeric(18),PaymentTerm),0),InvoiceDate),103) as DueDate
			,DATEDIFF(Day,GETDATE(),DateADD(day,ISNULL(Convert(Numeric(18),PaymentTerm),0),InvoiceDate)) as DueInDays
			,Round(GrandTotal,0) as GrandTotal
			from TaxInvoiceMaster
			Where POClose =0  
			AND DATEDIFF(Day,GETDATE(),DateADD(day,ISNULL(Convert(Numeric(18),PaymentTerm),0),InvoiceDate))>=0
  END
  Else
  Begin
			select InvoiceNO,InvoiceDate,PaymentTerm
			,(select CustName from CustomerMaster where CustCode=TaxInvoiceMaster.CustomerCode) as CustName
			,Convert(varchar(MAX),DateADD(day,ISNULL(Convert(Numeric(18),PaymentTerm),0),InvoiceDate),103) as DueDate
			,DATEDIFF(Day,GETDATE(),DateADD(day,ISNULL(Convert(Numeric(18),PaymentTerm),0),InvoiceDate)) as DueInDays
			,Round(GrandTotal,0) as GrandTotal
			from TaxInvoiceMaster
			Where POClose =0  
			And DATEDIFF(Day,GETDATE(),DateADD(day,ISNULL(Convert(Numeric(18),PaymentTerm),0),InvoiceDate))<0
  
  END

END
GO
/****** Object:  StoredProcedure [dbo].[InsertCustomerMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertCustomerMaster]
@Id	int	,
@CustCode	varchar(MAX)	,
--@CustName	varchar(MAX)	,
@ContactPerson	varchar(MAX)	,
@Branch	varchar(MAX)	,
@Address1	varchar(MAX)	,
@Address2	varchar(MAX)	,
@City	varchar(MAX)	,
@State	varchar(MAX)	,
@PinCode	numeric(6, 0)	,
@Country	varchar(MAX)	,
@EmailID	varchar(MAX)	,
@Telephone	numeric(18, 0)	,
@Mobile	numeric(10, 0)	,
@Fax	varchar(MAX)	,
@Website	varchar(MAX)	,
@GSTIN	varchar(MAX)	,
@Remarks	varchar(MAX),	
@Action varchar(max),
@username varchar(max),
@LoginBranch varchar(max),
@systemEntryDate datetime
as
begin 
if @Action='0'
begin
insert into CustomerMaster
( 

CustCode,
--CustName,
ContactPerson,
Branch,
Address1,
Address2,
City,
State,
PinCode,
Country,
EmailID,
Telephone,
Mobile,
Fax,
Website,
GSTIN,
Remarks,
Username,
LoginBranch,
SystEmentryDate

)
values
(

@CustCode,
--@CustName,
@ContactPerson,
@Branch,
@Address1,
@Address2,
@City,
@State,
@PinCode,
@Country,
@EmailID,
@Telephone,
@Mobile,
@Fax,
@Website,
@GSTIN,
@Remarks,
@username,
@LoginBranch,
GETDATE()
)
end
if @Action='1'
begin
 update CustomerMaster set
--CustName=@CustName,
ContactPerson=@ContactPerson,
Branch=@Branch,
Address1=@Address1,
Address2=@Address2,
City=@City,
State=@State,
PinCode=@PinCode,
Country=@Country,
EmailID=@EmailID,
Telephone=@Telephone,
Mobile=@Mobile,
Fax=Fax,
Website=@Website,
GSTIN=@GSTIN,
Remarks=@Remarks,
Username=@username,
LoginBranch=@LoginBranch,
SystEmentryDate=GETDATE()
where CustCode=@CustCode

end
end
GO
/****** Object:  StoredProcedure [dbo].[InsertCustomer]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertCustomer]
@CustCode	varchar(MAX)	,
@ContactPerson	varchar(MAX)	,
@Branch	varchar(MAX)	,
@Address1	varchar(MAX)	,
@Address2	varchar(MAX)	,
@City	varchar(MAX)	,
@State	varchar(MAX)	,
@PinCode	numeric(6, 0)	,
@Country	varchar(MAX)	,
@EmailID	varchar(MAX)	,
@Telephone	numeric(18, 0)	,
@Mobile	numeric(10, 0)	,
@Fax	varchar(MAX)	,
@Website	varchar(MAX)	,
@GSTIN	varchar(MAX)	,
@Remarks	varchar(MAX),	
@username varchar(max),
@LoginBranch varchar(max),
@systemEntryDate datetime
as
begin
insert into CustomerMaster
( 

CustCode,
ContactPerson,
Branch,
Address1,
Address2,
City,
State,
PinCode,
Country,
EmailID,
Telephone,
Mobile,
Fax,
Website,
GSTIN,
Remarks,
Username,
LoginBranch,
SystEmentryDate

)
values
(

@CustCode,
@ContactPerson,
@Branch,
@Address1,
@Address2,
@City,
@State,
@PinCode,
@Country,
@EmailID,
@Telephone,
@Mobile,
@Fax,
@Website,
@GSTIN,
@Remarks,
@username,
@LoginBranch,
GETDATE()
)
end
GO
/****** Object:  StoredProcedure [dbo].[GetSupplierMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[GetSupplierMaster]
@Suppcode varchar(max)
As
begin 
select * from SupplierMaster 
end
GO
/****** Object:  StoredProcedure [dbo].[GetMenuDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetMenuDetails]
-- GetMenuDetails
as
begin

Select * 
 from MasterMenu MM
INNER JOIN SubMasterMenu SMM
ON MM.MasterMenuId= SMM.MasterMenuId

end
GO
/****** Object:  StoredProcedure [dbo].[GetMaxSuppNumber]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetMaxSuppNumber]
	as
	begin
	
	Select TOP 1  ID, SuppCode, SUBSTRING(SuppCode,5,6) as SuppCode2 from SupplierMaster
	order by ID desc
	
	end
GO
/****** Object:  StoredProcedure [dbo].[GetMaxItemNumber]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[GetMaxItemNumber]
@RawMaterial Varchar(MAX)

AS

Begin

if(@RawMaterial=0)
Begin
	Select Top 1 ItemCode, SUBSTRING(ItemCode,3,5) as ItemCode2 from ItemMaster
	where RawMaterial=0
	order by ID desc
END
Else
Begin
	Select Top 1 ItemCode, SUBSTRING(ItemCode,5,9) as ItemCode2 from ItemMaster
	where RawMaterial=1
	order by ID desc
END
END
GO
/****** Object:  StoredProcedure [dbo].[GetMaxCustNumber]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetMaxCustNumber]
	as
	begin
	
	Select TOP 1 ID, CustCode, SUBSTRING(CustCode,5,6) as CustCode2 from CustomerMaster
	
	order by ID desc
	
	end
GO
/****** Object:  StoredProcedure [dbo].[GetLoginDetails]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetLoginDetails]
-- [dbo].[GetLoginDetails] 'SM','SM'
@UserName varchar(MAX),
@password varchar(MAX)
as
begin
select BM.BranchName,EM.EmpCode, * from  Admin_LoginUserMaster lg
INNER JOIN BranchMaster BM
ON lg.BranchId= BM.BranchId
INNER JOIN EmployMaster EM
ON EM.ESrNo= lg.EmployeeId
  
where UserName=@UserName and Password=@password and lg.IsActive='1'
end
GO
/****** Object:  StoredProcedure [dbo].[GetDemoItem]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetDemoItem]
@ItemCode varchar(100)=null
as
begin
if(@ItemCode is null)
BEGIN
select ItemCode,ItemName From ItemMaster  

END
select ItemCode,ItemName, mm.ManufacturerName ,IM.Material From 
ItemMaster  IM
INNER JOIN ManufacturerMaster MM
ON IM.ManufacturerId= MM.ManufacturerId
where ItemCode=@ItemCode

end
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerState]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetCustomerState]
As
Begin
Select id,state from CustomerMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[GetCustomerMaster]
@CustCode varchar(max)
--@Flag int
as
begin
--if @Flag=1
--begin 
--select * from CustomerMaster 
--end
--if @Flag=2
--begin 
select * from CustomerMaster where custcode=@CustCode
--end
end
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerIdName]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetCustomerIdName]
As
Begin
Select Id,CustName from CustomerMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerbyId]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetCustomerbyId]
@Id int
AS
Begin
Select * from CustomerMaster where Id=@Id
end;
GO
/****** Object:  UserDefinedFunction [dbo].[GetAutoEmpCode]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[GetAutoEmpCode](@FirstName varchar(100),@LastName varchar (100))returns varchar(100)asbegin-----------------------------------------------------------------------------------------------------------------------declare @FName varchar(max) = (select ( SUBSTRING ( @FirstName,1,1)))                        declare @LName varchar(max)=(select ( SUBSTRING ( @LastName,1,1)) )------------------------------------------------------------------------------------------------------------------------DECLARE @EmpCode varchar(50) = (select EmpCode From EmployMaster where ESrNo=(select MAX(EsrNo)from EmployMaster))DECLARE @LastEmpNum varchar(50) = ((select SUBSTRING (@EmpCode,5,LEN(@EmpCode)))+1)DECLARE @FinalNumber varchar(50) = (  select dbo.FourDigitAutoGenNumber(@LastEmpNum)) return ('SM'+@FName+@LName+@FinalNumber) end
GO
/****** Object:  StoredProcedure [dbo].[GetItemMasterNameBind]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetItemMasterNameBind]
As
Begin
Select ID,ItemName from ItemMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[GetItemMasterItemCode]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetItemMasterItemCode]
As 
Begin
Select ID,ItemName,ItemCode from ItemMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[GetItemMasterInfo1]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetItemMasterInfo1]
As 
Begin
Select ID,ItemCode from ItemMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[GetItemMasterDetails]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[GetItemMasterDetails]
@CmpCode varchar(MAX),
@ItemName varchar(MAX),
@ItemType Varchar(MAX),
@ItemSubType VArchar(MAX),
@Flag int

AS
Begin

if(@Flag=1)
Begin
	Select distinct ItemName from ItemMaster
	Order by ItemName

END
Else IF(@Flag=2)
Begin
	if(@ItemName<>'' AND @ItemType='' AND @ItemSubType='')
	Begin
		Select * from ItemMaster
		where ItemName=@ItemName
		--AND Cmp_Code=@CmpCode
		Order by ItemCode 
	END
	else if(@ItemName<>'' AND @ItemType<>'' AND @ItemSubType='')
	Begin
		Select * from ItemMaster
		where  ItemName=@ItemName
		AND ItemType=@ItemType
		--AND Cmp_Code=@CmpCode
		Order by ItemCode 
	END
	else if(@ItemName<>'' AND @ItemType<>'' AND @ItemSubType<>'')
	Begin
		Select * from ItemMaster
		where ItemName=@ItemName
		AND ItemType=@ItemType
		AND ItemSubType=@ItemSubType
		--AND Cmp_Code=@CmpCode
		Order by ItemCode 
	END
	Else 
	Begin
		Select * from ItemMaster
		Order by ItemCode 
	END
	
END

END
GO
/****** Object:  StoredProcedure [dbo].[GetItemMasterByItemCode]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[GetItemMasterByItemCode]
@ItemCode varchar(255)
As
Begin
Select * from ItemMaster where ItemCode=@ItemCode
End;
GO
/****** Object:  StoredProcedure [dbo].[GetItemMasterByIDItemCode]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetItemMasterByIDItemCode]
@ID int,
@ItemCode varchar(255)
As
Begin
Select * from ItemMaster where ID=@ID AND ItemCode=@ItemCode
End;
GO
/****** Object:  StoredProcedure [dbo].[GetItemMasterbyId]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetItemMasterbyId]
@ID int
AS
Begin
Select top 100 * from ItemMaster where ID=@ID 
End;
GO
/****** Object:  StoredProcedure [dbo].[GetItemMasterAllData]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetItemMasterAllData]
AS
BEGIN
SELECT * FROM ItemMaster
END
GO
/****** Object:  StoredProcedure [dbo].[getindent]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getindent] --'PMRSMP0001'
@IndentNumber varchar(100)
as
begin
if (@IndentNumber ='0')
begin
select im.IndentId, indentdetailid,indentnoautogen, indentno, indenttypeid,
IndentTime,indentdate,Note,Remark, CreatedBy, ApprovedBy, ApprovedDate, ApprovedTime, StoredApproved,
purchaseOrService, im.ItemType, ShortClose, ShortCloseReson, im.UserName, im.IPAddress,
im.systemEntryDate,im.CmpId, FinancialYearId
,idm.itemcode,itm.ItemName,itm.ItemType,itm.ItemSubType,mmm.ManufacturerName,
itm.Material,itm.PurchaseCost,itm.RawMaterial,itm.SellingPrice,itm.Color,itm.GSTRate,itm.HSNCODE,[description],
itm.specification, itm.drawingno, purpose, currentstock, requireddate,toorderquantity, 
toorderunit, conversionquantity, conversionunit, length, grade, [weight],rate,amount,
make, isapproved,approvedquantity, rejectedqty, idm.departmentid, dpm.dname,
idm.SuppCode, sm.suppname, sm.ContactPerson, sm.contactperson, sm.branch, sm.Address1,
sm.Address2, sm.City,sm.[State], sm.PinCode, sm.Country, sm.Mobile,sm.Telephone,
sm.Website, sm.EmailID,sm.Fax,sm.GSTIN from IndentDetailMaster idm
inner join IndentMaster im
on im.IndentId=idm.IndentId
inner join itemmaster itm
on itm.ItemCode=idm.ItemCode
inner join DepartmentMaster dpm
on dpm.did=idm.DepartmentId
inner join suppliermaster sm
on sm.suppcode=idm.suppcode
INNER JOIN ManufacturerMaster mmm
on mmm.ManufacturerId= mmm.ManufacturerId
end

else
begin
select im.IndentId, indentdetailid,indentnoautogen, indentno, indenttypeid,
IndentTime,indentdate,Note,Remark, CreatedBy, ApprovedBy, ApprovedDate, ApprovedTime, StoredApproved,
purchaseOrService, im.ItemType, ShortClose, ShortCloseReson, im.UserName, im.IPAddress,
im.systemEntryDate,im.CmpId, FinancialYearId
,idm.itemcode,itm.ItemName,itm.ItemType,itm.ItemSubType,mmm.ManufacturerName ,
itm.Material,itm.PurchaseCost,itm.RawMaterial,itm.SellingPrice,itm.Color,itm.GSTRate,itm.HSNCODE,[description],
itm.specification, itm.drawingno, purpose, currentstock, requireddate,toorderquantity, 
toorderunit, conversionquantity, conversionunit, length, grade, [weight],rate,amount,
make, isapproved,approvedquantity, rejectedqty, idm.departmentid, dpm.dname,
idm.SuppCode, sm.suppname, sm.ContactPerson, sm.contactperson, sm.branch, sm.Address1,
sm.Address2, sm.City,sm.[State], sm.PinCode, sm.Country, sm.Mobile,sm.Telephone,
sm.Website, sm.EmailID,sm.Fax,sm.GSTIN from IndentDetailMaster idm
inner join IndentMaster im
on im.IndentId=idm.IndentId
inner join itemmaster itm
on itm.ItemCode=idm.ItemCode
inner join DepartmentMaster dpm
on dpm.did=idm.DepartmentId
inner join suppliermaster sm
on sm.suppcode=idm.suppcode
INNER JOIN ManufacturerMaster mmm
on mmm.ManufacturerId= mmm.ManufacturerId
where im.IndentNoAutoGen=@IndentNumber
end
end
GO
/****** Object:  UserDefinedFunction [dbo].[GetAutoGenIteCode]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[GetAutoGenIteCode]
(
@Categoryid int,
@SubCategoryid int 
)
Returns Varchar(100)
AS

Begin
  
  declare @CategoryName varchar(10)=(Select CategoryName from CategoryMaster where CategoryId=@Categoryid)
  declare @SubCategoryName varchar(10)=(Select SubCategoryName from SubCategoryMaster where CategoryId=@Categoryid and SubCategoryId=@SubCategoryid)
  declare @MaxId int=(select MAX(ID) from ItemMaster)
  set @MaxId+=1
  Return @CategoryName + @SubCategoryName + convert(varchar,@MaxId)  
  
  
END
GO
/****** Object:  StoredProcedure [dbo].[FillItemMasterJQuery]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[FillItemMasterJQuery]
AS

Begin

	--Select ItemCode, ItemName +' ' + Material +' ' + ItemType +' ' + ItemSubType+' ' + Color as ItemName from ItemMaster
	
	Select top 100   ItemCode, ItemName +' ' + ISNULL(Material,'') +' ' + ISNULL(Color,'') as ItemName from ItemMaster
 
END
GO
/****** Object:  StoredProcedure [dbo].[FillItemMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[FillItemMaster]

AS

Begin

	--Select ItemCode, ItemName +' ' + Material +' ' + ItemType +' ' + ItemSubType+' ' + Color as ItemName from ItemMaster
	
	Select    ItemCode, ItemName +' ' + ISNULL(Material,'') +' ' + ISNULL(Color,'') as ItemName from ItemMaster
 
END
GO
/****** Object:  StoredProcedure [dbo].[FillIndentMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FillIndentMaster]
--[FillIndentMaster] 33
@IndentId int
AS
BEGIN
SELECT IDM.ItemCode, IDM.[Description], IDM.Specification, IDM.DrawingNo, IDM.Purpose, IDM.CurrentStock,
 IDM.RequiredDate, idm.ToOrderQuantity,
 IIM.IndentTypeId,
idm.ToOrderUnit, dm.dname, dm.did AS DepartmentId, IM.DrawingNo, IIM.IndentDate,IIM.IndentNoAutoGen,
IIM.CreatedBy, IIM.IndentTime, IIM.Remark  as IndentRemark 
FROM IndentDetailMaster IDM
INNER JOIN IndentMaster IIM
ON IIM.IndentId= IDM.IndentId
INNER JOIN DepartmentMaster DM
ON IDM.DepartmentId = DM.did
INNER JOIN ItemMaster IM
ON IM.ItemCode = IDM.ItemCode
WHERE IIM.IndentId=@IndentId
END
GO
/****** Object:  StoredProcedure [dbo].[FillEmployeeDetails]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[FillEmployeeDetails]
@EmpCode varchar(max)
as
begin
select * from EmployMaster where EmpCode=@EmpCode
end
GO
/****** Object:  StoredProcedure [dbo].[GetALLItems]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetALLItems]
As
Begin 
Select ID,ItemCode,ItemName,RawMaterial,CategoryId,SubCategoryId,ManufacturerId,Material,ItemType,ItemSubType,Color,Uom,HSNCODE,GSTRate,PurchaseCost,SellingPrice from ItemMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[GetAllItemMasterJQuery]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[GetAllItemMasterJQuery]
AS

Begin

	 
	Select top 10  * from ItemMaster order by ID Desc
 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllCustomerInfo]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[GetAllCustomerInfo]
As
Begin 

Select CustCode, CustName, Address2, City, State From CustomerMaster

End
GO
/****** Object:  UserDefinedFunction [dbo].[GeneCustCode]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  Function [dbo].[GeneCustCode]
  (
  @CustTypeId int,
  @CustName varchar(50)
  )
  Returns varchar(50)
  As
  Begin

Declare @Cti varchar(50) = (Select 'C' + Substring(Upper(CustomerType), 1,2)
from  CustomerTypeMaster where CustomerTypeId = @CustTypeId)



Declare @val varchar(50);
select @val = Coalesce(@val + Substring(value,1,1),Substring(value,1,1))
from dbo.SplitString (@CustName ,' ')


Declare @MaxCode varchar (10) = (Select Substring(CustCode,5,LEN(CustCode)) from CustomerMaster WHERE Id
=(select MAX(Id) From CustomerMaster))


If(@MaxCode<=9)
Begin
Set @MaxCode = '000' + Convert(varchar, @MaxCode+1)
End
Else If(@MaxCode>= 10 AND @MaxCode<= 99)
Begin
Set @MaxCode = '00' + Convert(varchar, @MaxCode+1)
End
Else If(@MaxCode>= 100 AND @MaxCode<= 999)
Begin
Set @MaxCode = '0' + Convert(varchar, @MaxCode+1)  
End
Else If(@MaxCode>= 1000 AND @MaxCode<= 9999)
Begin
Set @MaxCode = Convert(varchar, @MaxCode+1)
        End    
         Return @cti + @val + Convert(Varchar (50),@MaxCode)
  End
  
  
  
  
   --select dbo.GeneCustCode (1,'Teju Suresh Thakare')
GO
/****** Object:  View [dbo].[ItemDetails_View]    Script Date: 04/08/2023 08:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIew [dbo].[ItemDetails_View] 
AS
select ItemCode,ItemName,ManufacturerName, CM.ColourName From ItemMaster IM
INNER JOIN ManufacturerMaster MM
ON MM.ManufacturerId=IM.ManufacturerId
INNER JOIN ColourMaster CM
ON CM.ColourId= IM.ColourId
INNER JOIN UnitMaster UM
ON um.UnitId = IM.UnitId
GO
/****** Object:  StoredProcedure [dbo].[InsertSupplierMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertSupplierMaster]
@Id	int	,
@SuppCode	varchar(MAX)	,
@SuppName	varchar(MAX)	,
@ContactPerson	varchar(MAX)	,
@Branch	varchar(MAX)	,
@Address1	varchar(MAX)	,
@Address2	varchar(MAX)	,
@City	varchar(MAX)	,
@State	varchar(MAX)	,
@PinCode	numeric(6, 0)	,
@Country	varchar(MAX)	,
@EmailID	varchar(MAX)	,
@Telephone	numeric(18, 0)	,
@Mobile	numeric(10, 0)	,
@Fax	varchar(MAX)	,
@Website	varchar(MAX)	,
@GSTIN	varchar(MAX)	,
@Remarks	varchar(MAX),	
@Action varchar(max),
@Username varchar(max),
@LoginBranch varchar(max),
@SystemEntryDate datetime

as
begin 
if @Action='0'
begin
insert into SupplierMaster
( 

SuppCode,
SuppName,
ContactPerson,
Branch,
Address1,
Address2,
City,
State,
PinCode,
Country,
EmailID,
Telephone,
Mobile,
Fax,
Website,
GSTIN,
Remarks,
Username,
LoginBranch,
SystEmentryDate

)
values
(

@SuppCode,
@SuppName,
@ContactPerson,
@Branch,
@Address1,
@Address2,
@City,
@State,
@PinCode,
@Country,
@EmailID,
@Telephone,
@Mobile,
@Fax,
@Website,
@GSTIN,
@Remarks,
@Username,
@LoginBranch,
GETDATE()
)
end
if @Action='1'
begin
 update SupplierMaster set
SuppName=@SuppName,
ContactPerson=@ContactPerson,
Branch=@Branch,
Address1=@Address1,
Address2=@Address2,
City=@City,
State=@State,
PinCode=@PinCode,
Country=@Country,
EmailID=@EmailID,
Telephone=@Telephone,
Mobile=@Mobile,
Fax=Fax,
Website=@Website,
GSTIN=@GSTIN,
Remarks=@Remarks,
Username=@Username,
LoginBranch=@LoginBranch,
SystEmentryDate=GETDATE()

where SuppCode=@SuppCode

end
end
GO
/****** Object:  StoredProcedure [dbo].[InsertSupplieraster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertSupplieraster]
@Id	int	,
@SuppCode	varchar(MAX)	,
@SuppName	varchar(MAX)	,
@ContactPerson	varchar(MAX)	,
@Branch	varchar(MAX)	,
@Address1	varchar(MAX)	,
@Address2	varchar(MAX)	,
@City	varchar(MAX)	,
@State	varchar(MAX)	,
@PinCode	numeric(6, 0)	,
@Country	varchar(MAX)	,
@EmailID	varchar(MAX)	,
@Telephone	numeric(18, 0)	,
@Mobile	numeric(10, 0)	,
@Fax	varchar(MAX)	,
@Website	varchar(MAX)	,
@GSTIN	varchar(MAX)	,
@Remarks	varchar(MAX),	
@Action varchar(max)
as
begin 
if @Action='0'
begin
insert into SupplierMaster
( 

SuppCode,
SuppName,
ContactPerson,
Branch,
Address1,
Address2,
City,
State,
PinCode,
Country,
EmailID,
Telephone,
Mobile,
Fax,
Website,
GSTIN,
Remarks
)
values
(

@SuppCode,
@SuppName,
@ContactPerson,
@Branch,
@Address1,
@Address2,
@City,
@State,
@PinCode,
@Country,
@EmailID,
@Telephone,
@Mobile,
@Fax,
@Website,
@GSTIN,
@Remarks
)
end
if @Action='1'
begin
 update SupplierMaster set
SuppName=@SuppName,
ContactPerson=@ContactPerson,
Branch=@Branch,
Address1=@Address1,
Address2=@Address2,
City=@City,
State=@State,
PinCode=@PinCode,
Country=@Country,
EmailID=@EmailID,
Telephone=@Telephone,
Mobile=@Mobile,
Fax=Fax,
Website=@Website,
GSTIN=@GSTIN,
Remarks=@Remarks
where SuppCode=@SuppCode

end
end
GO
/****** Object:  StoredProcedure [dbo].[InsertEmployeeData1]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[InsertEmployeeData1]
@EmpCode varchar(max),
@Title varchar(MAX),
@FristName varchar(max),
@MiddleName varchar(max),
@LastName varchar(max),
@ContactNo varchar(MAX),
@MobileNo varchar(max),
@EmailId Varchar(max),
@DOB date,
@GenderID int,
@BloodGroupID int,
@MaritalStatusID int,
@CTC int,
@GrossAmount int,
@TempAddress varchar(max),
@DocumentName varchar(max),
@TrainingDetails varchar(max),
@PanNo varchar(max),
@ESICACCNO varchar(max),
@AutoMail varchar(max),
@LeaveRule int,
@AttendanceID int,
@EmpPhoto varchar(max),
@DateofJoin date,
@Qualification int,
@Designation int,
@DepartmentID int,
@Category int,
@WeekOffID int,
@Contractor int,
@TypeofStaff int,
@PayType int,
@Unit int,
@AadharNo int,
@Balance int,
@PermanentAddress varchar(max),
@Asset varchar(max),
@ApprasalHistory varchar(max),
@PFAccNo varchar(max),
@IsLeft varchar(max),
@LeftDate date,
@LoginUserId int
AS
BEGIN
Insert into EmployMaster(
EmpCode,
Title ,
FristName,
MiddleName,
LastName,
ContactNo,
MobileNo ,
EmailId ,
DOB ,
GID,
BloodGroupID,
MSID,
CTC ,
GrossAmount ,
TempAddress,
DocumentName ,
TrainingDetails ,
PanNo ,
ESICACCNO ,
AutoMail ,
LeaveId,
AttendanceID ,
EmpPhoto ,
DateofJoin ,
QualificationId,
DesignationId,
did,
CategoryId,
WID,
ContractorId,
StaffId,
PayTypeId,
UnitId,
AadharNo ,
Balance ,
PermanentAddress ,
Asset ,
ApprasalHistory ,
PFAccNo ,
IsLeft ,
LeftDate,
LoginUserId
) 
values
(
@EmpCode,
@Title ,
@FristName ,
@MiddleName ,
@LastName ,
@ContactNo ,
@MobileNo ,
@EmailId ,
@DOB ,
@GenderID ,
@BloodGroupID ,
@MaritalStatusID ,
@CTC ,
@GrossAmount ,
@TempAddress,
@DocumentName ,
@TrainingDetails ,
@PanNo ,
@ESICACCNO ,
@AutoMail ,
@LeaveRule ,
@AttendanceID ,
@EmpPhoto ,
@DateofJoin ,
@Qualification ,
@Designation ,
@DepartmentID ,
@Category ,
@WeekOffID ,
@Contractor ,
@TypeofStaff ,
@PayType ,
@Unit ,
@AadharNo ,
@Balance ,
@PermanentAddress ,
@Asset ,
@ApprasalHistory ,
@PFAccNo ,
@IsLeft ,
@LeftDate,
@LoginUserId)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertEmployeeData]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertEmployeeData]
@EmpCode varchar(max),
@Title Varchar(MAX),
@FristName varchar(max),
@MiddleName varchar(max),
@LastName varchar(max),
@ContactNo varchar(MAX),
@MobileNo varchar(max),
@EmailId Varchar(max),
@DOB date,
@GenderID int,
@BloodGroupID int,
@MaritalStatusID int,
@CTC int,
@GrossAmount int,
@TempAddress varchar(max),
@DocumentName varchar(max),
@TrainingDetails varchar(max),
@PanNo varchar(max),
@ESICACCNO varchar(max),
@AutoMail varchar(max),
@LeaveRule int,
@AttendanceID int,
@EmpPhoto varchar(max),
@DateofJoin date,
@Qualification int,
@Designation int,
@DepartmentID int,
@Category int,
@WeekOffID int,
@Contractor int,
@TypeofStaff int,
@PayType int,
@Unit int,
@AadharNo int,
@Balance int,
@PermanentAddress varchar(max),
@Asset varchar(max),
@ApprasalHistory varchar(max),
@PFAccNo varchar(max),
@IsLeft varchar(max),
@LeftDate date

AS
BEGIN
Insert into EmployMaster(
EmpCode,
Title ,
FristName,
MiddleName,
LastName,
ContactNo,
MobileNo ,
EmailId ,
DOB ,
GID,
BloodGroupID,
MSID,
CTC ,
GrossAmount ,
TempAddress,
DocumentName ,
TrainingDetails ,
PanNo ,
ESICACCNO ,
AutoMail ,
LeaveId,
AttendanceID ,
EmpPhoto ,
DateofJoin ,
QualificationId,
DesignationId,
did,
CategoryId,
WID,
ContractorId,
StaffId,
PayTypeId,
UnitId,
AadharNo ,
Balance ,
PermanentAddress ,
Asset ,
ApprasalHistory ,
PFAccNo ,
IsLeft ,
LeftDate

) 
values
(
@EmpCode,
@Title ,
@FristName ,
@MiddleName ,
@LastName ,
@ContactNo ,
@MobileNo ,
@EmailId ,
@DOB ,
@GenderID ,
@BloodGroupID ,
@MaritalStatusID ,
@CTC ,
@GrossAmount ,
@TempAddress,
@DocumentName ,
@TrainingDetails ,
@PanNo ,
@ESICACCNO ,
@AutoMail ,
@LeaveRule ,
@AttendanceID ,
@EmpPhoto ,
@DateofJoin ,
@Qualification ,
@Designation ,
@DepartmentID ,
@Category ,
@WeekOffID ,
@Contractor ,
@TypeofStaff ,
@PayType ,
@Unit ,
@AadharNo ,
@Balance ,
@PermanentAddress ,
@Asset ,
@ApprasalHistory ,
@PFAccNo ,
@IsLeft ,
@LeftDate
)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertIndentDetailMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[InsertIndentDetailMaster]
@IndentId int,
@ItemCode varchar(max),
@ItemName varchar(max),
@Specification varchar(max),
@DrawingNo varchar(max),
@DepartmentId int,
@Purpose varchar(max),
@CurrentStock decimal(10,2),
@RequiredDate varchar(50),
@RequiredQuantity decimal(10,2),
@RequiredQuantityUnit varchar(15)
--@IsApporved bit
as
Begin
Insert into IndentDetailMaster
(IndentId,
ItemCode,
[Description],
Specification,
DrawingNo,
DepartmentId,
Purpose,
CurrentStock,
RequiredDate,
ToOrderQuantity,
ToOrderUnit
--IsApproved
)
values
(@IndentId,
@ItemCode,
@ItemName,
@Specification,
@DrawingNo,
@DepartmentId,
@Purpose,
@CurrentStock,
@RequiredDate,
@RequiredQuantity,
@RequiredQuantityUnit
--@IsApporved
)
end
GO
/****** Object:  StoredProcedure [dbo].[Marketing_BindItemName]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Marketing_BindItemName]
As
Begin 
Select ID,ItemName from ItemMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[Marketing_BindItemInfo]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Marketing_BindItemInfo]
@ItemCode varchar(50)
AS
BEGIN
SELECT UM.UnitName, UM.UnitId FROM ItemMaster IM 
INNER JOIN UnitMaster UM
ON IM.UnitId = UM.UnitId

WHERE IM.ItemCode= @ItemCode

END
GO
/****** Object:  StoredProcedure [dbo].[Marketing_BindItemDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Marketing_BindItemDetails]
@ItemCode VARCHAR(100)
AS
BEGIN 
SELECT 
UM.UnitName,UM.UnitId
FROM CustomerMaster CM INNER JOIN ItemMaster IM
ON CM.Id = IM.ID
INNER JOIN UnitMaster UM
ON IM.UnitId=UM.UnitId
WHERE IM.ItemCode = @ItemCode
END
GO
/****** Object:  StoredProcedure [dbo].[Marketing_BindItemCode]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Marketing_BindItemCode]
As
Begin
Select ID,ItemCode from ItemMaster
End;
GO
/****** Object:  Table [dbo].[Marketing_CustomerPOMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marketing_CustomerPOMaster](
	[CustomerPOId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerCode] [varchar](max) NULL,
	[CustomerName] [varchar](max) NULL,
	[ShipmentID] [int] NULL,
	[QuotationId] [int] NULL,
	[PoNo] [int] NULL,
	[PoDate] [datetime] NULL,
	[IsPoOpen] [varchar](10) NULL,
	[IsPoClosed] [varchar](10) NULL,
	[ThirdPartyPoNo] [varchar](100) NULL,
	[CustomerLotNo] [varchar](100) NULL,
	[ThirdPartyLotNo] [varchar](100) NULL,
	[ConsigneeID] [int] NULL,
	[ContactNo] [varchar](100) NULL,
	[FaxNo] [varchar](100) NULL,
	[EmailId] [varchar](200) NULL,
	[Address] [varchar](max) NULL,
	[ECCNo] [varchar](max) NULL,
	[CSTNo] [varchar](max) NULL,
	[TINNo] [varchar](max) NULL,
	[ContactPersonName] [varchar](250) NULL,
	[ContactPersonContactName] [varchar](250) NULL,
	[Total] [decimal](20, 4) NULL,
	[GST] [decimal](20, 4) NULL,
	[Remark] [varchar](500) NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerPOId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Marketing_CustomerPODetailMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marketing_CustomerPODetailMaster](
	[CustomerPODetailID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerPOId] [int] NULL,
	[ItemName] [varchar](100) NULL,
	[ItemCode] [varchar](100) NULL,
	[RequiredQuantity] [int] NOT NULL,
	[UnitId] [int] NULL,
	[TransportId] [int] NULL,
	[Rate] [decimal](10, 2) NULL,
	[PackingCost] [decimal](10, 2) NULL,
	[Excise] [decimal](10, 2) NULL,
	[SerialNo] [int] NULL,
	[MoldAcco] [decimal](10, 2) NULL,
	[QtySchedule1] [decimal](10, 2) NULL,
	[DateSchedule1] [datetime] NULL,
	[QtySchedule2] [decimal](10, 2) NULL,
	[DateSchedule2] [datetime] NULL,
	[QtySchedule3] [decimal](10, 2) NULL,
	[DateSchedule3] [datetime] NULL,
	[QtySchedule4] [decimal](10, 2) NULL,
	[DateSchedule4] [datetime] NULL,
	[QtySchedule5] [decimal](10, 2) NULL,
	[DateSchedule5] [datetime] NULL,
	[QtySchedule6] [decimal](10, 2) NULL,
	[DateSchedule6] [datetime] NULL,
	[QtySchedule7] [decimal](10, 2) NULL,
	[DateSchedule7] [datetime] NULL,
	[QtySchedule8] [decimal](10, 2) NULL,
	[DateSchedule8] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerPODetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Marketing_BindEnquiryNumber]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Marketing_BindEnquiryNumber]
AS
BEGIN
SELECT * FROM Marketing_EnquiryMaster
END
GO
/****** Object:  StoredProcedure [dbo].[Marketing_BindEnquiryMasterNo]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Marketing_BindEnquiryMasterNo]
As
Begin
Select EnquiryId,EnquiryNumber from Marketing_EnquiryMaster
End;
GO
/****** Object:  StoredProcedure [dbo].[MArketing_BinDCustomerPO]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MArketing_BinDCustomerPO]
AS
BEGIN
SELECT * FROM Marketing_CustomerPOMaster
END
GO
/****** Object:  StoredProcedure [dbo].[logindbs]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[logindbs]
 @loginid int = null
 as
 begin
 if @loginid is not null
 begin
 select modulename, submodulename, pagename from modulemaster mm
 inner join UserAccessMaster uam
 on mm.moduleid=uam.moduleid
 inner join submodulemaster sbm
 on sbm.submoduleid=uam.submoduleid
 inner join PagesMaster pm
 on pm.pageid=uam.pageid
 inner join RoleMaster rm
 on rm.roleid=uam.roleid
 inner join loginusermaster lum
 on lum.roleid=rm.roleid
 where @loginid=loginid
 end
 end
GO
/****** Object:  StoredProcedure [dbo].[InsertEmployeeData2]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[InsertEmployeeData2]
@EmpCode varchar(max)=null,
@Title varchar(MAX),
@FristName varchar(max),
@MiddleName varchar(max),
@LastName varchar(max),
@ContactNo varchar(MAX),
@MobileNo varchar(max),
@EmailId Varchar(max),
@DOB date,
@GenderID int,
@BloodGroupID int,
@MaritalStatusID int,
@CTC int,
@GrossAmount int,
@TempAddress varchar(max),
@DocumentName varchar(max),
@TrainingDetails varchar(max),
@PanNo varchar(max),
@ESICACCNO varchar(max),
@AutoMail varchar(max),
@LeaveRule int,
@AttendanceID int,
@EmpPhoto varchar(max),
@DateofJoin date,
@Qualification int,
@Designation int,
@DepartmentID int,
@Category int,
@WeekOffID int,
@Contractor int,
@TypeofStaff int,
@PayType int,
@Unit int,
@AadharNo int,
@Balance int,
@PermanentAddress varchar(max),
@Asset varchar(max),
@ApprasalHistory varchar(max),
@PFAccNo varchar(max),
@IsLeft varchar(max),
@LeftDate date,
@LoginUserId int
AS
BEGIN
Insert into EmployMaster(
EmpCode,
Title ,
FristName,
MiddleName,
LastName,
ContactNo,
MobileNo ,
EmailId ,
DOB ,
GID,
BloodGroupID,
MSID,
CTC ,
GrossAmount ,
TempAddress,
DocumentName ,
TrainingDetails ,
PanNo ,
ESICACCNO ,
AutoMail ,
LeaveId,
AttendanceID ,
EmpPhoto ,
DateofJoin ,
QualificationId,
DesignationId,
did,
CategoryId,
WID,
ContractorId,
StaffId,
PayTypeId,
UnitId,
AadharNo ,
Balance ,
PermanentAddress ,
Asset ,
ApprasalHistory ,
PFAccNo ,
IsLeft ,
LeftDate,
LoginUserId
) 
values
(
--@EmpCode,
(Select dbo.GetAutoEmpCode (@FristName,@LastName)),
@Title ,
@FristName ,
@MiddleName ,
@LastName ,
@ContactNo ,
@MobileNo ,
@EmailId ,
@DOB ,
@GenderID ,
@BloodGroupID ,
@MaritalStatusID ,
@CTC ,
@GrossAmount ,
@TempAddress,
@DocumentName ,
@TrainingDetails ,
@PanNo ,
@ESICACCNO ,
@AutoMail ,
@LeaveRule ,
@AttendanceID ,
@EmpPhoto ,
@DateofJoin ,
@Qualification ,
@Designation ,
@DepartmentID ,
@Category ,
@WeekOffID ,
@Contractor ,
@TypeofStaff ,
@PayType ,
@Unit ,
@AadharNo ,
@Balance ,
@PermanentAddress ,
@Asset ,
@ApprasalHistory ,
@PFAccNo ,
@IsLeft ,
@LeftDate,
@LoginUserId)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertCustomerPOMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[InsertCustomerPOMaster]

@CustName varchar(50),
@CustCode varchar(50),
@CustomerPONo varchar(100),
@ThirdPartyPONo varchar(50),
@ThirdPartyPODate DateTime,
@CustomerPOID int out
 


As
Begin

Insert Into CustomerPOMaster
(
	CustName,
	CustCode,
	CustomerPONo,
	ThirdPartyPONo,
	ThirdPartyPODate	
)
Values
(
	@CustName,
	@CustCode,
	@CustomerPONo,
	@ThirdPartyPONo,
	@ThirdPartyPODate

)

Set @CustomerPOID = (Select SCOPE_IDENTITY())

--Set @CustomerPONo = ( Select CustomerPONo from CustomerPOMaster Where CustomerPOID = @CustomerPOID)


End
GO
/****** Object:  UserDefinedFunction [dbo].[GenAutoGenQuotationNumber]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[GenAutoGenQuotationNumber]
(
@IsNewCustomer bit,
@NewCustomerName varchar(max),
@Id int
)
Returns varchar(100)
As
Begin
Declare @QuotationNumber varchar(100)
If Not Exists(Select 1 from QuotationMasterFinal) 
Begin
If(@IsNewCustomer=1)
	Begin
	Declare @NewCustName varchar(100)= (Select SUBSTRING('Kaustubh',1,2))
	--PRINT @NewCustName
	Set @QuotationNumber=@NewCustName
	END
		Else
	Begin
	Declare @CustName varchar(100)=(Select SUBSTRING(CustName,1,2) from CustomerMaster where Id=@Id)
	--Print @CustName
	Set @QuotationNumber=@CustName
	END
	Return @QuotationNumber
END
Declare @LastNumber varchar(100)=(Select max(QuotationId) from QuotationMasterFinal)
Declare @FinalNumber varchar(100)=(Select dbo.FourDigitAutoGenNumber(@LastNumber))
Return ('QN' + '/' +@QuotationNumber + '/' + @FinalNumber + 41 )
End;
GO
/****** Object:  UserDefinedFunction [dbo].[FindMaxQId]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[FindMaxQId]()
returns int
As
Begin
return (select Max(QuotationId) from QuotationMasterFinal )
End;
GO
/****** Object:  UserDefinedFunction [dbo].[GetAutoGenQuotationNumber1]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[GetAutoGenQuotationNumber1](@Id int,@NewCustomer varchar(100))
returns varchar(max)
As
Begin
----------------------------------------------------------------------------------------------------
Declare @CustomerName varchar(max)=(Select Upper(SUBSTRING(CustName,1,2)) from CustomerMaster where Id=@Id)
----------------------------------------------------------------------------------------------------
Declare @NewCustomerName varchar(max)=(Select Upper(SUBSTRING(@NewCustomer,1,2)))
----------------------------------------------------------------------------------------------------
Declare @LastNumber varchar(max)=(Select max(QuotationId) from QuotationMasterFinal)
Declare @FinalNumber varchar(max)=Convert(varchar(100),(Select dbo.FiveDigitAutoGenNumber(@LastNumber+1)))
return ('QN'+'/'+@CustomerName+@NewCustomerName+'/'+@FinalNumber)
end;
GO
/****** Object:  UserDefinedFunction [dbo].[GetAutoGenQuotationNumber]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[GetAutoGenQuotationNumber](@Id int)
returns varchar(max)
As
Begin
----------------------------------------------------------------------------------------------------
Declare @CustomerName varchar(max)=(Select Upper(SUBSTRING(CustName,1,2)) from CustomerMaster where Id=@Id)
----------------------------------------------------------------------------------------------------
--Declare @NewCustomerName varchar(max)=(Select Upper(SUBSTRING(@NewCustomer,1,2)))
----------------------------------------------------------------------------------------------------
Declare @LastNumber varchar(max)=(Select max(QuotationId) from QuotationMasterFinal)
Declare @FinalNumber varchar(max)=Convert(varchar(100),(Select dbo.FourDigitAutoGenNumber(@LastNumber+1)))
return ('QN'+'/'+@CustomerName+'/'+@FinalNumber)
end;
GO
/****** Object:  UserDefinedFunction [dbo].[GetAutoGenEnquiryNumber]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT dbo.[GetAutoGenEnquiryNumber](0,'SMCX0001','akash')
CREATE FUNCTION [dbo].[GetAutoGenEnquiryNumber]
(
	@IsNewCustomer BIT,
	@CustomerCode VARCHAR(100),
	@NewCutomerName VARCHAR(MAX)
)
RETURNS VARCHAR(100)
AS
BEGIN

DECLARE @EnquiryNumber VARCHAR(100)


IF NOT EXISTS(SELECT 1 from Marketing_EnquiryMaster)
BEGIN
IF (@IsNewCustomer=1) 
	BEGIN
	SET @EnquiryNumber= 'ENQ/' + SUBSTRING(@NewCutomerName, 1, 2) + '/' + '0001'
	END
	ELSE
	BEGIN
	
	DECLARE @ExistCustomerName VARCHAR(100)=(SELECT CustName FROM CustomerMaster WHERE CustCode=@CustomerCode) 
		SET @EnquiryNumber = 'ENQ/' + SUBSTRING(@ExistCustomerName, 1, 2) + '/' + '0001'
	
	END
 Return @EnquiryNumber 
 END

	
	DECLARE @MaxCode VARCHAR(100) = (SELECT SUBSTRING(EnquiryNumber,8, 11) FROM Marketing_EnquiryMaster WHERE EnquiryId=
	 (SELECT MAX(EnquiryId) FROM Marketing_EnquiryMaster))

	IF(@MaxCode<= 9)
		BEGIN
			SET @MaxCode = '000' + CONVERT(VARCHAR, @MaxCode+1) 
		END

	ELSE IF(@MaxCode >= 10 AND @MaxCode<= 99)
		BEGIN
			SET @MaxCode = '00' + CONVERT(VARCHAR, @MaxCode+1) 
		END
	ELSE IF(@MaxCode >= 100 AND @MaxCode<= 999)
		BEGIN
			SET @MaxCode = '0' + CONVERT(VARCHAR, @MaxCode+1) 
		END	
	ELSE IF(@MaxCode >= 1000 AND @MaxCode<= 9999)
		BEGIN
			SET @MaxCode = CONVERT(VARCHAR, @MaxCode+1) 
		END

IF (@IsNewCustomer=1) 
	BEGIN
	
		SET @EnquiryNumber= 'ENQ/' + SUBSTRING(@NewCutomerName, 1, 2) + '/' + @MaxCode  
		
	END

ELSE 
	BEGIN
	
		SET @ExistCustomerName =(SELECT CustName FROM CustomerMaster WHERE CustCode=@CustomerCode) 
		SET @EnquiryNumber = 'ENQ/' + SUBSTRING(@ExistCustomerName, 1, 2) + '/' + @MaxCode
			 
	END
		RETURN @EnquiryNumber
END
GO
/****** Object:  StoredProcedure [dbo].[BindEnquiryDetails]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[BindEnquiryDetails]
@Id int
As
Begin
Select EnquiryNumber,EnqRefNumber,QuotationNumber,QuotationDate from Marketing_EnquiryMaster where EnquiryId=@Id
End;
GO
/****** Object:  StoredProcedure [dbo].[BindQuotationMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[BindQuotationMaster]
As
Begin
Select * from QuotationMasterFinal
end;
GO
/****** Object:  StoredProcedure [dbo].[DeleteQuotationData]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[DeleteQuotationData]
@QuotationId int
As
Begin
Delete from QuotationMasterFinal where QuotationId=@QuotationId
End;
GO
/****** Object:  StoredProcedure [dbo].[Admin_UpdateRoleMaster]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Admin_UpdateRoleMaster]
@RoleName varchar(100),
@IsActive bit =true,
@RoleId int
as
begin

Update Admin_RoleMaster SET  RoleName = @RoleName ,IsActive=@IsActive
WHERE RoleId=@RoleId

DELETE FROM Admin_RoleAccessDetail WHERE RoleId = @RoleId
 
end
GO
/****** Object:  StoredProcedure [dbo].[Admin_SaveRoleAccessDetail]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Admin_SaveRoleAccessDetail]
@RoleId int,
@MasterMenuId int,
@SubMasterMenuId int,
@AddAccess bit =True,
@UpdateAccess bit =True,
@SearchAccess bit =True,
@DeleteAccess bit =True
as
begin

 INSERT INTO Admin_RoleAccessDetail(RoleId,MasterMenuId,SubMasterMenuId,AddAccess,
 UpdateAccess,SearchAccess,DeleteAccess)
 values(@RoleId, @MasterMenuId,@SubMasterMenuId, @AddAccess,@UpdateAccess,@SearchAccess,@DeleteAccess)

end
GO
/****** Object:  StoredProcedure [dbo].[Admin_GetMenuDetailsById]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Admin_GetMenuDetailsById]
-- Admin_GetMenuDetailsById
@RoleId int
as
begin

Select * 
 from
 Admin_RoleMaster RM
 INNER JOIN Admin_RoleAccessDetail RAD
 ON RM.RoleId=RAD.RoleId
 INNER JOIN  
  MasterMenu MM
  ON MM.MasterMenuId= RAD.MasterMenuId
INNER JOIN SubMasterMenu SMM
ON MM.MasterMenuId= SMM.MasterMenuId AND SMM.SubMasterMenuId=RAD.SubMasterMenuId
WHERE RM.RoleId=@RoleId
 
 
end
GO
/****** Object:  StoredProcedure [dbo].[Admin_GetUserAccessDetail]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Admin_GetUserAccessDetail]
-- Admin_GetUserAccessDetail 1
@LoginUserId int
AS
BEGIN

select  * From Admin_LoginUserMaster LG
INNER JOIN Admin_RoleMaster RM
ON LG.RoleId= RM.RoleId
INNER Join Admin_RoleAccessDetail RAD
ON RAD.RoleId = RM.RoleId
INNER JOIN MasterMenu MM
ON MM.MasterMenuId= RAD.MasterMenuId
INNER JOIN SubMasterMenu SMM
ON SMM.MasterMenuId = MM.MasterMenuId
AND RAD.SubMasterMenuId= SMM.SubMasterMenuId
WHERE LG.LoginUserId=@LoginUserId

END
GO
/****** Object:  StoredProcedure [dbo].[BindCustName_CustPONo]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------------

--6) Bind Customer Name and CustomerPONumber


Create Procedure [dbo].[BindCustName_CustPONo]
As
Begin
	Select CustName, CustomerPONo From CustomerPOMaster 
End
GO
/****** Object:  Table [dbo].[QuotationDetailFinal1]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuotationDetailFinal1](
	[QuatationDetailId] [int] IDENTITY(1,1) NOT NULL,
	[QuotationId] [int] NULL,
	[ID] [int] NULL,
	[ToolMouldId] [int] NULL,
	[DeliveryLeadTime] [datetime] NULL,
	[PackingCost] [decimal](10, 2) NULL,
	[DevelopmentToolCost] [decimal](10, 2) NULL,
	[MouldCost] [decimal](10, 2) NULL,
	[MouldCavity] [int] NULL,
	[OtherCost] [decimal](10, 2) NULL,
	[OtherCostRemark] [varchar](100) NULL,
	[Material] [varchar](100) NULL,
	[UnitId] [int] NULL,
	[Ecess] [varchar](100) NULL,
	[ServiceTax] [decimal](10, 2) NULL,
	[Excise] [varchar](100) NULL,
	[SaleTax] [decimal](10, 2) NULL,
	[PaymentTypeId] [int] NULL,
	[TransportId] [int] NULL,
	[FreightId] [int] NULL,
	[PlanTypeId] [int] NULL,
	[PackingId] [int] NULL,
	[StatusId] [int] NULL,
	[AgainstForm] [varchar](100) NULL,
	[Remark] [varchar](100) NULL,
	[DrawingId] [int] NULL,
	[SampleRequired] [varchar](100) NULL,
	[DeliveryTermId] [int] NULL,
	[DocumentRequired] [varchar](100) NULL,
	[Advance] [decimal](10, 2) NULL,
	[PreparedbyEmpNameId] [int] NULL,
	[ApprovedbyEmpNameId] [int] NULL,
	[ReviewedByEmpNameId] [int] NULL,
	[ItemSubject] [varchar](100) NULL,
	[ItemTerms] [varchar](100) NULL,
	[ToolSubject] [varchar](100) NULL,
	[ToolTerms] [varchar](100) NULL,
	[QR] [varchar](200) NULL,
	[SymbolId] [int] NULL,
	[UnitName] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuotationDetailFinal]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuotationDetailFinal](
	[QuatationDetailId] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NULL,
	[ToolMouldId] [int] NULL,
	[DeliveryLeadTime] [datetime] NULL,
	[PackingCost] [decimal](10, 2) NULL,
	[DevelopmentToolCost] [decimal](10, 2) NULL,
	[MouldCost] [decimal](10, 2) NULL,
	[MouldCavity] [int] NULL,
	[OtherCost] [decimal](10, 2) NULL,
	[OtherCostRemark] [varchar](100) NULL,
	[Material] [varchar](100) NULL,
	[UnitId] [int] NULL,
	[Ecess] [varchar](100) NULL,
	[ServiceTax] [int] NULL,
	[Excise] [varchar](100) NULL,
	[SaleTax] [int] NULL,
	[PaymentTypeId] [int] NULL,
	[TransportId] [int] NULL,
	[FreightId] [int] NULL,
	[PlanTypeId] [int] NULL,
	[PackingId] [int] NULL,
	[StatusId] [int] NULL,
	[AgainstForm] [varchar](100) NULL,
	[Remark] [varchar](100) NULL,
	[DrawingId] [int] NULL,
	[SampleRequired] [varchar](100) NULL,
	[DeliveryTermId] [int] NULL,
	[DocumentRequired] [varchar](100) NULL,
	[Advance] [int] NULL,
	[ItemSubject] [varchar](100) NULL,
	[ItemTerms] [varchar](100) NULL,
	[ToolSubject] [varchar](100) NULL,
	[ToolTerms] [varchar](100) NULL,
	[PreparedbyEmpCodeId] [int] NULL,
	[PreparedbyEmpNameId] [int] NULL,
	[ApprovedbyEmpCodeId] [int] NULL,
	[ApprovedbyEmpNameId] [int] NULL,
	[ReviewedByEmpCodeId] [int] NULL,
	[ReviewedByEmpNameId] [int] NULL,
	[QuotationId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuatationDetailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderAcceptanceMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderAcceptanceMaster](
	[OrderAcceptanceID] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[CustomerPOID] [int] NULL,
	[OrderAcceptanceNo] [varchar](50) NULL,
	[CustomerId] [int] NULL,
	[CustName] [varchar](150) NULL,
	[CustomerPONo] [varchar](50) NULL,
	[OrderAcceptanceDate] [datetime] NULL,
	[OARemark] [varchar](150) NULL,
	[IsApproved] [bit] NULL,
	[Destination] [varchar](100) NULL,
	[Documents] [varchar](100) NULL,
	[DespatchBy] [int] NULL,
	[EmployeeId] [int] NULL,
	[ExciseDuty] [decimal](10, 2) NULL,
	[ECC] [varchar](50) NULL,
	[Payment] [varchar](50) NULL,
	[SalesExecutiveId] [int] NULL,
	[FinancialYearID] [int] NULL,
	[systemEntryDate] [datetime] NULL,
	[SalesTax] [decimal](10, 2) NULL,
	[PaymentTypeId] [int] NULL,
	[SalesExecutive] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderAcceptanceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Marketing_UpdateEnquiryMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Marketing_UpdateEnquiryMaster]

	@EnquiryDate varchar(max),
	@EnqRefNumber varchar(max),
	@IsNewCustomer bit,
	@CustomerCode Varchar(50),
	@CategoryID int,
    @SuppTypeId int,
	@NewCustName varchar(max),
	@NewCustCode varchar(max),
	@Address1 varchar(max),
	@ContactPerson varchar(max),
	@MedOfEnqId int,
	--@LoginBranch VARCHAR(50),
	@LoginUserId INT,
	@BranchId Int,
	@Remark VARCHAR(MAX),
	@QuotationNumber VARCHAR(MAX),
	@QuotationDate VARCHAR(MAX),
	@SampleStatus VARCHAR(MAX),
	@SampleRequiredDate VARCHAR(MAX),
	@SampleProductionDate VARCHAR(MAX),
	@SampleSubmissionQuantity VARCHAR(MAX),
	@SampeSubmissionDate VARCHAR(MAX), 
	@EnquiryId int OUT,
	@EnquiryNumber varchar(max) OUT
AS
BEGIN
UPDATE Marketing_EnquiryMaster SET 
		 --FUnction
		EnquiryNumber = @EnquiryNumber,
		EnquiryDate = @EnquiryDate, 
		EnqRefNumber = @EnqRefNumber,
        IsNewCustomer = @IsNewCustomer,
        CustomerCode = @CustomerCode, 
        CategoryID = @CategoryID, 
        SuppTypeId = @SuppTypeId,
        NewCustName = @NewCustName,
        NewCustCode = @NewCustCode,
        Address1 = @Address1,
        ContactPerson = @ContactPerson, 
        MedOfEnqId = @MedOfEnqId,
        
        --SystemEntryDate = GETDATE(),
        --LoginBranch, 
        LoginUserId = @LoginUserId, 
        BranchId = @BranchId, 
        Remark = @Remark,
        QuotationNumber = @QuotationNumber,
        QuotationDate = @QuotationDate,
        SampleStatus = @SampleStatus,
        SampleRequiredDate = @SampleRequiredDate,
        SampleProductionDate = @SampleProductionDate, 
        SampleSubmissionQuantity = @SampleSubmissionQuantity,
        SampeSubmissionDate = @SampeSubmissionDate
        WHERE EnquiryId=@EnquiryId 
	
END
GO
/****** Object:  StoredProcedure [dbo].[Marketing_UpdateCustomerPOMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Marketing_UpdateCustomerPOMaster]
@CustomerCode VARCHAR(MAX),
@CustomerName VARCHAR(MAX),
@ShipmentID INT ,
@QuotationId INT ,
@PoNo INT,
@PoDate DateTime,
@IsPoOpen Varchar(10),
@IsPoClosed Varchar(10),
@ThirdPartyPoNo  Varchar(100),
@CustomerLotNo  Varchar(100),
@ThirdPartyLotNo VARCHAR(100),

@ConsigneeId INT,
@ContactNo VARCHAR(100),
@FaxNo VARCHAR(100),
@EmailId VARCHAR(200),
@Address VARCHAR(MAX),
@ECCNo VARCHAR(MAX),
@CSTNo VARCHAR(MAX),
@TINNo VARCHAR(MAX),
@ContactPersonName Varchar(250),
@ContactPersonContactName Varchar(250) ,
@Total decimal(20, 4),
@GST decimal(20, 4) ,
@Remark varchar(500),
@CustomerPOID INT OUT
AS
BEGIN
UPDATE Marketing_CustomerPOMaster SET

CustomerCode = @CustomerCode
      ,CustomerName = @CustomerName
      ,ShipmentID = @ShipmentID
      ,QuotationId = @QuotationId
      ,PoNo = @PoNo
      ,PoDate=@PoDate
      ,IsPoOpen=@IsPoOpen
      ,IsPoClosed=@IsPoClosed
      ,ThirdPartyPoNo=@ThirdPartyPoNo
      ,CustomerLotNo=@CustomerLotNo
      ,ThirdPartyLotNo=@ThirdPartyLotNo
      ,ConsigneeID=@ConsigneeId
      ,ContactNo=@ContactNo
      ,FaxNo=@FaxNo
      ,EmailId=@EmailId
      ,Address=@Address
      ,ECCNo=@ECCNo
      ,CSTNo=@CSTNo
      ,TINNo=@TINNo
      ,ContactPersonName=@ContactPersonName
      ,ContactPersonContactName=@ContactPersonContactName
      ,Total=@Total
      ,GST=@GST
      ,Remark=@Remark
      WHERE CustomerPOId = @CustomerPOID
END
GO
/****** Object:  Table [dbo].[Marketing_EnquiryDetailMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marketing_EnquiryDetailMaster](
	[EnquiryDetailId] [int] IDENTITY(1,1) NOT NULL,
	[EnquiryId] [int] NULL,
	[ItemId] [int] NULL,
	[Quantity] [int] NULL,
	[IsNewItem] [bit] NULL,
	[NewItemCode] [varchar](max) NULL,
	[NewItemName] [varchar](max) NULL,
	[SystemEntryDate] [datetime] NULL,
	[LoginBranch] [varchar](50) NULL,
	[BranchId] [int] NULL,
	[LoginUserId] [int] NULL,
	[Unit] [int] NULL,
	[ItemName] [varchar](max) NULL,
	[ItemCode] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[EnquiryDetailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Marketing_InsertCustomerPO]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Marketing_InsertCustomerPO]
@CustomerCode VARCHAR(MAX),
@CustomerName VARCHAR(MAX),
@ShipmentID INT ,
@QuotationId INT ,
@PoNo INT,
@PoDate DateTime,
@IsPoOpen Varchar(10),
@IsPoClosed Varchar(10),
@ThirdPartyPoNo  Varchar(100),
@CustomerLotNo  Varchar(100),
@ThirdPartyLotNo VARCHAR(100),

@ConsigneeId INT,
@ContactNo VARCHAR(100),
@FaxNo VARCHAR(100),
@EmailId VARCHAR(200),
@Address VARCHAR(MAX),
@ECCNo VARCHAR(MAX),
@CSTNo VARCHAR(MAX),
@TINNo VARCHAR(MAX),
@ContactPersonName Varchar(250),
@ContactPersonContactName Varchar(250) ,
@Total decimal(20, 4),
@GST decimal(20, 4) ,
@Remark varchar(500),
@CustomerPOId INT OUT 

AS
BEGIN
INSERT INTO  Marketing_CustomerPOMaster 
(

       CustomerCode
      ,CustomerName
      ,ShipmentID
      ,QuotationId
      ,PoNo
      ,PoDate
      ,IsPoOpen
      ,IsPoClosed
      ,ThirdPartyPoNo
      ,CustomerLotNo
      ,ThirdPartyLotNo
      ,ConsigneeID
      ,ContactNo
      ,FaxNo
      ,EmailId
      ,Address
      ,ECCNo
      ,CSTNo
      ,TINNo
      ,ContactPersonName
      ,ContactPersonContactName
      ,Total
      ,GST
      ,Remark
)
VALUES

(@CustomerCode
      ,@CustomerName
      ,@ShipmentID
      ,@QuotationId
      ,@PoNo
      ,@PoDate
      ,@IsPoOpen
      ,@IsPoClosed
      ,@ThirdPartyPoNo
      ,@CustomerLotNo
      ,@ThirdPartyLotNo
      ,@ConsigneeID
      ,@ContactNo
      ,@FaxNo
      ,@EmailId
      ,@Address
      ,@ECCNo
      ,@CSTNo
      ,@TINNo
      ,@ContactPersonName
      ,@ContactPersonContactName
      ,@Total
      ,@GST
      ,@Remark )
      
      SET @CustomerPOId = (SELECT SCOPE_IDENTITY());
      
END
GO
/****** Object:  StoredProcedure [dbo].[Marketing_BindCustomerDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Marketing_BindCustomerDetails]
@CustomerCode VARCHAR(100)
AS
BEGIN
SELECT   
--MCPM.ConsigneeID,
--MCPM.PoNo, MCPM.IsPoOpen, mcpm.IsPoClosed, MCPM.PoDate, MCPM.CustomerLotNo,
--MCPM.ThirdPartyLotNo, MCPM.ThirdPartyPoNo, MCPM.ContactNo, MCPM.FaxNo,
--MCPM.EmailID, MCPM.[Address],
-- MCPM.ECCNo, MCPM.CSTNo, MCPM.TINNo,
--MCPM.ContactPersonName, MCPM.ContactPersonContactName,
CM.CustCode, CM.CustName, CM.ContactPerson, CM.EmailID,
CM.Address1, cm.Id

FROM Marketing_CustomerPOMaster MCPM
INNER JOIN CustomerMaster CM
ON CM.CustCode = MCPM.CustomerCode
WHERE CM.CustCode = @CustomerCode
 
END
GO
/****** Object:  StoredProcedure [dbo].[Marketing_GetAutoGenEnqNumber]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Marketing_GetAutoGenEnqNumber]
AS
BEGIN
SELECT TOP 1 EnquiryId, EnquiryNumber FROM Marketing_EnquiryMaster
ORDER BY EnquiryNumber DESC
END
GO
/****** Object:  Table [dbo].[Marketing_QuotationMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marketing_QuotationMaster](
	[QuotationId] [int] IDENTITY(1,1) NOT NULL,
	[WithEnquiry] [bit] NULL,
	[EnquiryId] [int] NULL,
	[RevisionNumber] [varchar](200) NULL,
	[QuotationNumber] [varchar](200) NULL,
	[QuotationDate] [datetime] NULL,
	[IsNewCustomer] [bit] NULL,
	[NewCustomerCode] [varchar](200) NULL,
	[NewCustomerName] [varchar](200) NULL,
	[Id] [int] NULL,
	[ContactPerson] [varchar](200) NULL,
	[Address] [varchar](200) NULL,
	[LoginUserId] [int] NULL,
	[BranchId] [int] NULL,
	[SystemEntryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuotationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Purchase_SupplierPO]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[Purchase_SupplierPO]

@SupplierPoId int out,
@SupplierPONo varchar(200),
@SupplierPoDate  datetime,
@Remark varchar(100)

As 
Begin 

Insert into SupplierPoMaster 
(
SupplierPONo,
SupplierPoDate,
Remark)

Values
(
@SupplierPONo,
@SupplierPoDate,
@Remark
)

set @SupplierPoId = (select SCOPE_IDENTITY())

End
GO
/****** Object:  StoredProcedure [dbo].[Purchase_BindSupplierPO]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Purchase_BindSupplierPO]

AS
BEGIN

SELECT SupplierPoId, SupplierPONo FROM SupplierPOMaster --Where PoNo=@PoNo

END
GO
/****** Object:  StoredProcedure [dbo].[Purchase_InsertSupplierPOMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[Purchase_InsertSupplierPOMaster]
@IndentId int,
@SupplierPoDate  datetime,
--@SupplierPoTime time,
@TotalAmount Decimal(18, 0),
--@Note varchar(50),
@Remark varchar(100),
@LoginUserId int,
@BranchId int,
@CreatedById int = 1,
@ApprovedById int = 1,
@EmployeeCode varchar(100) ,
@SupplierCode varchar(100),
@PaymentType varchar(200),
@TransportType varchar(200),
@TransporterType varchar(200),
@Packing int,
@Height int,
@Warrenty int,
@ServiceTax int,
@OtherCharges decimal(10,2),
@NetTotal decimal(10,2),
@SupplierPoId int out,
@SupplierPONo varchar(100) out

As 
Begin 
Insert into SupplierPoMaster 
(
SupplierPONo,
IndentId,
SupplierPoDate,
TotalAmount,
Remark,
SystemEntryDate,
LoginUserId,
BranchId,
VerifiedById,
SupplierId,
PaymentTypeId,
TransportTypeId,
TransporterTypeId,
Packing ,
Height ,
Warrenty,
ServiceTax,
OtherCharges ,
NetTotal 

)

Values
(
[dbo].[FnAutoGenSuppPOId] (@SupplierCode),
@IndentId,
@SupplierPoDate,
@TotalAmount,
@Remark,
GETDATE(),
@LoginUserId,
@BranchId,
(Select ESrNo From EmployMaster where EmpCode = @EmployeeCode),
(Select SupplierId from SupplierMaster where SuppCode=@SupplierCode),
(Select PaymentTypeId From PaymentTypeMaster where PaymentType=@PaymentType),
(Select TransportTypeId From TransportTypeMaster where TransportType=@TransportType),
(Select TransporterTypeId From TransporterTypeMaster where TransporterType=@TransporterType),
@Packing,
@Height,
@Warrenty ,
@ServiceTax ,
@OtherCharges,
@NetTotal

) 
set @SupplierPoId = (select SCOPE_IDENTITY())

SET @SupplierPONo = (Select SupplierPONo From SupplierPOMaster WHERE SupplierPoId=@SupplierPoId)

End
GO
/****** Object:  StoredProcedure [dbo].[SaveItemMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SaveItemMaster]
@ItemCode	varchar(255)	='0',
@ItemName	varchar(MAX)	,
@Manufacturer	varchar(MAX),
@Material	varchar(MAX)	,
@ItemType	varchar(MAX)	,
@ItemSubType	varchar(MAX)	,
@Color	varchar(MAX)	,
@UOM	varchar(255)	,
@HSNCODE	varchar(255)	,
@GSTRate	decimal(20, 2)	,
@PurchaseCost	decimal(20, 2)	,
@SellingPrice	decimal(20, 2)	,
@username varchar(max),
@LoginBranch varchar(max),
@SystemEntryDate datetime,
@RawMaterial varchar(50),
@CategoryId int,
@SubCategoryId int


AS
Begin

Declare @CNT numeric(18,0)

Set @CNT=0

Set @CNT=(Select ISNULL(COUNT(*),0) from ItemMaster where ItemCode=@ItemCode)

If(@CNT>0)
BEgin
	Update ItemMaster Set
	ItemName=@ItemName,
	ManufacturerId=@Manufacturer	,
	Material=@Material		,
	ItemType=@ItemType	,
	ItemSubType=@ItemSubType	,
	ColourId=@Color	,
	UnitId=@UOM,
	HSNCode=@HSNCODE	,
	GSTRate=@GSTRate,
	PurchaseCost=@PurchaseCost	,
	SellingPrice=@SellingPrice,
    Username=@username,
    LoginBranch=@LoginBranch,
    SystEmentryDate=GETDATE(),
--    SubCategoryId=@SubCategoryId,
    RawMaterial=@RawMaterial
    
	Where
	ItemCode=@ItemCode
	
END
Else
Begin
	Insert Into ItemMaster
	([ItemCode]
	,[ItemName]
	,[ManufacturerId],
	[Material]
	,[ItemType]
	,[ItemSubType]
	,[ColourId]
	,[UnitId]
	,[HSNCode]
	,[GstRate]
	,[PurchaseCost]
	,[SellingPrice]
	,Username
	,LoginBranch
	,SystEmentryDate
	,RawMaterial
	,SubCategoryId
	)
	
	
	
	Values
	((select dbo.GetAutoGenIteCode(@CategoryId,@SubCategoryId))
	,@ItemName
	,@Manufacturer,
	@Material
	,@ItemType
	,@ItemSubType
	,@Color
	,@UOM
	,@HSNCODE
	,@GSTRate
	,@PurchaseCost
	,@SellingPrice
	,@username
	,@LoginBranch
	,GETDATE()
	,@RawMaterial
	,@SubCategoryId
	
	)

END

END
GO
/****** Object:  StoredProcedure [dbo].[Save_ItemMaster_27March]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Save_ItemMaster_27March]
--@ItemCode	varchar(255)	='0',
@ItemName	varchar(MAX)	,
@ManufacturerId	int,
@Material	varchar(MAX)	,
@ItemCategoryId int	,
@ItemSubCategoryId	int	,
@ColorId	int,
@UOMId	int	,
@HSNCODE	varchar(255)	,
@GSTRate	decimal(20, 2)	,
@PurchaseCost	decimal(20, 2)	,
@SellingPrice	decimal(20, 2)	,
@UserId int = 3,
@LoginBranchId int = 2 ,
--@SystemEntryDate datetime,
@RawMaterial varchar(50) 


AS
Begin
	Insert Into ItemMaster
	([ItemCode]
	,[ItemName]
	,[ManufacturerId]
	,[Material]
	,[CategoryId]
	,[SubCategoryId]
	,ColourId
	,[UnitId]
	,[HSNCode]
	,[GstRate]
	,[PurchaseCost]
	,[SellingPrice]
	,UserId
	,BranchId
	,SystEmentryDate
	,RawMaterial
	)
	
	
	
	Values
	((select dbo.GetAutoGenIteCode(@ItemCategoryId,@ItemSubCategoryId))
	--,@ItemCode
	,@ItemName
	,@ManufacturerId
	,@Material
	,@ItemCategoryId
	,@ItemSubCategoryId
	,@ColorId
	,@UOMId
	,@HSNCODE
	,@GSTRate
	,@PurchaseCost
	,@SellingPrice
	,@UserId
	,@LoginBranchId
	,GETDATE()
	,@RawMaterial
	
	)

END
GO
/****** Object:  StoredProcedure [dbo].[SaveQuotationMaster1]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SaveQuotationMaster1]
(@WithEnquiry bit,
@EnquiryNumber varchar(100),
@RevisionNumber varchar(100),
@QuotationNumber varchar(100))
--@QuotationDate datetime,
--@IsNewCustomer bit,
--@NewCustomerName varchar(100),
--@NewCustomerCode varchar(100),
--@CustomerName varchar(100),
--@CustomerCode varchar(100),
--@Address varchar(100),
--@ContactPerson varchar(100),
--@Quantity int,
--@Rate int,
--@SymbolId int,
--@LoginUserId int,
--@BranchId int,
--@SystemEntryDate datetime)
--@QuotationId int out)
--  @QuotationNumber varchar(100) out)
As
Begin
Insert into QuotationMasterFinal
(WithEnquiry ,
EnquiryNumber ,
RevisionNumber ,
QuotationNumber)
--QuotationDate,
--IsNewCustomer,
--NewCustomerName,
--NewCustomerCode,
--CustomerName ,
--CustomerCode ,
--[Address],
--ContactPerson,
--Quantity,
--Rate,
--SymbolId, 
--LoginUserId,
--BranchId, 
--SystemEntryDate)
values
(@WithEnquiry ,
@EnquiryNumber ,
@RevisionNumber ,
@QuotationNumber)
--@QuotationDate,
--@IsNewCustomer,
--@NewCustomerCode,
--@NewCustomerName,
--@CustomerName ,
--@CustomerCode ,
--@ContactPerson,
--@Address,
--@Quantity ,
--@Rate ,
--@SymbolId ,
--@LoginUserId,
--@BranchId,
--@SystemEntryDate)
--SET @QuotationId = (SELECT SCOPE_IDENTITY())
--SET @QuotationNumber =(select QuotationNumber from QuotationMasterFinal where QuotationId=@QuotationId)	
END;
GO
/****** Object:  StoredProcedure [dbo].[SaveQuotationMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SaveQuotationMaster]
(@WithEnquiry bit,
@EnquiryNumber varchar(100),
@RevisionNumber varchar(100),
@QuotationNumber varchar(100),
@QuotationDate datetime,
@IsNewCustomer bit,
@CustomerName varchar(100),
@CustomerCode varchar(100),
@Address varchar(100),
@Quantity int,
@Rate int,
@SymbolId int,
@LoginUserId int,
@BranchId int,
@SystemEntryDate datetime)
As
Begin
Insert into QuotationMasterFinal
(WithEnquiry ,
EnquiryNumber ,
RevisionNumber ,
QuotationNumber,
QuotationDate,
IsNewCustomer,
CustomerName ,
CustomerCode ,
[Address],
Quantity,
Rate,
SymbolId, 
LoginUserId,
BranchId, 
SystemEntryDate )
values
(@WithEnquiry ,
@EnquiryNumber ,
@RevisionNumber ,
@QuotationNumber,
@QuotationDate,
@IsNewCustomer,
@CustomerName ,
@CustomerCode ,
@Address,
@Quantity ,
@Rate ,
@SymbolId ,
@LoginUserId,
@BranchId,
@SystemEntryDate)
End;
GO
/****** Object:  Table [dbo].[SupplierPoDetailMaster]    Script Date: 04/08/2023 08:39:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SupplierPoDetailMaster](
	[SupplierPoDtlId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierPoId] [int] NULL,
	[ItemId] [int] NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[PoRate] [decimal](10, 2) NULL,
	[PoQuantity] [decimal](10, 2) NULL,
	[PoScheduleDate] [datetime] NULL,
	[SuppId] [int] NULL,
	[SuppCode] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Specification] [varchar](50) NULL,
	[DrawingNo] [varchar](50) NULL,
	[DepartmentId] [int] NULL,
	[Purpose] [varchar](50) NULL,
	[ToOrderUnit] [varchar](50) NULL,
	[Amount] [decimal](10, 2) NULL,
	[Make] [varchar](50) NULL,
	[Excise] [int] NULL,
	[Discount] [int] NULL,
	[PaymentTypeId] [int] NULL,
	[TransportTypeId] [int] NULL,
	[Packing] [int] NULL,
	[Height] [int] NULL,
	[Warrenty] [int] NULL,
	[ServiceTax] [int] NULL,
	[OtherCharges] [decimal](10, 2) NULL,
	[NetTotal] [decimal](10, 2) NULL,
 CONSTRAINT [PK_SupplierPoDetailMaster] PRIMARY KEY CLUSTERED 
(
	[SupplierPoDtlId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_GetMaxQuotationNumber]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetMaxQuotationNumber]
as
begin
Select QuotationNumber from QuotationMasterFinal where QuotationId=(Select max(QuotationId) as QuotationId from QuotationMasterFinal)
end;
GO
/****** Object:  StoredProcedure [dbo].[Update_SupplierPOMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[Update_SupplierPOMaster]

@SupplierPONo varchar(100),
--@IndentId int,
@TotalAmount Decimal(18, 0),
@Remark varchar(100),
--@LoginUserId int,
--@BranchId int,
--@VerifiedById int,
--@SupplierId int,
@PaymentTypeId int,
@TransportTypeId int,
@TransporterTypeId int,

@Packing int,
@Height int,
@Warrenty int,
@ServiceTax int,
@OtherCharges decimal(10,2),
@NetTotal decimal(10,2)

As
Begin 
Update SupplierPOMaster Set

SupplierPONo = @SupplierPONo,
--IndentId = @IndentId,
TotalAmount = @TotalAmount,
Remark = @Remark,
--LoginUserId = @LoginUserId,
--BranchId = @BranchId,
--VerifiedById = @VerifiedById,
--SupplierId = @SupplierId,

PaymentTypeId = @PaymentTypeId,
TransportTypeId = @TransportTypeId,
TransporterTypeId = @TransporterTypeId,
Packing = @Packing,
Height = @Height,
Warrenty = @Warrenty,
ServiceTax = @ServiceTax,
OtherCharges = @OtherCharges,
NetTotal = @NetTotal

Where SupplierPONo = @SupplierPONo

End
GO
/****** Object:  StoredProcedure [dbo].[UpdataQuotationmasterFinal]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UpdataQuotationmasterFinal]
@QuotationId int,
@WithEnquiry bit,
@EnquiryId varchar(100),
@RevisionNumber varchar(100),
@QuotationNumber varchar(100),
@QuotationDate datetime,
@IsNewCustomer bit,
@NewCustomerName varchar(100),
@NewCustomerCode varchar(100),
@Id int,
--@CustomerName varchar(100),
--@CustomerCode varchar(100),
@Address varchar(100),
@ContactPerson varchar(100),
@Quantity int,
@Rate int,
@SymbolId int,
@LoginUserId int,
@BranchId int,
@SystemEntryDate datetime
As
Begin 
Update QuotationMasterFinal
set 
WithEnquiry=@WithEnquiry,
EnquiryId=@EnquiryId,
RevisionNumber=@RevisionNumber,
QuotationNumber=@QuotationNumber,
QuotationDate=@QuotationDate,
IsNewCustomer=@IsNewCustomer,
NewCustomerName=@NewCustomerName,
NewCustomerCode=@NewCustomerCode,
Id=@Id,
--CustomerName,
--CustomerCode,
[Address]=@Address,
ContactPerson=@ContactPerson,
Quantity=@Quantity,
Rate=@Rate,
SymbolId=@SymbolId,
LoginUserId=@LoginUserId,
BranchId=@BranchId,
SystemEntryDate=@SystemEntryDate 
where QuotationId=@QuotationId and QuotationNumber=@QuotationNumber
End;
GO
/****** Object:  StoredProcedure [dbo].[UpdateQuotationMasterFinal]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateQuotationMasterFinal]
(@QuotationId int,
@WithEnquiry bit,
@EnquiryId varchar(100),
@RevisionNumber varchar(100),
@QuotationNumber varchar(100),
@QuotationDate datetime,
@IsNewCustomer bit,
@NewCustomerName varchar(100),
@NewCustomerCode varchar(100),
@Id int,
--@CustomerName varchar(100),
--@CustomerCode varchar(100),
@Address varchar(100),
@ContactPerson varchar(100),
--@Quantity int,
--@Rate int,
--@SymbolId int,
@LoginUserId int,
@BranchId int,
@SystemEntryDate datetime)
As
begin
update QuotationMasterFinal set
WithEnquiry=@WithEnquiry,
EnquiryId=@EnquiryId,
RevisionNumber=@RevisionNumber,
QuotationNumber=@QuotationNumber,
QuotationDate=@QuotationDate,
IsNewCustomer=@IsNewCustomer,
NewCustomerName=@NewCustomerName,
NewCustomerCode=@NewCustomerCode,
Id=@Id,
--CustomerName,
--CustomerCode,
[Address]=@Address,
ContactPerson=@ContactPerson,
--Quantity=@Quantity,
--Rate=@Rate,
--SymbolId=@SymbolId,
LoginUserId=@LoginUserId,
BranchId=@BranchId,
SystemEntryDate=@SystemEntryDate where QuotationId=@QuotationId
End;
GO
/****** Object:  View [dbo].[View_QuotationMasterFinal]    Script Date: 04/08/2023 08:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[View_QuotationMasterFinal]
as
Select * from QuotationMasterFinal;
GO
/****** Object:  View [dbo].[View_QuotationDetailFinal]    Script Date: 04/08/2023 08:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[View_QuotationDetailFinal]
as
Select * from QuotationDetailFinal1;
GO
/****** Object:  StoredProcedure [dbo].[UpdateQuotationDetailFinal]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdateQuotationDetailFinal]
(@QuatationDetailId int,
@ID int,
@ToolMouldId int,
@DeliveryLeadTime datetime,
@PackingCost decimal(10, 2),
@DevelopmentToolCost decimal(10, 2),
@MouldCost decimal(10, 2),
@MouldCavity int,
@OtherCost decimal(10, 2) ,
@OtherCostRemark varchar(100) ,
@Material varchar(100),
@UnitId int,
@Ecess varchar(100),
@ServiceTax decimal(10, 2),
@Excise varchar(100) ,
@SaleTax decimal(10, 2) ,
@PaymentTypeId int,
@TransportId int,
@FreightId int,
@PlanTypeId int,
@PackingId int ,
@StatusId int,
@AgainstForm varchar(100),
@Remark varchar(100),
@DrawingId int ,
@SampleRequired varchar(100),
@DeliveryTermId int,
@DocumentRequired varchar(100) ,
@Advance decimal(10, 2) ,
@PreparedbyEmpNameId int,
@ApprovedbyEmpNameId int,
@ReviewedByEmpNameId int,
@ItemSubject varchar(100) ,
@ItemTerms varchar(100),
@ToolSubject varchar(100),
@ToolTerms varchar(100),
@QuotationId int)
As
Begin 
Update QuotationDetailFinal1
set 
ID=@ID,
ToolMouldId=@ToolMouldId,
DeliveryLeadTime=@DeliveryLeadTime,
PackingCost=@PackingCost,
DevelopmentToolCost=@DevelopmentToolCost,
MouldCost=@MouldCost,
MouldCavity=@MouldCavity,
OtherCost=@OtherCost ,
OtherCostRemark=@OtherCostRemark ,
Material=@Material ,
UnitId=@UnitId,
Ecess=@Ecess,
ServiceTax=@ServiceTax,
Excise=@Excise ,
SaleTax=@SaleTax  ,
PaymentTypeId=@PaymentTypeId,
TransportId=@TransportId,
FreightId=@FreightId ,
PlanTypeId=@PlanTypeId,
PackingId=@PackingId ,
StatusId=@StatusId ,
AgainstForm=@AgainstForm,
Remark=@Remark,
DrawingId=@DrawingId ,
SampleRequired=@SampleRequired ,
DeliveryTermId=@DeliveryTermId,
DocumentRequired=@DocumentRequired ,
Advance=@Advance ,
PreparedbyEmpNameId=@PreparedbyEmpNameId,
ApprovedbyEmpNameId=@ApprovedbyEmpNameId,
ReviewedByEmpNameId=@ReviewedByEmpNameId,
ItemSubject=@ItemSubject  ,
ItemTerms=@ItemTerms ,
ToolSubject=@ToolSubject,
ToolTerms=@ToolTerms ,
QuotationId=@QuotationId  where QuatationDetailId=@QuatationDetailId
end;
GO
/****** Object:  StoredProcedure [dbo].[UpdateOrderAcceptanceMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------------

--11) Update OrderAcceptanceMaster

CREATE Proc [dbo].[UpdateOrderAcceptanceMaster]

@OrderAcceptanceNo varchar(100) ,
@CustomerName varchar(30),
@OARemark varchar(50),
@Destination varchar(50),
@Documents varchar(100),
@Payment varchar(50),
@ECC int ,
@ExciseDuty Decimal,
@SalesTax Decimal,
@SalesExecutive varchar(50)


As
Begin

Update OrderAcceptanceMaster SET 
	
	OrderAcceptanceNo = ( Select OrderAcceptanceNo From OrderAcceptanceMaster Where OrderAcceptanceNo = @OrderAcceptanceNo),
	CustName = @CustomerName,	
	OARemark = @OARemark,	
	Destination = @Destination,
	Documents = @Documents,
	Payment = @Payment,
	ECC = @ECC,
	ExciseDuty = @ExciseDuty,
	SalesTax = @SalesTax,
	SalesExecutive = @SalesExecutive
		
Where OrderAcceptanceNo = @OrderAcceptanceNo;

End
GO
/****** Object:  StoredProcedure [dbo].[Sp_InsertIntoQuotationDetailFinal1DuringUpdate]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Sp_InsertIntoQuotationDetailFinal1DuringUpdate]
(@QuotationId int,
@ID int ,
@ToolMouldId int,
@DeliveryLeadTime datetime,
@PackingCost decimal(10,2),
@DevelopmentToolCost decimal(10, 2),
@MouldCost decimal(10,2),
@MouldCavity int ,
@OtherCost decimal(10,2),
@OtherCostRemark varchar(100),
@Material varchar(100),
@UnitId int
/*@Ecess varchar(100),
@ServiceTax decimal(10,2),
@Excise varchar(100),
@SaleTax decimal(10,2),
@PaymentTypeId int,
@TransportId int ,
@FreightId int,
@PlanTypeId int,
@PackingId int ,
@StatusId int,
@AgainstForm varchar(100),
@Remark varchar(100),
@DrawingId int,
@SampleRequired varchar(100),
@DeliveryTermId int,
@DocumentRequired varchar(100),
@Advance decimal(10,2),	
@PreparedbyEmpNameId int,
@ApprovedbyEmpNameId int,
@ReviewedByEmpNameId int ,
@ItemSubject varchar(100) ,
@ItemTerms varchar(100) ,
@ToolSubject varchar(100),
@ToolTerms varchar(100)*/
)
As
Begin
Insert into QuotationDetailFinal1
(QuotationId
,ID,
ToolMouldId,
DeliveryLeadTime,
PackingCost,
DevelopmentToolCost,
MouldCost,
MouldCavity,
OtherCost,
OtherCostRemark,
Material,
UnitId
/*Ecess,
ServiceTax,
Excise ,
SaleTax,
PaymentTypeId,
TransportId,
FreightId,
PlanTypeId,
PackingId,
StatusId,
AgainstForm,		
Remark,
DrawingId,
SampleRequired ,
DeliveryTermId ,
DocumentRequired ,
Advance ,	
PreparedbyEmpNameId ,
ApprovedbyEmpNameId ,
ReviewedByEmpNameId  ,
ItemSubject  ,
ItemTerms  ,
ToolSubject ,
ToolTerms */)
values
(@QuotationId,
@ID,
@ToolMouldId,
@DeliveryLeadTime ,
@PackingCost,
@DevelopmentToolCost,
@MouldCost,
@MouldCavity,
@OtherCost,
@OtherCostRemark,
@Material,
@UnitId 
/*@Ecess,
@ServiceTax ,
@Excise ,
@SaleTax ,	
@PaymentTypeId ,
@TransportId ,
@FreightId ,
@PlanTypeId ,
@PackingId ,
@StatusId ,
@AgainstForm ,
@Remark,
@DrawingId,
@SampleRequired ,
@DeliveryTermId ,
@DocumentRequired ,
@Advance ,	
@PreparedbyEmpNameId ,
@ApprovedbyEmpNameId ,
@ReviewedByEmpNameId  ,
@ItemSubject  ,
@ItemTerms  ,
@ToolSubject ,
@ToolTerms*/ 
)
End;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetItemCodeById]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_GetItemCodeById]
@QuotationId int
As
Begin
Select ID from QuotationDetailFinal1 where QuotationId=@QuotationId
End;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDetailIdByQuoIdID]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_GetDetailIdByQuoIdID]
@QuotationId int,
@ID int
as
Begin
Select QuatationDetailId from QuotationDetailFinal1 where QuotationId=@QuotationId and ID=@ID
End;
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteDetailsData]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_DeleteDetailsData]
@Id int
as
begin
Delete from QuotationDetailFinal1 where QuatationDetailId=@Id
end;
GO
/****** Object:  StoredProcedure [dbo].[sp_BindQuantGrid]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_BindQuantGrid]
@QuotationId int
As
Begin
Select RTRIM(QR) as QR,SM.SymbolCharacter from BindSymbolMaster SM inner join QuotationDetailFinal1 QD on QD.SymbolId=SM.SymbolId where QD.QuotationId=@QuotationId
End;
GO
/****** Object:  StoredProcedure [dbo].[sp_QuotationDetailsGridData2]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_QuotationDetailsGridData2]
@QuotationId  int
As
Begin
Select IM.ID,IM.ItemName,TM.ToolMouldId,TM.ToolmouldName,QD.DeliveryLeadTime,QD.PackingCost,QD.DevelopmentToolCost,QD.MouldCost,QD.MouldCavity,QD.OtherCost,QD.OtherCostRemark,QD.Material,UM.UnitName,QD.QR from ToolMaster TM inner join QuotationDetailFinal1 QD on TM.ToolMouldId=QD.ToolMouldId inner join ItemMaster IM on IM.ID=QD.ID inner join UnitMaster UM on UM.UnitId=QD.UnitId where QD.QuotationId=@QuotationId order by ID
End;
GO
/****** Object:  StoredProcedure [dbo].[sp_QuotationDetailsGridData1]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_QuotationDetailsGridData1]
@ItemId int
as
Begin
Select ID,ToolMouldId,DeliveryLeadTime,PackingCost,DevelopmentToolCost,MouldCost,MouldCavity,OtherCost,OtherCostRemark,Material,UnitId from QuotationDetailFinal1 where ID=@ItemId
end;
GO
/****** Object:  StoredProcedure [dbo].[sp_QuotationDetailsGridData]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_QuotationDetailsGridData]
@ItemId  int
As
Begin
Select IM.ItemCode,IM.ItemName,TM.ToolMouldCode,TM.ToolmouldName,QD.DeliveryLeadTime,QD.PackingCost,QD.DevelopmentToolCost,QD.MouldCost,QD.MouldCavity,QD.OtherCost,QD.OtherCostRemark,QD.Material,UM.UnitName from ToolMaster TM inner join QuotationDetailFinal1 QD on TM.ToolMouldId=QD.ToolMouldId inner join ItemMaster IM on IM.ID=QD.ID inner join UnitMaster UM on UM.UnitId=QD.UnitId where IM.ID=@ItemId
End;
GO
/****** Object:  StoredProcedure [dbo].[sp_QuotatationDetailsDisplay]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_QuotatationDetailsDisplay]
As
Begin
Select IM.ItemCode,IM.ItemName,TM.ToolMouldCode,TM.ToolmouldName,QD.DeliveryLeadTime,QD.PackingCost,QD.DevelopmentToolCost,QD.MouldCost,QD.MouldCavity,QD.OtherCost,QD.OtherCostRemark,QD.Material,UM.UnitName from ToolMaster TM inner join QuotationDetailFinal1 QD on TM.ToolMouldId=QD.ToolMouldId inner join ItemMaster IM on IM.ID=QD.ID inner join UnitMaster UM on UM.UnitId=QD.UnitId;
end;
GO
/****** Object:  StoredProcedure [dbo].[sp_QuotataiondetailsByItem]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_QuotataiondetailsByItem]
@Id int
As
Begin
Select IM.ItemCode,IM.ItemName,TM.ToolMouldCode,TM.ToolmouldName,QD.DeliveryLeadTime,QD.PackingCost,QD.DevelopmentToolCost,QD.MouldCost,QD.MouldCavity,QD.OtherCost,QD.OtherCostRemark,QD.Material,UM.UnitName from ToolMaster TM inner join QuotationDetailFinal1 QD on TM.ToolMouldId=QD.ToolMouldId inner join ItemMaster IM on IM.ID=QD.ID inner join UnitMaster UM on UM.UnitId=QD.UnitId where IM.ID=@Id
End;
GO
/****** Object:  StoredProcedure [dbo].[SaveQuotationDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SaveQuotationDetails]
--(@QuotationNumber varchar(100) ,
(@ItemName varchar(100),
@ItemCode varchar(100),
@DeliveryLeadTime datetime,
--@PackingCost decimal(10,2),
--@DevelopmentToolcost decimal(10,2),
--@Material varchar(100),
--@UnitId int,
--@Ecess varchar(100),
--@ServiceTax int,
--@Excise varchar(100),
--@SaleTax int,
--@PaymentTypeId int,
--@TransportId int,
--@FreightId int,
--@PlanTypeId int,
--@PackingId int,
--@StatusId int,
--@AgainstForm varchar(100),
--@Remark varchar(100),
--@DrawingId int,
--@SampleRequired varchar(100),
--@DeliveryTermId int,
--@DocumentRequired varchar(100),
--@Advance int,
--@ItemSubject varchar(100),
--@ItemTerms varchar(100),
@QuotationId int)
As
begin
Insert into QuotationDetailFinal(
--(QuotationNumber ,
ItemName ,
ItemCode ,
DeliveryLeadTime ,
--PackingCost ,
--DevelopmentToolcost,
--Material ,
--UnitId ,
--Ecess,
--ServiceTax,
--Excise,
--SaleTax,
--PaymentTypeId,
--TransportId,
--FreightId ,
--PlanTypeId,
--PackingId,
--StatusId,
--AgainstForm,
--Remark,
--DrawingId,
--SampleRequired,
--DeliveryTermId,
--DocumentRequired,
--Advance,
--ItemSubject,
--ItemTerms,
QuotationId
)
Values(
--(@QuotationNumber,
@ItemName,
@ItemCode,
@DeliveryLeadTime,
--@PackingCost,
--@DevelopmentToolcost,
--@Material,
--@UnitId ,
--@Ecess,
--@ServiceTax ,
--@Excise,
--@SaleTax,
--@PaymentTypeId,
--@TransportId,
--@FreightId ,
--@PlanTypeId ,
--@PackingId ,
--@StatusId ,
--@AgainstForm ,
--@Remark,
--@DrawingId,
--@SampleRequired ,
--@DeliveryTermId ,
--@DocumentRequired ,
--@Advance ,
--@ItemSubject,
--@ItemTerms,
@QuotationId )
End;
GO
/****** Object:  StoredProcedure [dbo].[Rpt_SupplierPo_Report]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Rpt_SupplierPo_Report]
--Rpt_SupplierPo_Report 'PO/PUR/CH/1617/0005'
@SupplierPONo Varchar(Max)
AS
BEGIN

SET NOCOUNT ON

/*
@PoNo varchar (100)
AS
DECLARE @Amount FLOAT
DECLARE @Disco float
DECLARE @FinalDisco float
DECLARE @TotalAmount float
SET @Amount=((SELECT rate from SupplierPOMaster)*(SELECT Quantity from SupplierPOMaster))
SET @Disco= (Select Discount From SupplierPOMaster)
SET @FinalDisco=(@Amount/100)*@Disco
SET @TotalAmount=@Amount-@FinalDisco
--PRINT @Amount
--PRINT @Disco
--PRINT @FinalDisco
--PRINT @TotalAmount

BEGIN
SELECT

SP.PoNo, SP.PODate, SP.QuatNo,SP.QuatDate,SM.ItemCode, 
SM.SuppCode, im.ItemName, ssm.SuppName,
Sp.Description,sp.Quantity, SP.Rate, sp.Discount,
@Amount AS 'Amount', @TotalAmount AS 'TotalAmount',
SSm.Address1, SSm.ContactPerson,SSm.EmailID,SSm.Mobile 

FROM  SupplierPOMaster SP
INNER JOIN ItemVsSupplier SM
ON SP.Id=SM.Isid
INNER JOIN ItemMaster IM
ON IM.ItemCode=SM.ItemCode
Inner join SupplierMaster SSm
ON SSm.Id=sm.Isid
WHERE PoNo=@PoNo
*/


--------------------------------------------------------------------------------------------

--									New Procedure Code : 09 June 2018

--------------------------------------------------------------------------------------------




DECLARE @Amount float
--DECLARE @TotalAmount float
SET @Amount=((SELECT PORate from SupplierPoDetailMaster)*(SELECT PoQuantity from SupplierPoDetailMaster))

SELECT 
SPM.SupplierPONo, SPM.SupplierPoDate, IM.ItemName, SPDM.ItemCode, SPDM.SuppCode, 
SM.SuppName, SPDM.PoQuantity, SPDM.PoRate, SM.Address1, SM.Address2,
SM.ContactPerson, SM.EmailID, SM.Mobile, SM.Telephone,
@Amount AS 'Amount'
FROM SupplierPOMaster SPM
INNER JOIN SupplierPoDetailMaster SPDM
ON SPDM.SupplierPoId=SPM.SupplierPoId
INNER JOIN ItemMaster IM
ON IM.ID=SPDM.ItemId
INNER JOIN SupplierMaster SM
ON SM.SuppCode=Spdm.SuppCode
INNER JOIN ItemVsSupplier IVS
ON IVS.ItemCode=SPDM.ItemCode
WHERE SupplierPONo=   @SupplierPONo--'PO/PUR/CH/1617/0005'


SET NOCOUNT OFF

END
GO
/****** Object:  StoredProcedure [dbo].[Purchase_InsertSupplierPODtl_ItemDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Purchase_InsertSupplierPODtl_ItemDetails]
--Purchase_InsertSupplierPODtl_ItemDetails 1

@SupplierPoId int,
@ItemCode varchar(max),
@ItemName varchar(max),
@Rate Decimal(10, 2),
@Quantity Decimal(10, 2),
@POScheduleDate datetime,
@Excise int,
@Discount int
 

As

Begin

Insert into SupplierPoDetailMaster
(

SupplierPoId,
ItemId,
ItemName,
PoRate,
PoQuantity,
PoScheduleDate,
Excise,
Discount
 
--Description,
--ToOrderUnit

)
values
(@SupplierPoId,
(Select ID from ItemMaster where ItemCode=@ItemCode),
@ItemName,
@Rate,
@Quantity,
@POScheduleDate,
@Excise,
@Discount
--@SuppName,
--@Unit

)

End
GO
/****** Object:  StoredProcedure [dbo].[Marketing_InsertEnquiryDetailMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Marketing_InsertEnquiryDetailMaster]
	
	@EnquiryId int,
	@ItemCode Varchar(100),
	@Quantity int,
	@IsNewItem bit,
	@NewItemCode varchar(MAX),
	@NewItemName varchar(MAX)
	--@ItemName VARCHAR(MAX)
	--@ItemCode VARCHAR(MAX)
	 
	 
AS
BEGIN
INSERT INTO Marketing_EnquiryDetailMaster(
	   
      EnquiryId
      ,ItemId
      ,Quantity
      ,IsNewItem
      ,NewItemCode
      ,NewItemName
      ,SystemEntryDate
    --  ,ItemName
      --,ItemCode))
      )      
      VALUES
   (
	@EnquiryId,
	(Select Id from ItemMaster where ItemCode=@ItemCode),
	@Quantity,
	@IsNewItem,
	@NewItemCode,
	@NewItemName,
	GETDATE()
	--@ItemName
	--@ItemCode)
	)    
END
GO
/****** Object:  StoredProcedure [dbo].[Marketing_InsertCustomerPODetailM]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Marketing_InsertCustomerPODetailM]

@CustomerPOId INT, 
@ItemName VARCHAR(100),
@ItemCode VARCHAR(100),
@RequiredQuantity INT,
@UnitId INT,
@TransportId INT,
@Rate Decimal(10, 2),
@PackingCost Decimal(10, 2),
@Excise Decimal(10, 2),
@SerialNo INT,
@MoldAcco Decimal(10, 2),
@QtySchedule1 decimal(10, 2),
@DateSchedule1 datetime,
@QtySchedule2 decimal(10, 2),
@DateSchedule2 datetime,
@QtySchedule3 decimal(10, 2),
@DateSchedule3 datetime,
@QtySchedule4 decimal(10, 2),
@DateSchedule4 datetime,
@QtySchedule5 decimal(10, 2),
@DateSchedule5 datetime,
@QtySchedule6 decimal(10, 2),
@DateSchedule6 datetime,
@QtySchedule7 decimal(10, 2),
@DateSchedule7 datetime,
@QtySchedule8 decimal(10, 2),
@DateSchedule8 datetime

AS 
BEGIN
	INSERT INTO Marketing_CustomerPODetailMaster 
	(
	CustomerPOId	
      ,[ItemName]
      ,[ItemCode]
      ,[RequiredQuantity]
      ,[UnitId]
      ,[TransportId]
      ,[Rate]
      ,[PackingCost]
      ,[Excise]
      ,[SerialNo]
      ,[MoldAcco]
      ,[QtySchedule1]
      ,[DateSchedule1]
      ,[QtySchedule2]
      ,[DateSchedule2]
      ,[QtySchedule3]
      ,[DateSchedule3]
      ,[QtySchedule4]
      ,[DateSchedule4]
      ,[QtySchedule5]
      ,[DateSchedule5]
      ,[QtySchedule6]
      ,[DateSchedule6]
      ,[QtySchedule7]
      ,[DateSchedule7]
      ,[QtySchedule8]
      ,[DateSchedule8]
	)
	VALUES
	(@CustomerPOId,
	@ItemName,
@ItemCode ,
@RequiredQuantity,
@UnitId,
@TransportId,
@Rate,
@PackingCost ,
@Excise,
@SerialNo ,
@MoldAcco,
@QtySchedule1 ,
@DateSchedule1, 
@QtySchedule2,
@DateSchedule2 ,
@QtySchedule3 ,
@DateSchedule3,
@QtySchedule4,
@DateSchedule4,
@QtySchedule5,
@DateSchedule5,
@QtySchedule6,
@DateSchedule6,
@QtySchedule7,
@DateSchedule7,
@QtySchedule8,
@DateSchedule8

	)
	
END
GO
/****** Object:  StoredProcedure [dbo].[Markting_InsertEnquiryMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Markting_InsertEnquiryMaster]
	@EnquiryDate varchar(max),
	@EnqRefNumber varchar(max),
	@IsNewCustomer bit,
	@CustomerCode Varchar(50),
	@CategoryID int,
    @SuppTypeId int,
	@NewCustName varchar(max),
	@NewCustCode varchar(max),
	@Address1 varchar(max),
	@ContactPerson varchar(max),
	
	--@LoginBranch VARCHAR(50),
	@LoginUserId INT,
	@BranchId Int,
	@Remark VARCHAR(MAX),
	@QuotationNumber VARCHAR(MAX),
	@QuotationDate VARCHAR(MAX),
	@SampleStatus VARCHAR(MAX),
	@SampleRequiredDate VARCHAR(MAX),
	@SampleProductionDate VARCHAR(MAX),
	@SampleSubmissionQuantity VARCHAR(MAX),
	@SampeSubmissionDate VARCHAR(MAX),
	@MedOfEnqId int, 
	@EnquiryId int OUT,
	@EnquiryNumber varchar(100) OUT
	
AS
BEGIN
INSERT INTO Marketing_EnquiryMaster (
		EnquiryNumber, --FUnction
		EnquiryDate, 
		EnqRefNumber,
        IsNewCustomer,
        CustomerId, 
        CategoryID, 
        SuppTypeId,
        NewCustName,
        NewCustCode,
        Address1,
        ContactPerson, 
        SystemEntryDate,
        --LoginBranch, 
        LoginUserId, 
        BranchId, 
        Remark,
        QuotationNumber,
        QuotationDate,
        SampleStatus,
        SampleRequiredDate,
        SampleProductionDate, 
        SampleSubmissionQuantity,
        SampeSubmissionDate,
        MedOfEnqId)
      
       VALUES     
      (
	dbo.GetAutoGenEnquiryNumber(@IsNewCustomer,@CustomerCode,@NewCustName),
	@EnquiryDate,
	@EnqRefNumber,
	@IsNewCustomer,
	(Select Id from CustomerMaster where custCode=@CustomerCode),
	@CategoryID,
	@SuppTypeId,
	@NewCustName,
	@NewCustCode,
	@Address1,
	@ContactPerson,
	GETDATE(),
	--@LoginBranch,
	@LoginUserId,
	@BranchId,
	@Remark,
	@QuotationNumber,
	@QuotationDate ,
	@SampleStatus ,
	@SampleRequiredDate,
	@SampleProductionDate ,
	@SampleSubmissionQuantity,
	@SampeSubmissionDate,
	@MedOfEnqId)
	
	SET @EnquiryId = (SELECT SCOPE_IDENTITY())
	SET @EnquiryNumber =(select EnquiryNumber from Marketing_EnquiryMaster where EnquiryId=@EnquiryId)
	
END
GO
/****** Object:  StoredProcedure [dbo].[Marketing_GetAllEnquiryData]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Marketing_GetAllEnquiryData]
@EnqId int = 0
-- [Marketing_GetAllEnquiryData]
AS
BEGIN

if(@EnqId = 0)
BEGIN


SELECT  EM.EnquiryId, EM.EnquiryNumber,EM.EnquiryDate, EM.EnqRefNumber, EM.IsNewCustomer,
		EM.NewCustCode, EM.NewCustName, EM.Address1, EM.ContactPerson,
		EM.SystEmentryDate, EM.Remark,EM.QuotationNumber, 
		EM.QuotationDate, EM.SampleStatus, EM.SampleRequiredDate, EM.SampleProductionDate,		
		EM.SampleSubmissionQuantity, EM.SampeSubmissionDate, EM.CustomerCode,

		MEM.MedOfEnqID, MEM.MedOfEnqName,
		
		CM.CustCode, CM.CustName, CM.Id,
		
		CatM.CategoryName, CatM.CategoryId,
		
		SP.supptype, SP.supptypeid,
		
		EDM.EnquiryDetailId, EDM.EnquiryId, EDM.Quantity, EDM.ItemId, EDM.IsNewItem,
		EDM.NewItemCode, EDM.NewItemName, EDM.SystemEntryDate, 
		
		IM.ItemCode, IM.ItemName	
		
		
FROM Marketing_EnquiryDetailMaster EDM
INNER JOIN Marketing_EnquiryMaster EM
ON EM.EnquiryId = EDM.EnquiryId
INNER JOIN Marketing_MediumOfEnqMaster MEM
ON EM.MedOfEnqId = MEM.MedOfEnqID
LEFT JOIN CustomerMaster CM
ON EM.CustomerId=CM.Id
LEFT JOIN ItemMaster IM
ON EDM.ItemId = IM.ID
--INNER JOIN UnitMaster UM
--ON EDM.Unit = UM.UnitId
INNER JOIN CategoryMaster CatM
ON EM.CategoryID = CatM.CategoryId
INNER JOIN suppliertypemaster SP
ON EM.SuppTypeId = SP.supptypeid
END

ELSE
BEGIN


SELECT  EM.EnquiryId, EM.EnquiryNumber,EM.EnquiryDate, EM.EnqRefNumber, EM.IsNewCustomer,
		EM.NewCustCode, EM.NewCustName, EM.Address1, EM.ContactPerson,
		EM.SystEmentryDate, EM.Remark,EM.QuotationNumber, 
		EM.QuotationDate, EM.SampleStatus, EM.SampleRequiredDate, EM.SampleProductionDate,		
		EM.SampleSubmissionQuantity, EM.SampeSubmissionDate, EM.CustomerCode,

		MEM.MedOfEnqID, MEM.MedOfEnqName,
		
		CM.CustCode, CM.CustName, CM.Id,
		
		CatM.CategoryName, CatM.CategoryId,
		
		SP.supptype, SP.supptypeid,
		
		EDM.EnquiryDetailId, EDM.EnquiryId, EDM.Quantity, EDM.ItemId, EDM.IsNewItem,
		EDM.NewItemCode, EDM.NewItemName, EDM.SystemEntryDate, 
		
		IM.ItemCode, IM.ItemName	
		
		
FROM Marketing_EnquiryDetailMaster EDM
INNER JOIN Marketing_EnquiryMaster EM
ON EM.EnquiryId = EDM.EnquiryId
INNER JOIN Marketing_MediumOfEnqMaster MEM
ON EM.MedOfEnqId = MEM.MedOfEnqID
LEFT JOIN CustomerMaster CM
ON EM.CustomerId=CM.Id
LEFT JOIN ItemMaster IM
ON EDM.ItemId = IM.ID
--INNER JOIN UnitMaster UM
--ON EDM.Unit = UM.UnitId
INNER JOIN CategoryMaster CatM
ON EM.CategoryID = CatM.CategoryId
INNER JOIN suppliertypemaster SP
ON EM.SuppTypeId = SP.supptypeid
WHERE EM.EnquiryId=@EnqId
END

END

 

--SELECT * FROM Marketing_EnquiryMaster
--SELECT * FROM Marketing_EnquiryDetailMaster
GO
/****** Object:  StoredProcedure [dbo].[MArketing_getAllCustomerPOData]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MArketing_getAllCustomerPOData]
AS
BEGIN
SELECT MCPM.CustomerPOId,
MCPM.CustomerCode, MCPM.CustomerName, MCPM.ConsigneeID,
MCPM.PoNo, MCPM.IsPoOpen, mcpm.IsPoClosed, MCPM.PoDate, MCPM.CustomerLotNo,
MCPM.ThirdPartyLotNo, MCPM.ThirdPartyPoNo, MCPM.ContactNo, MCPM.FaxNo,
MCPM.EmailID, MCPM.[Address], MCPM.ECCNo, MCPM.CSTNo, MCPM.TINNo,
MCPM.ContactPersonName, MCPM.ContactPersonContactName,
MCPM.Total,MCPM.GST, MCPM.Remark,
MCPDM.RequiredQuantity, MCPDM.Rate, MCPDM.PackingCost, MCPDM.Excise, MCPDM.SerialNo, MCPDM.MoldAcco,
MCPDM.DateSchedule1, MCPDM.QtySchedule1,MCPDM.DateSchedule2, MCPDM.QtySchedule2, MCPDM.DateSchedule3,MCPDM.QtySchedule3,
MCPDM.DateSchedule4, MCPDM.QtySchedule4, MCPDM.DateSchedule5, MCPDM.QtySchedule5, MCPDM.DateSchedule6, MCPDM.QtySchedule6,
MCPDM.DateSchedule7, MCPDM.QtySchedule7, MCPDM.DateSchedule8 ,MCPDM.QtySchedule8, MCPDM.ItemName,
IM.ItemName, IM.ItemCode,
MTM.ModeOfTransport,MTM.TransportID,
UM.UnitName,UM.UnitId,
QM.QutationNo,QM.Id,
MSM.ShipMentAccount, MSM.ShipmentID
FROM Marketing_CustomerPOMaster MCPM
INNER JOIN Marketing_CustomerPODetailMaster MCPDM
ON MCPM.CustomerPOId = MCPDM.CustomerPOId 
INNER JOIN ItemMaster IM
ON MCPDM.ItemCode = IM.ItemCode
INNER JOIN Marketing_TransportMaster MTM
ON MTM.TransportID = MCPDM.TransportId
INNER JOIN UnitMaster UM
ON UM.UnitId = MCPDM.UnitId
INNER JOIN QuotationMaster QM
ON QM.Id = MCPM.QuotationId
INNER JOIN Marketing_ShipmentMaster MSM
ON MSM.ShipmentID = MCPM.ShipmentID


END
GO
/****** Object:  StoredProcedure [dbo].[Marketing_FillEnquiryMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Marketing_FillEnquiryMaster]
--[Marketing_FillEnquiryMaster] 27
@EnquiryId int
AS
BEGIN
SELECT EDM.Quantity,EDM.NewItemCode,EDM.NewItemName, EDM.ItemId, EDM.IsNewItem,
		EM.EnquiryNumber,EM.EnquiryDate, EM.EnqRefNumber, EM.Address1, EM.ContactPerson, EM.NewCustCode, EM.NewCustName,
		EM.Remark, EM.SampleStatus,EM.QuotationNumber, EM.QuotationDate,
		EM.SampleRequiredDate, EM.SampleProductionDate,
		EM.SampleSubmissionQuantity, EM.SampeSubmissionDate,
		MEM.MedOfEnqID, MEM.MedOfEnqName,
		--CM.CustCode, 
		--CM.CustName,
		IM.ItemName,
		 IM.ItemCode,
		--UM.UnitId, --UM.UnitName,
		CatM.CategoryName, SP.supptype, SP.supptypeid, CatM.CategoryId
FROM Marketing_EnquiryDetailMaster EDM
INNER JOIN Marketing_EnquiryMaster EM
ON EM.EnquiryId = EDM.EnquiryId
INNER JOIN Marketing_MediumOfEnqMaster MEM
ON EM.MedOfEnqId = MEM.MedOfEnqID
--INNER JOIN CustomerMaster CM
--ON EM.CustomerId=CM.Id
INNER JOIN ItemMaster IM
ON EDM.ItemId = IM.ID
--INNER JOIN UnitMaster UM
--ON EDM.Unit = UM.UnitId
INNER JOIN CategoryMaster CatM
ON EM.CategoryID = CatM.CategoryId
INNER JOIN suppliertypemaster SP
ON EM.SuppTypeId = SP.supptypeid
WHERE EM.EnquiryId = @EnquiryId
END
GO
/****** Object:  StoredProcedure [dbo].[MArketing_FillCustomerPOMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MArketing_FillCustomerPOMaster]
 -- [dbo].[MArketing_FillCustomerPOMaster]
@CustomerPOID INT
AS
BEGIN
SELECT 
MCPM.CustomerCode, MCPM.CustomerName, MCPM.ConsigneeID,
MCPM.PoNo, MCPM.IsPoOpen, mcpm.IsPoClosed, MCPM.PoDate, MCPM.CustomerLotNo,
MCPM.ThirdPartyLotNo, MCPM.ThirdPartyPoNo, MCPM.ContactNo, MCPM.FaxNo,
MCPM.EmailID, MCPM.[Address], MCPM.ECCNo, MCPM.CSTNo, MCPM.TINNo,
MCPM.ContactPersonName, MCPM.ContactPersonContactName,
MCPM.Total,MCPM.GST, MCPM.Remark,
MCPDM.RequiredQuantity, MCPDM.Rate, MCPDM.PackingCost, MCPDM.Excise, MCPDM.SerialNo, MCPDM.MoldAcco,
MCPDM.DateSchedule1, MCPDM.QtySchedule1,MCPDM.DateSchedule2, MCPDM.QtySchedule2, MCPDM.DateSchedule3,MCPDM.QtySchedule3,
MCPDM.DateSchedule4, MCPDM.QtySchedule4, MCPDM.DateSchedule5, MCPDM.QtySchedule5, MCPDM.DateSchedule6, MCPDM.QtySchedule6,
MCPDM.DateSchedule7, MCPDM.QtySchedule7, MCPDM.DateSchedule8 ,MCPDM.QtySchedule8, MCPDM.ItemName,
IM.ItemName, IM.ItemCode,
MTM.ModeOfTransport,MTM.TransportID,
UM.UnitName,UM.UnitId,
QM.QutationNo,QM.Id,
MSM.ShipMentAccount, MSM.ShipmentID
FROM Marketing_CustomerPOMaster MCPM
INNER JOIN Marketing_CustomerPODetailMaster MCPDM
ON MCPM.CustomerPOId = MCPDM.CustomerPOId 
INNER JOIN ItemMaster IM
ON MCPDM.ItemCode = IM.ItemCode
INNER JOIN Marketing_TransportMaster MTM
ON MTM.TransportID = MCPDM.TransportId
INNER JOIN UnitMaster UM
ON UM.UnitId = MCPDM.UnitId
INNER JOIN QuotationMaster QM
ON QM.Id = MCPM.QuotationId
INNER JOIN Marketing_ShipmentMaster MSM
ON MSM.ShipmentID = MCPM.ShipmentID

WHERE MCPM.CustomerPOId = @CustomerPOID
END
GO
/****** Object:  StoredProcedure [dbo].[BindGridData]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[BindGridData]

As
Begin
	 
	 
	  Select CPM.CustName, CPM.CustCode, CPM.CustomerPONo, OAM.OARemark, CPM.ThirdPartyPONo, CPM.ThirdPartyPODate,
			OAM.OrderAcceptanceDate, OAM.Destination, OAM.Documents, OAM.Payment, OAM.ECC, OAM.ExciseDuty, 
			OAM.SalesTax,OAM.SalesExecutive
			 
			
	 From CustomerPOMaster CPM
	 Inner Join OrderAcceptanceMaster OAM
	 ON CPM.CustomerPOID = OAM.CustomerPOID
	
End
GO
/****** Object:  StoredProcedure [dbo].[BindAllDataVsCustomerPONumber]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------------------------------------------

--8)  BindAllDataVsCustomerPONumber : Bind all data to grid when u select CustomerPONumber from dropdown list


CREATE Proc [dbo].[BindAllDataVsCustomerPONumber]
@CustomerPONo varchar(50)

As
Begin
	
	Select Distinct CPM.CustName, CPM.CustCode, OAM.OARemark, CPM.ThirdPartyPONo, CPM.ThirdPartyPODate, OAM.OrderAcceptanceNo, CPM.CustomerPONo,
			OAM. OrderAcceptanceDate, OAM.Destination, OAM.Documents, OAM.Payment, OAM.ECC, OAM.ExciseDuty, OAM.SalesTax, OAM.SalesExecutive
			
	
	
	From CustomerPOMaster CPM
	Inner Join OrderAcceptanceMaster OAM
	ON CPM.CustomerPOID = OAM.CustomerPOID	
	
	Where CPM.CustomerPONo = @CustomerPONo;
	
End
GO
/****** Object:  UserDefinedFunction [dbo].[AutoGenOrderAcceptanceNumber]    Script Date: 04/08/2023 08:39:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------Function to generate Auto OrderAcceptanceNumber--------------------------------------------------------------------------------------------------


CREATE Function [dbo].[AutoGenOrderAcceptanceNumber]
(
	@OrderAcceptanceID int
)

returns Varchar(MAX)
As
Begin 
	
	Declare @ID1 int
	
	DECLARE	@Yrs varchar(200) = (Select RIGHT(YEAR(GETDATE()),2))

	DECLARE	@Years varchar(200) = (Select RIGHT(YEAR(GETDATE())+ 1, 2))
	
	DECLARE @ID int = (Select OrderAcceptanceID From OrderAcceptanceMaster Where OrderAcceptanceID = (Select MAX (OrderAcceptanceID) From OrderAcceptanceMaster));
					
					IF(@ID <= 9)
						BEGIN
							Set @ID = 000 +CONVERT(VARCHAR, @ID +1 )
						End
					
					
					Else If(@ID >=10 AND @ID<=99)
						Begin 
							Set @ID= 00 +CONVERT(VARCHAR, @ID + 1)
						End 
								 
					Else If(@ID >=100 AND @ID<=999)
						Begin 
							Set @ID= 0 +CONVERT(VARCHAR, @ID +1)
						End 
					
					
					
	
Return 'OA'+@Yrs+@Years +'00'+ Convert( VARCHAR, @ID )

End
GO
/****** Object:  StoredProcedure [dbo].[GetSupplierMasternMDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[GetSupplierMasternMDetails]
As
Begin 

Select SM.SupplierPoId,  SM.SupplierPONo, 
--SupM.SuppName  
'SuppName' ,
 PM.PaymentType, SM.Packing, SM.Height, TM.TransportType, SM.TotalAmount,
EM.FristName +' '+ EM.LastName as Name, SM.Warrenty, SM.ServiceTax, SM.OtherCharges, SM.NetTotal,
SM.Remark, TrTM.TransporterType, LD.UserName, BM.BranchName, SM.SupplierPoDate,  
 
SPM.SupplierPoDtlId, SPM.ItemId, IM.ItemName, IM.ItemCode, SPM.PoRate, SPM.PoQuantity, SPM.Excise, SPM.Discount, SPM.PoScheduleDate

From SupplierPOMaster SM
Inner Join SupplierPoDetailMaster SPM
On SM.SupplierPoId = SPM.SupplierPoId
Inner Join ItemMaster IM
On IM.ID = SPM.ItemId
Inner Join TransportTypeMaster TM
On TM.TransportTypeId = SM.TransportTypeId
Inner Join PaymentTypeMaster PM
On PM.PaymentTypeId = SM.PaymentTypeId
Inner Join EmployMaster EM
On EM.ESrNo = SM.VerifiedById 
Left Join TransporterTypeMaster TrTM
On TrTM.TransporterTypeId = SM.TransporterTypeId
Left Join LoginDetails_back LD
On LD.Id = SM.LoginUserId
Left Join BranchMaster BM
On BM.BranchId = SM.BranchId
--Left Join SupplierMaster SupM
--On SupM.Supp = SM.SupplierId
 
End
GO
/****** Object:  StoredProcedure [dbo].[GetOrderAcceptanceNo]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--2) Bind OrderAcceptance Number 

Create Procedure [dbo].[GetOrderAcceptanceNo]
As
Begin 
	
	Select OrderAcceptanceNo From OrderAcceptanceMaster

End
GO
/****** Object:  StoredProcedure [dbo].[GetQuotationDataFinal]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetQuotationDataFinal]
@QuotationId int
as
Begin
Select QM.QuotationNumber,QM.QuotationDate,QM.NewCustomerName,QM.Id,QM.ContactPerson,QM.Quantity,QM.Rate,QD.ID,QD.ToolMouldId,QD.PackingCost,QD.OtherCost,QD.Material,QD.UnitId,QD.Remark from QuotationMasterFinal QM inner join QuotationDetailFinal1 QD on QM.QuotationId=QD.QuotationId where QM.QuotationId=@QuotationId 
end;
GO
/****** Object:  StoredProcedure [dbo].[GetQuotataionDetailId]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetQuotataionDetailId]
@QuotationId int
As
Begin
Select QuatationDetailId from QuotationDetailFinal1 where QuotationId=@QuotationId
end;
GO
/****** Object:  StoredProcedure [dbo].[GetQuoatationDataById]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetQuoatationDataById]
@QuotationId int
As
Begin
Select * from QuotationMasterFinal inner join QuotationDetailFinal1 on QuotationMasterFinal.QuotationId=QuotationDetailFinal1.QuotationId where QuotationMasterFinal.QuotationId=@QuotationId
end;
GO
/****** Object:  StoredProcedure [dbo].[GetDetails]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetDetails]
@QuotationId int,
@Id int
As
Begin
Select * from QuotationMasterFinal where QuotationId=@QuotationId
Select * from QuotationDetailFinal1 where QuotationId=@QuotationId OR ID=@Id
end;
GO
/****** Object:  StoredProcedure [dbo].[GetDataOfQMQD]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetDataOfQMQD]
@QuotationId int
as
Begin
Select QuatationDetailId,ToolMouldId,DeliveryLeadTime,PackingCost,DevelopmentToolCost,MouldCost,MouldCavity,OtherCost,OtherCostRemark,Material,UnitId,Ecess,ServiceTax,Excise,SaleTax,PaymentTypeId,TransportId,FreightId,PlanTypeId,PackingId,StatusId,AgainstForm,Remark,DrawingId,SampleRequired,DeliveryTermId,DocumentRequired,Advance,ItemSubject,ItemTerms,ToolSubject,ToolTerms from QuotationDetailFinal1 where QuatationDetailId=@QuotationId
End;
GO
/****** Object:  StoredProcedure [dbo].[GetAllQuotationDetails]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetAllQuotationDetails]
@Id int
As
Begin
Select Q.RevisionNumber,Q.QuotationNumber,Q.QuotationDate,Q.IsNewCustomer,Q.NewCustomerName,Q.NewCustomerCode,Q.Id,
Q.[Address],Q.ContactPerson,Q.Quantity,Q.Rate,Q.SymbolId,
Qt.DeliveryLeadTime,Qt.PackingCost,Qt.DevelopmentToolCost,Qt.MouldCost,Qt.MouldCavity,Qt.OtherCost,Qt.OtherCostRemark,Qt.Material,Qt.UnitId,Qt.Ecess,
Qt.ServiceTax,Qt.Excise,Qt.SaleTax,Qt.PaymentTypeId,Qt.TransportId,Qt.FreightId,Qt.PlanTypeId,Qt.PackingId,Qt.StatusId,Qt.AgainstForm,Qt.Remark,
Qt.DrawingId,Qt.SampleRequired,Qt.DeliveryTermId,Qt.DocumentRequired,Qt.Advance,Qt.PreparedByEmpNameId,Qt.ApprovedbyEmpNameId,ReviewedByEmpNameId,
Qt.ItemSubject,Qt.ItemTerms,Qt.ToolSubject,Qt.ToolTerms from QuotationMasterFinal Q inner join QuotationDetailFinal1 Qt on Q.QuotationId = Qt.QuotationId where Qt.QuotationId=@Id 
end;
GO
/****** Object:  StoredProcedure [dbo].[GetAllQuotationData1]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetAllQuotationData1]
@QuotationId int = 0
As
Begin
if(@QuotationId=0)
Begin
Select QM.QuotationId,QM.WithEnquiry,QM.EnquiryId,QM.RevisionNumber,QM.QuotationNumber,QM.QuotationDate,QM.IsNewCustomer,QM.Id,
QM.NewCustomerName,QM.NewCustomerCode,QM.Quantity,QM.Rate,QM.SymbolId,

CM.Id,CM.CustCode,CM.CustName,CM.ContactPerson,CM.Address1,

IM.ID,IM.ItemCode,IM.ItemName,IM.Material,IM.UnitId,

TM.ToolMouldId,TM.ToolMouldCode,TM.ToolmouldName,TM.DeliveryLeadTime,TM.PackingCost,TM.DevelopmentToolCost,
TM.MouldCost,TM.MouldCavity,TM.OtherCost,TM.OtherCostRemark,

QT.QuatationDetailId,QT.ID,QT.ToolMouldId,QT.Ecess,Qt.ServiceTax,Qt.Excise,Qt.SaleTax,Qt.PaymentTypeId,Qt.TransportId,Qt.FreightId,Qt.PlanTypeId,Qt.PackingId,Qt.StatusId,Qt.AgainstForm,Qt.Remark,
Qt.DrawingId,Qt.SampleRequired,Qt.DeliveryTermId,Qt.DocumentRequired,Qt.Advance,Qt.PreparedByEmpNameId,Qt.ApprovedbyEmpNameId,ReviewedByEmpNameId,
Qt.ItemSubject,Qt.ItemTerms,Qt.ToolSubject,Qt.ToolTerms from QuotationDetailFinal1 Qt inner join QuotationMasterFinal QM on Qt.QuotationId=QM.QuotationId
inner join CustomerMaster CM on QM.Id=CM.Id
inner join ItemMaster IM on IM.ID=QT.ID
inner join ToolMaster TM on TM.ToolMouldId=QT.ToolMouldId
End
Else
Begin
Select QM.QuotationId,QM.WithEnquiry,QM.EnquiryId,QM.RevisionNumber,QM.QuotationNumber,QM.QuotationDate,QM.IsNewCustomer,QM.Id,
QM.NewCustomerName,QM.NewCustomerCode,QM.Quantity,QM.Rate,QM.SymbolId,
CM.Id,CM.CustCode,CM.CustName,CM.ContactPerson,CM.Address1,
IM.ID,IM.ItemCode,IM.ItemName,IM.Material,IM.UnitId,
TM.ToolMouldId,TM.ToolMouldCode,TM.ToolmouldName,TM.DeliveryLeadTime,TM.PackingCost,TM.DevelopmentToolCost,
TM.MouldCost,TM.MouldCavity,TM.OtherCost,TM.OtherCostRemark,

QT.QuatationDetailId,QT.ID,QT.ToolMouldId,QT.Ecess,Qt.ServiceTax,Qt.Excise,Qt.SaleTax,Qt.PaymentTypeId,Qt.TransportId,Qt.FreightId,Qt.PlanTypeId,Qt.PackingId,Qt.StatusId,Qt.AgainstForm,Qt.Remark,
Qt.DrawingId,Qt.SampleRequired,Qt.DeliveryTermId,Qt.DocumentRequired,Qt.Advance,Qt.PreparedByEmpNameId,Qt.ApprovedbyEmpNameId,ReviewedByEmpNameId,
Qt.ItemSubject,Qt.ItemTerms,Qt.ToolSubject,Qt.ToolTerms from QuotationDetailFinal1 Qt inner join QuotationMasterFinal QM on Qt.QuotationId=QM.QuotationId
inner join CustomerMaster CM on QM.Id=CM.Id
inner join ItemMaster IM on IM.ID=QT.ID
inner join ToolMaster TM on TM.ToolMouldId=QT.ToolMouldId
where QM.QuotationId=@QuotationId
End
End
GO
/****** Object:  StoredProcedure [dbo].[GetAllQuotationData]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[GetAllQuotationData]
As
Begin
Select Q.WithEnquiry,Q.EnquiryId,Q.RevisionNumber,Q.QuotationNumber,Q.QuotationDate,Q.IsNewCustomer,Q.NewCustomerName,Q.NewCustomerCode,Q.Id,
Q.[Address],Q.ContactPerson,Q.Quantity,Q.Rate,Q.SymbolId,
Qt.ID,QT.ToolMouldId,Qt.DeliveryLeadTime,Qt.PackingCost,Qt.DevelopmentToolCost,Qt.MouldCost,Qt.MouldCavity,Qt.OtherCost,Qt.OtherCostRemark,Qt.Material,Qt.UnitId,Qt.Ecess,
Qt.ServiceTax,Qt.Excise,Qt.SaleTax,Qt.PaymentTypeId,Qt.TransportId,Qt.FreightId,Qt.PlanTypeId,Qt.PackingId,Qt.StatusId,Qt.AgainstForm,Qt.Remark,
Qt.DrawingId,Qt.SampleRequired,Qt.DeliveryTermId,Qt.DocumentRequired,Qt.Advance,Qt.PreparedByEmpNameId,Qt.ApprovedbyEmpNameId,ReviewedByEmpNameId,
Qt.ItemSubject,Qt.ItemTerms,Qt.ToolSubject,Qt.ToolTerms from QuotationMasterFinal Q inner join QuotationDetailFinal1 Qt on Q.QuotationId = Qt.QuotationId ;
end;
GO
/****** Object:  StoredProcedure [dbo].[FillOrderAcceptanceData]    Script Date: 04/08/2023 08:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[FillOrderAcceptanceData]

@OrderAcceptanceNO varchar(100)

As
Begin
	Select CPM.CustName, CPM.CustCode, OAM.OARemark, CPM.ThirdPartyPONo, CPM.ThirdPartyPODate, OAM.OrderAcceptanceNo, CPM.CustomerPONo,
			OAM. OrderAcceptanceDate, OAM.Destination, OAM.Documents, OAM.ECC, OAM.ExciseDuty, OAM.SalesTax, OAM.SalesExecutive,
			OAM.Payment
			
	
	From CustomerPOMaster CPM
	Inner Join OrderAcceptanceMaster OAM
	ON CPM.CustomerPOID = OAM.CustomerPOID
	
	
	
	Where OrderAcceptanceNo = @OrderAcceptanceNO  
	
End
GO
/****** Object:  StoredProcedure [dbo].[InsertIntoQuotationMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertIntoQuotationMaster](
@WithEnquiry bit,
@EnquiryId varchar(100),
@RevisionNumber varchar(100),
@QuotationNumber varchar(100),
@QuotationDate datetime,
@IsNewCustomer bit,
@NewCustomerName varchar(100),
@NewCustomerCode varchar(100),
@Id int,
--@CustomerName varchar(100),
--@CustomerCode varchar(100),
@Address varchar(100),
@ContactPerson varchar(100),
--@Quantity int,
--@Rate int,
--@SymbolId int,
@LoginUserId int,
@BranchId int,
@SystemEntryDate datetime,
@QuotationId int out)
As
begin
Insert into QuotationMasterFinal
(WithEnquiry,
EnquiryId,
RevisionNumber,
QuotationNumber,
QuotationDate,
IsNewCustomer,
NewCustomerName,
NewCustomerCode,
Id,
--CustomerName,
--CustomerCode,
[Address],
ContactPerson,
--Quantity,
--Rate,
--SymbolId,
LoginUserId,
BranchId,
SystemEntryDate)
values
(@WithEnquiry,
@EnquiryId,
@RevisionNumber,
(Select dbo.GetAutoGenQuotationNumber1(@Id,@NewCustomerName)),
@QuotationDate,
@IsNewCustomer,
@NewCustomerName,
@NewCustomerCode,
@Id,
--@CustomerName,
--@CustomerCode,
@Address,
@ContactPerson,
--@Quantity,
--@Rate,
--@SymbolId,
@LoginUserId,
@BranchId,
@SystemEntryDate)
SET @QuotationId = (SELECT SCOPE_IDENTITY())
End;
GO
/****** Object:  StoredProcedure [dbo].[insertintoquotationfinal1]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertintoquotationfinal1]
(@ID int ,
@ToolMouldId int,
@DeliveryLeadTime datetime,
@PackingCost decimal(10,2),
@DevelopmentToolCost decimal(10, 2),
@MouldCost decimal(10,2),
@MouldCavity int ,
@OtherCost decimal(10,2),
@OtherCostRemark varchar(100),
@Material varchar(100),
@UnitId int,
@Ecess varchar(100),
@ServiceTax decimal(10,2),
@Excise varchar(100),
@SaleTax decimal(10,2),
@PaymentTypeId int,
@TransportId int ,
@FreightId int,
@PlanTypeId int,
@PackingId int ,
@StatusId int,
@AgainstForm varchar(100),
@Remark varchar(100),
@DrawingId int,
@SampleRequired varchar(100),
@DeliveryTermId int,
@DocumentRequired varchar(100),
@Advance decimal(10,2),	
@PreparedbyEmpNameId int,
@ApprovedbyEmpNameId int,
@ReviewedByEmpNameId int ,
@ItemSubject varchar(100) ,
@ItemTerms varchar(100) ,
@ToolSubject varchar(100),
@ToolTerms varchar(100),	
@QuotationId int,
@QR varchar(200),
@SymbolId int,
@UnitName varchar(100)
)
As
Begin
Insert into QuotationDetailFinal1
(ID,
ToolMouldId,
DeliveryLeadTime,
PackingCost,
DevelopmentToolCost,
MouldCost,
MouldCavity,
OtherCost,
OtherCostRemark,
Material,
UnitId,
Ecess,
ServiceTax,
Excise ,
SaleTax,
PaymentTypeId,
TransportId,
FreightId,
PlanTypeId,
PackingId,
StatusId,
AgainstForm,		
Remark,
DrawingId,
SampleRequired ,
DeliveryTermId ,
DocumentRequired ,
Advance ,	
PreparedbyEmpNameId ,
ApprovedbyEmpNameId ,
ReviewedByEmpNameId  ,
ItemSubject  ,
ItemTerms  ,
ToolSubject ,
ToolTerms ,
QuotationId,
QR,
SymbolId,
UnitName)
values
(@ID,
@ToolMouldId,
@DeliveryLeadTime ,
@PackingCost,
@DevelopmentToolCost,
@MouldCost,
@MouldCavity,
@OtherCost,
@OtherCostRemark,
@Material,
@UnitId ,
@Ecess,
@ServiceTax ,
@Excise ,
@SaleTax ,	
@PaymentTypeId ,
@TransportId ,
@FreightId ,
@PlanTypeId ,
@PackingId ,
@StatusId ,
@AgainstForm ,
@Remark,
@DrawingId,
@SampleRequired ,
@DeliveryTermId ,
@DocumentRequired ,
@Advance ,	
@PreparedbyEmpNameId ,
@ApprovedbyEmpNameId ,
@ReviewedByEmpNameId  ,
@ItemSubject  ,
@ItemTerms  ,
@ToolSubject ,
@ToolTerms ,
@QuotationId,
@QR,
@SymbolId,
@UnitName)
End;
GO
/****** Object:  StoredProcedure [dbo].[InsertIntoQuotationDetails]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertIntoQuotationDetails]
(@ItemName varchar(100),
@ItemCode varchar(100),
@ToolMouldId int,
@DeliveryLeadTime datetime,
@PackingCost decimal(10,2),
@DevelopmentToolCost decimal(10,2),
@MouldCost decimal(10,2),
@MouldCavity int,
@OtherCost decimal(10,2),
@OtherCostRemark varchar(100),
@Material varchar(100),
@UnitId int,
@Ecess varchar(100),
@ServiceTax int,
@Excise varchar(100),
@SaleTax int,
@PaymentTypeId int ,
@QuotationId int)
As
Begin
Insert into QuotationDetailFinal(
ItemName,
ItemCode,
ToolMouldId ,
DeliveryLeadTime,
PackingCost,
DevelopmentToolCost,
MouldCost,
MouldCavity,
OtherCost,
OtherCostRemark,
Material,
UnitId,
Ecess,
ServiceTax,
Excise,
SaleTax,
PaymentTypeId,
QuotationId)
values
(@ItemName,
@ItemCode,
@ToolMouldId ,
@DeliveryLeadTime,
@PackingCost,
@DevelopmentToolCost,
@MouldCost,
@MouldCavity,
@OtherCost,
@OtherCostRemark,
@Material,
@UnitId ,
@Ecess,
@ServiceTax,
@Excise,
@SaleTax,
@PaymentTypeId,
@QuotationId)
End;
GO
/****** Object:  StoredProcedure [dbo].[InsertOrderAcceptanceMaster]    Script Date: 04/08/2023 08:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[InsertOrderAcceptanceMaster]

@OrderAcceptanceID int,
@CustomerPOID int ,
@CustomerName varchar(30),
@CustomerPONo varchar(50),
@OARemark varchar(50),
@OrderAcceptanceDate DateTime,
@Destination varchar(50),
@Documents varchar(100),
@Payment varchar(50),
@ECC int ,
@ExciseDuty int,
@SalesTax int,
@SalesExecutive varchar(50),
@OrderAcceptanceNo varchar(100)


As
Begin

Insert Into OrderAcceptanceMaster
(
	CustomerPOID,	
	CustName,
	CustomerPONo,
	OARemark,
	OrderAcceptanceDate,
	Destination,
	Documents,
	Payment,
	ECC,
	ExciseDuty,
	SalesTax,
	SalesExecutive,
	OrderAcceptanceNo
)
Values
(
	@CustomerPOID,	
	
	(Select CustName From CustomerPOMaster where CustomerPOID = @CustomerPOID),
	(Select CustomerPONo From CustomerPOMaster Where CustomerPOID = @CustomerPOID),
	@OARemark,
	@OrderAcceptanceDate,	
	@Destination,
	@Documents,
	@Payment,
	@ECC,
	@ExciseDuty,
	@SalesTax,
	@SalesExecutive,
	[dbo].[AutoGenOrderAcceptanceNumber](@OrderAcceptanceID)

)

End
GO
/****** Object:  Default [IsActiveRoleAccess1]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Admin_RoleAccessDetail] ADD  CONSTRAINT [IsActiveRoleAccess1]  DEFAULT ((1)) FOR [AddAccess]
GO
/****** Object:  Default [IsActiveRoleAccess2]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Admin_RoleAccessDetail] ADD  CONSTRAINT [IsActiveRoleAccess2]  DEFAULT ((1)) FOR [UpdateAccess]
GO
/****** Object:  Default [IsActiveRoleAccess3]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Admin_RoleAccessDetail] ADD  CONSTRAINT [IsActiveRoleAccess3]  DEFAULT ((1)) FOR [SearchAccess]
GO
/****** Object:  Default [IsActiveRoleAccess4]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Admin_RoleAccessDetail] ADD  CONSTRAINT [IsActiveRoleAccess4]  DEFAULT ((1)) FOR [DeleteAccess]
GO
/****** Object:  Default [IsActiveRole]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Admin_RoleMaster] ADD  CONSTRAINT [IsActiveRole]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__CustomerT__IsAct__7132C993]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerTypeMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__IndentMas__Inden__7226EDCC]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[IndentMaster] ADD  DEFAULT ((0)) FOR [IndentNo]
GO
/****** Object:  Default [DF__IndentNew__IsApp__731B1205]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[IndentNew] ADD  DEFAULT ((0)) FOR [IsApproved]
GO
/****** Object:  Default [DF__ItemMaste__Drawi__740F363E]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster] ADD  DEFAULT ((0)) FOR [DrawingNo]
GO
/****** Object:  Default [DF__ItemMaste__Speci__75035A77]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster] ADD  DEFAULT ('Spec') FOR [Specification]
GO
/****** Object:  Default [DF__Marketing__IsNew__75F77EB0]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster] ADD  DEFAULT ((0)) FOR [IsNewItem]
GO
/****** Object:  Default [DF__Marketing__IsNew__76EBA2E9]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster] ADD  DEFAULT ((0)) FOR [IsNewCustomer]
GO
/****** Object:  Default [DF__Marketing__IsAct__77DFC722]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_MediumOfEnqMaster] ADD  DEFAULT ((0)) FOR [IsActive]
GO
/****** Object:  Default [CK_TestTable_Col1]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MasterMenu] ADD  CONSTRAINT [CK_TestTable_Col1]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__MasterMen__IsMas__79C80F94]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MasterMenu] ADD  DEFAULT ((1)) FOR [IsMaster]
GO
/****** Object:  Default [DF__MaterialI__Disco__7ABC33CD]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MaterialInvoiceDetails] ADD  DEFAULT ((0)) FOR [Discount]
GO
/****** Object:  Default [DF__MaterialI__TAXAB__7BB05806]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MaterialInvoiceDetails] ADD  DEFAULT ((0)) FOR [TAXABLEVALUE]
GO
/****** Object:  Default [DF__MaterialIn__CGST__7CA47C3F]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MaterialInvoiceDetails] ADD  DEFAULT ((0)) FOR [CGST]
GO
/****** Object:  Default [DF__MaterialI__CGSTV__7D98A078]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MaterialInvoiceDetails] ADD  DEFAULT ((0)) FOR [CGSTValue]
GO
/****** Object:  Default [DF__MaterialIn__SGST__7E8CC4B1]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MaterialInvoiceDetails] ADD  DEFAULT ((0)) FOR [SGST]
GO
/****** Object:  Default [DF__MaterialI__SGSTV__7F80E8EA]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MaterialInvoiceDetails] ADD  DEFAULT ((0)) FOR [SGSTValue]
GO
/****** Object:  Default [DF__MaterialIn__IGST__00750D23]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MaterialInvoiceDetails] ADD  DEFAULT ((0)) FOR [IGST]
GO
/****** Object:  Default [DF__MaterialI__IGSTV__0169315C]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MaterialInvoiceDetails] ADD  DEFAULT ((0)) FOR [IGSTValue]
GO
/****** Object:  Default [DF__MaterialI__Total__025D5595]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MaterialInvoiceDetails] ADD  DEFAULT ((0)) FOR [TotalGSTTax]
GO
/****** Object:  Default [DF__MaterialI__Total__035179CE]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MaterialInvoiceDetails] ADD  DEFAULT ((0)) FOR [TotalGSTAMOUNT]
GO
/****** Object:  Default [DF__MaterialI__Loadi__46E78A0C]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MaterialInvoiceMaster] ADD  CONSTRAINT [DF__MaterialI__Loadi__46E78A0C]  DEFAULT ((0)) FOR [LoadingCharges]
GO
/****** Object:  Default [DF__MaterialI__Trans__47DBAE45]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MaterialInvoiceMaster] ADD  CONSTRAINT [DF__MaterialI__Trans__47DBAE45]  DEFAULT ((0)) FOR [TransportChages]
GO
/****** Object:  Default [DF__MaterialI__Freig__48CFD27E]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MaterialInvoiceMaster] ADD  CONSTRAINT [DF__MaterialI__Freig__48CFD27E]  DEFAULT ((0)) FOR [FreightAmount]
GO
/****** Object:  Default [DF__MaterialI__Packi__49C3F6B7]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MaterialInvoiceMaster] ADD  CONSTRAINT [DF__MaterialI__Packi__49C3F6B7]  DEFAULT ((0)) FOR [PackingAmount]
GO
/****** Object:  Default [DF__OrderAcce__IsApp__08162EEB]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster] ADD  DEFAULT ((1)) FOR [IsApproved]
GO
/****** Object:  Default [IsActive_Def1]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SubMasterMenu] ADD  CONSTRAINT [IsActive_Def1]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__TaxInvoic__Disco__2C3393D0]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceDetails] ADD  CONSTRAINT [DF__TaxInvoic__Disco__2C3393D0]  DEFAULT ((0)) FOR [Discount]
GO
/****** Object:  Default [DF__TaxInvoic__TAXAB__2D27B809]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceDetails] ADD  CONSTRAINT [DF__TaxInvoic__TAXAB__2D27B809]  DEFAULT ((0)) FOR [TAXABLEVALUE]
GO
/****** Object:  Default [DF__TaxInvoice__CGST__2E1BDC42]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceDetails] ADD  CONSTRAINT [DF__TaxInvoice__CGST__2E1BDC42]  DEFAULT ((0)) FOR [CGST]
GO
/****** Object:  Default [DF__TaxInvoic__CGSTV__2F10007B]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceDetails] ADD  CONSTRAINT [DF__TaxInvoic__CGSTV__2F10007B]  DEFAULT ((0)) FOR [CGSTValue]
GO
/****** Object:  Default [DF__TaxInvoice__SGST__300424B4]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceDetails] ADD  CONSTRAINT [DF__TaxInvoice__SGST__300424B4]  DEFAULT ((0)) FOR [SGST]
GO
/****** Object:  Default [DF__TaxInvoic__SGSTV__30F848ED]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceDetails] ADD  CONSTRAINT [DF__TaxInvoic__SGSTV__30F848ED]  DEFAULT ((0)) FOR [SGSTValue]
GO
/****** Object:  Default [DF__TaxInvoice__IGST__31EC6D26]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceDetails] ADD  CONSTRAINT [DF__TaxInvoice__IGST__31EC6D26]  DEFAULT ((0)) FOR [IGST]
GO
/****** Object:  Default [DF__TaxInvoic__IGSTV__32E0915F]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceDetails] ADD  CONSTRAINT [DF__TaxInvoic__IGSTV__32E0915F]  DEFAULT ((0)) FOR [IGSTValue]
GO
/****** Object:  Default [DF__TaxInvoic__Total__33D4B598]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceDetails] ADD  CONSTRAINT [DF__TaxInvoic__Total__33D4B598]  DEFAULT ((0)) FOR [TotalGSTTax]
GO
/****** Object:  Default [DF__TaxInvoic__Total__34C8D9D1]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceDetails] ADD  CONSTRAINT [DF__TaxInvoic__Total__34C8D9D1]  DEFAULT ((0)) FOR [TotalGSTAMOUNT]
GO
/****** Object:  Default [DF__TaxInvoic__Loadi__1387E197]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceMaster] ADD  DEFAULT ((0)) FOR [LoadingCharges]
GO
/****** Object:  Default [DF__TaxInvoic__Trans__147C05D0]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceMaster] ADD  DEFAULT ((0)) FOR [TransportChages]
GO
/****** Object:  Default [DF__TaxInvoic__Freig__15702A09]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceMaster] ADD  DEFAULT ((0)) FOR [Freight]
GO
/****** Object:  Default [DF__TaxInvoic__Freig__16644E42]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceMaster] ADD  DEFAULT ((0)) FOR [FreightAmount]
GO
/****** Object:  Default [DF__TaxInvoic__Packi__1758727B]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceMaster] ADD  DEFAULT ((0)) FOR [Packing]
GO
/****** Object:  Default [DF__TaxInvoic__Packi__184C96B4]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceMaster] ADD  DEFAULT ((0)) FOR [PackingAmount]
GO
/****** Object:  Default [DF__TaxInvoic__MASCG__1940BAED]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceMaster] ADD  DEFAULT ((0)) FOR [MASCGSTRATE]
GO
/****** Object:  Default [DF__TaxInvoic__MASSG__1A34DF26]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceMaster] ADD  DEFAULT ((0)) FOR [MASSGSTRATE]
GO
/****** Object:  Default [DF__TaxInvoic__MASIG__1B29035F]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceMaster] ADD  DEFAULT ((0)) FOR [MASIGSTRATE]
GO
/****** Object:  Default [DF__TaxInvoic__MASCG__1C1D2798]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceMaster] ADD  DEFAULT ((0)) FOR [MASCGSTAMT]
GO
/****** Object:  Default [DF__TaxInvoic__MASSG__1D114BD1]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceMaster] ADD  DEFAULT ((0)) FOR [MASSGSTAMT]
GO
/****** Object:  Default [DF__TaxInvoic__MASIG__1E05700A]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[TaxInvoiceMaster] ADD  DEFAULT ((0)) FOR [MASIGSTAMT]
GO
/****** Object:  Default [DF_UT_EmployeeMaster_Validation_isValid]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UT_EmployeeMaster_Validation] ADD  CONSTRAINT [DF_UT_EmployeeMaster_Validation_isValid]  DEFAULT ((0)) FOR [isValid]
GO
/****** Object:  Default [DF__UT_Employ__uploa__1FEDB87C]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UT_EmployeeMaster_Validation] ADD  DEFAULT ((0)) FOR [uploadId]
GO
/****** Object:  Default [DF__UT_Employ__Uploa__20E1DCB5]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UT_EmployeeMaster_Varificaton] ADD  DEFAULT ((0)) FOR [UploadId]
GO
/****** Object:  Default [DF__UT_ItemMa__isVal__019E3B86]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UT_ItemMaster_Error] ADD  CONSTRAINT [DF__UT_ItemMa__isVal__019E3B86]  DEFAULT ((1)) FOR [isValid]
GO
/****** Object:  Default [DF__UT_ItemMa__uploa__02925FBF]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UT_ItemMaster_Error] ADD  CONSTRAINT [DF__UT_ItemMa__uploa__02925FBF]  DEFAULT ((1)) FOR [uploadId]
GO
/****** Object:  Default [DF__UT_ItemMa__isVal__038683F8]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UT_ItemMaster_Validation] ADD  CONSTRAINT [DF__UT_ItemMa__isVal__038683F8]  DEFAULT ((1)) FOR [isValid]
GO
/****** Object:  Default [DF__UT_ItemMa__uploa__047AA831]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UT_ItemMaster_Validation] ADD  CONSTRAINT [DF__UT_ItemMa__uploa__047AA831]  DEFAULT ((1)) FOR [uploadId]
GO
/****** Object:  Default [DF_UT_MachineVsCheckPoint_Validation_IsValid]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UT_MachineVsCheckPoint_Validation] ADD  CONSTRAINT [DF_UT_MachineVsCheckPoint_Validation_IsValid]  DEFAULT ((1)) FOR [IsValid]
GO
/****** Object:  Default [DF_UT_MachineVsCheckPoint_Validation_UploadId]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UT_MachineVsCheckPoint_Validation] ADD  CONSTRAINT [DF_UT_MachineVsCheckPoint_Validation_UploadId]  DEFAULT ((1)) FOR [UploadId]
GO
/****** Object:  ForeignKey [FK__LoginDeta__RoleI__5B438874]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Admin_LoginUserMaster]  WITH CHECK ADD  CONSTRAINT [FK__LoginDeta__RoleI__5B438874] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Admin_RoleMaster] ([RoleId])
GO
ALTER TABLE [dbo].[Admin_LoginUserMaster] CHECK CONSTRAINT [FK__LoginDeta__RoleI__5B438874]
GO
/****** Object:  ForeignKey [FK__Admin_Rol__Maste__2882FE7D]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Admin_RoleAccessDetail]  WITH CHECK ADD FOREIGN KEY([MasterMenuId])
REFERENCES [dbo].[MasterMenu] ([MasterMenuId])
GO
/****** Object:  ForeignKey [FK__Admin_Rol__Maste__68BD7F23]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Admin_RoleAccessDetail]  WITH CHECK ADD FOREIGN KEY([MasterMenuId])
REFERENCES [dbo].[MasterMenu] ([MasterMenuId])
GO
/****** Object:  ForeignKey [FK__Admin_Rol__RoleI__297722B6]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Admin_RoleAccessDetail]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Admin_RoleMaster] ([RoleId])
GO
/****** Object:  ForeignKey [FK__Admin_Rol__RoleI__69B1A35C]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Admin_RoleAccessDetail]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Admin_RoleMaster] ([RoleId])
GO
/****** Object:  ForeignKey [FK__Admin_Rol__SubMa__2A6B46EF]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Admin_RoleAccessDetail]  WITH CHECK ADD FOREIGN KEY([SubMasterMenuId])
REFERENCES [dbo].[SubMasterMenu] ([SubMasterMenuId])
GO
/****** Object:  ForeignKey [FK__Admin_Rol__SubMa__6AA5C795]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Admin_RoleAccessDetail]  WITH CHECK ADD FOREIGN KEY([SubMasterMenuId])
REFERENCES [dbo].[SubMasterMenu] ([SubMasterMenuId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Branc__2B5F6B28]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Branc__2C538F61]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Branc__6B99EBCE]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Branc__6C8E1007]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__CustomerM__CityI__2D47B39A]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([CityId])
REFERENCES [dbo].[CityMaster] ([CityId])
GO
/****** Object:  ForeignKey [FK__CustomerM__CityI__2E3BD7D3]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([CityId])
REFERENCES [dbo].[CityMaster] ([CityId])
GO
/****** Object:  ForeignKey [FK__CustomerM__CityI__6D823440]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([CityId])
REFERENCES [dbo].[CityMaster] ([CityId])
GO
/****** Object:  ForeignKey [FK__CustomerM__CityI__6E765879]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([CityId])
REFERENCES [dbo].[CityMaster] ([CityId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Count__2F2FFC0C]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[CountryMaster] ([CountryId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Count__30242045]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[CountryMaster] ([CountryId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Count__6F6A7CB2]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[CountryMaster] ([CountryId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Count__705EA0EB]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[CountryMaster] ([CountryId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Custo__3118447E]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([CustomerTypeId])
REFERENCES [dbo].[CustomerTypeMaster] ([CustomerTypeId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Custo__320C68B7]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([CustomerTypeId])
REFERENCES [dbo].[CustomerTypeMaster] ([CustomerTypeId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Custo__7152C524]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([CustomerTypeId])
REFERENCES [dbo].[CustomerTypeMaster] ([CustomerTypeId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Custo__7246E95D]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([CustomerTypeId])
REFERENCES [dbo].[CustomerTypeMaster] ([CustomerTypeId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Login__33008CF0]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Login__33F4B129]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Login__733B0D96]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__CustomerM__Login__742F31CF]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__CustomerM__State__34E8D562]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[StateMaster] ([StateId])
GO
/****** Object:  ForeignKey [FK__CustomerM__State__35DCF99B]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[StateMaster] ([StateId])
GO
/****** Object:  ForeignKey [FK__CustomerM__State__75235608]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[StateMaster] ([StateId])
GO
/****** Object:  ForeignKey [FK__CustomerM__State__76177A41]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerMaster]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[StateMaster] ([StateId])
GO
/****** Object:  ForeignKey [FK__CustomerP__Custo__36D11DD4]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerPOMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__CustomerP__Custo__770B9E7A]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[CustomerPOMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__EmployMas__Login__1EE485AA]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[EmployMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__IndentDet__Depar__1293BD5E]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[IndentDetailMaster]  WITH CHECK ADD  CONSTRAINT [FK__IndentDet__Depar__1293BD5E] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[DepartmentMaster] ([did])
GO
ALTER TABLE [dbo].[IndentDetailMaster] CHECK CONSTRAINT [FK__IndentDet__Depar__1293BD5E]
GO
/****** Object:  ForeignKey [FK__IndentDet__Depar__1B9317B3]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[IndentDetailMaster]  WITH CHECK ADD  CONSTRAINT [FK__IndentDet__Depar__1B9317B3] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[DepartmentMaster] ([did])
GO
ALTER TABLE [dbo].[IndentDetailMaster] CHECK CONSTRAINT [FK__IndentDet__Depar__1B9317B3]
GO
/****** Object:  ForeignKey [FK__IndentDet__Inden__1387E197]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[IndentDetailMaster]  WITH CHECK ADD  CONSTRAINT [FK__IndentDet__Inden__1387E197] FOREIGN KEY([IndentId])
REFERENCES [dbo].[IndentMaster] ([IndentId])
GO
ALTER TABLE [dbo].[IndentDetailMaster] CHECK CONSTRAINT [FK__IndentDet__Inden__1387E197]
GO
/****** Object:  ForeignKey [FK__IndentDet__Inden__1C873BEC]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[IndentDetailMaster]  WITH CHECK ADD  CONSTRAINT [FK__IndentDet__Inden__1C873BEC] FOREIGN KEY([IndentId])
REFERENCES [dbo].[IndentMaster] ([IndentId])
GO
ALTER TABLE [dbo].[IndentDetailMaster] CHECK CONSTRAINT [FK__IndentDet__Inden__1C873BEC]
GO
/****** Object:  ForeignKey [FK__IndentMas__Inden__3B95D2F1]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[IndentMaster]  WITH CHECK ADD FOREIGN KEY([IndentTypeId])
REFERENCES [dbo].[IndentTypeMaster] ([IndentTypeId])
GO
/****** Object:  ForeignKey [FK__IndentMas__Inden__3C89F72A]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[IndentMaster]  WITH CHECK ADD FOREIGN KEY([IndentTypeId])
REFERENCES [dbo].[IndentTypeMaster] ([IndentTypeId])
GO
/****** Object:  ForeignKey [FK__IndentMas__Inden__7BD05397]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[IndentMaster]  WITH CHECK ADD FOREIGN KEY([IndentTypeId])
REFERENCES [dbo].[IndentTypeMaster] ([IndentTypeId])
GO
/****** Object:  ForeignKey [FK__IndentMas__Inden__7CC477D0]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[IndentMaster]  WITH CHECK ADD FOREIGN KEY([IndentTypeId])
REFERENCES [dbo].[IndentTypeMaster] ([IndentTypeId])
GO
/****** Object:  ForeignKey [FK__ItemMaste__Branc__3D7E1B63]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__ItemMaste__Branc__7DB89C09]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__ItemMaste__Categ__3E723F9C]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[CategoryMaster] ([CategoryId])
GO
/****** Object:  ForeignKey [FK__ItemMaste__Categ__7EACC042]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[CategoryMaster] ([CategoryId])
GO
/****** Object:  ForeignKey [FK__ItemMaste__Colou__3F6663D5]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD FOREIGN KEY([ColourId])
REFERENCES [dbo].[ColourMaster] ([ColourId])
GO
/****** Object:  ForeignKey [FK__ItemMaste__Colou__7FA0E47B]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD FOREIGN KEY([ColourId])
REFERENCES [dbo].[ColourMaster] ([ColourId])
GO
/****** Object:  ForeignKey [FK__ItemMaste__Manuf__009508B4]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[ManufacturerMaster] ([ManufacturerId])
GO
/****** Object:  ForeignKey [FK__ItemMaste__Manuf__405A880E]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[ManufacturerMaster] ([ManufacturerId])
GO
/****** Object:  ForeignKey [FK__ItemMaste__SubCa__01892CED]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategoryMaster] ([SubCategoryId])
GO
/****** Object:  ForeignKey [FK__ItemMaste__SubCa__414EAC47]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategoryMaster] ([SubCategoryId])
GO
/****** Object:  ForeignKey [FK__ItemMaste__UnitI__027D5126]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD FOREIGN KEY([UnitId])
REFERENCES [dbo].[UnitMaster] ([UnitId])
GO
/****** Object:  ForeignKey [FK__ItemMaste__UnitI__08012052]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD FOREIGN KEY([UnitId])
REFERENCES [dbo].[UnitMaster] ([UnitId])
GO
/****** Object:  ForeignKey [FK__ItemMaste__UnitI__08F5448B]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD FOREIGN KEY([UnitId])
REFERENCES [dbo].[UnitMaster] ([UnitId])
GO
/****** Object:  ForeignKey [FK__ItemMaste__UnitI__4242D080]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD FOREIGN KEY([UnitId])
REFERENCES [dbo].[UnitMaster] ([UnitId])
GO
/****** Object:  ForeignKey [FK__ItemMaste__UserI__11D4A34F]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD  CONSTRAINT [FK__ItemMaste__UserI__11D4A34F] FOREIGN KEY([UserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
ALTER TABLE [dbo].[ItemMaster] CHECK CONSTRAINT [FK__ItemMaste__UserI__11D4A34F]
GO
/****** Object:  ForeignKey [FK__MachineVs__check__04659998]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MachineVsCheckPoint]  WITH CHECK ADD FOREIGN KEY([checkpointid])
REFERENCES [dbo].[checkpointMaster] ([checkpointid])
GO
/****** Object:  ForeignKey [FK__MachineVs__check__442B18F2]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MachineVsCheckPoint]  WITH CHECK ADD FOREIGN KEY([checkpointid])
REFERENCES [dbo].[checkpointMaster] ([checkpointid])
GO
/****** Object:  ForeignKey [FK__Marketing__Custo__0559BDD1]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_CustomerPODetailMaster]  WITH CHECK ADD FOREIGN KEY([CustomerPOId])
REFERENCES [dbo].[Marketing_CustomerPOMaster] ([CustomerPOId])
GO
/****** Object:  ForeignKey [FK__Marketing__Custo__451F3D2B]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_CustomerPODetailMaster]  WITH CHECK ADD FOREIGN KEY([CustomerPOId])
REFERENCES [dbo].[Marketing_CustomerPOMaster] ([CustomerPOId])
GO
/****** Object:  ForeignKey [FK__Marketing__Trans__064DE20A]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_CustomerPODetailMaster]  WITH CHECK ADD FOREIGN KEY([TransportId])
REFERENCES [dbo].[Marketing_TransportMaster] ([TransportID])
GO
/****** Object:  ForeignKey [FK__Marketing__Trans__46136164]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_CustomerPODetailMaster]  WITH CHECK ADD FOREIGN KEY([TransportId])
REFERENCES [dbo].[Marketing_TransportMaster] ([TransportID])
GO
/****** Object:  ForeignKey [FK__Marketing__UnitI__07420643]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_CustomerPODetailMaster]  WITH CHECK ADD FOREIGN KEY([UnitId])
REFERENCES [dbo].[UnitMaster] ([UnitId])
GO
/****** Object:  ForeignKey [FK__Marketing__UnitI__4707859D]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_CustomerPODetailMaster]  WITH CHECK ADD FOREIGN KEY([UnitId])
REFERENCES [dbo].[UnitMaster] ([UnitId])
GO
/****** Object:  ForeignKey [FK__Marketing__Consi__08362A7C]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_CustomerPOMaster]  WITH CHECK ADD FOREIGN KEY([ConsigneeID])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__Marketing__Consi__47FBA9D6]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_CustomerPOMaster]  WITH CHECK ADD FOREIGN KEY([ConsigneeID])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__Marketing__Quota__092A4EB5]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_CustomerPOMaster]  WITH CHECK ADD FOREIGN KEY([QuotationId])
REFERENCES [dbo].[QuotationMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__Marketing__Quota__48EFCE0F]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_CustomerPOMaster]  WITH CHECK ADD FOREIGN KEY([QuotationId])
REFERENCES [dbo].[QuotationMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__Marketing__Shipm__0A1E72EE]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_CustomerPOMaster]  WITH CHECK ADD FOREIGN KEY([ShipmentID])
REFERENCES [dbo].[Marketing_ShipmentMaster] ([ShipmentID])
GO
/****** Object:  ForeignKey [FK__Marketing__Shipm__49E3F248]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_CustomerPOMaster]  WITH CHECK ADD FOREIGN KEY([ShipmentID])
REFERENCES [dbo].[Marketing_ShipmentMaster] ([ShipmentID])
GO
/****** Object:  ForeignKey [FK__Marketing___Unit__0B129727]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([Unit])
REFERENCES [dbo].[UnitMaster] ([UnitId])
GO
/****** Object:  ForeignKey [FK__Marketing___Unit__0C06BB60]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([Unit])
REFERENCES [dbo].[UnitMaster] ([UnitId])
GO
/****** Object:  ForeignKey [FK__Marketing___Unit__4AD81681]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([Unit])
REFERENCES [dbo].[UnitMaster] ([UnitId])
GO
/****** Object:  ForeignKey [FK__Marketing___Unit__4BCC3ABA]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([Unit])
REFERENCES [dbo].[UnitMaster] ([UnitId])
GO
/****** Object:  ForeignKey [FK__Marketing__Enqui__0CFADF99]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([EnquiryId])
REFERENCES [dbo].[Marketing_EnquiryMaster] ([EnquiryId])
GO
/****** Object:  ForeignKey [FK__Marketing__Enqui__0DEF03D2]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([EnquiryId])
REFERENCES [dbo].[Marketing_EnquiryMaster] ([EnquiryId])
GO
/****** Object:  ForeignKey [FK__Marketing__Enqui__0EE3280B]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([EnquiryId])
REFERENCES [dbo].[Marketing_EnquiryMaster] ([EnquiryId])
GO
/****** Object:  ForeignKey [FK__Marketing__Enqui__4CC05EF3]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([EnquiryId])
REFERENCES [dbo].[Marketing_EnquiryMaster] ([EnquiryId])
GO
/****** Object:  ForeignKey [FK__Marketing__Enqui__4DB4832C]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([EnquiryId])
REFERENCES [dbo].[Marketing_EnquiryMaster] ([EnquiryId])
GO
/****** Object:  ForeignKey [FK__Marketing__Enqui__4EA8A765]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([EnquiryId])
REFERENCES [dbo].[Marketing_EnquiryMaster] ([EnquiryId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__0FD74C44]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__10CB707D]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__11BF94B6]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__12B3B8EF]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__4F9CCB9E]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__5090EFD7]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__51851410]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__52793849]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryDetailMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__Branc__13A7DD28]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__Marketing__Branc__149C0161]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__Marketing__Branc__1590259A]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__Marketing__Branc__168449D3]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__Marketing__Branc__536D5C82]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__Marketing__Branc__546180BB]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__Marketing__Branc__5555A4F4]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__Marketing__Branc__5649C92D]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__Marketing__Categ__17786E0C]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CategoryMaster] ([CategoryId])
GO
/****** Object:  ForeignKey [FK__Marketing__Categ__186C9245]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CategoryMaster] ([CategoryId])
GO
/****** Object:  ForeignKey [FK__Marketing__Categ__1960B67E]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CategoryMaster] ([CategoryId])
GO
/****** Object:  ForeignKey [FK__Marketing__Categ__1A54DAB7]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CategoryMaster] ([CategoryId])
GO
/****** Object:  ForeignKey [FK__Marketing__Categ__573DED66]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CategoryMaster] ([CategoryId])
GO
/****** Object:  ForeignKey [FK__Marketing__Categ__5832119F]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CategoryMaster] ([CategoryId])
GO
/****** Object:  ForeignKey [FK__Marketing__Categ__592635D8]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CategoryMaster] ([CategoryId])
GO
/****** Object:  ForeignKey [FK__Marketing__Categ__5A1A5A11]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CategoryMaster] ([CategoryId])
GO
/****** Object:  ForeignKey [FK__Marketing__Custo__1B48FEF0]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__Marketing__Custo__1C3D2329]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__Marketing__Custo__1D314762]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__Marketing__Custo__1E256B9B]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__Marketing__Custo__5B0E7E4A]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__Marketing__Custo__5C02A283]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__Marketing__Custo__5CF6C6BC]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__Marketing__Custo__5DEAEAF5]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__Marketing__EmpId__1F198FD4]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([EmpId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__Marketing__EmpId__200DB40D]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([EmpId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__Marketing__EmpId__2101D846]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([EmpId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__Marketing__EmpId__21F5FC7F]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([EmpId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__Marketing__EmpId__5EDF0F2E]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([EmpId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__Marketing__EmpId__5FD33367]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([EmpId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__Marketing__EmpId__60C757A0]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([EmpId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__Marketing__EmpId__61BB7BD9]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([EmpId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__22EA20B8]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__23DE44F1]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__24D2692A]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__25C68D63]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__62AFA012]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__63A3C44B]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__6497E884]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__658C0CBD]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing__MedOf__26BAB19C]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([MedOfEnqId])
REFERENCES [dbo].[Marketing_MediumOfEnqMaster] ([MedOfEnqID])
GO
/****** Object:  ForeignKey [FK__Marketing__MedOf__27AED5D5]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([MedOfEnqId])
REFERENCES [dbo].[Marketing_MediumOfEnqMaster] ([MedOfEnqID])
GO
/****** Object:  ForeignKey [FK__Marketing__MedOf__28A2FA0E]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([MedOfEnqId])
REFERENCES [dbo].[Marketing_MediumOfEnqMaster] ([MedOfEnqID])
GO
/****** Object:  ForeignKey [FK__Marketing__MedOf__29971E47]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([MedOfEnqId])
REFERENCES [dbo].[Marketing_MediumOfEnqMaster] ([MedOfEnqID])
GO
/****** Object:  ForeignKey [FK__Marketing__MedOf__668030F6]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([MedOfEnqId])
REFERENCES [dbo].[Marketing_MediumOfEnqMaster] ([MedOfEnqID])
GO
/****** Object:  ForeignKey [FK__Marketing__MedOf__6774552F]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([MedOfEnqId])
REFERENCES [dbo].[Marketing_MediumOfEnqMaster] ([MedOfEnqID])
GO
/****** Object:  ForeignKey [FK__Marketing__MedOf__68687968]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([MedOfEnqId])
REFERENCES [dbo].[Marketing_MediumOfEnqMaster] ([MedOfEnqID])
GO
/****** Object:  ForeignKey [FK__Marketing__MedOf__695C9DA1]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([MedOfEnqId])
REFERENCES [dbo].[Marketing_MediumOfEnqMaster] ([MedOfEnqID])
GO
/****** Object:  ForeignKey [FK__Marketing__SuppT__2A8B4280]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([SuppTypeId])
REFERENCES [dbo].[suppliertypemaster] ([supptypeid])
GO
/****** Object:  ForeignKey [FK__Marketing__SuppT__2B7F66B9]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([SuppTypeId])
REFERENCES [dbo].[suppliertypemaster] ([supptypeid])
GO
/****** Object:  ForeignKey [FK__Marketing__SuppT__2C738AF2]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([SuppTypeId])
REFERENCES [dbo].[suppliertypemaster] ([supptypeid])
GO
/****** Object:  ForeignKey [FK__Marketing__SuppT__2D67AF2B]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([SuppTypeId])
REFERENCES [dbo].[suppliertypemaster] ([supptypeid])
GO
/****** Object:  ForeignKey [FK__Marketing__SuppT__6A50C1DA]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([SuppTypeId])
REFERENCES [dbo].[suppliertypemaster] ([supptypeid])
GO
/****** Object:  ForeignKey [FK__Marketing__SuppT__6B44E613]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([SuppTypeId])
REFERENCES [dbo].[suppliertypemaster] ([supptypeid])
GO
/****** Object:  ForeignKey [FK__Marketing__SuppT__6C390A4C]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([SuppTypeId])
REFERENCES [dbo].[suppliertypemaster] ([supptypeid])
GO
/****** Object:  ForeignKey [FK__Marketing__SuppT__6D2D2E85]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_EnquiryMaster]  WITH CHECK ADD FOREIGN KEY([SuppTypeId])
REFERENCES [dbo].[suppliertypemaster] ([supptypeid])
GO
/****** Object:  ForeignKey [FK__Marketing__Branc__4F72AE6C]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_QuotationMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__Marketing__Enqui__4C9641C1]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_QuotationMaster]  WITH CHECK ADD FOREIGN KEY([EnquiryId])
REFERENCES [dbo].[Marketing_EnquiryMaster] ([EnquiryId])
GO
/****** Object:  ForeignKey [FK__Marketing__Login__4E7E8A33]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_QuotationMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__Marketing_Qu__Id__4D8A65FA]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[Marketing_QuotationMaster]  WITH CHECK ADD FOREIGN KEY([Id])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__MasterMen__Branc__2E5BD364]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MasterMenu]  WITH CHECK ADD FOREIGN KEY([BranchID])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__MasterMen__Branc__6E2152BE]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[MasterMenu]  WITH CHECK ADD FOREIGN KEY([BranchID])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Branc__2F4FF79D]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Branc__30441BD6]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Branc__3138400F]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Branc__322C6448]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Branc__33208881]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Branc__6F1576F7]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Branc__70099B30]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Branc__70FDBF69]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Branc__71F1E3A2]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Branc__72E607DB]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__3414ACBA]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerPOID])
REFERENCES [dbo].[CustomerPOMaster] ([CustomerPOID])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__3508D0F3]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__35FCF52C]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerPOID])
REFERENCES [dbo].[CustomerPOMaster] ([CustomerPOID])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__36F11965]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__37E53D9E]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerPOID])
REFERENCES [dbo].[CustomerPOMaster] ([CustomerPOID])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__38D961D7]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__39CD8610]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerPOID])
REFERENCES [dbo].[CustomerPOMaster] ([CustomerPOID])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__3AC1AA49]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__3BB5CE82]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__73DA2C14]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerPOID])
REFERENCES [dbo].[CustomerPOMaster] ([CustomerPOID])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__74CE504D]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__75C27486]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerPOID])
REFERENCES [dbo].[CustomerPOMaster] ([CustomerPOID])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__76B698BF]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__77AABCF8]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerPOID])
REFERENCES [dbo].[CustomerPOMaster] ([CustomerPOID])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__789EE131]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__7993056A]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerPOID])
REFERENCES [dbo].[CustomerPOMaster] ([CustomerPOID])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__7A8729A3]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Custo__7B7B4DDC]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Emplo__004002F9]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Emplo__3CA9F2BB]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Emplo__3D9E16F4]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Emplo__3E923B2D]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Emplo__3F865F66]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Emplo__407A839F]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Emplo__7C6F7215]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Emplo__7D63964E]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Emplo__7E57BA87]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Emplo__7F4BDEC0]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Payme__01342732]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypeMaster] ([PaymentTypeId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Payme__02284B6B]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypeMaster] ([PaymentTypeId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Payme__031C6FA4]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypeMaster] ([PaymentTypeId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Payme__041093DD]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypeMaster] ([PaymentTypeId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Payme__0504B816]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypeMaster] ([PaymentTypeId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Payme__416EA7D8]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypeMaster] ([PaymentTypeId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Payme__4262CC11]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypeMaster] ([PaymentTypeId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Payme__4356F04A]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypeMaster] ([PaymentTypeId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Payme__444B1483]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypeMaster] ([PaymentTypeId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Payme__453F38BC]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypeMaster] ([PaymentTypeId])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Sales__05F8DC4F]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([SalesExecutiveId])
REFERENCES [dbo].[SalesExecutive] ([SalesExecutiveID])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Sales__06ED0088]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([SalesExecutiveId])
REFERENCES [dbo].[SalesExecutive] ([SalesExecutiveID])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Sales__46335CF5]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([SalesExecutiveId])
REFERENCES [dbo].[SalesExecutive] ([SalesExecutiveID])
GO
/****** Object:  ForeignKey [FK__OrderAcce__Sales__4727812E]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[OrderAcceptanceMaster]  WITH CHECK ADD FOREIGN KEY([SalesExecutiveId])
REFERENCES [dbo].[SalesExecutive] ([SalesExecutiveID])
GO
/****** Object:  ForeignKey [FK__PagesMast__submo__07E124C1]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[PagesMaster]  WITH CHECK ADD FOREIGN KEY([submoduleid])
REFERENCES [dbo].[submodulemaster] ([submoduleid])
GO
/****** Object:  ForeignKey [FK__PagesMast__submo__481BA567]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[PagesMaster]  WITH CHECK ADD FOREIGN KEY([submoduleid])
REFERENCES [dbo].[submodulemaster] ([submoduleid])
GO
/****** Object:  ForeignKey [FK__Quotation__Quota__0F8D3381]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationDetailFinal]  WITH CHECK ADD FOREIGN KEY([QuotationId])
REFERENCES [dbo].[QuotationMasterFinal] ([QuotationId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
/****** Object:  ForeignKey [FK__Quotation__Symbo__73B00EE2]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationDetailFinal1]  WITH CHECK ADD FOREIGN KEY([SymbolId])
REFERENCES [dbo].[BindSymbolMaster] ([SymbolId])
GO
/****** Object:  ForeignKey [FK_QuotationDetailFinal1_DeliveryTermMaster]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationDetailFinal1]  WITH CHECK ADD  CONSTRAINT [FK_QuotationDetailFinal1_DeliveryTermMaster] FOREIGN KEY([DeliveryTermId])
REFERENCES [dbo].[DeliveryTermMaster] ([DeliveryTermId])
GO
ALTER TABLE [dbo].[QuotationDetailFinal1] CHECK CONSTRAINT [FK_QuotationDetailFinal1_DeliveryTermMaster]
GO
/****** Object:  ForeignKey [FK_QuotationDetailFinal1_DrawingbackRefund]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationDetailFinal1]  WITH CHECK ADD  CONSTRAINT [FK_QuotationDetailFinal1_DrawingbackRefund] FOREIGN KEY([DrawingId])
REFERENCES [dbo].[DrawingbackRefund] ([DrawingId])
GO
ALTER TABLE [dbo].[QuotationDetailFinal1] CHECK CONSTRAINT [FK_QuotationDetailFinal1_DrawingbackRefund]
GO
/****** Object:  ForeignKey [FK_QuotationDetailFinal1_FreightType]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationDetailFinal1]  WITH CHECK ADD  CONSTRAINT [FK_QuotationDetailFinal1_FreightType] FOREIGN KEY([FreightId])
REFERENCES [dbo].[FreightType] ([FreightId])
GO
ALTER TABLE [dbo].[QuotationDetailFinal1] CHECK CONSTRAINT [FK_QuotationDetailFinal1_FreightType]
GO
/****** Object:  ForeignKey [FK_QuotationDetailFinal1_Marketing_TransportMaster]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationDetailFinal1]  WITH CHECK ADD  CONSTRAINT [FK_QuotationDetailFinal1_Marketing_TransportMaster] FOREIGN KEY([TransportId])
REFERENCES [dbo].[Marketing_TransportMaster] ([TransportID])
GO
ALTER TABLE [dbo].[QuotationDetailFinal1] CHECK CONSTRAINT [FK_QuotationDetailFinal1_Marketing_TransportMaster]
GO
/****** Object:  ForeignKey [FK_QuotationDetailFinal1_PackingType]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationDetailFinal1]  WITH CHECK ADD  CONSTRAINT [FK_QuotationDetailFinal1_PackingType] FOREIGN KEY([PackingId])
REFERENCES [dbo].[PackingType] ([PackingId])
GO
ALTER TABLE [dbo].[QuotationDetailFinal1] CHECK CONSTRAINT [FK_QuotationDetailFinal1_PackingType]
GO
/****** Object:  ForeignKey [FK_QuotationDetailFinal1_PaymentTypeMaster]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationDetailFinal1]  WITH CHECK ADD  CONSTRAINT [FK_QuotationDetailFinal1_PaymentTypeMaster] FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypeMaster] ([PaymentTypeId])
GO
ALTER TABLE [dbo].[QuotationDetailFinal1] CHECK CONSTRAINT [FK_QuotationDetailFinal1_PaymentTypeMaster]
GO
/****** Object:  ForeignKey [FK_QuotationDetailFinal1_PlanTypeMaster]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationDetailFinal1]  WITH CHECK ADD  CONSTRAINT [FK_QuotationDetailFinal1_PlanTypeMaster] FOREIGN KEY([PlanTypeId])
REFERENCES [dbo].[PlanTypeMaster] ([PlanTypeId])
GO
ALTER TABLE [dbo].[QuotationDetailFinal1] CHECK CONSTRAINT [FK_QuotationDetailFinal1_PlanTypeMaster]
GO
/****** Object:  ForeignKey [FK_QuotationDetailFinal1_QuotationMasterFinal]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationDetailFinal1]  WITH CHECK ADD  CONSTRAINT [FK_QuotationDetailFinal1_QuotationMasterFinal] FOREIGN KEY([QuotationId])
REFERENCES [dbo].[QuotationMasterFinal] ([QuotationId])
GO
ALTER TABLE [dbo].[QuotationDetailFinal1] CHECK CONSTRAINT [FK_QuotationDetailFinal1_QuotationMasterFinal]
GO
/****** Object:  ForeignKey [FK_QuotationDetailFinal1_StatusMaster]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationDetailFinal1]  WITH CHECK ADD  CONSTRAINT [FK_QuotationDetailFinal1_StatusMaster] FOREIGN KEY([StatusId])
REFERENCES [dbo].[StatusMaster] ([StatusId])
GO
ALTER TABLE [dbo].[QuotationDetailFinal1] CHECK CONSTRAINT [FK_QuotationDetailFinal1_StatusMaster]
GO
/****** Object:  ForeignKey [FK_QuotationDetailFinal1_ToolMaster]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationDetailFinal1]  WITH CHECK ADD  CONSTRAINT [FK_QuotationDetailFinal1_ToolMaster] FOREIGN KEY([ToolMouldId])
REFERENCES [dbo].[ToolMaster] ([ToolMouldId])
GO
ALTER TABLE [dbo].[QuotationDetailFinal1] CHECK CONSTRAINT [FK_QuotationDetailFinal1_ToolMaster]
GO
/****** Object:  ForeignKey [FK_QuotationDetailFinal1_UnitMaster]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationDetailFinal1]  WITH CHECK ADD  CONSTRAINT [FK_QuotationDetailFinal1_UnitMaster] FOREIGN KEY([UnitId])
REFERENCES [dbo].[UnitMaster] ([UnitId])
GO
ALTER TABLE [dbo].[QuotationDetailFinal1] CHECK CONSTRAINT [FK_QuotationDetailFinal1_UnitMaster]
GO
/****** Object:  ForeignKey [FK_QuotationMasterFinal_Admin_LoginUserMaster]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationMasterFinal]  WITH CHECK ADD  CONSTRAINT [FK_QuotationMasterFinal_Admin_LoginUserMaster] FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
ALTER TABLE [dbo].[QuotationMasterFinal] CHECK CONSTRAINT [FK_QuotationMasterFinal_Admin_LoginUserMaster]
GO
/****** Object:  ForeignKey [FK_QuotationMasterFinal_BranchMaster]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationMasterFinal]  WITH CHECK ADD  CONSTRAINT [FK_QuotationMasterFinal_BranchMaster] FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
ALTER TABLE [dbo].[QuotationMasterFinal] CHECK CONSTRAINT [FK_QuotationMasterFinal_BranchMaster]
GO
/****** Object:  ForeignKey [FK_QuotationMasterFinal_CustomerMaster]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[QuotationMasterFinal]  WITH CHECK ADD  CONSTRAINT [FK_QuotationMasterFinal_CustomerMaster] FOREIGN KEY([Id])
REFERENCES [dbo].[CustomerMaster] ([Id])
GO
ALTER TABLE [dbo].[QuotationMasterFinal] CHECK CONSTRAINT [FK_QuotationMasterFinal_CustomerMaster]
GO
/****** Object:  ForeignKey [FK__SubCatego__Categ__08D548FA]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SubCategoryMaster]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[CategoryMaster] ([CategoryId])
GO
/****** Object:  ForeignKey [FK__SubCatego__Categ__490FC9A0]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SubCategoryMaster]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[CategoryMaster] ([CategoryId])
GO
/****** Object:  ForeignKey [FK__SubMaster__Branc__09C96D33]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SubMasterMenu]  WITH CHECK ADD FOREIGN KEY([BranchID])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__SubMaster__Branc__4A03EDD9]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SubMasterMenu]  WITH CHECK ADD FOREIGN KEY([BranchID])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__SubMaster__Maste__0ABD916C]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SubMasterMenu]  WITH CHECK ADD FOREIGN KEY([MasterMenuId])
REFERENCES [dbo].[MasterMenu] ([MasterMenuId])
GO
/****** Object:  ForeignKey [FK__SubMaster__Maste__4AF81212]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SubMasterMenu]  WITH CHECK ADD FOREIGN KEY([MasterMenuId])
REFERENCES [dbo].[MasterMenu] ([MasterMenuId])
GO
/****** Object:  ForeignKey [FK__submodule__modul__0BB1B5A5]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[submodulemaster]  WITH CHECK ADD FOREIGN KEY([moduleid])
REFERENCES [dbo].[modulemaster] ([moduleid])
GO
/****** Object:  ForeignKey [FK__submodule__modul__4BEC364B]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[submodulemaster]  WITH CHECK ADD FOREIGN KEY([moduleid])
REFERENCES [dbo].[modulemaster] ([moduleid])
GO
/****** Object:  ForeignKey [FK__SupplierM__Branc__37C5420D]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierMaster]  WITH CHECK ADD  CONSTRAINT [FK__SupplierM__Branc__37C5420D] FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
ALTER TABLE [dbo].[SupplierMaster] CHECK CONSTRAINT [FK__SupplierM__Branc__37C5420D]
GO
/****** Object:  ForeignKey [FK__SupplierM__CityI__36D11DD4]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierMaster]  WITH CHECK ADD  CONSTRAINT [FK__SupplierM__CityI__36D11DD4] FOREIGN KEY([CityId])
REFERENCES [dbo].[CityMaster] ([CityId])
GO
ALTER TABLE [dbo].[SupplierMaster] CHECK CONSTRAINT [FK__SupplierM__CityI__36D11DD4]
GO
/****** Object:  ForeignKey [FK__SupplierM__Count__34E8D562]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierMaster]  WITH CHECK ADD  CONSTRAINT [FK__SupplierM__Count__34E8D562] FOREIGN KEY([CountryId])
REFERENCES [dbo].[CountryMaster] ([CountryId])
GO
ALTER TABLE [dbo].[SupplierMaster] CHECK CONSTRAINT [FK__SupplierM__Count__34E8D562]
GO
/****** Object:  ForeignKey [FK__SupplierM__Login__38B96646]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierMaster]  WITH CHECK ADD  CONSTRAINT [FK__SupplierM__Login__38B96646] FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
ALTER TABLE [dbo].[SupplierMaster] CHECK CONSTRAINT [FK__SupplierM__Login__38B96646]
GO
/****** Object:  ForeignKey [FK__SupplierM__State__35DCF99B]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierMaster]  WITH CHECK ADD  CONSTRAINT [FK__SupplierM__State__35DCF99B] FOREIGN KEY([StateId])
REFERENCES [dbo].[StateMaster] ([StateId])
GO
ALTER TABLE [dbo].[SupplierMaster] CHECK CONSTRAINT [FK__SupplierM__State__35DCF99B]
GO
/****** Object:  ForeignKey [FK__SupplierM__suppt__178D7CA5]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierMaster]  WITH CHECK ADD  CONSTRAINT [FK__SupplierM__suppt__178D7CA5] FOREIGN KEY([supptypeid])
REFERENCES [dbo].[suppliertypemaster] ([supptypeid])
GO
ALTER TABLE [dbo].[SupplierMaster] CHECK CONSTRAINT [FK__SupplierM__suppt__178D7CA5]
GO
/****** Object:  ForeignKey [FK__SupplierP__Suppl__125EB334]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPoDetailMaster]  WITH CHECK ADD FOREIGN KEY([SupplierPoId])
REFERENCES [dbo].[SupplierPOMaster] ([SupplierPoId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Suppl__1352D76D]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPoDetailMaster]  WITH CHECK ADD FOREIGN KEY([SupplierPoId])
REFERENCES [dbo].[SupplierPOMaster] ([SupplierPoId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Suppl__529933DA]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPoDetailMaster]  WITH CHECK ADD FOREIGN KEY([SupplierPoId])
REFERENCES [dbo].[SupplierPOMaster] ([SupplierPoId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Suppl__538D5813]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPoDetailMaster]  WITH CHECK ADD FOREIGN KEY([SupplierPoId])
REFERENCES [dbo].[SupplierPOMaster] ([SupplierPoId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Branc__1446FBA6]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPOMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Branc__54817C4C]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPOMaster]  WITH CHECK ADD FOREIGN KEY([BranchId])
REFERENCES [dbo].[BranchMaster] ([BranchId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Inden__153B1FDF]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPOMaster]  WITH CHECK ADD FOREIGN KEY([IndentId])
REFERENCES [dbo].[IndentMaster] ([IndentId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Inden__162F4418]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPOMaster]  WITH CHECK ADD FOREIGN KEY([IndentId])
REFERENCES [dbo].[IndentMaster] ([IndentId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Inden__17236851]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPOMaster]  WITH CHECK ADD FOREIGN KEY([IndentId])
REFERENCES [dbo].[IndentMaster] ([IndentId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Inden__18178C8A]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPOMaster]  WITH CHECK ADD FOREIGN KEY([IndentId])
REFERENCES [dbo].[IndentMaster] ([IndentId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Inden__5575A085]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPOMaster]  WITH CHECK ADD FOREIGN KEY([IndentId])
REFERENCES [dbo].[IndentMaster] ([IndentId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Inden__5669C4BE]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPOMaster]  WITH CHECK ADD FOREIGN KEY([IndentId])
REFERENCES [dbo].[IndentMaster] ([IndentId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Inden__575DE8F7]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPOMaster]  WITH CHECK ADD FOREIGN KEY([IndentId])
REFERENCES [dbo].[IndentMaster] ([IndentId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Inden__58520D30]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPOMaster]  WITH CHECK ADD FOREIGN KEY([IndentId])
REFERENCES [dbo].[IndentMaster] ([IndentId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Login__190BB0C3]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPOMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Login__59463169]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPOMaster]  WITH CHECK ADD FOREIGN KEY([LoginUserId])
REFERENCES [dbo].[Admin_LoginUserMaster] ([LoginUserId])
GO
/****** Object:  ForeignKey [FK__SupplierP__Verif__19FFD4FC]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPOMaster]  WITH CHECK ADD FOREIGN KEY([VerifiedById])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__SupplierP__Verif__5A3A55A2]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[SupplierPOMaster]  WITH CHECK ADD FOREIGN KEY([VerifiedById])
REFERENCES [dbo].[EmployMaster] ([ESrNo])
GO
/****** Object:  ForeignKey [FK__UserAcces__modul__1AF3F935]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UserAccessMaster]  WITH CHECK ADD FOREIGN KEY([moduleid])
REFERENCES [dbo].[modulemaster] ([moduleid])
GO
/****** Object:  ForeignKey [FK__UserAcces__modul__5B2E79DB]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UserAccessMaster]  WITH CHECK ADD FOREIGN KEY([moduleid])
REFERENCES [dbo].[modulemaster] ([moduleid])
GO
/****** Object:  ForeignKey [FK__UserAcces__pagei__1BE81D6E]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UserAccessMaster]  WITH CHECK ADD FOREIGN KEY([pageid])
REFERENCES [dbo].[PagesMaster] ([pageid])
GO
/****** Object:  ForeignKey [FK__UserAcces__pagei__5C229E14]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UserAccessMaster]  WITH CHECK ADD FOREIGN KEY([pageid])
REFERENCES [dbo].[PagesMaster] ([pageid])
GO
/****** Object:  ForeignKey [FK__UserAcces__rolei__1CDC41A7]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UserAccessMaster]  WITH CHECK ADD FOREIGN KEY([roleid])
REFERENCES [dbo].[RoleMaster] ([roleid])
GO
/****** Object:  ForeignKey [FK__UserAcces__rolei__5D16C24D]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UserAccessMaster]  WITH CHECK ADD FOREIGN KEY([roleid])
REFERENCES [dbo].[RoleMaster] ([roleid])
GO
/****** Object:  ForeignKey [FK__UserAcces__submo__1DD065E0]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UserAccessMaster]  WITH CHECK ADD FOREIGN KEY([submoduleid])
REFERENCES [dbo].[submodulemaster] ([submoduleid])
GO
/****** Object:  ForeignKey [FK__UserAcces__submo__5E0AE686]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UserAccessMaster]  WITH CHECK ADD FOREIGN KEY([submoduleid])
REFERENCES [dbo].[submodulemaster] ([submoduleid])
GO
/****** Object:  ForeignKey [FK__UT_Tampla__Templ__1EC48A19]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UT_TamplateTypeDetail]  WITH CHECK ADD FOREIGN KEY([TemplateTypeId])
REFERENCES [dbo].[UT_TamplateTypeMaster] ([TamplateTypeID])
GO
/****** Object:  ForeignKey [FK__UT_Tampla__Templ__5EFF0ABF]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UT_TamplateTypeDetail]  WITH CHECK ADD FOREIGN KEY([TemplateTypeId])
REFERENCES [dbo].[UT_TamplateTypeMaster] ([TamplateTypeID])
GO
/****** Object:  ForeignKey [FK_UT_UploadTypeMaster_UT_UploadTypeMaster]    Script Date: 04/08/2023 08:39:33 ******/
ALTER TABLE [dbo].[UT_UploadTypeMaster]  WITH CHECK ADD  CONSTRAINT [FK_UT_UploadTypeMaster_UT_UploadTypeMaster] FOREIGN KEY([UploadTypeID])
REFERENCES [dbo].[UT_UploadTypeMaster] ([UploadTypeID])
GO
ALTER TABLE [dbo].[UT_UploadTypeMaster] CHECK CONSTRAINT [FK_UT_UploadTypeMaster_UT_UploadTypeMaster]
GO
