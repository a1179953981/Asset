SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Company](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Company_Id]  DEFAULT (newid()),
	[Coded] [varchar](50) NULL,
	[Named] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[Phone] [varchar](15) NULL,
	[TelPhone] [varchar](20) NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
	[UserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Company', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Menus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Menus](
	[ApplicationId] [uniqueidentifier] NULL,
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Menus_Id]  DEFAULT (newid()),
	[ParentId] [uniqueidentifier] NULL,
	[IdStep] [varchar](1000) NULL,
	[Title] [nvarchar](20) NULL,
	[Url] [varchar](256) NULL,
	[Descr] [nvarchar](50) NULL,
	[AllowRoles] [nvarchar](1000) NULL,
	[DenyUsers] [nvarchar](1000) NULL,
	[Sort] [int] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Menus', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderRandom]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderRandom](
	[OrderCode] [varchar](20) NOT NULL,
	[Prefix] [varchar](10) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderRandom] PRIMARY KEY CLUSTERED 
(
	[OrderCode] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderRandom', @level2type=N'COLUMN', @level2name=N'OrderCode'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Picture_AssetInStore]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Picture_AssetInStore](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Picture_AssetInStore_Id]  DEFAULT (newid()),
	[FileName] [nvarchar](100) NULL,
	[FileSize] [int] NULL,
	[FileExtension] [varchar](10) NULL,
	[FileDirectory] [nvarchar](100) NULL,
	[RandomFolder] [varchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Picture_AssetInStore] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Picture_AssetInStore', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Region]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Region](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Region_Id]  DEFAULT (newid()),
	[ParentId] [uniqueidentifier] NULL,
	[Coded] [varchar](50) NULL,
	[Named] [nvarchar](50) NULL,
	[Remark] [nvarchar](50) NULL,
	[Sort] [int] NULL,
	[LastUpdatedDate] [datetime] NULL,
	[UserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Region', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleMenu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoleMenu](
	[RoleId] [uniqueidentifier] NOT NULL,
	[MenuId] [uniqueidentifier] NOT NULL,
	[OperationAccess] [varchar](300) NULL,
 CONSTRAINT [PK_RoleMenu] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[MenuId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'RoleMenu', @level2type=N'COLUMN', @level2name=N'RoleId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'RoleMenu', @level2type=N'COLUMN', @level2name=N'MenuId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UseRefund]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UseRefund](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_UseRefund_Id]  DEFAULT (newid()),
	[UsePerson] [nvarchar](50) NULL,
	[UseTime] [datetime] NULL,
	[EstimateRefundTime] [datetime] NULL,
	[UseUser] [nvarchar](50) NULL,
	[RealRefundTime] [datetime] NULL,
	[RefundDealUser] [nvarchar](50) NULL,
	[Status] [nvarchar](20) NULL,
	[Remark] [nvarchar](300) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_UseRefund] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'UseRefund', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserMenu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserMenu](
	[UserId] [uniqueidentifier] NOT NULL,
	[MenuId] [uniqueidentifier] NOT NULL,
	[OperationAccess] [varchar](300) NULL,
 CONSTRAINT [PK_UserMenu] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[MenuId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'UserMenu', @level2type=N'COLUMN', @level2name=N'UserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'UserMenu', @level2type=N'COLUMN', @level2name=N'MenuId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FeatureUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FeatureUser](
	[UserId] [uniqueidentifier] NOT NULL,
	[FeatureId] [uniqueidentifier] NOT NULL,
	[TypeName] [nvarchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_FeatureUser] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[FeatureId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'FeatureUser', @level2type=N'COLUMN', @level2name=N'UserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'FeatureUser', @level2type=N'COLUMN', @level2name=N'FeatureId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContentType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ContentType](
	[AppCode] [char](10) NULL,
	[UserId] [uniqueidentifier] NULL,
	[DepmtId] [uniqueidentifier] NULL,
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ContentType_Id]  DEFAULT (newid()),
	[ParentId] [uniqueidentifier] NULL,
	[Coded] [varchar](36) NULL,
	[Named] [nvarchar](256) NULL,
	[Step] [varchar](1000) NULL,
	[FlagName] [varchar](20) NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[RecordDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ContentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'ContentType', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInOrg]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserInOrg](
	[AppCode] [char](10) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[OrgId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_UserInOrg] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[OrgId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'UserInOrg', @level2type=N'COLUMN', @level2name=N'UserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'UserInOrg', @level2type=N'COLUMN', @level2name=N'OrgId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dics]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Dics](
	[AppCode] [char](10) NULL,
	[UserId] [uniqueidentifier] NULL,
	[DepmtId] [uniqueidentifier] NULL,
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Dics_Id]  DEFAULT (newid()),
	[ParentId] [uniqueidentifier] NULL,
	[Coded] [varchar](36) NULL,
	[Named] [nvarchar](256) NULL,
	[Step] [varchar](1000) NULL,
	[FlagName] [varchar](20) NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[RecordDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Dics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Dics', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StoragePlace]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StoragePlace](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_StoragePlace_Id]  DEFAULT (newid()),
	[AppCode] [char](6) NULL,
	[UserId] [uniqueidentifier] NULL,
	[DepmtId] [uniqueidentifier] NULL,
	[Coded] [varchar](36) NULL,
	[Named] [nvarchar](256) NULL,
	[RecordDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_StoragePlace] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'StoragePlace', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Category](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Category_Id]  DEFAULT (newid()),
	[AppCode] [char](10) NULL,
	[UserId] [uniqueidentifier] NULL,
	[DepmtId] [uniqueidentifier] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Coded] [varchar](36) NULL,
	[Named] [nvarchar](256) NULL,
	[Step] [varchar](1000) NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](300) NULL,
	[RecordDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Category', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrgDepmt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrgDepmt](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_OrgDepmt_Id]  DEFAULT (newid()),
	[AppCode] [char](10) NULL,
	[UserId] [uniqueidentifier] NULL,
	[DepmtId] [uniqueidentifier] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Coded] [varchar](36) NULL,
	[Named] [nvarchar](100) NULL,
	[Step] [varchar](1000) NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[RecordDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrgDepmt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrgDepmt', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PandianAsset]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PandianAsset](
	[PandianId] [uniqueidentifier] NOT NULL,
	[AssetId] [uniqueidentifier] NOT NULL,
	[AppCode] [char](6) NULL,
	[UserId] [uniqueidentifier] NULL,
	[DepmtId] [uniqueidentifier] NULL,
	[LastUseDepmtId] [uniqueidentifier] NULL,
	[LastMgrDepmtId] [uniqueidentifier] NULL,
	[LastStoragePlaceId] [uniqueidentifier] NULL,
	[LastUsePerson] [nvarchar](20) NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](300) NULL,
	[Status] [int] NULL,
	[RecordDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_PandianAsset] PRIMARY KEY CLUSTERED 
(
	[PandianId] ASC,
	[AssetId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PandianAsset', @level2type=N'COLUMN', @level2name=N'PandianId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PandianAsset', @level2type=N'COLUMN', @level2name=N'AssetId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Product](
	[AppCode] [char](6) NULL,
	[UserId] [uniqueidentifier] NULL,
	[DepmtId] [uniqueidentifier] NULL,
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Product_Id]  DEFAULT (newid()),
	[CategoryId] [uniqueidentifier] NULL,
	[Coded] [varchar](36) NULL,
	[Named] [nvarchar](256) NULL,
	[Barcode] [varchar](36) NULL,
	[SpecModel] [nvarchar](256) NULL,
	[Qty] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[Amount] [decimal](18, 2) NULL,
	[MeterUnit] [nvarchar](20) NULL,
	[PieceQty] [int] NULL,
	[Pattr] [nvarchar](100) NULL,
	[SourceFrom] [nvarchar](256) NULL,
	[Supplier] [nvarchar](30) NULL,
	[BuyDate] [datetime] NULL,
	[EnableDate] [varchar](20) NULL,
	[UseDateLimit] [nvarchar](30) NULL,
	[UseDepmtId] [uniqueidentifier] NULL,
	[UsePersonName] [nvarchar](10) NULL,
	[MgrDepmtId] [uniqueidentifier] NULL,
	[StoragePlaceId] [uniqueidentifier] NULL,
	[Remark] [nvarchar](300) NULL,
	[Status] [int] NULL,
	[Sort] [int] NULL,
	[IsDisable] [bit] NULL,
	[RecordDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Product', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BarcodeTemplate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BarcodeTemplate](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_BarcodeTemplate_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[Title] [nvarchar](256) NULL,
	[Html] [nvarchar](max) NULL,
	[Attr] [nvarchar](max) NULL,
	[IsDefault] [bit] NULL,
	[TypeName] [nvarchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_BarcodeTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'BarcodeTemplate', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Staff]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Staff](
	[UserId] [uniqueidentifier] NOT NULL,
	[AppCode] [char](10) NULL,
	[Coded] [varchar](36) NULL,
	[Named] [nvarchar](50) NULL,
	[Phone] [varchar](11) NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[RecordDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'UserId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pandian]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pandian](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Pandian_Id]  DEFAULT (newid()),
	[AppCode] [char](6) NULL,
	[UserId] [uniqueidentifier] NULL,
	[DepmtId] [uniqueidentifier] NULL,
	[Named] [nvarchar](256) NULL,
	[TotalQty] [int] NULL,
	[IsDown] [bit] NULL,
	[MgrDepmtId] [uniqueidentifier] NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](300) NULL,
	[Status] [int] NULL,
	[RecordDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Pandian] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Pandian', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetInStore]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetInStore](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_AssetInStore_Id]  DEFAULT (newid()),
	[Barcode] [varchar](36) NULL,
	[CategoryId] [uniqueidentifier] NULL,
	[UseCompanyId] [uniqueidentifier] NULL,
	[UseDepmtId] [uniqueidentifier] NULL,
	[OwnedCompanyId] [uniqueidentifier] NULL,
	[RegionId] [uniqueidentifier] NULL,
	[PictureId] [uniqueidentifier] NULL,
	[Named] [nvarchar](50) NULL,
	[SpecModel] [nvarchar](256) NULL,
	[SNCode] [varchar](36) NULL,
	[Unit] [nvarchar](20) NULL,
	[Price] [decimal](18, 2) NULL,
	[BuyDate] [datetime] NULL,
	[UsePerson] [nvarchar](50) NULL,
	[Manager] [nvarchar](50) NULL,
	[StoreLocation] [nvarchar](100) NULL,
	[UseExpireMonth] [int] NULL,
	[Supplier] [nvarchar](50) NULL,
	[RFID] [varchar](36) NULL,
	[IsDisable] [bit] NULL,
	[Remark] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
	[UserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AssetInStore] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'AssetInStore', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductRepair]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductRepair](
	[Id] [uniqueidentifier] NULL CONSTRAINT [DF_ProductRepair_Id]  DEFAULT (newid()),
	[AppCode] [char](10) NULL,
	[UserId] [uniqueidentifier] NULL,
	[OrgId] [uniqueidentifier] NULL,
	[ProductId] [uniqueidentifier] NULL,
	[RecordDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'ProductRepair', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssetUseRefund]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssetUseRefund](
	[UseRefundId] [uniqueidentifier] NOT NULL,
	[AssetId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AssetUseRefund] PRIMARY KEY CLUSTERED 
(
	[UseRefundId] ASC,
	[AssetId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'AssetUseRefund', @level2type=N'COLUMN', @level2name=N'UseRefundId'

