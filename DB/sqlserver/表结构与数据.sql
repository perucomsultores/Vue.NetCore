
USE [netcoredev]
GO
/****** Object:  Table [dbo].[App_Appointment]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_Appointment](
	[Id] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Describe] [nvarchar](250) NOT NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PhoneNo] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_App_Appointment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[App_Expert]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_Expert](
	[ExpertId] [int] IDENTITY(1,1) NOT NULL,
	[AuditDate] [datetime] NULL,
	[AuditId] [int] NULL,
	[AuditStatus] [int] NOT NULL,
	[Auditor] [nvarchar](20) NULL,
	[Certificate] [nvarchar](2500) NULL,
	[City] [nvarchar](50) NULL,
	[Company] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Education] [nvarchar](50) NULL,
	[Enable] [tinyint] NOT NULL,
	[ExpertName] [nvarchar](20) NULL,
	[HeadImageUrl] [nvarchar](500) NULL,
	[IDNumber] [nvarchar](18) NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[PhoneNo] [nvarchar](11) NULL,
	[Professional] [nvarchar](50) NULL,
	[ReallyName] [nvarchar](20) NULL,
	[Resume] [nvarchar](500) NULL,
	[SpecialField] [nvarchar](800) NULL,
	[UserName] [nvarchar](30) NULL,
	[UserTrueName] [nvarchar](50) NULL,
	[User_Id] [int] NULL,
 CONSTRAINT [PK_App_Expert] PRIMARY KEY CLUSTERED 
(
	[ExpertId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[App_News]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Author] [nvarchar](50) NULL,
	[BigImageUrls] [nvarchar](500) NULL,
	[Content] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[DailyRecommend] [smallint] NOT NULL,
	[DetailUrl] [nvarchar](200) NULL,
	[Enable] [smallint] NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[NewsType] [int] NOT NULL,
	[OrderNo] [int] NULL,
	[ReleaseDate] [datetime] NULL,
	[Title] [nvarchar](50) NOT NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_App_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[App_ReportPrice]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_ReportPrice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Age] [nvarchar](50) NOT NULL,
	[AuditDate] [datetime] NULL,
	[AuditId] [int] NULL,
	[AuditStatus] [int] NULL,
	[Auditor] [nvarchar](20) NULL,
	[City] [nvarchar](30) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Price] [numeric](10, 2) NOT NULL,
	[Variety] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_App_ReportPrice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[App_Transaction]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_Transaction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CowType] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Describe] [nvarchar](500) NOT NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PhoneNo] [nvarchar](15) NOT NULL,
	[Quantity] [int] NOT NULL,
	[TransactionType] [int] NOT NULL,
 CONSTRAINT [PK_App_Transaction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[App_TransactionAvgPrice]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_TransactionAvgPrice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgeRange] [nvarchar](50) NOT NULL,
	[AvgPrice] [decimal](18, 2) NOT NULL,
	[City] [nvarchar](15) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Date] [date] NOT NULL,
	[Enable] [tinyint] NULL,
	[IsTop] [int] NOT NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Variety] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_App_TransactionAvgPrice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormCollectionObject]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormCollectionObject](
	[FormCollectionId] [uniqueidentifier] NOT NULL,
	[FormId] [uniqueidentifier] NULL,
	[Title] [nvarchar](max) NULL,
	[FormData] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
 CONSTRAINT [PK_FormCollectionList] PRIMARY KEY CLUSTERED 
(
	[FormCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormDesignOptions]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormDesignOptions](
	[FormId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[DaraggeOptions] [nvarchar](max) NULL,
	[FormOptions] [nvarchar](max) NULL,
	[FormConfig] [nvarchar](max) NULL,
	[FormFields] [nvarchar](max) NULL,
	[TableConfig] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
 CONSTRAINT [PK_FormCollectionOptions] PRIMARY KEY CLUSTERED 
(
	[FormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SellOrder]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellOrder](
	[Order_Id] [uniqueidentifier] NOT NULL,
	[OrderType] [int] NOT NULL,
	[TranNo] [nvarchar](100) NOT NULL,
	[SellNo] [nvarchar](255) NOT NULL,
	[Qty] [int] NOT NULL,
	[AuditDate] [datetime] NULL,
	[AuditStatus] [int] NOT NULL,
	[AuditId] [int] NULL,
	[Auditor] [nvarchar](100) NULL,
	[Remark] [nvarchar](1000) NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Modifier] [nvarchar](255) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_SellOrder] PRIMARY KEY CLUSTERED 
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SellOrderList]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellOrderList](
	[OrderList_Id] [uniqueidentifier] NOT NULL,
	[Order_Id] [uniqueidentifier] NOT NULL,
	[ProductName] [nvarchar](200) NOT NULL,
	[MO] [nvarchar](255) NULL,
	[Qty] [int] NOT NULL,
	[Weight] [decimal](18, 2) NULL,
	[Remark] [nvarchar](1000) NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Modifier] [nvarchar](255) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_SellOrderList] PRIMARY KEY CLUSTERED 
(
	[OrderList_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_City]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityCode] [nvarchar](20) NULL,
	[CityName] [nvarchar](30) NULL,
	[ProvinceCode] [varchar](20) NULL,
 CONSTRAINT [PK_Sys_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Dictionary]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Dictionary](
	[Dic_ID] [int] IDENTITY(1,1) NOT NULL,
	[Config] [nvarchar](4000) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[DBServer] [nvarchar](4000) NULL,
	[DbSql] [nvarchar](4000) NULL,
	[DicName] [nvarchar](100) NOT NULL,
	[DicNo] [nvarchar](100) NOT NULL,
	[Enable] [tinyint] NOT NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[OrderNo] [int] NULL,
	[ParentId] [int] NOT NULL,
	[Remark] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Sys_Dictionary] PRIMARY KEY CLUSTERED 
(
	[Dic_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_DictionaryList]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_DictionaryList](
	[DicList_ID] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[DicName] [nvarchar](100) NULL,
	[DicValue] [nvarchar](100) NULL,
	[Dic_ID] [int] NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[OrderNo] [int] NULL,
	[Remark] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Sys_DictionaryList] PRIMARY KEY CLUSTERED 
(
	[DicList_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Log]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BeginDate] [datetime] NULL,
	[BrowserType] [nvarchar](200) NULL,
	[ElapsedTime] [int] NULL,
	[EndDate] [datetime] NULL,
	[ExceptionInfo] [nvarchar](max) NULL,
	[LogType] [nvarchar](50) NULL,
	[RequestParameter] [nvarchar](max) NULL,
	[ResponseParameter] [nvarchar](max) NULL,
	[Role_Id] [int] NULL,
	[ServiceIP] [nvarchar](100) NULL,
	[Success] [int] NULL,
	[Url] [nvarchar](4000) NULL,
	[UserIP] [nvarchar](100) NULL,
	[UserName] [nvarchar](4000) NULL,
	[User_Id] [int] NULL,
 CONSTRAINT [PK_Sys_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Menu]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Menu](
	[Menu_Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](50) NOT NULL,
	[Auth] [nvarchar](4000) NULL,
	[Icon] [nvarchar](50) NULL,
	[Description] [nvarchar](200) NULL,
	[Enable] [tinyint] NULL,
	[OrderNo] [int] NULL,
	[TableName] [nvarchar](200) NULL,
	[ParentId] [int] NOT NULL,
	[Url] [nvarchar](4000) NULL,
	[CreateDate] [datetime] NULL,
	[Creator] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[Modifier] [nvarchar](50) NULL,
	[MenuType] [int] NULL,
 CONSTRAINT [PK_Sys_Menu] PRIMARY KEY CLUSTERED 
(
	[Menu_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Province]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Province](
	[ProvinceId] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceCode] [nvarchar](20) NOT NULL,
	[ProvinceName] [nvarchar](30) NOT NULL,
	[RegionCode] [nvarchar](20) NULL,
 CONSTRAINT [PK_Sys_Province] PRIMARY KEY CLUSTERED 
(
	[ProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Role](
	[Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[Creator] [nvarchar](50) NULL,
	[DeleteBy] [nvarchar](50) NULL,
	[DeptName] [nvarchar](50) NULL,
	[Dept_Id] [int] NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[OrderNo] [int] NULL,
	[ParentId] [int] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sys_Role] PRIMARY KEY CLUSTERED 
(
	[Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_RoleAuth]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_RoleAuth](
	[Auth_Id] [int] IDENTITY(1,1) NOT NULL,
	[AuthValue] [nvarchar](1000) NOT NULL,
	[CreateDate] [datetime] NULL,
	[Creator] [nvarchar](1000) NULL,
	[Menu_Id] [int] NOT NULL,
	[Modifier] [nvarchar](1000) NULL,
	[ModifyDate] [datetime] NULL,
	[Role_Id] [int] NULL,
	[User_Id] [int] NULL,
 CONSTRAINT [PK_Sys_RoleAuth] PRIMARY KEY CLUSTERED 
(
	[Auth_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_TableColumn]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_TableColumn](
	[ColumnId] [int] IDENTITY(1,1) NOT NULL,
	[ApiInPut] [int] NULL,
	[ApiIsNull] [int] NULL,
	[ApiOutPut] [int] NULL,
	[ColSize] [int] NULL,
	[ColumnCNName] [nvarchar](100) NULL,
	[ColumnName] [nvarchar](100) NULL,
	[ColumnType] [nvarchar](max) NULL,
	[ColumnWidth] [int] NULL,
	[Columnformat] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](200) NULL,
	[DropNo] [nvarchar](50) NULL,
	[EditColNo] [int] NULL,
	[EditRowNo] [int] NULL,
	[EditType] [nvarchar](200) NULL,
	[Enable] [int] NULL,
	[IsColumnData] [int] NULL,
	[IsDisplay] [int] NULL,
	[IsImage] [int] NULL,
	[IsKey] [int] NULL,
	[IsNull] [int] NULL,
	[IsReadDataset] [int] NULL,
	[Maxlength] [int] NULL,
	[Modifier] [ntext] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[OrderNo] [int] NULL,
	[Script] [ntext] NULL,
	[SearchColNo] [int] NULL,
	[SearchRowNo] [int] NULL,
	[SearchType] [nvarchar](200) NULL,
	[Sortable] [int] NULL,
	[TableName] [nvarchar](200) NULL,
	[Table_Id] [int] NULL,
 CONSTRAINT [PK_Sys_TableColumn] PRIMARY KEY CLUSTERED 
(
	[ColumnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_TableInfo]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_TableInfo](
	[Table_Id] [int] IDENTITY(1,1) NOT NULL,
	[CnName] [nvarchar](50) NULL,
	[ColumnCNName] [nvarchar](100) NULL,
	[DBServer] [nvarchar](2000) NULL,
	[DataTableType] [nvarchar](200) NULL,
	[DetailCnName] [nvarchar](200) NULL,
	[DetailName] [nvarchar](200) NULL,
	[EditorType] [nvarchar](100) NULL,
	[Enable] [int] NULL,
	[ExpressField] [nvarchar](200) NULL,
	[FolderName] [nvarchar](200) NULL,
	[Namespace] [nvarchar](200) NULL,
	[OrderNo] [int] NULL,
	[ParentId] [int] NULL,
	[RichText] [nvarchar](100) NULL,
	[SortName] [nvarchar](50) NULL,
	[TableName] [nvarchar](50) NULL,
	[TableTrueName] [nvarchar](100) NULL,
	[UploadField] [nvarchar](100) NULL,
	[UploadMaxCount] [int] NULL,
 CONSTRAINT [PK_Sys_TableInfo] PRIMARY KEY CLUSTERED 
(
	[Table_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_User]    Script Date: 2022/3/27 15:40:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_User](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](200) NULL,
	[AppType] [int] NULL,
	[AuditDate] [datetime] NULL,
	[AuditStatus] [int] NULL,
	[Auditor] [nvarchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](200) NULL,
	[DeptName] [nvarchar](150) NULL,
	[Dept_Id] [int] NULL,
	[Email] [nvarchar](100) NULL,
	[Enable] [tinyint] NOT NULL,
	[Gender] [int] NULL,
	[HeadImageUrl] [nvarchar](200) NULL,
	[IsRegregisterPhone] [int] NOT NULL,
	[LastLoginDate] [datetime] NULL,
	[LastModifyPwdDate] [datetime] NULL,
	[Mobile] [nvarchar](100) NULL,
	[Modifier] [nvarchar](200) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[OrderNo] [int] NULL,
	[Role_Id] [int] NOT NULL,
	[RoleName] [nvarchar](150) NOT NULL,
	[PhoneNo] [nvarchar](11) NULL,
	[Remark] [nvarchar](200) NULL,
	[Tel] [nvarchar](20) NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPwd] [nvarchar](200) NULL,
	[UserTrueName] [nvarchar](20) NOT NULL,
	[Token] [nvarchar](500) NULL,
 CONSTRAINT [PK_Sys_User] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[App_Appointment] ([Id], [CreateDate], [CreateID], [Creator], [Describe], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo]) VALUES (N'08d73c0e-edef-0a68-ab81-c3dc5e0fe407', CAST(0x0000AACC01091874 AS DateTime), 1, N'???????????????', N'?????????????????????', N'???????????????', CAST(0x0000AB2600AE2A54 AS DateTime), 1, N'??????', N'138888887698')
GO
INSERT [dbo].[App_Appointment] ([Id], [CreateDate], [CreateID], [Creator], [Describe], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo]) VALUES (N'08d73c11-6a43-97e8-ca70-e8b0d906807e', CAST(0x0000AACC010DFC04 AS DateTime), 1, N'???????????????', N'?????????????????????', N'???????????????', CAST(0x0000AB2600AE360C AS DateTime), 1, N'??????', N'138888887698')
GO
SET IDENTITY_INSERT [dbo].[App_Expert] ON 

GO
INSERT [dbo].[App_Expert] ([ExpertId], [AuditDate], [AuditId], [AuditStatus], [Auditor], [Certificate], [City], [Company], [CreateDate], [CreateID], [Creator], [Education], [Enable], [ExpertName], [HeadImageUrl], [IDNumber], [Modifier], [ModifyDate], [ModifyID], [PhoneNo], [Professional], [ReallyName], [Resume], [SpecialField], [UserName], [UserTrueName], [User_Id]) VALUES (275, CAST(0x0000A95400B4CD8C AS DateTime), 1, 1, N'?????????????????????', NULL, N'?????????', N'??????????????????', CAST(0x0000A9510104DA20 AS DateTime), 3344, N'User31110458', N'??????', 1, N'??????????????????', N'Upload/Tables/App_Expert/201912082211146054/x1.jpg', N'150124199911110116', N'???????????????', CAST(0x0000ABA4015C3054 AS DateTime), 1, N'13381277739', N'??????', N'????????????', N'....', N'Upload/Tables/App_Expert/201912061918189488/???????????????.xlsx', N'13381277739', N'User31110458', 3344)
GO
INSERT [dbo].[App_Expert] ([ExpertId], [AuditDate], [AuditId], [AuditStatus], [Auditor], [Certificate], [City], [Company], [CreateDate], [CreateID], [Creator], [Education], [Enable], [ExpertName], [HeadImageUrl], [IDNumber], [Modifier], [ModifyDate], [ModifyID], [PhoneNo], [Professional], [ReallyName], [Resume], [SpecialField], [UserName], [UserTrueName], [User_Id]) VALUES (276, CAST(0x0000AB7300CB037A AS DateTime), 1, 2, N'???????????????', N'', N'?????????', N'???????????????', CAST(0x0000A95F0124C218 AS DateTime), 3358, N'??????', N'??????', 1, N'??????????????????', N'Upload/Tables/App_Expert/202004032214264280/1.jpg,Upload/Tables/App_Expert/202004032214264280/02.jpg,Upload/Tables/App_Expert/202004032214361481/04.jpg', N'88888', N'???????????????', CAST(0x0000AB92016E903C AS DateTime), 1, N'18612119021', N'??????', N'??????', N'????????????', N'xxxxxx', N'18612119023', N'??????', 3358)
GO
SET IDENTITY_INSERT [dbo].[App_Expert] OFF
GO
SET IDENTITY_INSERT [dbo].[App_News] ON 

GO
INSERT [dbo].[App_News] ([Id], [Author], [BigImageUrls], [Content], [CreateDate], [CreateID], [Creator], [DailyRecommend], [DetailUrl], [Enable], [ImageUrl], [Modifier], [ModifyDate], [ModifyID], [NewsType], [OrderNo], [ReleaseDate], [Title], [ViewCount]) VALUES (73756, NULL, NULL, N'<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
	<b>????????????12???21?????????</b>&nbsp;????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????12???20??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
	????????????20??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????1986??????????????????33?????????????????????????????????
</p>', CAST(0x0000A95300B56F44 AS DateTime), 3357, N' ??????', 0, N'static/news/20191223/1016167531.html', 1, N'https://bj.bcebos.com/common1/180905/15361176985178184.jpeg@w_500', N'???????????????', CAST(0x0000AB2C00A96D70 AS DateTime), 1, 1, NULL, NULL, N'???????????????"??????????????????"?????? ???????????????????????????????????????????????????????????????????????????????????????????????????', 53)
GO
INSERT [dbo].[App_News] ([Id], [Author], [BigImageUrls], [Content], [CreateDate], [CreateID], [Creator], [DailyRecommend], [DetailUrl], [Enable], [ImageUrl], [Modifier], [ModifyDate], [ModifyID], [NewsType], [OrderNo], [ReleaseDate], [Title], [ViewCount]) VALUES (73762, NULL, NULL, N'<p style="text-indent:32px;">
	<span style="font-size:16px;font-family:'';">
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		<b>???????????????</b>
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		<a href="https://tech.163.com/19/1221/17/F0UFROFU00097U7R.html" target="_self" style="color:#0F6B99;line-height:1;"><b>?????????????????????????????????????????????????????????????????????</b></a>
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		??????????????? 12???21?????????????????????????????????2019?????????????????????????????????????????????????????????????????????2019????????????????????????????????????????????????????????????????????????????????????2019????????????????????????????????????????????????????????????2019???????????????????????????????????????
	</p>
	<p style="text-align:center;margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;color:#404040;white-space:normal;background-color:#FFFFFF;padding:0px;">
		<img src="http://cms-bucket.ws.126.net/2019/1221/3e42a18ej00q2uvfx0030c000t600jgc.jpg?imageView&amp;thumbnail=550x0" style="vertical-align:top;max-width:550px;" />
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		?????????????????????????????????????????????????????????????????????????????????????????????5????????????????????????????????????????????????????????????10???????????????????????????????????????
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		<span style="font-weight:700;">??????????????????????????????</span>
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		?????????????????????????????????????????????
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		???????????????????????????????????????????????????????????????????????????2019???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		?????????2019????????????????????????????????????????????????????????????????????????????????????2019????????????????????????????????????????????????????????????2019???????????????????????????????????????
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		?????????????????????????????????????????????????????????????????????????????????5????????????????????????????????????????????????????????????10????????????????????????
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		????????????????????????????????????????????????2019?????????????????????????????????????????????????????????????????????????????????????????????
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		?????????2020?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
	</p>
	<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
		????????????????????????????????????2020????????????????????????
	</p>
</span>
</p>
<p>
	<br />
</p>', CAST(0x0000A953011B2780 AS DateTime), 3357, N' ??????', 0, N'static/news/20191223/1015441258.html', 1, N'https://bj.bcebos.com/common1/180905/15361158996288828.jpg@w_500', N'???????????????', CAST(0x0000AB2C00A925F4 AS DateTime), 1, 2, NULL, NULL, N'?????????2019?????????????????????????????????5?????????????????????', 12)
GO
INSERT [dbo].[App_News] ([Id], [Author], [BigImageUrls], [Content], [CreateDate], [CreateID], [Creator], [DailyRecommend], [DetailUrl], [Enable], [ImageUrl], [Modifier], [ModifyDate], [ModifyID], [NewsType], [OrderNo], [ReleaseDate], [Title], [ViewCount]) VALUES (73765, NULL, NULL, N'<p style="text-align:justify;text-justify:inter-ideograph;text-indent:32px;line-height:150%;">
	<a></a><a><span style="line-height:150%;font-family:'';">
	<div class="content" style="white-space:normal;box-sizing:border-box;padding:0px;margin:0px;text-align:center;color:#888888;font-family:&quot;font-size:14px;background-color:#FFFFFF;">
		<p style="margin-top:40px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;????????????????????????????????????????????????school lunch in Japan?????????????????????????????????????????????????????????????????????????????????????????????8?????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;?????????????????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			&emsp;&emsp;<img src="http://dingyue.ws.126.net/2019/1219/6cb92cadj00q2r17v001dc000f700a4m.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;" />
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;???????????????????????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;??????45???????????????????????????????????????????????????????????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;??????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;??????????????????????????????<strong>????????????</strong>?????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			&emsp;&emsp;<img src="http://dingyue.ws.126.net/2019/1219/44569443j00q2r17v001bc000dw00ctm.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;" />
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;??????????????????????????????yui?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			&emsp;&emsp;<img src="http://dingyue.ws.126.net/2019/1219/ab09f1d4j00q2r17v000wc000dw00dwm.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;" />
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;?????????????????????5???????????????3???????????????720????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			&emsp;&emsp;<img src="http://dingyue.ws.126.net/2019/1219/e74b1222j00q2r17v000rc000eu008cm.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;" />
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;???????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;????????????????????????????????????????????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			&emsp;&emsp;<img src="http://dingyue.ws.126.net/2019/1219/a2429afaj00q2r17v001dc000qo00kcm.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;" />
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;????????????????????????????????????????????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			&emsp;&emsp;<img src="http://dingyue.ws.126.net/2019/1219/aec6b83fj00q2r17v002lc000rs00iim.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;" />
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;??????????????????????????????????????????????????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			&emsp;&emsp;<img src="http://dingyue.ws.126.net/2019/1219/ae382f4dj00q2r17v001rc000qa00jym.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;" />
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????~
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			&emsp;&emsp;<img src="http://dingyue.ws.126.net/2019/1219/3b116376j00q2r17v0025c000rs00kum.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;" />
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			&emsp;&emsp;<img src="http://dingyue.ws.126.net/2019/1219/d5ace7c2j00q2r17v000tc000rs00kum.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;" />
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;???????????????????????????????????????????????????????????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;?????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;no???
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;????????????????????????????????????????????????????????????????????????????????????????????????????????????....
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;">
			&emsp;&emsp;<img src="http://dingyue.ws.126.net/2019/1219/fc7659e6j00q2r17v000zc000go00dwm.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;" />
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;?????????????????????45?????????<strong>??????</strong>?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
		</p>
		<p style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
		</p>
		<p align="center" style="margin-top:20px;margin-bottom:20px;box-sizing:border-box;padding:0px;font-size:18px;line-height:34px;color:#333333;text-align:left;">
			&emsp;&emsp;<img src="http://dingyue.ws.126.net/2019/1219/b272928dj00q2r17v0012c000hs00a2m.jpg" style="box-sizing:border-box;vertical-align:baseline;max-width:100%;margin:20px 0px;" />
		</p>
	</div>
	<div class="statement" style="white-space:normal;box-sizing:border-box;padding:0px 0px 60px;margin:40px 0px 0px;color:#888888;line-height:24px;font-family:&quot;font-size:14px;background-color:#FFFFFF;">
		<span style="box-sizing:border-box;display:inline-block;width:750px;height:12px;background-image:url(&quot;background-position:initial;background-size:initial;background-repeat:initial;background-attachment:initial;background-origin:initial;background-clip:initial;"></span>
		<p style="margin-top:0px;margin-bottom:0px;box-sizing:border-box;padding:0px;">
			???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
		</p>
	</div>
</span></a>
</p>
<p>
	<span style="font-size:14px;font-family:??????;"></span>
</p>', CAST(0x0000A95400925680 AS DateTime), 3357, N' ??????', 1, N'static/news/20191222/1446528970.html', 1, N'Upload/Tables/App_News/201912231015164124/1.jpg,Upload/Tables/App_News/201912231015164124/02.jpg,Upload/Tables/App_News/201912231015164124/03.jpg', N'???????????????', CAST(0x0000AB2C00A8D518 AS DateTime), 1, 1, NULL, NULL, N'???????????????10??????????????????????????????????????????...', 13)
GO
INSERT [dbo].[App_News] ([Id], [Author], [BigImageUrls], [Content], [CreateDate], [CreateID], [Creator], [DailyRecommend], [DetailUrl], [Enable], [ImageUrl], [Modifier], [ModifyDate], [ModifyID], [NewsType], [OrderNo], [ReleaseDate], [Title], [ViewCount]) VALUES (73766, NULL, NULL, N',,<img style="width:100%;" src="http://127.0.0.1:9991/Upload/Tables/App_News/202005021803327050/07.jpg" />
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
	11???28???????????????????????????WTA??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????40???????????????????????????????????????10??????????????????????????????????????????53????????????????????????????????????????????????????????????????????????????????????????????????????????????300??????????????????
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;color:#404040;text-align:center;white-space:normal;background-color:#FFFFFF;padding:0px;">
	<img src="http://cms-bucket.ws.126.net/2019/11/28/939c200a063a434aae3c24225c2e5ae5.jpeg?imageView&amp;thumbnail=550x0" style="vertical-align:top;max-width:550px;margin:0px auto;display:block;" /> 
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
	??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????2019?????????????????????????????????????????????2019?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
	???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
	????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;color:#404040;text-align:center;white-space:normal;background-color:#FFFFFF;padding:0px;">
	<img src="http://cms-bucket.ws.126.net/2019/11/28/5a17ad3aac864fc0bbea73b6c6894dcb.jpeg?imageView&amp;thumbnail=550x0" style="vertical-align:top;max-width:550px;margin:0px auto;display:block;" /> 
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;white-space:normal;background-color:#FFFFFF;padding:0px;">
	??????????????????????????????2020??????????????????????????????????????????????????????9???6???9??????????????????????????????2020???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
</p>
<p style="margin-top:32px;margin-bottom:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:18px;line-height:32px;font-family:&quot;color:#404040;text-align:center;white-space:normal;background-color:#FFFFFF;padding:0px;">
	<img src="http://cms-bucket.ws.126.net/2019/11/28/cf8eee29f11746a0a8a1ce8e97aa536f.jpeg?imageView&amp;thumbnail=550x0" style="vertical-align:top;max-width:550px;margin:0px auto;display:block;" /> 
</p>', CAST(0x0000AB2C00A99548 AS DateTime), 1, N'???????????????', 1, N'static/news/20191223/1017279676.html', NULL, N'Upload/Tables/App_News/201912231017475391/2222.jpg,Upload/Tables/App_News/201912231017475391/h51.jpg,Upload/Tables/App_News/201912231017475391/h52.jpg', N'???????????????', CAST(0x0000ABAF0129BBEC AS DateTime), 1, 1, NULL, NULL, N'??????????????????????????????????????? ????????????????????????????????????', NULL)
GO
SET IDENTITY_INSERT [dbo].[App_News] OFF
GO
SET IDENTITY_INSERT [dbo].[App_ReportPrice] ON 

GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (66, N'0-2??????', CAST(0x0000A95700981C3C AS DateTime), 1, 1, N'?????????????????????', N'?????????', CAST(0x0000A954012DA4B4 AS DateTime), 3331, N'Mr.G', 0, N'???????????????', CAST(0x0000AB5300C883A4 AS DateTime), 1, CAST(13.00 AS Numeric(10, 2)), N'5')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (67, N'12-16??????', CAST(0x0000A95700A975A4 AS DateTime), 1, 1, N'?????????????????????', N'?????????', CAST(0x0000A95700A851D8 AS DateTime), 3344, N'?????????', 0, N'???????????????', CAST(0x0000AA8C00F93030 AS DateTime), 1, CAST(29.00 AS Numeric(10, 2)), N'????????????')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (71, N'7-12??????', CAST(0x0000AA8C00F7E810 AS DateTime), 1, 1, N'???????????????', N'????????????', CAST(0x0000AA87011AE964 AS DateTime), 1, N'???????????????', 1, N'???????????????', CAST(0x0000AB5300C8A21C AS DateTime), 1, CAST(22.00 AS Numeric(10, 2)), N'6')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (74, N'7-12??????', CAST(0x0000AA8C00F8BE84 AS DateTime), 1, 2, N'???????????????', N'?????????', CAST(0x0000AA87012FA854 AS DateTime), 1, N'???????????????', 0, N'???????????????', CAST(0x0000AB5300C88D04 AS DateTime), 1, CAST(65.00 AS Numeric(10, 2)), N'7')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (75, N'7-12??????', CAST(0x0000AA8C00ACCF74 AS DateTime), 1, 1, N'???????????????', N'?????????', CAST(0x0000AA870130905C AS DateTime), 1, N'???????????????', 1, N'???????????????', CAST(0x0000AB5300C877EC AS DateTime), 1, CAST(43.00 AS Numeric(10, 2)), N'5')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (81, N'2-6??????', CAST(0x0000AA8E00C0A080 AS DateTime), 1, 2, N'???????????????', N'????????????', CAST(0x0000AA8E00BA1968 AS DateTime), 1, N'???????????????', 1, N'???????????????', CAST(0x0000AB5300C8652C AS DateTime), 1, CAST(14.00 AS Numeric(10, 2)), N'4')
GO
INSERT [dbo].[App_ReportPrice] ([Id], [Age], [AuditDate], [AuditId], [AuditStatus], [Auditor], [City], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [Price], [Variety]) VALUES (82, N'7-12??????', CAST(0x0000AA8E00D15128 AS DateTime), 1, 1, N'???????????????', N'?????????', CAST(0x0000AA8E00C04D4C AS DateTime), 1, N'???????????????', 0, N'???????????????', CAST(0x0000AB8B016C752C AS DateTime), 1, CAST(78.00 AS Numeric(10, 2)), N'8')
GO
SET IDENTITY_INSERT [dbo].[App_ReportPrice] OFF
GO
SET IDENTITY_INSERT [dbo].[App_Transaction] ON 

GO
INSERT [dbo].[App_Transaction] ([Id], [CowType], [CreateDate], [CreateID], [Creator], [Describe], [Enable], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo], [Quantity], [TransactionType]) VALUES (4, N'1', CAST(0x0000AACC012B61CC AS DateTime), 1, N'???????????????', N'??????????????????1', NULL, N'???????????????', CAST(0x0000AB0800F93864 AS DateTime), 1, N'??????1', N'13419098211', 25, 0)
GO
INSERT [dbo].[App_Transaction] ([Id], [CowType], [CreateDate], [CreateID], [Creator], [Describe], [Enable], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo], [Quantity], [TransactionType]) VALUES (6, N'3', CAST(0x0000AACC012EC9AC AS DateTime), 1, N'???????????????', N'??????????????????3', NULL, N'???????????????', CAST(0x0000AB0801007FAC AS DateTime), 1, N'??????', N'13419444422', 199, 1)
GO
INSERT [dbo].[App_Transaction] ([Id], [CowType], [CreateDate], [CreateID], [Creator], [Describe], [Enable], [Modifier], [ModifyDate], [ModifyID], [Name], [PhoneNo], [Quantity], [TransactionType]) VALUES (7, N'0', CAST(0x0000ACA00164E1B8 AS DateTime), 1, N'???????????????', N'12312119023', NULL, N'???????????????', CAST(0x0000ACA00165768C AS DateTime), 1, N'?????????', N'18612119123', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[App_Transaction] OFF
GO
SET IDENTITY_INSERT [dbo].[App_TransactionAvgPrice] ON 

GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (2, N'12-16??????', CAST(22.00 AS Decimal(18, 2)), N'?????????', CAST(0x0000AA4500E86DF4 AS DateTime), 1, N'???????????????', CAST(0xB83F0B00 AS Date), 0, 2, N'???????????????', CAST(0x0000AB5401596DB0 AS DateTime), 1, N'8')
GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (6, N'7-12??????', CAST(22.00 AS Decimal(18, 2)), N'?????????', CAST(0x0000AA470102DD88 AS DateTime), 1, N'???????????????', CAST(0xA13F0B00 AS Date), 0, 2, N'???????????????', CAST(0x0000ABB000C51390 AS DateTime), 1, N'8,7,6,5')
GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (7, N'2-6??????', CAST(22.00 AS Decimal(18, 2)), N'?????????', CAST(0x0000AA8800AFB540 AS DateTime), 1, N'???????????????', CAST(0xE73F0B00 AS Date), 0, 0, N'???????????????', CAST(0x0000ABB000BBD0DC AS DateTime), 1, N'6,5,4,3,7,8')
GO
INSERT [dbo].[App_TransactionAvgPrice] ([Id], [AgeRange], [AvgPrice], [City], [CreateDate], [CreateID], [Creator], [Date], [Enable], [IsTop], [Modifier], [ModifyDate], [ModifyID], [Variety]) VALUES (8, N'12-16??????', CAST(0.22 AS Decimal(18, 2)), N'?????????', CAST(0x0000AA8800EFA27C AS DateTime), 1, N'???????????????', CAST(0xE13F0B00 AS Date), 0, 0, N'???????????????', CAST(0x0000ABB000C5A60C AS DateTime), 1, N'6')
GO
SET IDENTITY_INSERT [dbo].[App_TransactionAvgPrice] OFF
GO
INSERT [dbo].[FormCollectionObject] ([FormCollectionId], [FormId], [Title], [FormData], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'cccc519c-c448-4292-85d1-6a0ac2828fd9', N'0431a578-bfc9-407f-b95e-321c350f10cb', NULL, N'{"FormId":"0431a578-bfc9-407f-b95e-321c350f10cb","field1640871905593":"1","field1640871902689":"2022-01-04","field1641207457900":"123456","field1641207424694":""}', CAST(0x0000AE12013BD32C AS DateTime), 1, N'???????????????', NULL, NULL, NULL)
GO
INSERT [dbo].[FormCollectionObject] ([FormCollectionId], [FormId], [Title], [FormData], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'a37c1956-ddc0-457b-8f0a-93cdc44c257d', N'8e6d9e7c-16c2-48b8-9d67-f1a1a19453da', NULL, N'{"FormId":"8e6d9e7c-16c2-48b8-9d67-f1a1a19453da","field1641205615398":"1","field1641206170991":"????????????,????????????","field1641205647957":"????????????","field1641206608182":"????????????"}', CAST(0x0000AE12013AB1B8 AS DateTime), 1, N'???????????????', NULL, NULL, NULL)
GO
INSERT [dbo].[FormCollectionObject] ([FormCollectionId], [FormId], [Title], [FormData], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'e913389c-e11a-4675-b8eb-a25c75086e37', N'8e6d9e7c-16c2-48b8-9d67-f1a1a19453da', NULL, N'{"FormId":"8e6d9e7c-16c2-48b8-9d67-f1a1a19453da","field1641205615398":"1","field1641206170991":"????????????,????????????,????????????","field1641205647957":"????????????","field1641206608182":"1111"}', CAST(0x0000AE12013BC9CC AS DateTime), 1, N'???????????????', NULL, NULL, NULL)
GO
INSERT [dbo].[FormCollectionObject] ([FormCollectionId], [FormId], [Title], [FormData], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'90513c4c-b639-4d0d-8c9d-fb69b77620f8', N'0431a578-bfc9-407f-b95e-321c350f10cb', NULL, N'{"FormId":"0431a578-bfc9-407f-b95e-321c350f10cb","field1640871905593":"1","field1640871902689":"2022-01-05","field1641207457900":null,"field1641207424694":""}', CAST(0x0000AE12013AFCB8 AS DateTime), 1, N'???????????????', NULL, NULL, NULL)
GO
INSERT [dbo].[FormDesignOptions] ([FormId], [Title], [DaraggeOptions], [FormOptions], [FormConfig], [FormFields], [TableConfig], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'0431a578-bfc9-407f-b95e-321c350f10cb', N'2021????????????????????????', N'[{"id":5,"name":"????????????????????????????????????","type":"radio","icon":"el-icon-aim","value":0,"data":[{"key":"0","value":"???"},{"key":"2","value":"xx11"},{"key":"1","value":"???"}],"key":"enable","field":"field1640871905593","width":100,"readonly":false,"required":true,"values":["???"]},{"id":3,"name":"???????????????????????????????","type":"date","icon":"el-icon-date","value":null,"field":"field1640871902689","width":100,"readonly":false,"required":true},{"id":2,"name":"????????????","type":"textarea","value":"","icon":"el-icon-document-copy","field":"field1641207457900","width":100,"readonly":false,"required":false},{"id":9,"name":"????????????","type":"img","url":"","maxSize":3,"fileInfo":[],"multiple":false,"autoUpload":false,"maxFile":5,"icon":"el-icon-picture-outline","field":"field1641207424694","width":100,"readonly":false,"required":false}]', N'{"fields":{"field1640871905593":[],"field1640871902689":null,"field1641207457900":null,"field1641207424694":null},"formOptions":[[{"field":"field1640871905593","title":"????????????????????????????????????","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"???"},{"key":"2","value":"xx11"},{"key":"1","value":"???"}],"dataKey":"enable"}],[{"field":"field1640871902689","title":"???????????????????????????????","type":"date","required":true,"readonly":false,"colSize":12}],[{"field":"field1641207457900","title":"????????????","type":"textarea","required":false,"readonly":false,"colSize":12}],[{"field":"field1641207424694","title":"????????????","type":"img","required":false,"readonly":false,"colSize":12,"maxSize":3,"fileInfo":[],"multiple":false,"autoUpload":false,"maxFile":5,"url":""}]],"tables":[],"tabs":[]}', N'[{"field":"field1640871905593","title":"????????????????????????????????????","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"???"},{"key":"2","value":"xx11"},{"key":"1","value":"???"}],"dataKey":"enable"},{"field":"field1640871902689","title":"???????????????????????????????","type":"date","required":true,"readonly":false,"colSize":12},{"field":"field1641207457900","title":"????????????","type":"textarea","required":false,"readonly":false,"colSize":12},{"field":"field1641207424694","title":"????????????","type":"img","required":false,"readonly":false,"colSize":12,"maxSize":3,"fileInfo":[],"multiple":false,"autoUpload":false,"maxFile":5,"url":""}]', NULL, N'[]', CAST(0x0000AE0D0185D738 AS DateTime), 1, N'???????????????', N'???????????????', CAST(0x0000AE1201393F68 AS DateTime), 1)
GO
INSERT [dbo].[FormDesignOptions] ([FormId], [Title], [DaraggeOptions], [FormOptions], [FormConfig], [FormFields], [TableConfig], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'8e6d9e7c-16c2-48b8-9d67-f1a1a19453da', N'2021??????????????????', N'[{"id":5,"name":"??????????????????????????????????????????????????????????","type":"radio","icon":"el-icon-aim","value":0,"data":[{"key":"0","value":"???"},{"key":"2","value":"xx11"},{"key":"1","value":"???"}],"key":"enable","field":"field1641205615398","width":100,"readonly":false,"required":true,"values":["???"]},{"id":6,"name":"?????????????????????????????????????????????????","values":["????????????"],"type":"checkbox","key":"?????????","data":[{"key":"????????????","value":"????????????"},{"key":"????????????","value":"????????????"},{"key":"????????????","value":"????????????"}],"icon":"el-icon-circle-check","field":"field1641206170991","width":100,"readonly":false,"required":true},{"id":5,"name":"????????????,????????????????????????????????????","type":"radio","icon":"el-icon-aim","value":0,"data":[{"key":"????????????","value":"????????????"},{"key":"????????????","value":"????????????"},{"key":"????????????","value":"????????????"}],"key":"?????????","field":"field1641205647957","width":100,"readonly":false,"required":true,"values":["????????????"]},{"id":2,"name":"????????????","type":"textarea","value":"","icon":"el-icon-document-copy","field":"field1641206608182","width":100,"readonly":false,"required":false}]', N'{"fields":{"field1641205615398":[],"field1641206170991":[],"field1641205647957":[],"field1641206608182":null},"formOptions":[[{"field":"field1641205615398","title":"??????????????????????????????????????????????????????????","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"???"},{"key":"2","value":"xx11"},{"key":"1","value":"???"}],"dataKey":"enable"}],[{"field":"field1641206170991","title":"?????????????????????????????????????????????????","type":"checkbox","required":true,"readonly":false,"colSize":12,"data":[{"key":"????????????","value":"????????????"},{"key":"????????????","value":"????????????"},{"key":"????????????","value":"????????????"}],"dataKey":"?????????"}],[{"field":"field1641205647957","title":"????????????,????????????????????????????????????","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"????????????","value":"????????????"},{"key":"????????????","value":"????????????"},{"key":"????????????","value":"????????????"}],"dataKey":"?????????"}],[{"field":"field1641206608182","title":"????????????","type":"textarea","required":false,"readonly":false,"colSize":12}]],"tables":[],"tabs":[]}', N'[{"field":"field1641205615398","title":"??????????????????????????????????????????????????????????","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"???"},{"key":"2","value":"xx11"},{"key":"1","value":"???"}],"dataKey":"enable"},{"field":"field1641206170991","title":"?????????????????????????????????????????????????","type":"checkbox","required":true,"readonly":false,"colSize":12,"data":[{"key":"????????????","value":"????????????"},{"key":"????????????","value":"????????????"},{"key":"????????????","value":"????????????"}],"dataKey":"?????????"},{"field":"field1641205647957","title":"????????????,????????????????????????????????????","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"????????????","value":"????????????"},{"key":"????????????","value":"????????????"},{"key":"????????????","value":"????????????"}],"dataKey":"?????????"},{"field":"field1641206608182","title":"????????????","type":"textarea","required":false,"readonly":false,"colSize":12}]', NULL, N'[]', CAST(0x0000AE0E01668090 AS DateTime), 1, N'???????????????', N'???????????????', CAST(0x0000AE120134A6D8 AS DateTime), 1)
GO
INSERT [dbo].[SellOrder] ([Order_Id], [OrderType], [TranNo], [SellNo], [Qty], [AuditDate], [AuditStatus], [AuditId], [Auditor], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'8e68188b-a9a2-45f5-87cd-58c421b14090', 1, N'2019000001810005', N'2019000001810006', 22, CAST(0x0000AACC00DDF388 AS DateTime), 1, 1, N'???????????????', N'????????????...8888', 1, N'???????????????', CAST(0x0000AACC00CB93A0 AS DateTime), 1, N'???????????????', CAST(0x0000ABB000C8A7F1 AS DateTime))
GO
INSERT [dbo].[SellOrder] ([Order_Id], [OrderType], [TranNo], [SellNo], [Qty], [AuditDate], [AuditStatus], [AuditId], [Auditor], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'f30e1d98-b2c6-4150-b372-a9154553041e', 2, N'2019000001810003', N'2019000001810004', 56, CAST(0x0000AACC00DDF388 AS DateTime), 1, 1, N'???????????????', NULL, 1, N'???????????????', CAST(0x0000AACC00CB7C30 AS DateTime), 1, N'???????????????', CAST(0x0000AB9601604875 AS DateTime))
GO
INSERT [dbo].[SellOrder] ([Order_Id], [OrderType], [TranNo], [SellNo], [Qty], [AuditDate], [AuditStatus], [AuditId], [Auditor], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'da70748d-6c95-4bdb-bcf2-beb55c1693e3', 2, N'2019000001810001', N'2019000001810002', 200, NULL, 0, NULL, NULL, N'????????????????????????', 1, N'???????????????', CAST(0x0000AACB0136B054 AS DateTime), 1, N'???????????????', CAST(0x0000AACD00F64104 AS DateTime))
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'a79fd603-c30c-444f-8532-1b0be27c5f86', N'8e68188b-a9a2-45f5-87cd-58c421b14090', N'??????', N'2', 333, CAST(21.00 AS Decimal(18, 2)), N'Upload/Tables/Sys_Dictionary/202004072137326929/111.jpg', 1, N'???????????????', CAST(0x0000AB3B012618B2 AS DateTime), 1, N'???????????????', CAST(0x0000ABB000C8A827 AS DateTime))
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'49dded16-b1f1-4840-926d-5554e2587228', N'f30e1d98-b2c6-4150-b372-a9154553041e', N'??????', N'fds', 1, CAST(1.00 AS Decimal(18, 2)), N'Upload/Tables/Sys_Dictionary/202004072118229531/06.jpg,Upload/Tables/Sys_Dictionary/202004072118229531/07.jpg,Upload/Tables/Sys_Dictionary/202004072118229531/111.jpg', 1, N'???????????????', CAST(0x0000AB0C012B1F6C AS DateTime), 1, N'???????????????', CAST(0x0000AB9601604876 AS DateTime))
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'08d72cf6-d9f5-bee9-32ff-5808ff1238cb', N'6efb65b8-585e-4be7-8b77-94c76e362412', N'??????', N'??????', 7, CAST(8.00 AS Decimal(18, 2)), NULL, 1, N'???????????????', CAST(0x0000AAB900B6A954 AS DateTime), 1, N'???????????????', CAST(0x0000AAB900B6BC14 AS DateTime))
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'08d72cf6-ed6c-f0e0-9e97-5930a04f2ebc', N'ad698348-1535-4221-9a1a-57db5cb351e4', N'2', N'2', 2, NULL, NULL, 1, N'???????????????', CAST(0x0000AAB900B6CED4 AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'08d73b5c-f448-6ac7-5db9-66be4d4e6ca5', N'da70748d-6c95-4bdb-bcf2-beb55c1693e3', N'??????', N'32', 2, CAST(2.00 AS Decimal(18, 2)), N'33', 1, N'???????????????', CAST(0x0000AACB0136B180 AS DateTime), 1, N'???????????????', CAST(0x0000AACD00F64104 AS DateTime))
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'fc332cef-c1eb-4063-b71c-6addf19a8e8b', N'6efb65b8-585e-4be7-8b77-94c76e362412', N'22', N'2', 0, NULL, NULL, 1, N'???????????????', CAST(0x0000AAB900B6BC14 AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'08d73bef-a3a7-4ce3-00fb-8a1249593c9c', N'8e68188b-a9a2-45f5-87cd-58c421b14090', N'??????', N'4', 1, CAST(11.20 AS Decimal(18, 2)), N'Upload/Tables/Sys_Dictionary/202004072112537465/06.jpg', 1, N'???????????????', CAST(0x0000AACC00CB94CC AS DateTime), 1, N'???????????????', CAST(0x0000ABB000C8A827 AS DateTime))
GO
INSERT [dbo].[SellOrderList] ([OrderList_Id], [Order_Id], [ProductName], [MO], [Qty], [Weight], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'4d9b81da-0319-4d9a-99ce-d1251c5eb464', N'8e68188b-a9a2-45f5-87cd-58c421b14090', N'??????', N'2', 3, NULL, N'Upload/Tables/Sys_Dictionary/202004072140236770/02.jpg', 1, N'???????????????', CAST(0x0000AB96016186D3 AS DateTime), 1, N'???????????????', CAST(0x0000ABB000C8A818 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Sys_City] ON 

GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (1, N'110100', N'?????????', N'110000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (2, N'110200', N'???', N'110000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (3, N'120100', N'?????????', N'120000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (4, N'120200', N'???', N'120000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (5, N'130100', N'????????????', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (6, N'130200', N'?????????', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (7, N'130300', N'????????????', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (8, N'130400', N'?????????', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (9, N'130500', N'?????????', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (10, N'130600', N'?????????', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (11, N'130700', N'????????????', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (12, N'130800', N'?????????', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (13, N'130900', N'?????????', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (14, N'131000', N'?????????', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (15, N'131100', N'?????????', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (16, N'140100', N'?????????', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (17, N'140200', N'?????????', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (18, N'140300', N'?????????', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (19, N'140400', N'?????????', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (20, N'140500', N'?????????', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (21, N'140600', N'?????????', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (22, N'140700', N'?????????', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (23, N'140800', N'?????????', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (24, N'140900', N'?????????', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (25, N'141000', N'?????????', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (26, N'141100', N'?????????', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (27, N'150100', N'???????????????', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (28, N'150200', N'?????????', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (29, N'150300', N'?????????', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (30, N'150400', N'?????????', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (31, N'150500', N'?????????', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (32, N'150600', N'???????????????', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (33, N'150700', N'???????????????', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (34, N'150800', N'???????????????', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (35, N'150900', N'???????????????', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (36, N'152200', N'?????????', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (37, N'152500', N'???????????????', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (38, N'152900', N'????????????', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (39, N'210100', N'?????????', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (40, N'210200', N'?????????', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (41, N'210300', N'?????????', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (42, N'210400', N'?????????', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (43, N'210500', N'?????????', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (44, N'210600', N'?????????', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (45, N'210700', N'?????????', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (46, N'210800', N'?????????', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (47, N'210900', N'?????????', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (48, N'211000', N'?????????', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (49, N'211100', N'?????????', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (50, N'211200', N'?????????', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (51, N'211300', N'?????????', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (52, N'211400', N'????????????', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (53, N'220100', N'?????????', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (54, N'220200', N'?????????', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (55, N'220300', N'?????????', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (56, N'220400', N'?????????', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (57, N'220500', N'?????????', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (58, N'220600', N'?????????', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (59, N'220700', N'?????????', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (60, N'220800', N'?????????', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (61, N'222400', N'????????????????????????', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (62, N'230100', N'????????????', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (63, N'230200', N'???????????????', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (64, N'230300', N'?????????', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (65, N'230400', N'?????????', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (66, N'230500', N'????????????', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (67, N'230600', N'?????????', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (68, N'230700', N'?????????', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (69, N'230800', N'????????????', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (70, N'230900', N'????????????', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (71, N'231000', N'????????????', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (72, N'231100', N'?????????', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (73, N'231200', N'?????????', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (74, N'232700', N'??????????????????', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (75, N'310100', N'?????????', N'310000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (76, N'310200', N'???', N'310000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (77, N'320100', N'?????????', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (78, N'320200', N'?????????', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (79, N'320300', N'?????????', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (80, N'320400', N'?????????', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (81, N'320500', N'?????????', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (82, N'320600', N'?????????', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (83, N'320700', N'????????????', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (84, N'320800', N'?????????', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (85, N'320900', N'?????????', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (86, N'321000', N'?????????', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (87, N'321100', N'?????????', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (88, N'321200', N'?????????', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (89, N'321300', N'?????????', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (90, N'330100', N'?????????', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (91, N'330200', N'?????????', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (92, N'330300', N'?????????', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (93, N'330400', N'?????????', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (94, N'330500', N'?????????', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (95, N'330600', N'?????????', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (96, N'330700', N'?????????', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (97, N'330800', N'?????????', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (98, N'330900', N'?????????', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (99, N'331000', N'?????????', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (100, N'331100', N'?????????', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (101, N'340100', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (102, N'340200', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (103, N'340300', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (104, N'340400', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (105, N'340500', N'????????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (106, N'340600', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (107, N'340700', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (108, N'340800', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (109, N'341000', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (110, N'341100', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (111, N'341200', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (112, N'341300', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (113, N'341400', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (114, N'341500', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (115, N'341600', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (116, N'341700', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (117, N'341800', N'?????????', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (118, N'350100', N'?????????', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (119, N'350200', N'?????????', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (120, N'350300', N'?????????', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (121, N'350400', N'?????????', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (122, N'350500', N'?????????', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (123, N'350600', N'?????????', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (124, N'350700', N'?????????', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (125, N'350800', N'?????????', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (126, N'350900', N'?????????', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (127, N'360100', N'?????????', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (128, N'360200', N'????????????', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (129, N'360300', N'?????????', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (130, N'360400', N'?????????', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (131, N'360500', N'?????????', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (132, N'360600', N'?????????', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (133, N'360700', N'?????????', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (134, N'360800', N'?????????', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (135, N'360900', N'?????????', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (136, N'361000', N'?????????', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (137, N'361100', N'?????????', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (138, N'370100', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (139, N'370200', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (140, N'370300', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (141, N'370400', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (142, N'370500', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (143, N'370600', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (144, N'370700', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (145, N'370800', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (146, N'370900', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (147, N'371000', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (148, N'371100', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (149, N'371200', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (150, N'371300', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (151, N'371400', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (152, N'371500', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (153, N'371600', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (154, N'371700', N'?????????', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (155, N'410100', N'?????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (156, N'410200', N'?????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (157, N'410300', N'?????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (158, N'410400', N'????????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (159, N'410500', N'?????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (160, N'410600', N'?????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (161, N'410700', N'?????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (162, N'410800', N'?????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (163, N'410900', N'?????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (164, N'411000', N'?????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (165, N'411100', N'?????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (166, N'411200', N'????????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (167, N'411300', N'?????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (168, N'411400', N'?????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (169, N'411500', N'?????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (170, N'411600', N'?????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (171, N'411700', N'????????????', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (172, N'420100', N'?????????', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (173, N'420200', N'?????????', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (174, N'420300', N'?????????', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (175, N'420500', N'?????????', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (176, N'420600', N'?????????', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (177, N'420700', N'?????????', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (178, N'420800', N'?????????', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (179, N'420900', N'?????????', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (180, N'421000', N'?????????', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (181, N'421100', N'?????????', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (182, N'421200', N'?????????', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (183, N'421300', N'?????????', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (184, N'422800', N'??????????????????????????????', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (185, N'429000', N'?????????????????????', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (186, N'430100', N'?????????', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (187, N'430200', N'?????????', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (188, N'430300', N'?????????', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (189, N'430400', N'?????????', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (190, N'430500', N'?????????', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (191, N'430600', N'?????????', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (192, N'430700', N'?????????', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (193, N'430800', N'????????????', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (194, N'430900', N'?????????', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (195, N'431000', N'?????????', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (196, N'431100', N'?????????', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (197, N'431200', N'?????????', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (198, N'431300', N'?????????', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (199, N'433100', N'??????????????????????????????', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (200, N'440100', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (201, N'440200', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (202, N'440300', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (203, N'440400', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (204, N'440500', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (205, N'440600', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (206, N'440700', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (207, N'440800', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (208, N'440900', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (209, N'441200', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (210, N'441300', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (211, N'441400', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (212, N'441500', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (213, N'441600', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (214, N'441700', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (215, N'441800', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (216, N'441900', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (217, N'442000', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (218, N'445100', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (219, N'445200', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (220, N'445300', N'?????????', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (221, N'450100', N'?????????', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (222, N'450200', N'?????????', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (223, N'450300', N'?????????', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (224, N'450400', N'?????????', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (225, N'450500', N'?????????', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (226, N'450600', N'????????????', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (227, N'450700', N'?????????', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (228, N'450800', N'?????????', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (229, N'450900', N'?????????', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (230, N'451000', N'?????????', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (231, N'451100', N'?????????', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (232, N'451200', N'?????????', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (233, N'451300', N'?????????', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (234, N'451400', N'?????????', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (235, N'460100', N'?????????', N'460000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (236, N'460200', N'?????????', N'460000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (237, N'469000', N'???????????????????????????', N'460000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (238, N'500100', N'?????????', N'500000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (239, N'500200', N'???', N'500000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (240, N'500300', N'???', N'500000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (241, N'510100', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (242, N'510300', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (243, N'510400', N'????????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (244, N'510500', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (245, N'510600', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (246, N'510700', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (247, N'510800', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (248, N'510900', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (249, N'511000', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (250, N'511100', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (251, N'511300', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (252, N'511400', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (253, N'511500', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (254, N'511600', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (255, N'511700', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (256, N'511800', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (257, N'511900', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (258, N'512000', N'?????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (259, N'513200', N'???????????????????????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (260, N'513300', N'?????????????????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (261, N'513400', N'?????????????????????', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (262, N'520100', N'?????????', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (263, N'520200', N'????????????', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (264, N'520300', N'?????????', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (265, N'520400', N'?????????', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (266, N'522200', N'????????????', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (267, N'522300', N'?????????????????????????????????', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (268, N'522400', N'????????????', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (269, N'522600', N'??????????????????????????????', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (270, N'522700', N'??????????????????????????????', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (271, N'530100', N'?????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (272, N'530300', N'?????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (273, N'530400', N'?????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (274, N'530500', N'?????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (275, N'530600', N'?????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (276, N'530700', N'?????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (277, N'530800', N'?????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (278, N'530900', N'?????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (279, N'532300', N'?????????????????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (280, N'532500', N'??????????????????????????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (281, N'532600', N'???????????????????????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (282, N'532800', N'???????????????????????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (283, N'532900', N'?????????????????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (284, N'533100', N'??????????????????????????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (285, N'533300', N'????????????????????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (286, N'533400', N'?????????????????????', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (287, N'540100', N'?????????', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (288, N'542100', N'????????????', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (289, N'542200', N'????????????', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (290, N'542300', N'???????????????', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (291, N'542400', N'????????????', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (292, N'542500', N'????????????', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (293, N'542600', N'????????????', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (294, N'610100', N'?????????', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (295, N'610200', N'?????????', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (296, N'610300', N'?????????', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (297, N'610400', N'?????????', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (298, N'610500', N'?????????', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (299, N'610600', N'?????????', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (300, N'610700', N'?????????', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (301, N'610800', N'?????????', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (302, N'610900', N'?????????', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (303, N'611000', N'?????????', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (304, N'620100', N'?????????', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (305, N'620200', N'????????????', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (306, N'620300', N'?????????', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (307, N'620400', N'?????????', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (308, N'620500', N'?????????', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (309, N'620600', N'?????????', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (310, N'620700', N'?????????', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (311, N'620800', N'?????????', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (312, N'620900', N'?????????', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (313, N'621000', N'?????????', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (314, N'621100', N'?????????', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (315, N'621200', N'?????????', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (316, N'622900', N'?????????????????????', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (317, N'623000', N'?????????????????????', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (318, N'630100', N'?????????', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (319, N'632100', N'????????????', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (320, N'632200', N'?????????????????????', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (321, N'632300', N'?????????????????????', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (322, N'632500', N'?????????????????????', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (323, N'632600', N'?????????????????????', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (324, N'632700', N'?????????????????????', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (325, N'632800', N'??????????????????????????????', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (326, N'640100', N'?????????', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (327, N'640200', N'????????????', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (328, N'640300', N'?????????', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (329, N'640400', N'?????????', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (330, N'640500', N'?????????', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (331, N'650100', N'???????????????', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (332, N'650200', N'???????????????', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (333, N'652100', N'???????????????', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (334, N'652200', N'????????????', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (335, N'652300', N'?????????????????????', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (336, N'652700', N'???????????????????????????', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (337, N'652800', N'???????????????????????????', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (338, N'652900', N'???????????????', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (339, N'653000', N'?????????????????????????????????', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (340, N'653100', N'????????????', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (341, N'653200', N'????????????', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (342, N'654000', N'????????????????????????', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (343, N'654200', N'????????????', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (344, N'654300', N'???????????????', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (345, N'659000', N'?????????????????????', N'650000')
GO
SET IDENTITY_INSERT [dbo].[Sys_City] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Dictionary] ON 

GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (3, N'{valueField: ''Enable'',
textField: ''Enable'',
 containField: null,
  handler: null }', CAST(0x0000AA81012224F4 AS DateTime), NULL, N'admin', N'1', NULL, N'?????????', N'enable', 1, N'???????????????', CAST(0x0000AE120130F41A AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (30, N'{valueField: ''Success'',
 textField: ''Success'', 
 containField: null,
 handler: null }
', CAST(0x0000A8FC012FCB7C AS DateTime), 0, N'?????????????????????', NULL, NULL, N'????????????', N'restatus', 1, N'?????????????????????', CAST(0x0000A8FD00AAC850 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (31, N'{valueField: ''LogType'',
 textField: ''LogType'', 
 containField: null,
 handler: null }
', CAST(0x0000A8FD00F36114 AS DateTime), NULL, N'?????????????????????', NULL, NULL, N'????????????', N'log', 1, N'?????????????????????', CAST(0x0000A92F00F23190 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (32, N'{valueField: ''Role_Id'',
 textField: ''RoleName'', 
 containField: [''Role_Id'',''RoleName''],
 handler: null }
', CAST(0x0000A8FF01150404 AS DateTime), NULL, N'?????????????????????', NULL, N'SELECT Role_Id as ''key'',RoleName as ''value'' FROM Sys_Role WHERE Enable=1
', N'????????????', N'roles', 1, N'?????????????????????', CAST(0x0000A91C00F8424C AS DateTime), 1, 123, 0, N'sql????????????key,value?????????????????????????????????')
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (35, N'{
 valueField: ''AuditStatus'',
 textField: ''AuditStatus'',
  containField:null 
}', CAST(0x0000A91900B2F8CC AS DateTime), NULL, N'?????????????????????', NULL, NULL, N'????????????', N'audit', 1, N'?????????????????????', CAST(0x0000A91900B61804 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (36, N'{
 valueField: ''Variety'',
 textField: ''Variety'',
  containField:null 
}', CAST(0x0000A91900E86A70 AS DateTime), 1, N'?????????????????????', NULL, NULL, N'??????', N'pz', 1, N'???????????????', CAST(0x0000AE12013D1B40 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (37, N'{
 valueField: ''AgeRange'',
 textField: ''AgeRange'',
  containField:null 
}', CAST(0x0000A91900E8D898 AS DateTime), NULL, N'?????????????????????', NULL, NULL, N'??????', N'age', 1, N'?????????????????????', CAST(0x0000A91900EAC84C AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (38, N'{
 valueField: ''City'',
 textField: ''City'',
  containField:null 
}', CAST(0x0000A91900EBC56C AS DateTime), NULL, N'?????????????????????', NULL, N'
SELECT  CASE WHEN  CityName=''?????????'' THEN  ProvinceName ELSE CityName end  as  ''key'',CASE WHEN  CityName=''?????????'' THEN  ProvinceName ELSE CityName end  as  ''value''  FROM Sys_City AS a 
INNER JOIN Sys_Province AS b 
ON a.ProvinceCode=b.ProvinceCode
WHERE a.CityName<> ''???''', N'??????', N'city', 1, N'???????????????', CAST(0x0000AB540172007F AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (41, N'{
 valueField: ''Sex'',
 textField: ''Sex'',
  containField:null 
}', CAST(0x0000A91901033440 AS DateTime), 1, N'?????????????????????', NULL, NULL, N'??????', N'sex', 1, N'???????????????', CAST(0x0000AC79017C38CC AS DateTime), 1, NULL, 1, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (44, N'{
 valueField: ''NewsType'',
 textField: ''NewsType'',
  containField:null 
}', CAST(0x0000A919010C0FD4 AS DateTime), 1, N'?????????????????????', NULL, NULL, N'????????????', N'news', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (46, N'{
 valueField: ''ProvinceName'',
 textField: ''ProvinceName'',
  containField:null 
}', CAST(0x0000A91F00DDCE08 AS DateTime), NULL, N'?????????????????????', NULL, N'
SELECT  CASE WHEN  CityName=''?????????'' THEN  ProvinceName ELSE CityName end  as  ''key'',CASE WHEN  CityName=''?????????'' THEN  ProvinceName ELSE CityName end  as  ''value''  FROM Sys_City AS a 
INNER JOIN Sys_Province AS b 
ON a.ProvinceCode=b.ProvinceCode
WHERE a.CityName<> ''???''', N'?????????', N'pro', 1, N'???????????????', CAST(0x0000AB540171F607 AS DateTime), 1, NULL, 0, N'sql????????????key,value?????????????????????????????????')
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (49, N'{
 valueField: ''Gender'',
 textField: ''Gender'',
  containField:null 
}', CAST(0x0000A92600A6197C AS DateTime), NULL, N'?????????????????????', NULL, NULL, N'??????', N'gender', 1, N'?????????????????????', CAST(0x0000A92600B82630 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (50, N'{
 valueField: ''Enable'',
 textField: ''Enable'',
  containField:null 
}', CAST(0x0000A926010146E4 AS DateTime), 1, N'?????????????????????', NULL, NULL, N'????????????', N'status', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (52, N'{
 valueField: ''Choiceness'',
 textField: ''Choiceness'',
  containField:null 
}', CAST(0x0000A9270103C464 AS DateTime), 1, N'?????????????????????', NULL, NULL, N'????????????', N'cq', 1, N'???????????????', CAST(0x0000AACC01211AF0 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (59, N'{
 valueField: ''IsRegregisterPhone'',
 textField: ''IsRegregisterPhone'',
  containField:null 
}', CAST(0x0000A94B01061EBC AS DateTime), 1, N'?????????????????????', NULL, NULL, N'????????????', N'isphone', 1, N'???????????????', CAST(0x0000AC79017C9F6B AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (64, NULL, CAST(0x0000AACC01403124 AS DateTime), 1, N'???????????????', NULL, NULL, N'????????????', N'ordertype', 1, N'???????????????', CAST(0x0000AAF800A5FD2A AS DateTime), 1, NULL, 0, N'xxxxx')
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (65, NULL, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'???????????????', NULL, NULL, N'????????????', N'pn', 1, N'???????????????', CAST(0x0000AB5A0127DC8E AS DateTime), 1, 2, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (66, NULL, CAST(0x0000AC79017C1BD0 AS DateTime), 1, N'???????????????', NULL, N'SELECT Role_Id AS id,parentId,Role_Id AS [key],RoleName AS value FROM Sys_Role', N'????????????', N'tree_roles', 1, N'???????????????', CAST(0x0000AC79017D3D85 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (67, NULL, CAST(0x0000ACA0016566D6 AS DateTime), 1, N'???????????????', NULL, NULL, N'nav', N'nav', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (68, NULL, CAST(0x0000AE120130A904 AS DateTime), 1, N'???????????????', NULL, NULL, N'?????????', N'?????????', 1, N'???????????????', CAST(0x0000AE1201330926 AS DateTime), 1, NULL, 0, N'??????????????????')
GO
SET IDENTITY_INSERT [dbo].[Sys_Dictionary] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_DictionaryList] ON 

GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (3, NULL, 1, N'admin', N'???', N'0', 3, NULL, N'???????????????', CAST(0x0000AE120130F41A AS DateTime), 1, 2, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (4, NULL, 1, N'xxx', N'???', N'1', 3, NULL, N'???????????????', CAST(0x0000AE120130F41A AS DateTime), 1, 1, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (22, CAST(0x0000A8FC012FCB7C AS DateTime), 1, N'?????????????????????', N'??????', N'0', 30, NULL, N'???????????????', CAST(0x0000AAB0011553B4 AS DateTime), 1, 10, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (23, CAST(0x0000A8FC012FCB7C AS DateTime), 1, N'?????????????????????', N'??????', N'1', 30, NULL, N'???????????????', CAST(0x0000AAB0011553B4 AS DateTime), 1, 100, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (24, CAST(0x0000A8FD009FD788 AS DateTime), 1, N'?????????????????????', N'??????', N'2', 30, NULL, N'???????????????', CAST(0x0000AAB0011553B4 AS DateTime), 1, 50, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (25, CAST(0x0000A8FD00F36240 AS DateTime), 1, N'?????????????????????', N'??????', N'System', 31, NULL, N'???????????????', CAST(0x0000AAB00113CD78 AS DateTime), 1, 100, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (26, CAST(0x0000A8FD00F3C4B0 AS DateTime), 1, N'?????????????????????', N'??????', N'Login', 31, NULL, N'???????????????', CAST(0x0000AAB00113CD78 AS DateTime), 1, 90, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (27, CAST(0x0000A90000FF6C48 AS DateTime), 1, N'?????????????????????', N'??????', N'Add', 31, NULL, N'???????????????', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (28, CAST(0x0000A90000FF6C48 AS DateTime), 1, N'?????????????????????', N'??????', N'Del', 31, 1, N'???????????????', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (29, CAST(0x0000A90000FF9678 AS DateTime), 1, N'?????????????????????', N'??????', N'Edit', 31, 1, N'???????????????', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (37, CAST(0x0000A91900B2F9F8 AS DateTime), 1, N'?????????????????????', N'?????????', N'0', 35, NULL, N'?????????????????????', CAST(0x0000A91900B61804 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (38, CAST(0x0000A91900B2F9F8 AS DateTime), 1, N'?????????????????????', N'????????????', N'1', 35, NULL, N'?????????????????????', CAST(0x0000A91900B61804 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (39, CAST(0x0000A91900B2F9F8 AS DateTime), 1, N'?????????????????????', N'???????????????', N'2', 35, NULL, N'?????????????????????', CAST(0x0000A91900B61804 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (47, CAST(0x0000A91900E8D898 AS DateTime), 1, N'?????????????????????', N'0-2??????', N'0-2??????', 37, NULL, N'?????????????????????', CAST(0x0000A9530106FB0C AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (48, CAST(0x0000A91900E8D898 AS DateTime), 1, N'?????????????????????', N'2-6??????', N'2-6??????', 37, NULL, N'?????????????????????', CAST(0x0000A9530106FB0C AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (49, CAST(0x0000A91900E8D898 AS DateTime), 1, N'?????????????????????', N'7-12??????', N'7-12??????', 37, NULL, N'?????????????????????', CAST(0x0000A9530106FB0C AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (50, CAST(0x0000A91900E8D898 AS DateTime), 1, N'?????????????????????', N'12-16??????', N'12-16??????', 37, NULL, N'?????????????????????', CAST(0x0000A9530106FB0C AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (51, CAST(0x0000A91900E8D898 AS DateTime), 1, N'?????????????????????', N'16????????????', N'16????????????', 37, NULL, N'?????????????????????', CAST(0x0000A9530106FB0C AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (56, CAST(0x0000A91901033440 AS DateTime), 1, N'?????????????????????', N'??????', N'??????', 41, NULL, N'???????????????', CAST(0x0000AC79017C38CF AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (57, CAST(0x0000A91901033440 AS DateTime), 1, N'?????????????????????', N'??????', N'??????', 41, NULL, N'???????????????', CAST(0x0000AC79017C38CD AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (64, CAST(0x0000A919010C0FD4 AS DateTime), 1, N'?????????????????????', N'????????????', N'1', 44, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (65, CAST(0x0000A919010C0FD4 AS DateTime), 1, N'?????????????????????', N'????????????', N'2', 44, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (68, CAST(0x0000A91A00DBC6E4 AS DateTime), 1, N'?????????????????????', N'App??????', N'ApiLogin', 31, NULL, N'???????????????', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (69, CAST(0x0000A91A0106DC94 AS DateTime), 1, N'?????????????????????', N'App???????????????', N'ApiSendPIN', 31, NULL, N'???????????????', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (70, CAST(0x0000A91A011B4148 AS DateTime), 1, N'?????????????????????', N'App????????????', N'ApiException', 31, NULL, N'???????????????', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (71, CAST(0x0000A91A011B4274 AS DateTime), 1, N'?????????????????????', N'PC????????????', N'Exception', 31, NULL, N'???????????????', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (86, CAST(0x0000A92200BEC5E4 AS DateTime), 1, N'?????????????????????', N'App??????', N'AppHome', 31, NULL, N'???????????????', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (89, CAST(0x0000A9230121EDE0 AS DateTime), 1, N'?????????????????????', N'????????????', N'JoinMeeting', 31, NULL, N'???????????????', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (90, CAST(0x0000A92600A6197C AS DateTime), 1, N'?????????????????????', N'???', N'0', 49, NULL, N'?????????????????????', CAST(0x0000A92600B82630 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (91, CAST(0x0000A92600A6197C AS DateTime), 1, N'?????????????????????', N'???', N'1', 49, NULL, N'?????????????????????', CAST(0x0000A92600B82630 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (92, CAST(0x0000A92600B0F1A8 AS DateTime), 1, N'?????????????????????', N'????????????', N'ApiModifyPwd', 31, 0, N'???????????????', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (93, CAST(0x0000A92600E45D54 AS DateTime), 1, N'?????????????????????', N'????????????', N'JoinUs', 31, 0, N'???????????????', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (96, CAST(0x0000A926010146E4 AS DateTime), 1, N'?????????????????????', N'?????????', N'0', 50, 1, N'???????????????', CAST(0x0000AAAB012D83E4 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (97, CAST(0x0000A926010146E4 AS DateTime), 1, N'?????????????????????', N'?????????', N'1', 50, 1, N'???????????????', CAST(0x0000AAAB012D83E4 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (98, CAST(0x0000A926010146E4 AS DateTime), 1, N'?????????????????????', N'?????????', N'2', 50, 1, N'???????????????', CAST(0x0000AAAB012D83E4 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (101, CAST(0x0000A9270103C464 AS DateTime), 1, N'?????????????????????', N'???', N'0', 52, 0, N'???????????????', CAST(0x0000AACC01211AF0 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (102, CAST(0x0000A9270103C464 AS DateTime), 1, N'?????????????????????', N'???', N'1', 52, 0, N'???????????????', CAST(0x0000AACC01211AF0 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (104, CAST(0x0000A9280136ABA4 AS DateTime), 1, N'?????????????????????', N'iPhone??????', N'IPhoneTest', 31, 0, N'???????????????', CAST(0x0000AAB00113CD78 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (128, CAST(0x0000A94B01061EBC AS DateTime), 1, N'?????????????????????', N'???', N'1', 59, 0, N'???????????????', CAST(0x0000AC79017C9F6B AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (129, CAST(0x0000A94B01061EBC AS DateTime), 1, N'?????????????????????', N'???', N'0', 59, 1, N'???????????????', CAST(0x0000AC79017C9F6B AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (144, CAST(0x0000AAB00112E318 AS DateTime), 1, N'???????????????', N'??????Token', N'ReplaceToeken', 31, NULL, N'???????????????', CAST(0x0000AAB00113CD78 AS DateTime), 1, 110, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (145, CAST(0x0000AAB0011553B4 AS DateTime), 1, N'???????????????', N'Info', N'3', 30, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (149, CAST(0x0000AACC01403124 AS DateTime), 1, N'???????????????', N'??????', N'1', 64, 1, N'???????????????', CAST(0x0000AAF800A5FD2B AS DateTime), 1, NULL, N'fd')
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (150, CAST(0x0000AACC01403124 AS DateTime), 1, N'???????????????', N'??????', N'2', 64, 0, N'???????????????', CAST(0x0000AAF800A5FD2B AS DateTime), 1, NULL, N'fs')
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (151, CAST(0x0000AACC01403124 AS DateTime), 1, N'???????????????', N'??????', N'3', 64, 1, N'???????????????', CAST(0x0000AAF800A5FD2A AS DateTime), 1, NULL, N'xx')
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (152, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'???????????????', N'??????', N'??????', 65, 1, N'???????????????', CAST(0x0000AB5A0127DCC0 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (153, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'???????????????', N'??????', N'??????', 65, 1, N'???????????????', CAST(0x0000AB5A0127DCBF AS DateTime), 1, 4, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (154, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'???????????????', N'??????', N'??????', 65, NULL, N'???????????????', CAST(0x0000AB5A0127DCBF AS DateTime), 1, 6, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (155, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'???????????????', N'??????', N'??????', 65, NULL, N'???????????????', CAST(0x0000AB5A0127DCAE AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (423, CAST(0x0000ACA0016566E6 AS DateTime), 1, N'???????????????', N'???', N'1', 67, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (424, CAST(0x0000ACA0016566ED AS DateTime), 1, N'???????????????', N'???', N'0', 67, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (425, CAST(0x0000AE120130A91C AS DateTime), 1, N'???????????????', N'????????????', N'????????????', 68, 0, N'???????????????', CAST(0x0000AE1201330927 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (426, CAST(0x0000AE120130A91E AS DateTime), 1, N'???????????????', N'????????????', N'????????????', 68, 0, N'???????????????', CAST(0x0000AE1201330927 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (427, CAST(0x0000AE120130A91E AS DateTime), 1, N'???????????????', N'????????????', N'????????????', 68, 0, N'???????????????', CAST(0x0000AE1201330927 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (428, CAST(0x0000AE120132F9A5 AS DateTime), 1, N'???????????????', N'????????????', N'????????????', 68, 0, N'???????????????', CAST(0x0000AE1201330927 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (429, CAST(0x0000AE12013D1B40 AS DateTime), 1, N'???????????????', N'????????????', N'????????????', 36, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (430, CAST(0x0000AE12013D1B40 AS DateTime), 1, N'???????????????', N'????????????', N'????????????', 36, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (431, CAST(0x0000AE12013D1B40 AS DateTime), 1, N'???????????????', N'????????????', N'????????????', 36, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (432, CAST(0x0000AE12013D1B40 AS DateTime), 1, N'???????????????', N'????????????', N'????????????', 36, 0, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_DictionaryList] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Log] ON 

GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (1, CAST(0x0000AE650100A953 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 81, CAST(0x0000AE650100A96B AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202006191408112343/1111s.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (2, CAST(0x0000AE650100A953 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 173, CAST(0x0000AE650100A987 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (3, CAST(0x0000AE650100A98E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 228, CAST(0x0000AE650100A9D3 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/User/getVierificationCode', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (4, CAST(0x0000AE650100B529 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 9, CAST(0x0000AE650100B52C AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/User/getVierificationCode', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (5, CAST(0x0000AE650100B8D2 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 810, CAST(0x0000AE650100B9C5 AS DateTime), N'', N'Login', N'{"UserName":"admin","Password":"","VerificationCode":"y74r","UUID":"d1d652f3-6295-4f1f-a2c7-2923807691e1"}', N'????????????', 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/user/login', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (6, CAST(0x0000AE650100B8D2 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 815, CAST(0x0000AE650100B9C7 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/user/login', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (7, CAST(0x0000AE650100B9F7 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE650100B9F8 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (8, CAST(0x0000AE650100B9F7 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 88, CAST(0x0000AE650100BA12 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (9, CAST(0x0000AE650100C263 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 29, CAST(0x0000AE650100C26C AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (10, CAST(0x0000AE650100C85B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 25, CAST(0x0000AE650100C862 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (11, CAST(0x0000AE650100C94C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 6, CAST(0x0000AE650100C94E AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (12, CAST(0x0000AE650101043F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE650101043F AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (13, CAST(0x0000AE6501010456 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE6501010457 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/User/getVierificationCode', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (14, CAST(0x0000AE65010108AF AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE65010108B0 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/User/getVierificationCode', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (15, CAST(0x0000AE650101105E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 14, CAST(0x0000AE6501011062 AS DateTime), N'', N'Login', N'{"UserName":"admin","Password":"","VerificationCode":"ghwd","UUID":"c2f5300d-7af9-455a-8b13-84392e2b2407"}', N'????????????', 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/user/login', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (16, CAST(0x0000AE650101105E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 15, CAST(0x0000AE6501011063 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/user/login', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (17, CAST(0x0000AE65010110EE AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE65010110EF AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (18, CAST(0x0000AE65010110EE AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 9, CAST(0x0000AE65010110F1 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (19, CAST(0x0000AE650101158C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE650101158C AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (20, CAST(0x0000AE650101158C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AE650101158D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (21, CAST(0x0000AE6501011891 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AE6501011893 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (22, CAST(0x0000AE6501012488 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AE650101248A AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (23, CAST(0x0000AE65010127CF AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE65010127D0 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (24, CAST(0x0000AE6501012BCA AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE6501012BCB AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (25, CAST(0x0000AE650101572A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE650101572A AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (26, CAST(0x0000AE650101572A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE650101572B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (27, CAST(0x0000AE650101574C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AE650101574D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (28, CAST(0x0000AE65010158B8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE65010158B9 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (29, CAST(0x0000AE6501015D12 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE6501015D13 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (30, CAST(0x0000AE6501016517 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE6501016518 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (31, CAST(0x0000AE650101684E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 59, CAST(0x0000AE650101685F AS DateTime), NULL, N'Info', N'???:.,?????????????????????,??????,??????????????????', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (32, CAST(0x0000AE650101684E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 62, CAST(0x0000AE6501016860 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (33, CAST(0x0000AE6501016A61 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AE6501016A62 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (34, CAST(0x0000AE6501016C5B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 6, CAST(0x0000AE6501016C5C AS DateTime), NULL, N'Info', N'???:.,?????????????????????,??????,??????????????????', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (35, CAST(0x0000AE6501016C5B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 6, CAST(0x0000AE6501016C5D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (36, CAST(0x0000AE6501017426 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AE6501017427 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (37, CAST(0x0000AE650101779B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 13, CAST(0x0000AE650101779F AS DateTime), NULL, N'Info', N'???:App_TransactionAvgPrice,????????????????????????,??????,??????????????????', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (38, CAST(0x0000AE650101779B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 14, CAST(0x0000AE650101779F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (39, CAST(0x0000AE6501017D93 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE6501017D93 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (40, CAST(0x0000AE6501017D93 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 6, CAST(0x0000AE6501017D95 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (41, CAST(0x0000AE6501017DB5 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AE6501017DB6 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (42, CAST(0x0000AE6501017F1C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE6501017F1D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (43, CAST(0x0000AE6501019273 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE6501019273 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (44, CAST(0x0000AE6501019273 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE6501019274 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (45, CAST(0x0000AE650101929B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AE650101929B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (46, CAST(0x0000AE65010193FA AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AE65010193FB AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (47, CAST(0x0000AE6501019A6F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE6501019A6F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (48, CAST(0x0000AE6501019C82 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 7, CAST(0x0000AE6501019C84 AS DateTime), NULL, N'Info', N'???:.,?????????????????????,??????,??????????????????', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (49, CAST(0x0000AE6501019C82 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 7, CAST(0x0000AE6501019C84 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (50, CAST(0x0000AE6501019FC0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE6501019FC1 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (51, CAST(0x0000AE650101A165 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 7, CAST(0x0000AE650101A167 AS DateTime), NULL, N'Info', N'???:.,?????????????????????,??????,??????????????????', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (52, CAST(0x0000AE650101A165 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 7, CAST(0x0000AE650101A167 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (53, CAST(0x0000AE650101A25A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, CAST(0x0000AE650101A25A AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (54, CAST(0x0000AE650101A25A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AE650101A25C AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (55, CAST(0x0000AE650101A27E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE650101A27F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (56, CAST(0x0000AE650101A36D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE650101A36D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (57, CAST(0x0000AE650101ADC5 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE650101ADC6 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (58, CAST(0x0000AE650101AFC3 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, CAST(0x0000AE650101AFC8 AS DateTime), NULL, N'Info', N'???:App_TransactionAvgPrice,????????????????????????,??????,??????????????????', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (59, CAST(0x0000AE650101AFC3 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, CAST(0x0000AE650101AFC8 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (60, CAST(0x0000AE650101B0F1 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, CAST(0x0000AE650101B0F1 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (61, CAST(0x0000AE650101B0F1 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AE650101B0F3 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (62, CAST(0x0000AE650101B113 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE650101B114 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (63, CAST(0x0000AE650101BE0F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE650101BE10 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (64, CAST(0x0000AE650101C8FE AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE650101C8FE AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (65, CAST(0x0000AE650101D97A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE650101D97A AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (66, CAST(0x0000AE650101DB79 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE650101DB7A AS DateTime), NULL, N'Info', N'???:.,??????????????????,??????,??????????????????', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (67, CAST(0x0000AE650101DB79 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AE650101DB7A AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (68, CAST(0x0000AE650101DEF6 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE650101DEF7 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (69, CAST(0x0000AE650101E0DB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE650101E0DC AS DateTime), NULL, N'Info', N'???:App_Transaction,?????????????????????,??????,??????????????????', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (70, CAST(0x0000AE650101E0DB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE650101E0DD AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (71, CAST(0x0000AE650101E237 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, CAST(0x0000AE650101E237 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (72, CAST(0x0000AE650101E238 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AE650101E238 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (73, CAST(0x0000AE650101E259 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE650101E259 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (74, CAST(0x0000AE650101E8EF AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE650101E8F0 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (75, CAST(0x0000AE650101EEF2 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE650101EEF2 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (76, CAST(0x0000AE650101F093 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE650101F094 AS DateTime), NULL, N'Info', N'???:SellOrder,???????????????1???1,??????,??????????????????', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (77, CAST(0x0000AE650101F093 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE650101F094 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (78, CAST(0x0000AE650101F1D0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, CAST(0x0000AE650101F1D1 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (79, CAST(0x0000AE650101F1D1 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE650101F1D2 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (80, CAST(0x0000AE650101F1F3 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE650101F1F3 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (81, CAST(0x0000AE650101F987 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE650101F987 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (82, CAST(0x0000AE650101FAF3 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE650101FAF3 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (83, CAST(0x0000AE650101FD9C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE650101FD9C AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (84, CAST(0x0000AE650102047C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE650102047C AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (85, CAST(0x0000AE6501020652 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AE6501020654 AS DateTime), NULL, N'Info', N'???:.,?????????????????????????????????,??????,??????????????????', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (86, CAST(0x0000AE6501020652 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 6, CAST(0x0000AE6501020654 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (87, CAST(0x0000AE6501020735 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, CAST(0x0000AE6501020735 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (88, CAST(0x0000AE6501020735 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE6501020736 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (89, CAST(0x0000AE6501020757 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE6501020757 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (90, CAST(0x0000AE6501020E22 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE6501020E23 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (91, CAST(0x0000AE6501021665 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE6501021665 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (92, CAST(0x0000AE6501021962 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AE6501021964 AS DateTime), NULL, N'Info', N'???:App_Appointment,?????????????????????,??????,??????????????????', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (93, CAST(0x0000AE6501021962 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 5, CAST(0x0000AE6501021964 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (94, CAST(0x0000AE6501021A35 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE6501021A36 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (95, CAST(0x0000AE6501021BD1 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AE6501021BD2 AS DateTime), NULL, N'Info', N'???:.,?????????????????????,??????,??????????????????', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (96, CAST(0x0000AE6501021BD1 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AE6501021BD2 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (97, CAST(0x0000AE6501021D69 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, CAST(0x0000AE6501021D69 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (98, CAST(0x0000AE6501021D69 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AE6501021D6A AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (99, CAST(0x0000AE6501021D8B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE6501021D8B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (100, CAST(0x0000AE650102251D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE650102251D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (101, CAST(0x0000AE6501022993 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE6501022993 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (102, CAST(0x0000AE6501022BF0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE6501022BF1 AS DateTime), NULL, N'Info', N'???:.,?????????????????????table,??????,??????????????????', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (103, CAST(0x0000AE6501022BF0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE6501022BF1 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (104, CAST(0x0000AE6501022CB6 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE6501022CB6 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (105, CAST(0x0000AE6501022F05 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE6501022F06 AS DateTime), NULL, N'Info', N'???:App_Expert,?????????????????????table,??????,??????????????????', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (106, CAST(0x0000AE6501022F05 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE6501022F06 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (107, CAST(0x0000AE6501022FC7 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, CAST(0x0000AE6501022FC8 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (108, CAST(0x0000AE65010231BD AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE65010231BE AS DateTime), NULL, N'Info', N'???:.,???????????????????????????,??????,??????????????????', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (109, CAST(0x0000AE65010231BD AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 4, CAST(0x0000AE65010231BE AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (110, CAST(0x0000AE6501023557 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 0, CAST(0x0000AE6501023557 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (111, CAST(0x0000AE6501023557 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 3, CAST(0x0000AE6501023558 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'???????????????', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (112, CAST(0x0000AE6501023578 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 2, CAST(0x0000AE6501023579 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'???????????????', 1)
GO
SET IDENTITY_INSERT [dbo].[Sys_Log] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Menu] ON 

GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (2, N'??????????????????', N'[{"text":"??????","value":"Search"}]', N'ios-people', NULL, 1, 1600, N'.', 0, NULL, CAST(0x0000A7DD00CB94CC AS DateTime), N'2017-08-28 11:12:45', CAST(0x0000AB550157BBCA AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (3, N'????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Export"}]', N'', NULL, 1, 900, N'Sys_Role', 2, N'/Sys_Role/Manager', CAST(0x0000A7EC010D2C98 AS DateTime), N'2017-08-28 14:19:13', CAST(0x0000AAAA00AC65FC AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (5, N'????????????', N'[{"text":"??????","value":"Search"}]', N'ios-chatbubbles', NULL, 1, 1300, N'xxx', 0, N'/', CAST(0x0000A7F60128868C AS DateTime), N'2017-09-22 17:59:37', CAST(0x0000AB55015825F3 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (6, N'????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Export"}]', N'', NULL, 1, 0, N'Sys_Log', 5, N'/Sys_Log/Manager', CAST(0x0000A7F60128BECC AS DateTime), N'2017-09-22 18:0:25', CAST(0x0000AAA9010D5344 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (7, N'??????????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Export"}]', N'', NULL, 0, 10, N'Sys_Role1', 2, N'/Sys_Role/TreeManager', NULL, NULL, CAST(0x0000AACD00FB8F38 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (8, N'??????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 10000, N'/', 32, N'chart', NULL, NULL, CAST(0x0000AB94015FB231 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (9, N'????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"},{"text":"??????","value":"Upload"},{"text":"??????","value":"Audit"}]', N'', NULL, 1, 11110, N'Sys_User', 2, N'/Sys_User/Manager', NULL, NULL, CAST(0x0000AAA900EE99A4 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (13, N'??????+??????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"}]', N'', NULL, 1, 800, N'App_Transaction', 55, N'/multi3', CAST(0x0000A7DD00ECCAC0 AS DateTime), N'null', CAST(0x0000AAFF013A0A5C AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (17, N'??????????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"},{"text":"??????","value":"Upload"},{"text":"??????","value":"Audit"}]', N'', NULL, 0, 10, N'Sys_UserRegisterRecord', 2, N'/Sys_UserRegisterRecord/Manager', NULL, NULL, CAST(0x0000AACC00FFD110 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (24, N'????????????table??????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 750, N'/', 56, N'/table', NULL, NULL, CAST(0x0000AACE00F7083C AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (25, N'????????????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 1100, N'/', 29, N'/form6', NULL, NULL, CAST(0x0000AACE00D21158 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (28, N'???????????????table', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 1500, N'vtable', 33, N'table1', NULL, NULL, CAST(0x0000AB0100EDA5D2 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (29, N'????????????', N'[{"text":"??????","value":"Search"}]', N'md-build', NULL, 1, 1690, N'/', 0, N'', NULL, NULL, CAST(0x0000AB5501573FDB AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (31, N'???????????????table', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"}]', N'', NULL, 1, 950, N'App_TransactionAvgPrice1', 55, N'/multi1', NULL, NULL, CAST(0x0000AAFF0119EC74 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (32, N'??????+??????', N'[{"text":"??????","value":"Search"}]', N'ios-pie', NULL, 1, 1720, N'/', 0, N'', NULL, NULL, CAST(0x0000AB550156F843 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (33, N'table??????', N'[{"text":"??????","value":"Search"}]', N'ios-keypad', NULL, 1, 1710, N'tables', 0, N'/', NULL, NULL, CAST(0x0000ACDD016C7F58 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (34, N'?????????????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"},{"text":"??????","value":"Upload"},{"text":"??????","value":"Audit"}]', N'', NULL, 1, 0, N'?????????????????????', 84, N'/formUpload', NULL, NULL, CAST(0x0000AB0F015C1B71 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (35, N'????????????table', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 730, N'editTable', 56, N'/editTable', NULL, NULL, CAST(0x0000AACE0105057C AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (36, N'??????+??????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 0, N'/', 32, N'formChart', NULL, NULL, CAST(0x0000AB00012F31F5 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (37, N'????????????????????? ', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 800, N'????????????????????? ', 84, N'', NULL, NULL, CAST(0x0000AB0F008A9BD9 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (39, N'??????Token????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"},{"text":"??????","value":"Upload"},{"text":"??????","value":"Audit"}]', N'', NULL, 0, 10, N'x', 2, N'/Sys_UserTokenLog/Manager', NULL, NULL, CAST(0x0000AACC00FFCB34 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (40, N'api??????table??????', N'[{"text":"??????","value":"Search"}]', N'ivu-icon ivu-icon-ios-add-circle', NULL, 1, 900, N'table2', 33, N'table2', NULL, NULL, CAST(0x0000AB0100ED9F42 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (42, N'?????????????????????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 0, N'?????????????????????', 84, N'', NULL, NULL, CAST(0x0000AB0F008AC273 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (44, N'table+forms', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"}]', N'', NULL, 1, 800, N'tableForms', 33, N'tableForms', NULL, NULL, CAST(0x0000AB01012E4A1A AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (45, N'????????????', N'', N'', NULL, 0, 0, N'/', 0, NULL, NULL, NULL, CAST(0x0000ABB200DBCA8F AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (48, N'????????????', N'[{"text":"??????","value":"Search"}]', N'ios-apps', NULL, 1, 2000, N'Table+????????????', 0, N'/', CAST(0x0000AA8800DD8560 AS DateTime), N'???????????????', CAST(0x0000AE1201399CA4 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (49, N'????????????+????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Export"},{"text":"test","value":"test"}]', N'', NULL, 1, 1000, N'App_Appointment', 48, N'/App_Appointment', CAST(0x0000AA8800DE006C AS DateTime), N'???????????????', CAST(0x0000AB8100D5494C AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (50, N'?????????????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"},{"text":"??????","value":"Upload"},{"text":"??????","value":"Audit"}]', N'', NULL, 1, 900, N'App_TransactionAvgPrice', 48, N'/App_TransactionAvgPrice', CAST(0x0000AA8800E4EFD0 AS DateTime), N'???????????????', CAST(0x0000AB96016732DE AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (51, N'????????????????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Export"},{"text":"??????","value":"Audit"}]', N'', NULL, 1, 800, N'App_ReportPrice', 74, N'/App_ReportPrice', CAST(0x0000AA8800E56F8C AS DateTime), N'???????????????', CAST(0x0000AB92016A18A4 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (52, N'??????????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"}]', N'', NULL, 1, 600, N'App_Transaction', 48, N'/App_Transaction', CAST(0x0000AA8800E5AED4 AS DateTime), N'???????????????', CAST(0x0000AAF700A7446E AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (53, N'?????????????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"}]', N'', NULL, 1, 900, N'App_ReportPrice', 55, N'/multi2', CAST(0x0000AA8800E5E96C AS DateTime), N'???????????????', CAST(0x0000AAFF013A0640 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (54, N'???????????????????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Export"}]', N'', NULL, 1, 10, N'SellOrder1', 55, N'/multi4', CAST(0x0000AA8800E62530 AS DateTime), N'???????????????', CAST(0x0000AB920169CC6A AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (55, N'???????????????', N'[{"text":"??????","value":"Search"}]', N'md-cube', NULL, 1, 1740, N'/', 0, NULL, CAST(0x0000AA8800E651B8 AS DateTime), N'???????????????', CAST(0x0000ACA001642021 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (56, N'????????????', N'[{"text":"??????","value":"Search"}]', N'md-podium', NULL, 1, 1750, N'/', 0, NULL, CAST(0x0000AA8800E6CCC4 AS DateTime), N'???????????????', CAST(0x0000ACA001641CC4 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (57, N'????????????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 1000, N'.', 56, N'/form1', CAST(0x0000AA8800E70AE0 AS DateTime), N'???????????????', CAST(0x0000AB94015D5495 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (58, N'????????????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 900, N'????????????', 56, N'/form2', CAST(0x0000AA8800E72F34 AS DateTime), N'???????????????', CAST(0x0000AACE00E673B4 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (59, N'????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"},{"text":"??????","value":"Upload"},{"text":"??????","value":"Audit"}]', N'', NULL, 1, 800, N'????????????', 56, N'/form3', CAST(0x0000AA8800E7570C AS DateTime), N'???????????????', CAST(0x0000AB960167456A AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (60, N'Table+??????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 700, N'Table+??????', 56, N'/form4', CAST(0x0000AA8800E799D8 AS DateTime), N'???????????????', CAST(0x0000AACE00E67ABC AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (61, N'????????????', N'[{"text":"??????","value":"Search"}]', N'ios-cog', NULL, 1, 1000, N'????????????', 0, N'/', CAST(0x0000AA8800E7D470 AS DateTime), N'???????????????', CAST(0x0000AE1201396D56 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (62, N'????????????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 10, N'Sys_Menu', 61, N'/sysmenu', CAST(0x0000AA8800E7F8C4 AS DateTime), N'???????????????', CAST(0x0000AAF000C5EE20 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (63, N'?????????????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Export"}]', N'', NULL, 1, 10, N'Sys_Dictionary', 61, N'/Sys_Dictionary', CAST(0x0000AA8800E85A08 AS DateTime), N'???????????????', CAST(0x0000AAAB01237B24 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (64, N'????????????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 1500, N'????????????', 0, N'/coding', CAST(0x0000AA8800E8E324 AS DateTime), N'???????????????', CAST(0x0000AE12013976F0 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (65, N'????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"}]', N'', NULL, 1, 10, N'/', 64, N'/coder', CAST(0x0000AA8800E92CF8 AS DateTime), N'???????????????', CAST(0x0000AE1201397ACA AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (66, N'????????????HTML', N'[{"text":"??????","value":"Search"}]', N'md-options', NULL, 1, 1520, N'??????????????????', 0, N'/', CAST(0x0000AA8800EA2EC8 AS DateTime), N'???????????????', CAST(0x0000AB550157CECF AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (67, N'??????????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Export"}]', N'', NULL, 1, 0, N'App_News', 66, N'/App_News', CAST(0x0000AA8800EAA1A0 AS DateTime), N'???????????????', CAST(0x0000AB2B00F38661 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (68, N'???????????????????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Export"},{"text":"??????","value":"Audit"}]', N'', NULL, 1, 700, N'App_Expert', 48, N'/App_Expert', CAST(0x0000AA8800ED5F94 AS DateTime), N'???????????????', CAST(0x0000AB91013231BF AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (69, N'?????????????????????', N'', N'', NULL, 0, 500, N'?????????????????????', 48, N'/coding', CAST(0x0000AA8800EDF7EC AS DateTime), N'???????????????', CAST(0x0000AB08013C04FB AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (70, N'?????????????????????', N'', N'', NULL, 0, 400, N'?????????????????????', 48, N'/coding', CAST(0x0000AA8800EE9BFC AS DateTime), N'???????????????', CAST(0x0000AB08013C07C0 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (71, N'vue????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Update"}]', N'ivu-icon ivu-icon-ios-boat', NULL, 1, 1000, N'Sys_Role', 2, N'/permission', CAST(0x0000AAA500ABD380 AS DateTime), N'???????????????', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (72, N'??????H5??????', N'[{"text":"??????","value":"Search"}]', N'logo-apple', NULL, 1, 1650, N'/', 0, N'', CAST(0x0000AAA900DAA7C8 AS DateTime), N'???????????????', CAST(0x0000AB550157A69D AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (73, N'??????H5??????????????????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, NULL, N'/', 72, N'/app/guide', CAST(0x0000AAA900DAE134 AS DateTime), N'???????????????', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (74, N'?????????(???)', N'[{"text":"??????","value":"Search"}]', N'ios-color-filter', NULL, 1, 1770, N'/', 0, N'/', CAST(0x0000AAB101243A28 AS DateTime), N'???????????????', CAST(0x0000AE120139BB57 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (75, N'???????????????(1)', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"},{"text":"??????","value":"Upload"},{"text":"??????","value":"Audit"}]', N'', NULL, 1, 1000, N'SellOrder', 74, N'/SellOrder', CAST(0x0000AAB1012C1FA4 AS DateTime), N'???????????????', CAST(0x0000ACEB017058C2 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (77, N'????????????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 600, N'????????????', 56, N'/form7', CAST(0x0000AAB500C574D4 AS DateTime), N'???????????????', CAST(0x0000AACE00E67F6C AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (84, N'????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"},{"text":"??????","value":"Upload"},{"text":"??????","value":"Audit"}]', N'ios-folder-open', NULL, 1, 1700, N'????????????', 0, N'/', CAST(0x0000AB0200D5F887 AS DateTime), N'???????????????', CAST(0x0000AE120139FCF4 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (85, N'??????????????????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 1000, N'??????????????????', 84, N'/volUploadExample', CAST(0x0000AB0B01297D21 AS DateTime), N'???????????????', CAST(0x0000AB2600BA5FF2 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (86, N'????????????', N'[{"text":"??????","value":"Search"}]', N'logo-rss', NULL, 1, 1700, N'/', 0, N'', CAST(0x0000AB0D00BA0B39 AS DateTime), N'???????????????', CAST(0x0000AE120139EC8C AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (87, N'KindEditor?????????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 1000, N'KindEditor?????????', 66, N'/kindEditor', CAST(0x0000AB2800BF93F5 AS DateTime), N'???????????????', CAST(0x0000AB2C00A53E89 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (88, N'??????????????????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 900, N'htmlList', 66, N'/htmlList', CAST(0x0000AB2B00EF5362 AS DateTime), N'???????????????', CAST(0x0000AB2C00A543EF AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (89, N'??????????????????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 1700, N'.', 86, N'/validator', CAST(0x0000AB5501182CD9 AS DateTime), N'???????????????', CAST(0x0000AB550118608A AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (90, N'??????????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Export"}]', N'', NULL, 1, 0, N'vSellOrderImg', 74, N'/vSellOrderImg', CAST(0x0000AB9601550193 AS DateTime), N'???????????????', CAST(0x0000AB92016A187C AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (91, N'????????????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 0, N'????????????', 32, N'/flex', CAST(0x0000AB96016840CA AS DateTime), N'???????????????', CAST(0x0000AB00012F30CC AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (92, N'????????????', N'[{"text":"??????","value":"Search"}]', N'md-analytics', NULL, 1, 1705, N'??????????????????', 0, N'', CAST(0x0000ABA900EBEFF1 AS DateTime), N'???????????????', CAST(0x0000AE120139E2A6 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (93, N'tree?????????????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"}]', N'', NULL, 1, 1000, N'tree?????????????????????', 92, N'treetable1', CAST(0x0000ABA900EC5EC0 AS DateTime), N'???????????????', CAST(0x0000ABA900EC2A34 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (94, N'tree????????????table', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 0, N'treetable2', 92, N'/treetable2', CAST(0x0000ABA9012C23BD AS DateTime), N'???????????????', CAST(0x0000ABA900EC2A34 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (95, N'???????????????', N'', N'', NULL, 1, 1, N'/', 45, N'', CAST(0x0000ABB200DBDE06 AS DateTime), N'???????????????', CAST(0x0000AACE00A34418 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (96, N'???????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"},{"text":"??????","value":"Upload"}]', N'', NULL, 1, 0, N'App_NewsEditor', 48, N'/App_NewsEditor', CAST(0x0000ACB200B4A734 AS DateTime), N'???????????????', CAST(0x0000AB08013C06BC AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (97, N'????????????????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"}]', N'', NULL, 1, 0, N'App_Expert2', 48, N'/App_Expert2', CAST(0x0000ACE301054346 AS DateTime), N'???????????????', CAST(0x0000ACE3012361C0 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (98, N'???????????????(2)', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"}]', N'', NULL, 1, 990, N'SellOrder2', 74, N'/SellOrder2', CAST(0x0000ACEB0170197F AS DateTime), N'???????????????', CAST(0x0000ACEB01706089 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (99, N'???????????????(3)', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"}]', N'', NULL, 1, 980, N'SellOrder3', 74, N'/SellOrder3', CAST(0x0000ACEB01764E81 AS DateTime), N'???????????????', CAST(0x0000ACEB0170604C AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (100, N'????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Import"},{"text":"??????","value":"Export"}]', N'', NULL, 1, 0, N'App_Transaction2', 48, N'/App_Transaction2', CAST(0x0000ACF0017430E3 AS DateTime), N'???????????????', CAST(0x0000AAF700A74450 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (101, N'table??????(2)', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 0, N'table3', 33, N'/table3', CAST(0x0000ACF100D5ED2E AS DateTime), N'???????????????', CAST(0x0000AB0100ED9EDC AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (104, N'????????????(tree)', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"}]', N'', NULL, 1, 0, N'Sys_Role1', 2, N'/Sys_Role1', CAST(0x0000AD1C00E1A7EA AS DateTime), N'???????????????', CAST(0x0000AAAA00AC65FC AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (105, N'tree?????????table??????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 0, N'/treetable2', 92, N'/treetable2', CAST(0x0000AD1C00F8E5AF AS DateTime), N'???????????????', CAST(0x0000AD1C00F8A264 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (106, N'????????????', N'[{"text":"??????","value":"Search"}]', N'el-icon-s-operation', NULL, 1, 3000, N'.', 0, N'', CAST(0x0000AD92000ABAC4 AS DateTime), N'???????????????', CAST(0x0000AE12013A17B1 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (107, N'????????????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 100, N'.', 106, N'/formDraggable', CAST(0x0000AD92000AFCD8 AS DateTime), N'???????????????', CAST(0x0000AE1201399759 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (109, N'????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Add"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"}]', N'', NULL, 1, 0, N'FormDesignOptions', 106, N'/FormDesignOptions', CAST(0x0000AE0D01829308 AS DateTime), N'???????????????', CAST(0x0000AE12013A329D AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (110, N'????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Export"}]', N'', NULL, 1, 0, N'.', 106, N'/formCollectionResultTree', CAST(0x0000AE0D0182EBC4 AS DateTime), N'???????????????', CAST(0x0000AE0E017E47E2 AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (111, N'????????????', N'[{"text":"??????","value":"Search"}]', N'', NULL, 1, 0, N'.', 48, N'/tabsTable', CAST(0x0000AE1700D5D94B AS DateTime), N'???????????????', CAST(0x0000AAF700A74450 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (112, N'????????????', N'[{"text":"??????","value":"Search"},{"text":"??????","value":"Delete"},{"text":"??????","value":"Update"},{"text":"??????","value":"Export"}]', N'', NULL, 1, 0, N'.', 48, N'App_Appointment2', CAST(0x0000AE1701137446 AS DateTime), N'???????????????', CAST(0x0000AE17011382AC AS DateTime), N'???????????????', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (113, N'????????????', N'[{\"text\":\"??????\",\"value\":\"Search\"}]', N'', NULL, 1, 9000, N'.', 0, N'', CAST(0x0000AE6400101E2C AS DateTime), N'???????????????', CAST(0x0000AE64011EBD14 AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (114, N'????????????', N'', N'', NULL, 1, 10, N'App_Appointment', 123, N'pages/order/App_Appointment/App_Appointment', CAST(0x0000AE6400105EA0 AS DateTime), N'???????????????', CAST(0x0000AE6501021963 AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (115, N'????????????', N'', N'', NULL, 1, 0, N'.', 113, N'/pages/order/App_Appointment1/App_Appointment1', CAST(0x0000AE640010A748 AS DateTime), N'???????????????', CAST(0x0000AE6501019C83 AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (116, N'???????????????', N'[{\"text\":\"??????\",\"value\":\"Search\"}]', N'', NULL, 1, 8500, N'.', 0, N'', CAST(0x0000AE64002200B0 AS DateTime), N'???????????????', CAST(0x0000AD94002EBF30 AS DateTime), NULL, 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (117, N'???????????????', N'', N'', NULL, 1, 10, N'App_TransactionAvgPrice', 116, N'pages/appmanager/App_TransactionAvgPrice/App_TransactionAvgPrice', CAST(0x0000AE64002252B8 AS DateTime), N'???????????????', CAST(0x0000AE650101AFC5 AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (118, N'???????????????', N'[{\"text\":\"??????\",\"value\":\"Search\"}]', N'', NULL, 1, 8200, N'.', 0, N'', CAST(0x0000AE640033E7E4 AS DateTime), N'???????????????', CAST(0x0000AE64011F0A6C AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (119, N'????????????', N'', N'', NULL, 1, 10, N'App_Transaction', 118, N'/pages/appmanager/App_Transaction/App_Transaction', CAST(0x0000AE640033FCFC AS DateTime), N'???????????????', CAST(0x0000AE650101E0DC AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (120, N'?????????', N'', N'', NULL, 1, 0, N'.', 118, N'/pages/appmanager/App_Transaction1/App_Transaction1', CAST(0x0000AE6400341DCC AS DateTime), N'???????????????', CAST(0x0000AE650101DB79 AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (121, N'???????????????', N'[{\"text\":\"??????\",\"value\":\"Search\"}]', N'', NULL, 1, 8100, N'.', 0, N'', CAST(0x0000AE6400346548 AS DateTime), N'???????????????', CAST(0x0000AE6400356E20 AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (122, N'??????1???1', N'', N'', NULL, 1, 0, N'SellOrder', 121, N'/pages/order/SellOrder/SellOrder', CAST(0x0000AE64003484EC AS DateTime), N'???????????????', CAST(0x0000AE650101F094 AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (123, N'??????vol-form', N'[{\"text\":\"??????\",\"value\":\"Search\"}]', N'', NULL, 1, 8000, N'.', 0, N'', CAST(0x0000AE640034C308 AS DateTime), N'???????????????', CAST(0x0000AD94002EBF30 AS DateTime), NULL, 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (124, N'????????????', N'', N'', NULL, 1, 10, N'.', 123, N'/pages/form/form2', CAST(0x0000AE640034E9B4 AS DateTime), N'???????????????', CAST(0x0000AE6501021BD2 AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (125, N'????????????', N'', N'', NULL, 1, 0, N'.', 113, N'pages/form/form1', CAST(0x0000AE640034F8F0 AS DateTime), N'???????????????', CAST(0x0000AE650101A166 AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (126, N'??????vol-table', N'[{\"text\":\"??????\",\"value\":\"Search\"}]', N'', NULL, 1, 7900, N'.', 0, N'', CAST(0x0000AE6400351C18 AS DateTime), N'???????????????', CAST(0x0000AE65002D030C AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (127, N'????????????table', N'', N'', NULL, 1, 0, N'.', 126, N'pages/table/table2/table2', CAST(0x0000AE6400353964 AS DateTime), N'???????????????', CAST(0x0000AE6501022BF0 AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (128, N'????????????table', N'', N'', NULL, 1, 0, N'App_Expert', 126, N'/pages/table/table1/table1', CAST(0x0000AE6400354774 AS DateTime), N'???????????????', CAST(0x0000AE6501022F06 AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (129, N'???????????????', N'[{\"text\":\"??????\",\"value\":\"Search\"}]', N'', NULL, 1, 8050, N'.', 0, N'', CAST(0x0000AE640035E47C AS DateTime), N'???????????????', CAST(0x0000AE6500943E00 AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (130, N'????????????????????????', N'', N'', NULL, 1, 0, N'.', 129, N'pages/pagedemo/pagedemo', CAST(0x0000AE6400361104 AS DateTime), N'???????????????', CAST(0x0000AE6501020653 AS DateTime), N'???????????????', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (131, N'??????????????????', N'', N'', NULL, 1, 0, N'.', 126, N'pages/table/table3/table3', CAST(0x0000AE65003203E8 AS DateTime), N'???????????????', CAST(0x0000AE65010231BD AS DateTime), N'???????????????', 1)
GO
SET IDENTITY_INSERT [dbo].[Sys_Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Province] ON 

GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (1, N'110000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (2, N'120000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (3, N'130000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (4, N'140000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (5, N'150000', N'??????????????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (6, N'210000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (7, N'220000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (8, N'230000', N'????????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (9, N'310000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (10, N'320000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (11, N'330000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (12, N'340000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (13, N'350000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (14, N'360000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (15, N'370000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (16, N'410000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (17, N'420000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (18, N'430000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (19, N'440000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (20, N'450000', N'?????????????????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (21, N'460000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (22, N'500000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (23, N'510000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (24, N'520000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (25, N'530000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (26, N'540000', N'???????????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (27, N'610000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (28, N'620000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (29, N'630000', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (30, N'640000', N'?????????????????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (31, N'650000', N'????????????????????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (32, N'710000', N'?????????', N'?????????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (33, N'810000', N'?????????????????????', N'?????????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (34, N'820000', N'?????????????????????', N'?????????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (35, N'thd', N'?????????', N'??????')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (43, N'??????1', N'??????1', N'?????????')
GO
SET IDENTITY_INSERT [dbo].[Sys_Province] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Role] ON 

GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (1, CAST(0x0000A94500C1EFA8 AS DateTime), N'???????????????', NULL, N'???', 0, 1, N'?????????????????????', CAST(0x0000A953011A8244 AS DateTime), 1000, 0, N'???????????????')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (2, CAST(0x0000A94500C22590 AS DateTime), N'???????????????', NULL, N'1', 0, 1, N'???????????????', CAST(0x0000AB1D01625AD8 AS DateTime), NULL, 1, N'???????????????')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (3, CAST(0x0000A94500C23AA8 AS DateTime), N'???????????????', NULL, N'???', 0, 0, N'???????????????', CAST(0x0000AB1D016B83C4 AS DateTime), NULL, 2, N'??????x')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (4, CAST(0x0000A94500C25EFC AS DateTime), N'???????????????', NULL, N'???  ', 0, 1, N'???????????????', CAST(0x0000AB1D015D2414 AS DateTime), NULL, 2, N'?????????')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (5, CAST(0x0000AA5D00B50F2C AS DateTime), N'???????????????', NULL, N'????????????', NULL, 1, N'???????????????', CAST(0x0000AB1D015E0514 AS DateTime), NULL, 1, N'??????')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (7, CAST(0x0000AB0B0128B698 AS DateTime), N'???????????????', NULL, NULL, NULL, 1, N'???????????????', CAST(0x0000AB1D01623558 AS DateTime), NULL, 1, N'??????')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (13, CAST(0x0000AB40013C2D68 AS DateTime), N'???????????????', NULL, NULL, NULL, 1, N'???????????????', CAST(0x0000ABA9011F73E4 AS DateTime), NULL, 2, N'??????1')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (14, CAST(0x0000AB40013C359C AS DateTime), N'???????????????', NULL, NULL, NULL, 1, N'???????????????', CAST(0x0000ABA9011F010C AS DateTime), NULL, 2, N'??????2')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (15, CAST(0x0000AB40013C3CA4 AS DateTime), N'???????????????', NULL, NULL, NULL, 1, N'', NULL, NULL, 1, N'??????3')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (16, CAST(0x0000AB40013C44D8 AS DateTime), N'???????????????', NULL, NULL, NULL, 1, N'???????????????', CAST(0x0000AC79017D48FC AS DateTime), NULL, 17, N'??????4')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (17, CAST(0x0000AB40013C4D0C AS DateTime), N'???????????????', NULL, NULL, NULL, 1, N'???????????????', CAST(0x0000ABA901236ABC AS DateTime), NULL, 13, N'??????5')
GO
SET IDENTITY_INSERT [dbo].[Sys_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_RoleAuth] ON 

GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (1, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 9, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (2, N'Search,Add,Delete,Update,Import,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 53, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (3, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 50, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (4, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 40, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (5, N'Search,Add,Delete,Update,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 3, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (6, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 37, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (7, N'Search,Add,Delete,Update,Export,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 51, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (8, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 59, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (9, N'Search,Add,Delete,Update', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 13, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (10, N'Search,Add,Delete,Update,Import,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 44, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (11, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 24, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (12, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 35, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (13, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 60, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (14, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 58, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (15, N'Search,Add,Delete,Update,Export,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 68, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (16, N'Search,Add,Delete,Update,Import,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 52, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (17, N'Search,Add,Delete,Update', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 65, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (18, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 62, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (19, N'Search,Add,Delete,Update,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 63, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (20, N'Search,Add,Delete,Update,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 54, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (21, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 94, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (22, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 42, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (23, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 34, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (24, N'Search,Add,Delete,Update,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 90, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (25, N'Search,Add,Delete,Update,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 67, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (26, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 91, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (27, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 36, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (28, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 77, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (29, N'Search,Delete,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 6, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (30, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 88, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (31, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 61, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (32, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 8, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (33, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 48, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (34, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 74, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (35, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 56, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (36, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 55, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (37, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 32, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (38, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 33, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (39, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 92, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (40, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 89, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (41, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 86, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (42, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 84, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (43, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 29, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (44, N'Search,Add,Delete,Update,Import,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 31, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (45, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 72, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (46, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 66, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (47, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 28, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (48, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 64, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (49, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 5, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (50, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 25, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (51, N'Search,Add,Delete,Update', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 93, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (52, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 85, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (53, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 75, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (54, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 87, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (55, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 57, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (56, N'Search,Export,test', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 49, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (57, N'Search,Update', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 71, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (58, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 2, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (59, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'???????????????', 73, N'???????????????', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_RoleAuth] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_TableColumn] ON 

GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (20, NULL, NULL, NULL, NULL, N'??????ID', N'Role_Id', N'int', 70, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 1, 0, 1, 4, N'???????????????', CAST(0x0000AB2B00EB4D0E AS DateTime), 1, 1420, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (21, NULL, NULL, NULL, NULL, N'??????ID', N'ParentId', N'int', 70, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 0, 0, 4, N'???????????????', CAST(0x0000AB2B00EB4D0E AS DateTime), 1, 1410, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (22, NULL, NULL, NULL, NULL, N'????????????', N'RoleName', N'string', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 0, 0, 100, N'???????????????', CAST(0x0000AB2B00EB4D0E AS DateTime), 1, 1400, N'', NULL, 1, N'text', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (23, NULL, NULL, NULL, NULL, N'??????ID', N'Dept_Id', N'int', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB2B00EB4D0E AS DateTime), 1, 1390, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (24, NULL, NULL, NULL, NULL, N'????????????', N'DeptName', N'string', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 2, N'', NULL, 1, 1, NULL, 0, 1, 0, 100, N'???????????????', CAST(0x0000AB2B00EB4D0E AS DateTime), 1, 1380, N'', NULL, 1, N'text', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (25, NULL, NULL, NULL, NULL, N'??????', N'OrderNo', N'int', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB2B00EB4D0F AS DateTime), 1, 1370, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (26, NULL, NULL, NULL, NULL, N'?????????', N'Creator', N'string', 130, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 4, N'', NULL, 1, 1, NULL, 0, 1, 1, 100, N'???????????????', CAST(0x0000AB2B00EB4D0F AS DateTime), 1, 1360, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (27, NULL, NULL, NULL, NULL, N'????????????', N'CreateDate', N'DateTime', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 4, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'???????????????', CAST(0x0000AB2B00EB4D0F AS DateTime), 1, 1350, N'', NULL, 2, N'datetime', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (28, NULL, NULL, NULL, NULL, N'?????????', N'Modifier', N'string', 130, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 5, N'', NULL, 1, 1, NULL, 0, 1, 1, 100, N'???????????????', CAST(0x0000AB2B00EB4D0F AS DateTime), 1, 1340, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (29, NULL, NULL, NULL, NULL, N'????????????', N'ModifyDate', N'DateTime', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 5, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'???????????????', CAST(0x0000AB2B00EB4D0F AS DateTime), 1, 1330, N'', NULL, 2, N'datetime', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (30, NULL, NULL, NULL, NULL, N'', N'DeleteBy', N'string', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 0, 0, NULL, 0, 1, 0, 100, N'???????????????', CAST(0x0000AB2B00EB4D0F AS DateTime), 1, 1320, N'', NULL, NULL, N'', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (31, NULL, NULL, NULL, NULL, N'????????????', N'Enable', N'byte', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'enable', NULL, 2, N'switch', NULL, 1, 1, NULL, 0, 1, 0, 1, N'???????????????', CAST(0x0000AB2B00EB4D0F AS DateTime), 1, 1375, N'', NULL, 1, N'select', NULL, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (32, NULL, NULL, NULL, NULL, N'??????ID', N'Dic_ID', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'???????????????', CAST(0x0000ABA800B98BD7 AS DateTime), 1, 1300, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (33, NULL, NULL, NULL, NULL, N'????????????', N'DicName', N'string', 140, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, N'???????????????', CAST(0x0000ABA800B98BEB AS DateTime), 1, 1290, NULL, NULL, 1, N'textarea', NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (34, NULL, NULL, NULL, NULL, N'??????ID', N'ParentId', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, N'???????????????', CAST(0x0000ABA800B98BEB AS DateTime), 1, 1280, NULL, NULL, 1, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (35, NULL, NULL, NULL, NULL, N'?????????', N'Config', N'string', 300, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8000, N'???????????????', CAST(0x0000ABA800B98BEB AS DateTime), 1, 1270, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (36, NULL, NULL, NULL, 8, N'sql??????', N'DbSql', N'string', 200, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 6, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 8000, N'???????????????', CAST(0x0000ABA800B98BEB AS DateTime), 1, 1260, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (37, NULL, NULL, NULL, NULL, N'DBServer', N'DBServer', N'string', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8000, N'???????????????', CAST(0x0000ABA800B98BEB AS DateTime), 1, 1250, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (38, NULL, NULL, NULL, NULL, N'?????????', N'OrderNo', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000ABA800B98BEB AS DateTime), 1, 1240, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (39, NULL, NULL, NULL, NULL, N'????????????', N'DicNo', N'string', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, N'???????????????', CAST(0x0000ABA800B98BEA AS DateTime), 1, 1295, NULL, NULL, 1, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (40, NULL, NULL, NULL, NULL, N'??????', N'Remark', N'string', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 6, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 4000, N'???????????????', CAST(0x0000ABA800B98BEB AS DateTime), 1, 1220, NULL, NULL, NULL, N'???', NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (41, NULL, NULL, NULL, NULL, N'????????????', N'Enable', N'byte', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, N'enable', NULL, 2, N'select', NULL, 1, 1, NULL, 0, 0, 0, 1, N'???????????????', CAST(0x0000ABA800B98BEB AS DateTime), 1, 1210, NULL, NULL, 2, N'select', NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (42, NULL, NULL, NULL, NULL, NULL, N'CreateID', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000ABA800B98BEB AS DateTime), 1, 1200, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (43, NULL, NULL, NULL, NULL, N'?????????', N'Creator', N'string', 130, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 60, N'???????????????', CAST(0x0000ABA800B98BEB AS DateTime), 1, 1190, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (44, NULL, NULL, NULL, NULL, N'????????????', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 2, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'???????????????', CAST(0x0000ABA800B98BEB AS DateTime), 1, 1180, NULL, NULL, 2, N'datetime', NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (45, NULL, NULL, NULL, NULL, NULL, N'ModifyID', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000ABA800B98BEB AS DateTime), 1, 1170, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (46, NULL, NULL, NULL, NULL, N'?????????', N'Modifier', N'string', 130, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 60, N'???????????????', CAST(0x0000ABA800B98BEB AS DateTime), 1, 1160, NULL, NULL, NULL, NULL, NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (47, NULL, NULL, NULL, NULL, N'????????????', N'ModifyDate', N'DateTime', 150, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'???????????????', CAST(0x0000ABA800B98BEB AS DateTime), 1, 1150, NULL, NULL, 2, N'datetime', NULL, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (48, NULL, NULL, NULL, NULL, N'', N'DicList_ID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'???????????????', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1140, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (49, NULL, NULL, NULL, NULL, N'?????????ID', N'Dic_ID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 1, NULL, 0, 1, 1, 4, N'???????????????', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1130, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (50, NULL, NULL, NULL, NULL, N'?????????Value', N'DicValue', N'string', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 1, 0, 100, N'???????????????', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1120, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (51, NULL, NULL, NULL, NULL, N'?????????Text', N'DicName', N'string', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 1, 0, 100, N'???????????????', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1110, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (52, NULL, NULL, NULL, NULL, N'?????????', N'OrderNo', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1100, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (53, NULL, NULL, NULL, NULL, N'??????', N'Remark', N'string', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 1, 0, 2000, N'???????????????', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1090, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (54, NULL, NULL, NULL, NULL, N'????????????', N'Enable', N'byte', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'enable', NULL, 1, N'switch', NULL, 1, 1, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1080, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (55, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'???', NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1070, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (56, NULL, NULL, NULL, NULL, N'?????????', N'Creator', N'string', 130, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 1, 30, N'???????????????', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1060, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (57, NULL, NULL, NULL, NULL, N'????????????', N'CreateDate', N'DateTime', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'???????????????', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1050, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (58, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1040, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (59, NULL, NULL, NULL, NULL, N'?????????', N'Modifier', N'string', 130, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'???????????????', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1030, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (60, NULL, NULL, NULL, NULL, N'????????????', N'ModifyDate', N'DateTime', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'???????????????', CAST(0x0000AAAF00A73FA0 AS DateTime), 1, 1020, N'', NULL, NULL, N'', NULL, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (61, NULL, NULL, NULL, NULL, NULL, N'Id', N'int', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'???????????????', CAST(0x0000AB72014C6587 AS DateTime), 1, 10000, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (62, NULL, NULL, NULL, 12, N'????????????', N'LogType', N'string', 80, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, N'log', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, N'???????????????', CAST(0x0000AB72014C6587 AS DateTime), 1, 8888, NULL, NULL, 3, N'checkbox', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (63, NULL, NULL, NULL, NULL, N'????????????', N'RequestParameter', N'string', 70, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, N'???????????????', CAST(0x0000AB72014C6588 AS DateTime), 1, 7990, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (64, NULL, NULL, NULL, NULL, N'????????????', N'ResponseParameter', N'string', 70, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, N'???????????????', CAST(0x0000AB72014C6588 AS DateTime), 1, 7980, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (65, NULL, NULL, NULL, NULL, N'????????????', N'ExceptionInfo', N'string', 70, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, N'???????????????', CAST(0x0000AB72014C6588 AS DateTime), 1, 7970, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (66, NULL, NULL, NULL, NULL, N'????????????', N'Success', N'int', 80, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, N'restatus', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB72014C6588 AS DateTime), 1, 8700, NULL, NULL, 2, N'selectList', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (67, NULL, NULL, NULL, NULL, N'????????????', N'BeginDate', N'DateTime', 140, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'???????????????', CAST(0x0000AB72014C6587 AS DateTime), 1, 9999, NULL, NULL, 2, N'datetime', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (68, NULL, NULL, NULL, NULL, N'????????????', N'EndDate', N'DateTime', 150, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'???????????????', CAST(0x0000AB72014C6588 AS DateTime), 1, 880, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (69, NULL, NULL, NULL, NULL, N'??????', N'ElapsedTime', N'int', 60, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB72014C6588 AS DateTime), 1, 8600, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (70, NULL, NULL, NULL, NULL, N'??????IP', N'UserIP', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'???????????????', CAST(0x0000AB72014C6588 AS DateTime), 1, 7920, NULL, NULL, 1, N'text', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (71, NULL, NULL, NULL, NULL, N'?????????IP', N'ServiceIP', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, N'???????????????', CAST(0x0000AB72014C6588 AS DateTime), 1, 7910, NULL, NULL, 1, N'text', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (72, NULL, NULL, NULL, NULL, N'???????????????', N'BrowserType', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 400, N'???????????????', CAST(0x0000AB72014C6588 AS DateTime), 1, 7900, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (73, NULL, NULL, NULL, NULL, N'????????????', N'Url', N'string', 110, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8000, N'???????????????', CAST(0x0000AB72014C6587 AS DateTime), 1, 9000, NULL, NULL, 1, N'text', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (74, NULL, NULL, NULL, NULL, N'??????ID', N'User_Id', N'int', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB72014C6588 AS DateTime), 1, 7880, NULL, NULL, NULL, N'text', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (75, NULL, NULL, NULL, NULL, N'????????????', N'UserName', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8000, N'???????????????', CAST(0x0000AB72014C6587 AS DateTime), 1, 9100, NULL, NULL, NULL, NULL, NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (76, NULL, NULL, NULL, NULL, N'??????ID', N'Role_Id', N'int', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, N'roles', NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB72014C6588 AS DateTime), 1, 7860, NULL, NULL, 2, N'select', NULL, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (77, NULL, NULL, NULL, NULL, N'', N'User_Id', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'zs', CAST(0x0000ABAE0111CE55 AS DateTime), 3362, 7850, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (78, NULL, NULL, NULL, NULL, N'', N'Dept_Id', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7840, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (79, 0, NULL, 1, NULL, N'??????', N'DeptName', N'string', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'text', NULL, 1, 0, NULL, 0, 1, 0, 300, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7830, N'', NULL, 2, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (80, 0, 0, 1, NULL, N'??????', N'Role_Id', N'int', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'roles', NULL, 2, N'select', NULL, 1, 1, NULL, 0, 0, 0, 4, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7820, N'', NULL, 2, N'select', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (81, NULL, NULL, NULL, NULL, N'', N'RoleName', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 0, 0, 300, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7810, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (82, 1, 0, 1, NULL, N'??????', N'UserName', N'string', 120, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 0, 1, 200, N'zs', CAST(0x0000ABAE0111CE42 AS DateTime), 3362, 7945, N'', NULL, 1, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (83, 1, 0, NULL, NULL, N'??????', N'UserPwd', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 0, 0, NULL, 0, 1, 0, 400, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7790, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (84, NULL, NULL, NULL, NULL, N'????????????', N'UserTrueName', N'string', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 0, 0, 40, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7792, N'', NULL, 1, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (85, NULL, NULL, NULL, NULL, N'??????', N'Address', N'string', 190, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'text', NULL, 1, 0, NULL, 0, 1, 0, 400, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7270, N'', NULL, 4, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (86, NULL, NULL, NULL, NULL, N'??????', N'Mobile', N'string', 140, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'text', NULL, 1, 0, NULL, 0, 1, 0, 200, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7260, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (87, NULL, NULL, NULL, NULL, N'Email', N'Email', N'string', 140, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'mail', NULL, 1, 0, NULL, 0, 1, 0, 200, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7250, N'', NULL, 4, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (88, NULL, NULL, NULL, NULL, N'', N'Tel', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 40, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7740, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (89, NULL, NULL, NULL, 12, N'??????', N'Remark', N'string', 180, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 7, N'textarea', NULL, 1, 0, NULL, 0, 1, 0, 400, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7230, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (90, NULL, NULL, NULL, NULL, N'?????????', N'OrderNo', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'text', NULL, 1, 0, NULL, 0, 1, 0, 4, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7220, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (91, NULL, NULL, NULL, NULL, N'????????????', N'Enable', N'byte', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'enable', NULL, 4, N'select', NULL, 1, 1, NULL, 0, 0, 0, 1, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7670, N'', NULL, 4, N'select', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (92, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7700, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (93, NULL, NULL, NULL, NULL, N'?????????', N'Creator', N'string', 130, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 6, N'', NULL, 1, 1, NULL, 0, 1, 1, 400, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7690, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (94, NULL, NULL, NULL, NULL, N'????????????', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 6, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7780, N'', NULL, 5, N'datetime', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (95, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7670, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (96, NULL, NULL, NULL, NULL, N'?????????', N'Modifier', N'string', 130, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 1, 400, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7660, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (97, NULL, NULL, NULL, NULL, N'????????????', N'ModifyDate', N'DateTime', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7650, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (98, NULL, NULL, NULL, NULL, N'????????????', N'AuditStatus', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'audit', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7640, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (99, NULL, NULL, NULL, NULL, N'?????????', N'Auditor', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 400, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7630, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (100, NULL, NULL, NULL, NULL, N'????????????', N'AuditDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 8, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7620, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (101, NULL, NULL, NULL, NULL, N'??????????????????', N'LastLoginDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 8, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7610, N'', NULL, 5, N'datetime', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (102, NULL, NULL, NULL, NULL, N'????????????????????????', N'LastModifyPwdDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 8, N'zs', CAST(0x0000ABAE0111CE57 AS DateTime), 3362, 7600, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (114, NULL, NULL, NULL, NULL, N'??????', N'HeadImageUrl', N'string', 150, N'', NULL, NULL, NULL, N'', NULL, 9, N'img', NULL, 1, 1, 1, NULL, NULL, 0, 400, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7842, N'', NULL, NULL, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (142, NULL, NULL, NULL, NULL, N'??????ID', N'Id', N'int', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'???????????????', CAST(0x0000ABB000BC5996 AS DateTime), 1, 8570, NULL, NULL, NULL, NULL, NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (143, NULL, NULL, NULL, 12, N'??????', N'Variety', N'string', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, N'pz', NULL, 1, N'checkbox', NULL, 1, 1, NULL, 0, 0, 0, 20, N'???????????????', CAST(0x0000ABB000BC5996 AS DateTime), 1, 8560, NULL, NULL, 1, N'select', NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (144, NULL, NULL, NULL, 12, N'??????', N'AgeRange', N'string', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, N'age', NULL, 10, N'select', NULL, 1, 1, NULL, 0, 0, 0, 50, N'???????????????', CAST(0x0000ABB000BC5996 AS DateTime), 1, 8561, NULL, NULL, 1, N'select', NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (145, NULL, NULL, NULL, 12, N'??????', N'City', N'string', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, N'city', NULL, 15, N'select', NULL, 1, 1, NULL, 0, 0, 0, 15, N'???????????????', CAST(0x0000ABB000BC5996 AS DateTime), 1, 8540, NULL, NULL, 1, N'select', NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (146, NULL, NULL, NULL, 12, N'????????????', N'AvgPrice', N'decimal', 80, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 20, NULL, NULL, 1, 1, NULL, 0, 0, 0, 9, N'???????????????', CAST(0x0000ABB000BC5996 AS DateTime), 1, 8530, NULL, NULL, NULL, NULL, NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (147, NULL, NULL, NULL, 12, N'????????????', N'Date', N'DateTime', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 25, N'date', NULL, 1, 1, NULL, 0, 0, 0, 3, N'???????????????', CAST(0x0000ABB000BC5996 AS DateTime), 1, 8520, NULL, NULL, 2, N'datetime', NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (148, NULL, NULL, NULL, NULL, N'??????', N'Enable', N'byte', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, N'enable', NULL, NULL, N'selectList', NULL, 1, 0, NULL, 0, 1, 0, 1, N'???????????????', CAST(0x0000ABB000BC5996 AS DateTime), 1, 8510, NULL, NULL, 2, N'selectList', NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (149, NULL, NULL, NULL, NULL, N'?????????Id', N'CreateID', N'int', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000ABB000BC5996 AS DateTime), 1, 8500, NULL, NULL, NULL, NULL, NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (150, NULL, NULL, NULL, NULL, N'?????????', N'Creator', N'string', 130, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 40, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'???????????????', CAST(0x0000ABB000BC5996 AS DateTime), 1, 8490, NULL, NULL, NULL, NULL, NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (151, NULL, NULL, NULL, NULL, N'????????????', N'CreateDate', N'DateTime', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 40, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, N'???????????????', CAST(0x0000ABB000BC5996 AS DateTime), 1, 8480, NULL, NULL, NULL, N'datetime', NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (152, NULL, NULL, NULL, NULL, N'?????????ID', N'ModifyID', N'int', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000ABB000BC5996 AS DateTime), 1, 8470, NULL, NULL, NULL, NULL, NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (153, NULL, NULL, NULL, NULL, N'?????????', N'Modifier', N'string', 130, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 50, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'???????????????', CAST(0x0000ABB000BC5996 AS DateTime), 1, 8460, NULL, NULL, NULL, NULL, NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (154, NULL, NULL, NULL, NULL, N'????????????', N'ModifyDate', N'DateTime', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 50, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, N'???????????????', CAST(0x0000ABB000BC5996 AS DateTime), 1, 8450, NULL, NULL, NULL, NULL, NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (155, NULL, NULL, NULL, NULL, N'??????ID', N'Id', N'int', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'???????????????', CAST(0x0000AB8B0170E5EE AS DateTime), 1, 8440, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (156, NULL, NULL, NULL, NULL, N'??????', N'Variety', N'string', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, N'pz', NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, 40, N'???????????????', CAST(0x0000AB8B0170E60A AS DateTime), 1, 8430, NULL, NULL, 1, N'select', NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (157, NULL, NULL, NULL, NULL, N'??????', N'Age', N'string', 100, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, N'age', NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, 100, N'???????????????', CAST(0x0000AB8B0170E60A AS DateTime), 1, 8420, NULL, NULL, 1, N'select', NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (158, NULL, NULL, NULL, NULL, N'??????', N'City', N'string', 120, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, N'city', NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, 30, N'???????????????', CAST(0x0000AB8B0170E60A AS DateTime), 1, 8410, NULL, NULL, 1, N'select', NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (159, NULL, NULL, NULL, NULL, N'??????', N'Price', N'decimal', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, 2, N'decimal', NULL, 1, 1, NULL, 0, 0, 0, 9, N'???????????????', CAST(0x0000AB8B0170E60A AS DateTime), 1, 8400, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (160, 0, NULL, NULL, NULL, N'????????????', N'AuditStatus', N'int', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, N'audit', NULL, NULL, N'select', NULL, 1, 1, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB8B0170E60A AS DateTime), 1, 8382, NULL, NULL, 2, N'select', NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (161, NULL, NULL, NULL, NULL, N'?????????Id', N'AuditId', N'int', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB8B0170E60A AS DateTime), 1, 8380, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (162, NULL, NULL, NULL, NULL, N'?????????', N'Auditor', N'string', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 40, N'???????????????', CAST(0x0000AB8B0170E60A AS DateTime), 1, 8370, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (163, NULL, NULL, NULL, NULL, N'????????????', N'Enable', N'byte', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, N'enable', NULL, 2, N'switch', NULL, 1, 1, NULL, 0, 1, 1, 1, N'???????????????', CAST(0x0000AB8B0170E60A AS DateTime), 1, 8360, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (164, NULL, NULL, NULL, NULL, N'?????????Id', N'CreateID', N'int', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB8B0170E60A AS DateTime), 1, 8350, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (165, NULL, NULL, NULL, NULL, N'?????????', N'Creator', N'string', 100, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 0, NULL, 0, 1, 1, 60, N'???????????????', CAST(0x0000AB8B0170E60A AS DateTime), 1, 8388, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (166, NULL, 0, NULL, NULL, N'????????????', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, 5, N'datetime', NULL, 1, 0, NULL, 0, 1, 1, NULL, N'???????????????', CAST(0x0000AB8B0170E60A AS DateTime), 1, 8387, NULL, NULL, 2, N'datetime', NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (167, NULL, NULL, NULL, NULL, N'?????????ID', N'ModifyID', N'int', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB8B0170E60A AS DateTime), 1, 8320, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (168, NULL, NULL, NULL, 12, N'??????', N'Modifier', N'string', 100, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 60, N'???????????????', CAST(0x0000AB8B0170E60A AS DateTime), 1, 8310, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (169, NULL, NULL, NULL, NULL, N'????????????', N'ModifyDate', N'DateTime', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, 5, N'???', NULL, 1, 1, NULL, 0, 1, 1, NULL, N'???????????????', CAST(0x0000AB8B0170E60A AS DateTime), 1, 8300, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (170, NULL, NULL, NULL, NULL, N'????????????', N'AuditDate', N'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, N'???????????????', CAST(0x0000AB8B0170E60A AS DateTime), 1, 8381, NULL, NULL, NULL, NULL, NULL, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (193, NULL, NULL, NULL, NULL, N'??????ID', N'Id', N'int', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'???????????????', CAST(0x0000AB0600E2BF13 AS DateTime), 1, 8060, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (194, NULL, NULL, NULL, NULL, N'??????', N'Name', N'string', 120, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 0, 50, N'???????????????', CAST(0x0000AB0600E2BF13 AS DateTime), 1, 8050, NULL, NULL, 1, N'text', NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (195, NULL, NULL, NULL, NULL, N'??????', N'PhoneNo', N'string', 150, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, 50, N'phone', NULL, 1, 1, NULL, 0, 0, 0, 15, N'???????????????', CAST(0x0000AB0600E2BF13 AS DateTime), 1, 8040, NULL, NULL, 1, N'text', NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (196, NULL, NULL, NULL, NULL, N'??????', N'Quantity', N'int', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, N'???????????????', CAST(0x0000AB0600E2BF14 AS DateTime), 1, 8030, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (197, NULL, NULL, NULL, NULL, N'????????????', N'CowType', N'string', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, N'nav', NULL, 30, N'select', NULL, 1, 1, NULL, 0, 1, 0, 100, N'???????????????', CAST(0x0000AB0600E2BF14 AS DateTime), 1, 8020, NULL, NULL, 2, N'selectList', NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (198, NULL, NULL, NULL, NULL, N'??????', N'Describe', N'string', 190, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, 60, N'textarea', NULL, 1, 1, NULL, 0, 0, 0, 500, N'???????????????', CAST(0x0000AB0600E2BF14 AS DateTime), 1, 8010, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (199, NULL, NULL, NULL, NULL, N'????????????', N'Enable', N'byte', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 1, N'???????????????', CAST(0x0000AB0600E2BF14 AS DateTime), 1, 8000, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (200, NULL, NULL, NULL, NULL, N'?????????Id', N'CreateID', N'int', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB0600E2BF14 AS DateTime), 1, 7990, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (201, NULL, NULL, NULL, NULL, N'?????????', N'Creator', N'string', 130, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'???????????????', CAST(0x0000AB0600E2BF14 AS DateTime), 1, 7980, NULL, NULL, 2, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (202, NULL, NULL, NULL, NULL, N'????????????', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'???????????????', CAST(0x0000AB0600E2BF14 AS DateTime), 1, 7970, NULL, NULL, 2, N'datetime', NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (203, NULL, NULL, NULL, NULL, N'?????????ID', N'ModifyID', N'int', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB0600E2BF15 AS DateTime), 1, 7960, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (204, NULL, NULL, NULL, NULL, N'?????????', N'Modifier', N'string', 130, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, N'???????????????', CAST(0x0000AB0600E2BF15 AS DateTime), 1, 7950, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (205, NULL, NULL, NULL, NULL, N'????????????', N'ModifyDate', N'DateTime', 150, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'???????????????', CAST(0x0000AB0600E2BF15 AS DateTime), 1, 7940, NULL, NULL, NULL, NULL, NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (206, 1, 1, 0, NULL, N'??????ID', N'ExpertId', N'int', 80, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'???????????????', CAST(0x0000AB8701369F64 AS DateTime), 1, 7930, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (207, NULL, NULL, NULL, NULL, N'??????', N'ExpertName', N'string', 120, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 1, 0, 20, N'???????????????', CAST(0x0000AB8701369F7A AS DateTime), 1, 7920, N'', NULL, 1, N'like', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (208, NULL, NULL, NULL, NULL, N'????????????', N'ReallyName', N'string', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 20, N'???????????????', CAST(0x0000AB8701369F7B AS DateTime), 1, 7910, N'', NULL, 1, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (209, NULL, NULL, NULL, NULL, N'????????????', N'IDNumber', N'string', 200, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 18, N'???????????????', CAST(0x0000AB8701369F7B AS DateTime), 1, 7900, N'', NULL, 1, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (210, NULL, NULL, NULL, NULL, N'??????', N'HeadImageUrl', N'string', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 10, N'img', NULL, 1, 1, 1, 0, 1, 0, 500, N'???????????????', CAST(0x0000AB8701369F7B AS DateTime), 1, 7920, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (211, NULL, NULL, NULL, NULL, N'??????', N'Education', N'string', 120, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 50, N'???????????????', CAST(0x0000AB8701369F7B AS DateTime), 1, 7880, N'', NULL, 2, N'text', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (212, NULL, NULL, NULL, NULL, N'??????', N'Professional', N'string', 120, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 50, N'???????????????', CAST(0x0000AB8701369F7B AS DateTime), 1, 7870, N'', NULL, 2, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (213, NULL, NULL, NULL, NULL, N'????????????', N'Company', N'string', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 50, N'???????????????', CAST(0x0000AB8701369F7B AS DateTime), 1, 7860, N'', NULL, 2, N'???', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (214, NULL, NULL, NULL, NULL, N'??????', N'City', N'string', 100, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'city', NULL, 3, N'select', NULL, 1, 1, NULL, 0, 1, 0, 50, N'???????????????', CAST(0x0000AB8701369F7C AS DateTime), 1, 7850, N'', NULL, 3, N'selectList', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (215, NULL, NULL, NULL, NULL, N'????????????', N'SpecialField', N'string', 120, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, NULL, N'textarea', NULL, 0, 1, NULL, 0, 1, 0, 800, N'???????????????', CAST(0x0000AB8701369F7C AS DateTime), 1, 7840, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (216, NULL, NULL, NULL, 12, N'????????????', N'Resume', N'string', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 7, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 500, N'???????????????', CAST(0x0000AB8701369F7C AS DateTime), 1, 7830, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (217, NULL, NULL, NULL, NULL, N'????????????', N'AuditStatus', N'int', 120, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'audit', NULL, 0, N'select', NULL, 1, 1, NULL, 0, 0, 0, 4, N'???????????????', CAST(0x0000AB8701369F7B AS DateTime), 1, 7919, N'', NULL, 3, N'selectList', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (218, NULL, NULL, NULL, NULL, N'?????????Id', N'AuditId', N'int', 80, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB8701369F7C AS DateTime), 1, 7810, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (219, NULL, NULL, NULL, NULL, N'?????????', N'Auditor', N'string', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 20, N'???????????????', CAST(0x0000AB8701369F7B AS DateTime), 1, 7919, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (220, NULL, NULL, NULL, NULL, N'????????????', N'AuditDate', N'DateTime', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'datetime', NULL, 1, 0, NULL, 0, 1, 0, 8, N'???????????????', CAST(0x0000AB8701369F7C AS DateTime), 1, 7790, N'', NULL, 3, N'datetime', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (221, NULL, NULL, NULL, NULL, N'????????????', N'Enable', N'byte', 90, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'enable', NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, 1, N'???????????????', CAST(0x0000AB8701369F7B AS DateTime), 1, 7919, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (222, NULL, NULL, NULL, NULL, N'?????????Id', N'CreateID', N'int', 80, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB8701369F7C AS DateTime), 1, 7770, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (223, NULL, NULL, NULL, NULL, N'?????????', N'Creator', N'string', 130, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 30, N'???????????????', CAST(0x0000AB8701369F7C AS DateTime), 1, 7760, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (224, NULL, NULL, NULL, NULL, N'????????????', N'CreateDate', N'DateTime', 130, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 3, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'???????????????', CAST(0x0000AB8701369F7C AS DateTime), 1, 7750, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (225, NULL, NULL, NULL, NULL, N'?????????ID', N'ModifyID', N'int', 80, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB8701369F7C AS DateTime), 1, 7740, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (226, NULL, NULL, NULL, NULL, N'?????????', N'Modifier', N'string', 100, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'???????????????', CAST(0x0000AB8701369F7C AS DateTime), 1, 7730, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (227, NULL, NULL, NULL, NULL, N'????????????', N'ModifyDate', N'DateTime', 130, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 8, N'???????????????', CAST(0x0000AB8701369F7C AS DateTime), 1, 7720, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (308, NULL, NULL, NULL, NULL, N'??????ID', N'Id', N'int', 80, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'???????????????', CAST(0x0000AB3A00BB1339 AS DateTime), 1, 6910, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (309, NULL, NULL, NULL, 12, N'??????', N'Title', N'string', 250, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, N'???????????????', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6900, NULL, NULL, 1, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (310, NULL, NULL, NULL, NULL, N'?????????', N'Author', N'string', 120, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 100, N'???????????????', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6890, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (311, 0, NULL, NULL, NULL, N'????????????', N'ReleaseDate', N'DateTime', 150, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 8, N'???????????????', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6880, NULL, NULL, 3, N'datetime', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (312, NULL, NULL, NULL, 12, N'????????????', N'ImageUrl', N'string', 220, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 9, NULL, NULL, 1, 1, 1, 0, 1, 0, 0, N'???????????????', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6870, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (313, NULL, NULL, NULL, NULL, N'??????(??????)', N'BigImageUrls', N'string', 220, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 1000, N'???????????????', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6860, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (314, NULL, NULL, NULL, 12, N'????????????', N'DetailUrl', N'string', 90, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 8, NULL, NULL, 1, 1, NULL, 0, 1, 0, 400, N'???????????????', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6850, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (315, NULL, NULL, NULL, NULL, N'????????????', N'ViewCount', N'int', 110, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, 2, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6840, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (316, NULL, NULL, NULL, NULL, N'????????????', N'NewsType', N'int', 110, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, N'news', 1, 3, N'select', NULL, 1, 1, NULL, 0, 0, 0, 4, N'???????????????', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6830, NULL, NULL, 1, N'select', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (317, NULL, NULL, NULL, NULL, N'????????????', N'Enable', N'int', 90, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, N'enable', NULL, 7, N'select', NULL, 1, 1, NULL, 0, 1, 0, 2, N'???????????????', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6820, NULL, NULL, 3, N'select', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (318, NULL, NULL, NULL, NULL, N'?????????Id', N'CreateID', N'int', 80, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6810, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (319, NULL, NULL, NULL, NULL, N'?????????', N'Creator', N'string', 130, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 6, NULL, NULL, 1, 1, NULL, 0, 1, 1, 60, N'???????????????', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6800, NULL, NULL, 3, N'???', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (320, NULL, NULL, NULL, NULL, N'????????????', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 6, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, N'???????????????', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6790, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (321, NULL, NULL, NULL, NULL, N'?????????ID', N'ModifyID', N'int', 80, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6780, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (322, NULL, NULL, NULL, NULL, N'?????????', N'Modifier', N'string', 130, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 60, N'???????????????', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6770, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (323, NULL, NULL, NULL, NULL, N'????????????', N'ModifyDate', N'DateTime', 150, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 7, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, N'???????????????', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6760, NULL, NULL, NULL, N'datetime', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (324, NULL, NULL, NULL, 12, N'????????????', N'Content', N'string', 300, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, 1, 0, NULL, NULL, 1, 0, 0, N'???????????????', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6896, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (429, 1, 0, NULL, NULL, N'?????????', N'PhoneNo', N'string', 150, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, NULL, NULL, 0, 22, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7760, N'', NULL, 3, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (431, NULL, NULL, NULL, NULL, N'Token', N'Token', N'string', 180, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, NULL, 1, 0, 1000, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7810, N'', NULL, 2, N'', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (446, NULL, NULL, NULL, 12, N'??????', N'IsTop', N'int', 90, NULL, NULL, NULL, NULL, N'enable', NULL, 30, N'select', NULL, 1, 1, NULL, NULL, 0, 0, NULL, N'???????????????', CAST(0x0000ABB000BC5996 AS DateTime), 1, 8515, NULL, NULL, 2, N'select', NULL, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (457, NULL, NULL, NULL, NULL, N'????????????', N'TransactionType', N'int', 120, NULL, NULL, NULL, NULL, N'cq', NULL, 20, N'select', NULL, 1, 1, NULL, NULL, NULL, 0, 8, N'???????????????', CAST(0x0000AB0600E2BF14 AS DateTime), 1, 8021, NULL, NULL, 1, N'select', NULL, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (506, NULL, NULL, NULL, NULL, N'??????', N'Gender', N'int', 100, N'', NULL, NULL, NULL, N'gender', NULL, 4, N'select', NULL, 1, 1, NULL, NULL, 1, 0, 4, N'zs', CAST(0x0000ABAE0111CE55 AS DateTime), 3362, 7843, N'', NULL, 1, N'select', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (523, NULL, NULL, NULL, NULL, N'??????', N'PhoneNo', N'string', 150, N'', NULL, NULL, NULL, N'', NULL, NULL, N'phone', NULL, 1, 0, NULL, NULL, 1, 0, 11, N'???????????????', CAST(0x0000AB8701369F7B AS DateTime), 1, 7900, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (550, NULL, NULL, NULL, NULL, N'???????????????Id', N'User_Id', N'int', 90, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, NULL, 1, 0, 8, N'???????????????', CAST(0x0000AB8701369F7A AS DateTime), 1, 7921, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (551, NULL, NULL, NULL, NULL, N'??????', N'UserName', N'string', 120, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, NULL, 1, 0, 30, N'???????????????', CAST(0x0000AB8701369F7B AS DateTime), 1, 7920, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (552, NULL, NULL, NULL, NULL, N'?????????', N'UserTrueName', N'string', 100, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, NULL, 1, 0, 50, N'???????????????', CAST(0x0000AB8701369F7B AS DateTime), 1, 7920, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (603, NULL, NULL, NULL, NULL, N'????????????', N' Certificate', N'string', 200, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 0, 0, 1, NULL, 1, 0, 2500, N'???????????????', CAST(0x0000AB8701369F7C AS DateTime), 1, 7828, N'', NULL, NULL, N'', NULL, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (654, NULL, NULL, NULL, NULL, N'??????????????????', N'AppType', N'int', 150, N'', NULL, NULL, NULL, N'ut', NULL, 0, N'', NULL, 1, 0, NULL, NULL, 1, 0, 4, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7809, N'', NULL, 3, N'selectList', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (659, NULL, NULL, NULL, NULL, N'????????????', N'IsRegregisterPhone', N'int', 120, N'', NULL, NULL, NULL, N'isphone', NULL, 2, N'select', NULL, 1, 0, NULL, NULL, 0, 0, 4, N'zs', CAST(0x0000ABAE0111CE56 AS DateTime), 3362, 7771, N'', NULL, 3, N'select', NULL, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (663, NULL, NULL, NULL, NULL, N'??????????????????', N'DailyRecommend', N'int', 120, NULL, NULL, NULL, NULL, N'dr', NULL, 5, N'select', NULL, 1, 1, NULL, NULL, 0, 0, 2, N'???????????????', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6825, NULL, NULL, 1, N'select', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (664, NULL, NULL, NULL, NULL, N'????????????', N'OrderNo', N'int', 120, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 4, N'???????????????', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6822, NULL, NULL, NULL, N'???', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (714, NULL, NULL, NULL, NULL, N'Id', N'Order_Id', N'string', 90, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 36, N'???????????????', CAST(0x0000AB3400DC1657 AS DateTime), 1, 2850, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (715, NULL, NULL, NULL, NULL, N'????????????', N'OrderType', N'int', 90, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'???????????????', N'ordertype', 1, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, NULL, N'???????????????', CAST(0x0000AB3400DC1671 AS DateTime), 1, 2840, NULL, 1, 1, N'select', NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (716, NULL, NULL, NULL, NULL, N'?????????', N'TranNo', N'string', 150, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'???????????????', NULL, 1, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, N'???????????????', CAST(0x0000AB3400DC1671 AS DateTime), 1, 2830, NULL, NULL, 1, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (717, NULL, NULL, NULL, NULL, N'???????????????', N'SellNo', N'string', 200, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'???????????????', NULL, 2, 2, NULL, NULL, 1, 1, NULL, 0, 0, 0, 255, N'???????????????', CAST(0x0000AB3400DC1671 AS DateTime), 1, 2820, NULL, NULL, 1, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (718, NULL, NULL, NULL, NULL, N'????????????', N'Qty', N'int', 90, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'???????????????', NULL, 2, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, NULL, N'???????????????', CAST(0x0000AB3400DC1671 AS DateTime), 1, 2810, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (719, NULL, NULL, NULL, 8, N'??????', N'Remark', N'string', 100, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'???????????????', NULL, NULL, 2, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 1000, N'???????????????', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2800, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (720, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'???????????????', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2790, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (721, NULL, NULL, NULL, NULL, N'?????????', N'Creator', N'string', 100, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'???????????????', NULL, 3, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, 255, N'???????????????', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2780, NULL, NULL, 3, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (722, NULL, NULL, NULL, NULL, N'????????????', N'CreateDate', N'DateTime', 90, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'???????????????', NULL, 3, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, N'???????????????', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2770, NULL, NULL, 3, N'datetime', NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (723, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'???????????????', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2760, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (724, NULL, NULL, NULL, NULL, N'?????????', N'Modifier', N'string', 100, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'???????????????', NULL, 4, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 255, N'???????????????', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2750, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (725, NULL, NULL, NULL, NULL, N'????????????', N'ModifyDate', N'DateTime', 90, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'???????????????', NULL, 4, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, N'???????????????', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2740, NULL, NULL, 3, N'datetime', NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (726, NULL, NULL, NULL, NULL, N'', N'OrderList_Id', N'string', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 0, 36, N'???????????????', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2730, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (727, NULL, NULL, NULL, NULL, N'??????Id', N'Order_Id', N'string', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, 1, 36, N'???????????????', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2720, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (728, NULL, NULL, NULL, NULL, N'????????????', N'ProductName', N'string', 150, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'???????????????', N'pn', NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, 200, N'???????????????', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2710, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (729, NULL, NULL, NULL, NULL, N'??????', N'MO', N'string', 100, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'???????????????', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 255, N'???????????????', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2700, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (730, NULL, NULL, NULL, NULL, N'??????', N'Qty', N'int', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'???????????????', NULL, NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, NULL, N'???????????????', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2690, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (731, NULL, NULL, NULL, NULL, N'??????', N'Weight', N'decimal', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'???????????????', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, N'???????????????', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2680, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (732, NULL, NULL, NULL, NULL, N'??????', N'Remark', N'string', 120, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'???????????????', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1000, N'???????????????', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2670, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (733, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'???????????????', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2660, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (734, NULL, NULL, NULL, NULL, N'?????????', N'Creator', N'string', 130, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, N'???????????????', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2650, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (735, NULL, NULL, NULL, NULL, N'????????????', N'CreateDate', N'DateTime', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, N'???????????????', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2640, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (736, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'???????????????', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2630, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (737, NULL, NULL, NULL, NULL, N'?????????', N'Modifier', N'string', 100, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, N'???????????????', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2620, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (738, NULL, NULL, NULL, NULL, N'????????????', N'ModifyDate', N'DateTime', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, N'???????????????', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2610, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (739, NULL, NULL, NULL, NULL, N'????????????', N'AuditDate', N'DateTime', 120, NULL, CAST(0x0000AAB7009D3CBC AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, NULL, N'???????????????', CAST(0x0000AB3400DC1671 AS DateTime), 1, 2805, NULL, NULL, 2, N'datetime', NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (740, NULL, NULL, NULL, NULL, N'?????????', N'Auditor', N'string', NULL, NULL, CAST(0x0000AAB7009D3CBC AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 100, N'???????????????', CAST(0x0000AB3400DC1671 AS DateTime), 1, 2803, NULL, NULL, 2, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (741, NULL, NULL, NULL, NULL, N'?????????Id', N'AuditId', N'int', NULL, NULL, CAST(0x0000AAB7009D3CBC AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, 0, NULL, N'???????????????', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2801, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (742, NULL, NULL, NULL, NULL, N'????????????', N'AuditStatus', N'int', NULL, NULL, CAST(0x0000AAB7009D3CBC AS DateTime), 1, N'???????????????', N'audit', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 0, NULL, N'???????????????', CAST(0x0000AB3400DC1671 AS DateTime), 1, 2808, NULL, NULL, 2, N'select', NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (743, NULL, NULL, NULL, NULL, N'', N'Id', N'string', 90, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'???????????????', NULL, 5, 1, NULL, NULL, 1, 0, NULL, 1, 0, 1, 36, N'???????????????', CAST(0x0000AB1B015248D8 AS DateTime), 1, 2560, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (744, NULL, NULL, NULL, NULL, N'????????????', N'CreateDate', N'DateTime', 120, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'???????????????', NULL, 1, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, N'???????????????', CAST(0x0000AB1B015248D8 AS DateTime), 1, 2550, NULL, NULL, 1, N'datetime', NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (745, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'???????????????', CAST(0x0000AB1B015248D8 AS DateTime), 1, 2540, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (746, NULL, NULL, NULL, NULL, N'?????????', N'Creator', N'string', 130, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'???????????????', NULL, 2, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'???????????????', CAST(0x0000AB1B015248D8 AS DateTime), 1, 2530, NULL, NULL, 1, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (747, NULL, NULL, NULL, NULL, N'??????', N'Describe', N'string', 180, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'???????????????', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 1, 250, N'???????????????', CAST(0x0000AB1B015248D5 AS DateTime), 1, 3490, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (748, NULL, NULL, NULL, NULL, N'?????????', N'Modifier', N'string', 130, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'???????????????', NULL, NULL, 4, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'???????????????', CAST(0x0000AB1B015248D8 AS DateTime), 1, 2510, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (749, NULL, NULL, NULL, NULL, N'????????????', N'ModifyDate', N'DateTime', 90, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'???????????????', NULL, 1, 4, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, N'???????????????', CAST(0x0000AB1B015248D8 AS DateTime), 1, 2500, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (750, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'???????????????', CAST(0x0000AB1B015248D8 AS DateTime), 1, 2490, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (751, NULL, NULL, NULL, NULL, N'??????', N'Name', N'string', 100, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'???????????????', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 1, 50, N'???????????????', CAST(0x0000AB1B015248CE AS DateTime), 1, 3500, NULL, NULL, 1, N'like', NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (752, NULL, NULL, NULL, NULL, N'??????', N'PhoneNo', N'string', 130, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'???????????????', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 1, 15, N'???????????????', CAST(0x0000AB1B015248D8 AS DateTime), 1, 3470, NULL, NULL, 1, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (753, NULL, NULL, NULL, NULL, N'', N'FormId', N'guid', 110, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'???????????????', CAST(0x0000AE0D0186211A AS DateTime), 1, 1150, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (754, NULL, NULL, NULL, NULL, N'????????????', N'Title', N'string', 140, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'???????????????', NULL, 0, 1, N'textarea', NULL, 1, 1, NULL, 0, 0, 0, 1000, N'???????????????', CAST(0x0000AE0D0186211A AS DateTime), 1, 1100, NULL, NULL, 1, N'like', 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (755, NULL, NULL, NULL, NULL, N'???????????????', N'DaraggeOptions', N'string', 140, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'???????????????', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'???????????????', CAST(0x0000AE0D0186211A AS DateTime), 1, 1050, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (756, NULL, NULL, NULL, NULL, N'????????????', N'FormOptions', N'string', 140, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'???????????????', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'???????????????', CAST(0x0000AE0D0186211A AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (757, NULL, NULL, NULL, NULL, N'????????????', N'FormConfig', N'string', 110, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'???????????????', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'???????????????', CAST(0x0000AE0D0186211A AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (758, NULL, NULL, NULL, NULL, N'????????????', N'FormFields', N'string', 110, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'???????????????', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'???????????????', CAST(0x0000AE0D0186211A AS DateTime), 1, 900, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (760, NULL, NULL, NULL, NULL, N'????????????', N'CreateDate', N'DateTime', 110, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'???????????????', CAST(0x0000AE0D0186211B AS DateTime), 1, 800, NULL, NULL, 1, N'datetime', 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (761, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AE0D0186211B AS DateTime), 1, 750, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (762, NULL, NULL, NULL, NULL, N'?????????', N'Creator', N'string', 130, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 60, N'???????????????', CAST(0x0000AE0D0186211B AS DateTime), 1, 810, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (763, NULL, NULL, NULL, NULL, N'?????????', N'Modifier', N'string', 130, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 60, N'???????????????', CAST(0x0000AE0D0186211B AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (764, NULL, NULL, NULL, NULL, N'????????????', N'ModifyDate', N'DateTime', 110, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'???????????????', CAST(0x0000AE0D0186211B AS DateTime), 1, 600, NULL, NULL, 1, N'datetime', 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (765, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AE0D0186211B AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (766, NULL, NULL, NULL, NULL, N'????????????', N'TableConfig', N'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'???????????????', CAST(0x0000AE0D0186211A AS DateTime), 1, 880, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (767, NULL, NULL, NULL, NULL, N'', N'FormCollectionId', N'guid', 110, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'???????????????', CAST(0x0000AE0E017B18FE AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (768, NULL, NULL, NULL, NULL, N'??????ID', N'FormId', N'guid', 110, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'???????????????', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, N'???????????????', CAST(0x0000AE0E017B18FF AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (769, NULL, NULL, NULL, NULL, N'??????', N'Title', N'string', 110, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'???????????????', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'???????????????', CAST(0x0000AE0E017B18FF AS DateTime), 1, 900, NULL, NULL, 1, N'like', 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (770, NULL, NULL, NULL, NULL, N'????????????', N'FormData', N'string', 110, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'???????????????', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 0, 1, 0, 0, N'???????????????', CAST(0x0000AE0E017B18FF AS DateTime), 1, 850, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (771, NULL, NULL, NULL, NULL, N'????????????', N'CreateDate', N'DateTime', 145, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'???????????????', CAST(0x0000AE0E017B18FF AS DateTime), 1, 800, NULL, NULL, 1, N'datetime', 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (772, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AE0E017B18FF AS DateTime), 1, 750, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (773, NULL, NULL, NULL, NULL, N'?????????', N'Creator', N'string', 100, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 60, N'???????????????', CAST(0x0000AE0E017B18FF AS DateTime), 1, 810, NULL, NULL, 1, N'like', 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (774, NULL, NULL, NULL, NULL, N'', N'Modifier', N'string', 130, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 60, N'???????????????', CAST(0x0000AE0E017B18FF AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (775, NULL, NULL, NULL, NULL, N'', N'ModifyDate', N'DateTime', 110, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'???????????????', CAST(0x0000AE0E017B18FF AS DateTime), 1, 600, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (776, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'???????????????', CAST(0x0000AE0E017B18FF AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
SET IDENTITY_INSERT [dbo].[Sys_TableColumn] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_TableInfo] ON 

GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (2, N'????????????', N'????????????', NULL, NULL, NULL, NULL, NULL, 0, N'RoleName', N'System', N'VOL.System', NULL, 8, NULL, NULL, N'Sys_Role', N'Sys_Role', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (3, N'????????????', N'????????????', NULL, NULL, N'????????????', N'Sys_DictionaryList', NULL, 0, N'DicName', N'System', N'VOL.System', NULL, 11, NULL, NULL, N'Sys_Dictionary', N'Sys_Dictionary', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (4, N'????????????', N'????????????', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'System', N'VOL.System', NULL, 11, NULL, NULL, N'Sys_DictionaryList', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (5, N'????????????', N'????????????', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'System', N'VOL.System', NULL, 10, NULL, NULL, N'Sys_Log', N'Sys_Log', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (6, NULL, N'????????????', NULL, NULL, NULL, NULL, NULL, 0, N'UserName', N'System', N'VOL.System', NULL, 8, NULL, N'', N'Sys_User', N'Sys_User', N'HeadImageUrl', 1)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (8, N'??????????????????', N'??????????????????', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'System', N'VOL.System', 200, 0, NULL, NULL, N'???', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (10, N'????????????', N'????????????', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'System', N'VOL.System', NULL, 0, NULL, N'170', N'????????????', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (11, N'????????????', N'????????????', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'System', N'VOL.System', NULL, 0, NULL, N'250', N'????????????', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (15, N'????????????', N'?????????????????????', NULL, NULL, NULL, NULL, NULL, 0, N'AvgPrice', N'App', N'VOL.AppManager', NULL, 79, NULL, NULL, N'App_TransactionAvgPrice', N'App_TransactionAvgPrice', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (16, NULL, N'????????????????????????', NULL, NULL, NULL, NULL, NULL, 0, N'Price', N'App', N'VOL.AppManager', NULL, 79, NULL, NULL, N'App_ReportPrice', N'App_ReportPrice', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (19, NULL, N'????????????', NULL, NULL, NULL, NULL, NULL, 0, N'PhoneNo', N'App', N'VOL.AppManager', NULL, 79, NULL, NULL, N'App_Transaction', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (20, NULL, N'??????????????????', NULL, NULL, NULL, NULL, NULL, 0, N'ExpertName', N'App', N'VOL.AppManager', NULL, 79, NULL, NULL, N'App_Expert', N'App_Expert', N'HeadImageUrl', 1)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (27, N' ??????', N'??????????????????', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'News', N'VOL.AppManager', NULL, 0, NULL, NULL, N' ??????', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (28, NULL, N'????????????', NULL, NULL, NULL, NULL, NULL, 0, N'Title', N'News', N'VOL.AppManager', NULL, 27, N'Content', N'CreateDate', N'App_News', N'App_News', N'ImageUrl', 3)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (76, N'????????????', N'??????????????????', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'????????????', N'VOL.Order', NULL, 0, NULL, NULL, N'????????????', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (77, N'????????????', N'????????????', NULL, NULL, N'????????????', N'SellOrderList', NULL, 0, N'TranNo', N'Sell', N'VOL.Order', NULL, 76, NULL, N'CreateDate', N'SellOrder', N'SellOrder', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (78, N'????????????', N'????????????', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'Order', N'VOL.Order', NULL, 76, NULL, N'CreateDate', N'SellOrderList', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (79, N'Table ????????????', N'Table+????????????', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'Order', N'VOL.Order', NULL, 0, NULL, NULL, N'Table+????????????', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (80, N'??????????????????', N'????????????+????????????', NULL, NULL, NULL, NULL, NULL, 0, N'Name', N'Appointment', N'VOL.Order', NULL, 79, NULL, N'CreateDate', N'App_Appointment', N'App_Appointment', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (81, N'????????????', N'????????????', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'form', N'VOL.System', NULL, 0, NULL, NULL, N'0', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (82, N'????????????', N'????????????', NULL, NULL, NULL, NULL, NULL, 1, N'Title', N'form', N'VOL.System', NULL, 81, NULL, N'CreateDate', N'FormDesignOptions', N'FormDesignOptions', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (83, N'????????????', N'????????????', NULL, NULL, NULL, N'', NULL, 1, NULL, N'form', N'VOL.System', NULL, 81, NULL, N'CreateDate', N'FormCollectionObject', N'FormCollectionObject', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_TableInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_User] ON 

GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (1, N'??????????????????', 1, CAST(0x0000AAAD000EDBE8 AS DateTime), 1, N'???????????????', CAST(0x0000A06C00B808E4 AS DateTime), NULL, NULL, NULL, 0, N'283591387@qq.com', 1, 1, N'Upload/Tables/Sys_User/202004271001535915/04.jpg', 0, CAST(0x0000A7DD00A47F54 AS DateTime), CAST(0x0000AB2300FB2443 AS DateTime), NULL, N'???????????????', CAST(0x0000ABAA00A563D8 AS DateTime), 1, 0, 1, N'???????????????', N'13888888888', N'~????????????...', NULL, N'admin', N'j79rYYvCz4vdhcboB1Ausg==', N'???????????????', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIxIiwiaWF0IjoiMTY0ODM2NjU1NiIsIm5iZiI6IjE2NDgzNjY1NTYiLCJleHAiOiIxNjQ4MzczNzU2IiwiaXNzIjoidm9sLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.6BZzat0S7dkauPcZ-Yjpu8gpTUkqQitjTbiEEEZrKlo')
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (3362, N'?????????????????????', 1, CAST(0x0000AAAD000EDBE8 AS DateTime), 1, N'???????????????', CAST(0x0000AAA800ED6DA4 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, N'Upload/Tables/Sys_User/201912141113355553/07.jpg', 1, NULL, CAST(0x0000AAD0017C018A AS DateTime), N'01012345678', N'zs', CAST(0x0000ABAE0111EBD4 AS DateTime), 3362, NULL, 2, N'???????????????', NULL, N'null', NULL, N'admin666', N'j79rYYvCz4vdhcboB1Ausg==', N'zs', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIzMzYyIiwiaWF0IjoiMTU4ODQxMTc4MSIsIm5iZiI6IjE1ODg0MTE3ODEiLCJleHAiOiIxNTg4NDE4OTgxIiwiaXNzIjoidm9sLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.CfH7pDGNTqMTxs1oHtT9jyQO7eOMZDFd00F1eJ06S4I')
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (3366, NULL, 1, NULL, NULL, NULL, CAST(0x0000AB100108B154 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, 1, 0, N'Upload/Tables/Sys_User/201912082213149562/head1.jpg', 0, NULL, NULL, NULL, N'???????????????', CAST(0x0000AB9300D1211C AS DateTime), 1, NULL, 15, N'??????3', NULL, NULL, NULL, N'test123', N'1nC8gJ2R7slXiotmNrLCEA==', N'test123', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIzMzY2IiwiaWF0IjoiMTU3NDY2OTAzMyIsIm5iZiI6IjE1NzQ2NjkwMzMiLCJleHAiOiIxNTc0Njc2MjMzIiwiaXNzIjoidm9sLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.MZFrEsYLMy5zH4ZfXUz_wwr62hJkeQsX7CJyg_x_fxg')
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (3367, NULL, NULL, NULL, NULL, NULL, CAST(0x0000ABA9011D8688 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, 0, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, N'??????2', NULL, N'1', NULL, N'user2', N'aPuAteBy8iDwlNvTNPGqzA==', N'????????????2', NULL)
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (3368, NULL, NULL, NULL, NULL, NULL, CAST(0x0000ABA9011DD50C AS DateTime), 1, N'???????????????', NULL, NULL, NULL, 1, 0, NULL, 1, NULL, NULL, NULL, N'zs', CAST(0x0000ABAE01111FEC AS DateTime), 3362, NULL, 2, N'???????????????', NULL, NULL, NULL, N'user2_1', N'FVUjlxZXEhBaFk1425xDSw==', N'????????????2_1', NULL)
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (3369, NULL, NULL, NULL, NULL, NULL, CAST(0x0000ABA9011ECFD4 AS DateTime), 1, N'???????????????', NULL, NULL, NULL, 1, 0, NULL, 1, NULL, NULL, NULL, N'zs', CAST(0x0000ABAE0158FE5C AS DateTime), 3362, NULL, 13, N'??????1', NULL, NULL, NULL, N'user1_1', N'LwCgs8V3buuNG1Tmsoa2Ow==', N'????????????1_1', NULL)
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (3380, NULL, NULL, NULL, NULL, NULL, CAST(0x0000ABAE0113B02C AS DateTime), 1, N'???????????????', NULL, NULL, NULL, 1, 0, NULL, 1, NULL, NULL, NULL, N'???????????????', CAST(0x0000ABAE01573C5C AS DateTime), 1, NULL, 1, N'???????????????', NULL, NULL, NULL, N'1231', N'Z~PIbBMR_qYqiN5dnp6zHg==', N'31', NULL)
GO
INSERT [dbo].[Sys_User] ([User_Id], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [CreateDate], [CreateID], [Creator], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Mobile], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [Token]) VALUES (4378, NULL, NULL, NULL, NULL, NULL, CAST(0x0000ABAE01590B40 AS DateTime), 3362, N'zs', NULL, NULL, NULL, 1, 0, NULL, 1, NULL, NULL, NULL, N'zs', CAST(0x0000ABAE015C48F0 AS DateTime), 3362, NULL, 4, N'?????????', NULL, NULL, NULL, N'111', N'BshtCHSBJ_JxFWc9KnNOXw==', N'11', NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_User] OFF
GO
USE [master]
GO
ALTER DATABASE [netcoredev] SET  READ_WRITE 
GO
