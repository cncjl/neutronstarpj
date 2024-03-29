USE [SiteMovies]
GO
/****** Object:  Table [dbo].[SequenceCounter]    Script Date: 01/15/2020 17:52:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SequenceCounter](
	[SequenceKey] [varchar](32) NOT NULL,
	[CounterId] [int] NOT NULL,
 CONSTRAINT [PK_SEQUENCECOUNTER] PRIMARY KEY CLUSTERED 
(
	[SequenceKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SequenceCounter] ([SequenceKey], [CounterId]) VALUES (N'DicgroupNo', 4)
INSERT [dbo].[SequenceCounter] ([SequenceKey], [CounterId]) VALUES (N'TaskIdKey', 0)
/****** Object:  Table [dbo].[PageElement]    Script Date: 01/15/2020 17:52:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PageElement](
	[SourceId] [varchar](32) NOT NULL,
	[SourceName] [varchar](32) NOT NULL,
	[MenuId] [varchar](32) NOT NULL,
	[Type] [int] NOT NULL,
	[AuthorityLink] [varchar](256) NOT NULL,
	[Color] [varchar](32) NOT NULL,
	[Event] [varchar](32) NOT NULL,
	[Icon] [varchar](32) NOT NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_PAGEELEMENT] PRIMARY KEY CLUSTERED 
(
	[SourceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:按钮 2:其它' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PageElement', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:一级菜单 2:二级菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PageElement', @level2type=N'COLUMN',@level2name=N'AuthorityLink'
GO
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'164aead4c1a24f99a3f6e54692b9c0d6', N'添加字典', N'26d494514fc34e6baf002a3e46d3c907', 0, N'/AdminManger/Dictionary/AddDictionary', N'    ', N'addDic', N'layui-icon-add-1', 4)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'21995a19ed7d487598a4464c19853997', N'删除用户', N'ae375ab455d54202af13f2dfd9aea8ab', 0, N'/AdminManger/AdminUser/Delete', N'layui-btn-danger', N'delete', N'layui-icon-delete', 3)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'3ef8bbf2e8a840f3b1ec4eee25b32afe', N'添加用户', N'ae375ab455d54202af13f2dfd9aea8ab', 0, N'/AdminManger/AdminUser/AddAdminUser', N'  ', N'add', N'layui-icon-add-1', 1)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'50be26335dc2439aa6ef5a4eb28368b1', N'修改备份主机', N'dd6f0d67ca2046579e5e497cc251c5f4', 0, N'/AdminData/BackUpServer/AddorUpdateBackUpServers', N'layui-btn-normal', N'update', N'layui-icon-edit', 2)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'5145ea552b9c4ea086ae84ebbfbcf738', N'修改字典', N'26d494514fc34e6baf002a3e46d3c907', 0, N'/AdminManger/Dictionary/UpdateDic', N'layui-btn-normal', N'updateDic', N'layui-icon-edit', 5)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'539d1865f3f3469385d9d6777cbcb13f', N'添加备份主机', N'dd6f0d67ca2046579e5e497cc251c5f4', 0, N'/AdminData/BackUpServer/AddorUpdateBackUpServers', N'1', N'add', N'layui-icon-add-1', 1)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'55fcb94d1a4642a692770f09ee341989', N'菜单添加', N'c4d65ff8baf543029d2012f6c3cbdc74', 2, N'/AdminManger/Menu/Add', N'', N'', N'', 0)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'595096900cdb44fcad55b97b870cfa5c', N'添加字典组', N'26d494514fc34e6baf002a3e46d3c907', 0, N'/AdminManger/Dictionary/AddGroup', N'     ', N'addGroup', N'layui-icon-add-1', 1)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'5d3993c0993041ee8c684b5cc21fe499', N'一键更新模块', N'7254cf35dfa84940b959a0932d1376d9', 2, N'/AdminData/BackUpServer/UpdateModule', N'1', N'UpdateModule', N'1', 1)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'61ca7d7bda0a44559082b28d89df4e28', N'添加电影', N'4cace82f79934f4e82fa76f86240bb5a', 0, N'/AdminData/Movies/AddOrUpdateMovie', N'1', N'add', N'layui-icon-add-1', 1)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'63beb80ac750449a9ced102cd947fa9c', N'删除角色', N'4202fca1393a450d9a41c0aa42d9723f', 0, N'/AdminManger/Role/Delete', N'layui-btn-danger', N'delete', N'layui-icon-delete', 3)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'7d7f1d92db9e4529ad17cc3fa6bdc1d8', N'菜单修改', N'c4d65ff8baf543029d2012f6c3cbdc74', 0, N'/AdminManger/Menu/Update', N'', N'', N'', 0)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'81943b32ac46491594de11e31b4c462e', N'修改电影', N'4cace82f79934f4e82fa76f86240bb5a', 0, N'/AdminData/Movies/AddOrUpdateMovie', N'layui-btn-normal', N'update', N'layui-icon-edit', 2)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'9b2e38f8a340438f9ece13b5ebf576f1', N'删除主机', N'299e88252f734c77896b8a30463e3981', 0, N'/AdminData/Servers/Delete', N'layui-btn-danger', N'delete', N'layui-icon-delete', 3)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'a3e2a9951dff4744ab6b65596bd4b63b', N'修改字典组', N'26d494514fc34e6baf002a3e46d3c907', 0, N'/AdminManger/Dictionary/UpdateGroup', N'layui-btn-normal', N'updateGroup', N'layui-icon-edit', 2)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'a7a119de49844c588ca10a7ead332b12', N'添加主机', N'299e88252f734c77896b8a30463e3981', 0, N'/AdminData/Servers/AddorUpdateServers', N'1', N'add', N'layui-icon-add-1', 1)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'c8fd07c817bc4760987c4ae64c8e7c42', N'修改角色', N'4202fca1393a450d9a41c0aa42d9723f', 0, N'/AdminManger/Role/AddorUpdateRole', N'layui-btn-normal', N'update', N'layui-icon-edit', 2)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'c93b125329c049d7ae570d3167a4168f', N'修改用户', N'ae375ab455d54202af13f2dfd9aea8ab', 0, N'/AdminManger/AdminUser/UpdateAdminUser', N'layui-btn-normal', N'update', N'layui-icon-edit', 2)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'd2a868f1786846d78dbee2b55d1945f9', N'修改密码', N'ae375ab455d54202af13f2dfd9aea8ab', 0, N'/AdminManger/AdminUser/UpdateAdminUserPassword', N'layui-btn-normal', N'updatepassword', N'layui-icon-edit', 4)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'd656ef4ed9094e43a2aa195d1657c7b4', N'修改主机', N'299e88252f734c77896b8a30463e3981', 0, N'/AdminData/Servers/AddorUpdateServers', N'layui-btn-normal', N'update', N'layui-icon-edit', 2)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'ecf537d67bd54ceea6906e21533ee6e3', N'删除备份主机', N'dd6f0d67ca2046579e5e497cc251c5f4', 0, N'/AdminData/BackUpServer/Delete', N'layui-btn-danger', N'delete', N'layui-icon-delete', 3)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'f04154a10982475f802ed04f1c6619ba', N'删除字典组', N'26d494514fc34e6baf002a3e46d3c907', 0, N'/AdminManger/Dictionary/DeleteGroup', N'layui-btn-danger', N'deleteGroup', N'layui-icon-delete', 3)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'f10f44249d85464b99803f1d102ea84c', N'添加角色', N'4202fca1393a450d9a41c0aa42d9723f', 0, N'/AdminManger/Role/AddorUpdateRole', N'  ', N'add', N'layui-icon-add-1', 1)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'f42cc7276f1849c48959c96d2675bb2c', N'删除电影', N'4cace82f79934f4e82fa76f86240bb5a', 0, N'/AdminData/Movies/Delete', N'layui-btn-danger', N'delete', N'layui-icon-delete', 3)
INSERT [dbo].[PageElement] ([SourceId], [SourceName], [MenuId], [Type], [AuthorityLink], [Color], [Event], [Icon], [Sort]) VALUES (N'fcd426bf235f48408973e2444b3d7e79', N'权限管理', N'4202fca1393a450d9a41c0aa42d9723f', 0, N'/AdminManger/Role/RoleIndex', N'layui-btn-normal', N'role', N'layui-icon-edit', 4)
/****** Object:  Table [dbo].[Movies]    Script Date: 01/15/2020 17:52:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [varchar](50) NULL,
	[FilmType] [int] NULL,
	[FilmArea] [int] NULL,
	[FilmYear] [int] NULL,
	[Direct] [varchar](200) NULL,
	[MainPerformer] [varchar](300) NULL,
	[Language] [varchar](100) NULL,
	[FilmDateTime] [datetime] NULL,
	[Score] [int] NULL,
	[Source] [varchar](200) NULL,
	[Name] [varchar](200) NULL,
	[NameEN] [varchar](300) NULL,
	[Descs] [varchar](500) NULL,
	[Contents] [varchar](3000) NULL,
	[CoverImage] [varchar](300) NULL,
	[Link] [varchar](300) NULL,
	[Link2] [varchar](300) NULL,
	[Link3] [varchar](300) NULL,
	[Link4] [varchar](300) NULL,
	[CreateTime] [datetime] NULL,
	[IsValid] [int] NULL,
 CONSTRAINT [PK_Movies_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON
INSERT [dbo].[Movies] ([Id], [MovieId], [FilmType], [FilmArea], [FilmYear], [Direct], [MainPerformer], [Language], [FilmDateTime], [Score], [Source], [Name], [NameEN], [Descs], [Contents], [CoverImage], [Link], [Link2], [Link3], [Link4], [CreateTime], [IsValid]) VALUES (5, N'9b8c096f-0587-4a5b-8642-272da6568ecd', 1, 1, 1, N'q', N'q', N'q', CAST(0x00009FCB00000000 AS DateTime), 2, N'q', N'测试电影', N'test', N'1', N'1', N'/UploadFiles/Movie/CoverPic/2020115172646306_1565603750607903.jpg', N'1', N'1', N'1', N'1', CAST(0x0000AB43011F907F AS DateTime), 1)
INSERT [dbo].[Movies] ([Id], [MovieId], [FilmType], [FilmArea], [FilmYear], [Direct], [MainPerformer], [Language], [FilmDateTime], [Score], [Source], [Name], [NameEN], [Descs], [Contents], [CoverImage], [Link], [Link2], [Link3], [Link4], [CreateTime], [IsValid]) VALUES (6, N'9d93c4aa-14b7-4e6c-8624-7be6be9ce282', 2, 1, 4, N'adf', N'adfa', N'adfa', CAST(0x0000AB3500000000 AS DateTime), 2, N'adf', N'dfad', N'adfa', N'1', N'1', N'/UploadFiles/Movie/CoverPic/2020115173219661_1565603749676448.jpg', N'1', N'1', N'1', N'1', CAST(0x0000AB4301211797 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Movies] OFF
/****** Object:  Table [dbo].[Menu]    Script Date: 01/15/2020 17:52:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuId] [varchar](32) NOT NULL,
	[MenuName] [varchar](32) NULL,
	[AuthorityLink] [varchar](128) NULL,
	[ParentId] [varchar](32) NULL,
	[Grade] [int] NOT NULL,
	[Sort] [int] NOT NULL,
	[MenuIcon] [varchar](100) NULL,
	[IsRecommend] [int] NULL,
 CONSTRAINT [PK_MENU] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:一级菜单 2:二级菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Menu', @level2type=N'COLUMN',@level2name=N'Grade'
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'201198248d5042d88caa7170493cf06d', N'菜单设置', N'/AdminManger/Menu/Index', N'bd5b02dcd45a41dfa1895342f45bfeea', 2, 0, NULL, NULL)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'26d494514fc34e6baf002a3e46d3c907', N'字典设置', N'/AdminManger/Dictionary/Index', N'bd5b02dcd45a41dfa1895342f45bfeea', 2, 0, NULL, NULL)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'2808aa26521d48e6aaca987c4e940a4c', N'系统简述', N'/Help/SystemSummary', N'ee919944bb4b4b3fa070f2b126ebef61', 2, 2, N'1', 0)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'299e88252f734c77896b8a30463e3981', N'主机管理', N'/AdminData/Servers/Index', N'b951417498c642b6ad09387db54d213c', 2, 0, N'layui-icon-find-fill', 1)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'2f362834c8174397be4180fa97bb7ac9', N'平台配置', N'/AdminData/PlatConfig/Index', N'70e42ac3c1bc4c15a8ccffd29b81951b', 2, 3, N'layui-icon-set', 1)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'35e5d3036e4e4d6c8abae414c7b77e53', N'按钮设置', N'/AdminManger/Button/Index', N'bd5b02dcd45a41dfa1895342f45bfeea', 2, 0, NULL, NULL)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'4202fca1393a450d9a41c0aa42d9723f', N'角色设置', N'/AdminManger/Role/Index', N'bd5b02dcd45a41dfa1895342f45bfeea', 2, 0, NULL, NULL)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'4cace82f79934f4e82fa76f86240bb5a', N'电影管理', N'/AdminData/Movies/Index', N'b951417498c642b6ad09387db54d213c', 2, 1, N'layui-icon-console', 1)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'70e42ac3c1bc4c15a8ccffd29b81951b', N'配置管理菜单', N'/', NULL, 1, 6, N'layui-icon-set', 0)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'7254cf35dfa84940b959a0932d1376d9', N'模块更新', N'/AdminData/ModuleUpdate/Index', N'70e42ac3c1bc4c15a8ccffd29b81951b', 2, 2, N'layui-icon-chat', 1)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'a50b2eaebe6c448aabc54bb264220718', N'系统框架', N'/Home/PlatIndex', N'ee919944bb4b4b3fa070f2b126ebef61', 2, 1, NULL, NULL)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'ae375ab455d54202af13f2dfd9aea8ab', N'用户设置', N'/AdminManger/AdminUser/Index', N'bd5b02dcd45a41dfa1895342f45bfeea', 2, 0, NULL, NULL)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'b951417498c642b6ad09387db54d213c', N'站群管理菜单', N'/', NULL, 1, 1, N'layui-icon-app', 0)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'bd5b02dcd45a41dfa1895342f45bfeea', N'系统管理菜单', N'/', NULL, 1, 8, N'layui-icon-component', 0)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'c9992db5cfbd4ddeb34e7502424518b5', N'权限设置', N'/AdminManger/SystemAuthority/Index', N'bd5b02dcd45a41dfa1895342f45bfeea', 2, 0, NULL, NULL)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'dd6f0d67ca2046579e5e497cc251c5f4', N'备份主机', N'/AdminData/BackUpServer/Index', N'70e42ac3c1bc4c15a8ccffd29b81951b', 2, 3, N'layui-icon-menu-fill', 1)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'ee919944bb4b4b3fa070f2b126ebef61', N'系统概要菜单', N'/', NULL, 1, 0, N'layui-icon-template', 0)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [AuthorityLink], [ParentId], [Grade], [Sort], [MenuIcon], [IsRecommend]) VALUES (N'f1ea3cc2ef9e41fd9e8bde63a3eca58a', N'使用帮助', N'/Help/Index', N'ee919944bb4b4b3fa070f2b126ebef61', 2, 8, N'layui-icon-survey', 1)
/****** Object:  Table [dbo].[DictionaryGroup]    Script Date: 01/15/2020 17:52:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DictionaryGroup](
	[GroupId] [varchar](32) NOT NULL,
	[GroupName] [varchar](32) NOT NULL,
	[Descs] [varchar](32) NOT NULL,
	[Sort] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsValid] [int] NOT NULL,
	[IsDelete] [int] NOT NULL,
 CONSTRAINT [PK_DICTIONARYGROUP] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:按钮 2:其它' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DictionaryGroup', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:一级菜单 2:二级菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DictionaryGroup', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:无效 1:有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DictionaryGroup', @level2type=N'COLUMN',@level2name=N'IsValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:未删除 1:已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DictionaryGroup', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
INSERT [dbo].[DictionaryGroup] ([GroupId], [GroupName], [Descs], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'A001', N'时间分类', N'电影时间分类', 1, CAST(0x0000AB4300BCA2AC AS DateTime), 1, 0)
INSERT [dbo].[DictionaryGroup] ([GroupId], [GroupName], [Descs], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'A002', N'类型分类', N'电影类型分类', 2, CAST(0x0000AB4300B4F9B1 AS DateTime), 1, 0)
INSERT [dbo].[DictionaryGroup] ([GroupId], [GroupName], [Descs], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'A003', N'地区分类', N'电影地区分类', 3, CAST(0x0000AB4300B66A46 AS DateTime), 1, 0)
/****** Object:  Table [dbo].[Dictionary]    Script Date: 01/15/2020 17:52:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dictionary](
	[DictionaryId] [varchar](32) NOT NULL,
	[GroupId] [varchar](32) NOT NULL,
	[DictionaryName] [varchar](32) NOT NULL,
	[DictionaryValue] [int] NOT NULL,
	[Sort] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsValid] [int] NOT NULL,
	[IsDelete] [int] NOT NULL,
 CONSTRAINT [PK_DICTIONARY] PRIMARY KEY CLUSTERED 
(
	[DictionaryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:按钮 2:其它' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'DictionaryValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:一级菜单 2:二级菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:无效 1:有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'IsValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:未删除 1:已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dictionary', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'07bcec8e3b8d4fdb9ded3428e4d9bedf', N'A002', N'动作', 8, 8, CAST(0x0000AB4300B58445 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'10239cd62abf4e009295f98c7c45b113', N'A003', N'澳洲', 4, 4, CAST(0x0000AB4300B769F4 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'1c7f39ad4aa549fca9ca488af5491ed0', N'A001', N'2012', 9, 9, CAST(0x0000AB4300BEE649 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'250cb341c1e54058aa59061215391a54', N'A001', N'2016', 5, 5, CAST(0x0000AB4300BEAED4 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'2e07f2ca83234afbb90d86269db5e009', N'A003', N'美洲', 3, 3, CAST(0x0000AB4300B6CD44 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'3427f47e220843ca8bc6268fcfd86767', N'A002', N'推理', 17, 17, CAST(0x0000AB4300B63F53 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'3acd446ad4204dc98b924a840fb9ca5c', N'A001', N'2018', 3, 3, CAST(0x0000AB4300BE9728 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'3c594c269bbf4592b3cfbae8aa3013bf', N'A001', N'2019', 2, 2, CAST(0x0000AB4300BE8E6B AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'43ebff6fa374446886cf274783c531c0', N'A002', N'古装', 14, 14, CAST(0x0000AB4300B5FA55 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'46e847704148492f8f18871b6b671137', N'A001', N'2020', 1, 1, CAST(0x0000AB4300BE8787 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'4c73e12cfb7c49d3b7f1bd58118f3867', N'A002', N'悬疑', 9, 9, CAST(0x0000AB4300B59010 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'558316f93ee8488cb9fb3e4c21c251d0', N'A002', N'恐怖', 5, 5, CAST(0x0000AB4300B55F56 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'5668939a1e1a4b31be8c7d82f445a0f1', N'A002', N'爱情', 1, 1, CAST(0x0000AB4300B52F2F AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'68e46b1524ec45899d41fa17b5124865', N'A002', N'科幻', 7, 7, CAST(0x0000AB4300B575FC AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'722709e5e7c548c9957955d096330c98', N'A002', N'喜剧', 2, 2, CAST(0x0000AB4300B53849 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'76899157ae154de182e649c69595c90f', N'A002', N'历史', 15, 15, CAST(0x0000AB4300B62046 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'799789d283894545918b59aec7434b4b', N'A003', N'非洲', 5, 5, CAST(0x0000AB4300B6ECBE AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'7e45cd78f59c42bb994c2aac8db73eb3', N'A001', N'2015', 6, 6, CAST(0x0000AB4300BEB703 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'7f8aae2d735f48eababecbe63a2c66b7', N'A002', N'传记', 16, 16, CAST(0x0000AB4300B62A3B AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'8244876c84b94455baac79ccf4cac3b0', N'A002', N'家庭', 13, 13, CAST(0x0000AB4300B5E55B AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'86e4d08c10e04979afe96e9c06861e87', N'A001', N'2017', 4, 4, CAST(0x0000AB4300BEA140 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'8bafc95d722643629a97488fbc2b2539', N'A001', N'2000-2010', 11, 11, CAST(0x0000AB4300BF1056 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'93ab383c302d4be5854c8d6430961c8c', N'A002', N'冒险', 11, 11, CAST(0x0000AB4300B5B079 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'93be6999783041e7861f4410312af6ab', N'A002', N'犯罪', 10, 10, CAST(0x0000AB4300B5A5E9 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'93f6d4006a524eba885fc2e12e3a136f', N'A001', N'90年代', 12, 12, CAST(0x0000AB4300BF2403 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'ab6596f3341a4565b5afe4fbd810832d', N'A001', N'80年代', 13, 13, CAST(0x0000AB4300BF2D7C AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'b33178d04b2244309555f8ee4d01a89e', N'A001', N'2011', 10, 10, CAST(0x0000AB4300BEF01F AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'bbed0feee1d04c32aa0967d012b29ea8', N'A001', N'更早', 15, 15, CAST(0x0000AB4300BF4474 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'bc7c6e8648d5406ab8148a084bb0c8d5', N'A003', N'欧洲', 2, 2, CAST(0x0000AB4300B6C224 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'c57745356fd64a309bab040d12f03254', N'A001', N'2014', 7, 7, CAST(0x0000AB4300BEC964 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'e18c5829fe29491a882aa89f181a0152', N'A002', N'其它', 18, 18, CAST(0x0000AB4300B64906 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'e7754d4628294195bf97f6663ca59d1b', N'A003', N'亚洲', 1, 1, CAST(0x0000AB4300B6B8C8 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'e7f190061b3c4203b105106c8dd1ae29', N'A002', N'动画', 3, 3, CAST(0x0000AB4300B54A1C AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'ebeacf1e177643d6b78edc46823f5749', N'A001', N'70年代', 14, 14, CAST(0x0000AB4300BF3A33 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'eda53f9039854d49a4c04efff4df5996', N'A002', N'战争', 12, 12, CAST(0x0000AB4300B5C92E AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'f5312ce6f4994f5fbcb23b62a36c9c1d', N'A002', N'惊悚', 6, 6, CAST(0x0000AB4300B56C3F AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'f8ae45fbdf97446293b795ed691300cf', N'A001', N'2013', 8, 8, CAST(0x0000AB4300BEDF14 AS DateTime), 1, 0)
INSERT [dbo].[Dictionary] ([DictionaryId], [GroupId], [DictionaryName], [DictionaryValue], [Sort], [CreateDate], [IsValid], [IsDelete]) VALUES (N'f9341d82d01643ac8bb0647b1556ca47', N'A002', N'剧情', 4, 4, CAST(0x0000AB4300B554A1 AS DateTime), 1, 0)
/****** Object:  Table [dbo].[AdminUserRoleRelated]    Script Date: 01/15/2020 17:52:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminUserRoleRelated](
	[RelateId] [varchar](32) NOT NULL,
	[UserId] [varchar](32) NOT NULL,
	[RoleId] [varchar](32) NOT NULL,
 CONSTRAINT [PK_ADMINUSERROLERELATED] PRIMARY KEY CLUSTERED 
(
	[RelateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:菜单  2:按钮' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminUserRoleRelated', @level2type=N'COLUMN',@level2name=N'UserId'
GO
INSERT [dbo].[AdminUserRoleRelated] ([RelateId], [UserId], [RoleId]) VALUES (N'3ac239215fbc4114b64e1c1d206219c0', N'1D7896AA627F48E58F684F1B218A22B2', N'05f4a67a88fc4d7a8719a6de3b1f1053')
INSERT [dbo].[AdminUserRoleRelated] ([RelateId], [UserId], [RoleId]) VALUES (N'6b549750ec244f119030c9d11e7c9c47', N'f9dd2cd8b92d4475ad7c8fc6cbbba38c', N'05f4a67a88fc4d7a8719a6de3b1f1053')
/****** Object:  Table [dbo].[AdminUser]    Script Date: 01/15/2020 17:52:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminUser](
	[UserId] [varchar](32) NOT NULL,
	[UserName] [varchar](32) NOT NULL,
	[LoginName] [varchar](32) NOT NULL,
	[Password] [varchar](32) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_ADMINUSER] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户状态 1:有效 2:冻结' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminUser', @level2type=N'COLUMN',@level2name=N'Status'
GO
INSERT [dbo].[AdminUser] ([UserId], [UserName], [LoginName], [Password], [Status]) VALUES (N'1D7896AA627F48E58F684F1B218A22B2', N'管理员', N'admin', N'332bd91d573b9a37b3911afaba3cbcb6', 1)
INSERT [dbo].[AdminUser] ([UserId], [UserName], [LoginName], [Password], [Status]) VALUES (N'f9dd2cd8b92d4475ad7c8fc6cbbba38c', N'MU_user', N'MU_user', N'90a3d5f8549bd96c5baf5519eb0650d1', 1)
/****** Object:  Table [dbo].[AdminRoleAuthorityRelated]    Script Date: 01/15/2020 17:52:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminRoleAuthorityRelated](
	[RelateId] [varchar](32) NOT NULL,
	[RoleId] [varchar](32) NOT NULL,
	[AuthorityId] [varchar](32) NOT NULL,
 CONSTRAINT [PK_ADMINROLEAUTHORITYRELATED] PRIMARY KEY CLUSTERED 
(
	[RelateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'00bb7a956abf4278b628c7b8e9546f73', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'6cf2733726dc43dcbf94dc9f25719bc7')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'016265622a6a47359aaf18cd849af494', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'33d26fc6556e44e0894a01d56a4a4c3b')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'04f2a5a5d0504a25bde2cea9d8f76303', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'269544264a384f7e90223261efccd4f9')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'0684ac4f9033484a9f4dc006e34bfd2e', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'bce3cae7195344ccbebacb7221ba910a')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'093c8d48dfc44ccd92d5076b770fdc92', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'e91e449af2ae42729f09ac899d790d43')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'10f71ba817d74c38839d0a7b7a2b59bb', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'ffef1f3b674046c795075d7b14be6fc7')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'1292ade686a74209a5cecbc4060b61ed', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'738420680ff046269382d9e7ac812c34')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'16cdc6f3be32455a9349859c56e25d86', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'33d26fc6556e44e0894a01d56a4a4c3b')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'1be7d1c7611a43d89765008d5f67f276', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'e36fc7461024435283adfb82bd7ec2ea')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'1c31403a3e144caabd7f0a1ee8cec59c', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'efe463c20a3d4d43b8993957c06e0260')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'1d032954d73a4de8b966aec71f5c4161', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'2041bf20459247b2bc6af89d7eff845e')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'2577eeebb993443783f5f85a520de2c7', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'ffef1f3b674046c795075d7b14be6fc7')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'2ca642bb6e084eed83725c414faf4679', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'a0bd2fba291642beb6bfb054c6d95ec1')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'2da80a64e07649668395d2ec4a16b174', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'c90707d5485b41d0b333202e1504c4a2')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'2e7421ea87b14077a46cdf6b6f88011d', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'2f4c7a36ace84573ad8bf9afa2447c33')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'2ef2b293d8e8437993752dcf9af0e63b', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'4be0d6368d364afc8ae4aa49862e149f')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'3030ff5497be46438d3e318581a2dd6d', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'350b94598a6846b781b052b7d54ffd84')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'309a189f74ac44149d21eb094acc956a', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'6cf2733726dc43dcbf94dc9f25719bc7')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'315196674f544d75ab7549b0e4379320', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'1419ee6c38d64d17882dd078d7d03cc9')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'363a509010ce4278a8606df51eed3315', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'932a962babd24e1c8e70e2daca2fa597')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'394f27058823440cbaf62fdfdc499872', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'0f58f350be254b04a6017c3800498065')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'3bcad61579c14fd992dfd1fe04a6130e', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'0ac4b89130814a26a4a67d65df7d5663')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'3ea51d3fbc5a4953875cab496484cc2d', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'd01b28ff72a94900ada7bf5faa2ff6e3')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'42884a0f254240ae9f434bfd43362c52', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'f320fbdcdf2442a882531af96502a57f')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'439386a332a24766823c478593411a5a', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'b133683d8c4b422ebd2fe1aa9977894e')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'453f6dd175c44e16a07db3edf2b4f050', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'f7cad047dc17418d84844206bc1b9f9b')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'4546737c1e3a44ed86fb4f3d25b5aea8', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'426ea1700fff4dcda875f7a206209df9')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'45984df02140425bb013211fb55324aa', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'4be0d6368d364afc8ae4aa49862e149f')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'4bee01f0b023487c80d89dc115b88199', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'e5f37ed3da0611e9bbd400cfe051204c')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'540c5c0539ed47dca0475550fc9f0c90', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'611b178866834e29b5c3d43375573389')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'579e404129214fd19128f2dc3bbf19c2', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'0a33334f9ade42b884d5b2958fe7f2ed')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'5860109ab1334a6eb149010aaccbf882', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'ac4eba5f44ee4d1fbd20db41ae53efa3')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'59e043b1357d411787c35c5227f03cb9', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'36fc28cf328843b5abf53b13b7ffed31')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'5de76e3eca1e4c61b95d37ad525af800', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'ada8a989fc1946328e357cccc5e4242b')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'5f2e16d4f50b4d2a9446731f0bb2cc56', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'65fb611c7774499c8bb8b75b04af5095')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'5fb834931f74463f8c5904b225091ea0', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'29dccbcc069d4357ac40e3818366beb5')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'63a59c16469040a6a5011bc17347cde2', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'2f4c7a36ace84573ad8bf9afa2447c33')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'6b830e8cb21f4d8d901eeef0de0153fc', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'6126d12960b84a499672eb69bd97b92c')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'6efa392fe8c34ec68a5836f2c1921e6e', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'c1a4e2b6b4c94f47a82caf1ad378c3ef')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'71e77509ed464fe7ba750e4ec207e712', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'2041bf20459247b2bc6af89d7eff845e')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'771d453a3c664376bd3e4e580e635871', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'a0f16e2e42fe4cc2be3b91ae9aeea8f7')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'776ce758c82b4cef9af8ffa1f7fc40df', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'932a962babd24e1c8e70e2daca2fa597')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'77c6bc8e38f14ad29fef5e8eac02e644', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'ae4492a0b4434e22ba0f8309ae051f46')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'7bef1008398f49bb85d5ec6668819cbc', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'bce3cae7195344ccbebacb7221ba910a')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'7e0dd87430164591b1ab96fc8d484218', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'6729d90e094c4071aa0550dd2dfa3ad7')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'80317bbc96234dd7b9c2f9528a5729ee', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'e36fc7461024435283adfb82bd7ec2ea')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'81117b811ad84e4bb3f4a786ae023e80', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'cba228d765414ae1a5364fa5535a8187')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'843b5c973526418aa5c6faf5719ff249', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'ba6515ef3c114a189cd64f8408881a7b')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'88c8a22e05974b178e79e91f4f38a938', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'f5b6de4830a84cc09af573b988ecd563')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'8a73ea17e9c14df68d1f20f874acd5cb', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'5aa144aabdde4e838275d7724e1789ce')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'8f2680ca00f245508ec163bb4eef217c', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'36fc28cf328843b5abf53b13b7ffed31')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'8fe3be0595c646409952144a08fb00ff', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'e820f6079a3a43558b05bc96d06478ce')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'9366919b40424be0a2a6eedc41169e9a', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'30d3180389f644d1afae0b7c13fed708')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'95bb585b49484152b7bc46c121fbb203', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'289da294ee8e4ea4bcb7959e50691f1b')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'95c608bd91124d419a828dc31e9eeb3f', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'0682fd9f4e0d4493a2fd0fd1fb2ea4cb')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'984844c202234ee4a022b0f4295ecbbb', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'2b4b2c9eda0711e9bbd400cfe051204c')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'9f7e3f43b47e4043a3453d342b888d5c', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'acc7e356b60b414ca51f4d3a5178f657')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'a8b326788c694f17b12f0822ff112a93', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'3f1fa1cc1559478ebf94c683004a9fe1')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'ad9abcba9ea74f768551c0b31a11ec91', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'e91e449af2ae42729f09ac899d790d43')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'b519950fd240458bbdd025ba7a71835d', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'b3e9aae3d86a4ba8a33cfd689e958c35')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'b611e50080c6489ba41b6bf5de9268b6', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'f5a00956521d49498b0510dc67bf46e2')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'b81c1cea897d409e9648047c2f70fd10', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'b400109ae3b848188a149a5917ca0166')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'bfcfcc92484044e69a3834a12d5b7960', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'd01b28ff72a94900ada7bf5faa2ff6e3')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'c5011982ab104d9b9623680f4b4d59a2', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'2b4b2c9eda0711e9bbd400cfe051204c')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'c6e3620123f940a4b3d2f3975e7609d3', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'ba6515ef3c114a189cd64f8408881a7b')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'c7a06bf8486841e1925f644b14bc1c1d', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'c38f6ad775ea4d768354ad6e8eedf99f')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'c81e1f111348400cb27b44b18fa4a9ae', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'5aa144aabdde4e838275d7724e1789ce')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'c8d0abecdc6b4f67adf24f1f1f5081ac', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'e5f37ed3da0611e9bbd400cfe051204c')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'ce323614a7e94482b702ba752a71a33d', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'1bfcb228951e4d638e47f03215e67dbf')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'd03aacdaea034ce5b8f5e3e21383cba2', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'f320fbdcdf2442a882531af96502a57f')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'd43f9acc50b44c2cb6c17cb7c4118d9f', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'f81c02384a1e478dbb62275cf03fe23d')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'd7aaacf4ef5c4e9cbf891f7d6caf9e68', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'29dccbcc069d4357ac40e3818366beb5')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'dd8c2042bb324bc5a811cff91e8358fe', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'ec11e2b0032940afb30ce9d919a88754')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'dd9443f084c9458882c5f4cde748b535', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'1bfcb228951e4d638e47f03215e67dbf')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'ddd200a8cbb84e999ecda2206f880fa3', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'f81c02384a1e478dbb62275cf03fe23d')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'e44d499c80774fb3994590218687a153', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'f5a00956521d49498b0510dc67bf46e2')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'e812d8087269489e9f8684173668bb47', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'dfdaf76bd5264494937fc5d7121befed')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'e89c2c607ea04327811abc6c7688edf5', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'f09921c95d3d4074bff4f473c5a40be8')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'eafe9b78b4a14fb4ba8c668aaab76bf9', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'611b178866834e29b5c3d43375573389')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'ec32690a88284428b2723182d717a716', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'f5b6de4830a84cc09af573b988ecd563')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'ec38ff890bd84f4cb2dc582f3d04a6f2', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'c90707d5485b41d0b333202e1504c4a2')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'ec5c3732995b48bfb24d820b3f2be037', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'fe062ac45fe44b3daa9ba0b1d9983811')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'efc7a2bd48d3470eb200547047996291', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'289da294ee8e4ea4bcb7959e50691f1b')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'f0ef5f0bad85473c88ad488d3c0c5a36', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'c38f6ad775ea4d768354ad6e8eedf99f')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'f22cb88481214e7b8b9dab68b04fa6fc', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'0ac4b89130814a26a4a67d65df7d5663')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'f41fc765aea0414591cea40de0b7333f', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'b3e9aae3d86a4ba8a33cfd689e958c35')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'f487b534ab534c8db53cd45d964d0f7b', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'c1a4e2b6b4c94f47a82caf1ad378c3ef')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'f56b2522b740483a88e319116c06ef04', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'f09921c95d3d4074bff4f473c5a40be8')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'f5d74f282e2e4aad8b68211302748479', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'65fb611c7774499c8bb8b75b04af5095')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'f68951c745db4c5bae5738b4fd8f6548', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'a0bd2fba291642beb6bfb054c6d95ec1')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'f850127cdc8149bf95b10fbc6cf80643', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'30d3180389f644d1afae0b7c13fed708')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'f95cd36d44c24b81ab486a265d42d4b8', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'ae4492a0b4434e22ba0f8309ae051f46')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'fcfc55bbc825483eb369ba9b6bf31a38', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'269544264a384f7e90223261efccd4f9')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'fd1399f7784746e29c82de0b9d8c0f32', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'323d81af8f67429fb6618d96cd7a6d27')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'fd5fe634a09e494dafb4bcb07c773c34', N'05f4a67a88fc4d7a8719a6de3b1f1053', N'0682fd9f4e0d4493a2fd0fd1fb2ea4cb')
INSERT [dbo].[AdminRoleAuthorityRelated] ([RelateId], [RoleId], [AuthorityId]) VALUES (N'ff687c9131bc4a3d80c735158a3ff5e0', N'ab82f2d582e14feeb4d791e2d6deb4d4', N'738420680ff046269382d9e7ac812c34')
/****** Object:  Table [dbo].[AdminRole]    Script Date: 01/15/2020 17:52:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminRole](
	[RoleId] [varchar](32) NOT NULL,
	[RoleName] [varchar](32) NOT NULL,
 CONSTRAINT [PK_ADMINROLE] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AdminRole] ([RoleId], [RoleName]) VALUES (N'05f4a67a88fc4d7a8719a6de3b1f1053', N'超级管理员')
INSERT [dbo].[AdminRole] ([RoleId], [RoleName]) VALUES (N'ab82f2d582e14feeb4d791e2d6deb4d4', N'运营人员')
/****** Object:  Table [dbo].[AdminAuthority]    Script Date: 01/15/2020 17:52:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminAuthority](
	[AuthorityId] [varchar](32) NOT NULL,
	[Type] [int] NOT NULL,
	[SourceAuthorityId] [varchar](32) NOT NULL,
	[ParentAuthorityId] [varchar](32) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_ADMINAUTHORITY] PRIMARY KEY CLUSTERED 
(
	[AuthorityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:菜单  2:按钮' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminAuthority', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:有效  2:无效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminAuthority', @level2type=N'COLUMN',@level2name=N'Status'
GO
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'0a33334f9ade42b884d5b2958fe7f2ed', 1, N'201198248d5042d88caa7170493cf06d', N'bd5b02dcd45a41dfa1895342f45bfeea', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'0f58f350be254b04a6017c3800498065', 2, N'595096900cdb44fcad55b97b870cfa5c', N'26d494514fc34e6baf002a3e46d3c907', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'1419ee6c38d64d17882dd078d7d03cc9', 1, N'7254cf35dfa84940b959a0932d1376d9', N'70e42ac3c1bc4c15a8ccffd29b81951b', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'269544264a384f7e90223261efccd4f9', 1, N'4cace82f79934f4e82fa76f86240bb5a', N'b951417498c642b6ad09387db54d213c', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'289da294ee8e4ea4bcb7959e50691f1b', 1, N'b951417498c642b6ad09387db54d213c', N'', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'2f4c7a36ace84573ad8bf9afa2447c33', 2, N'a7a119de49844c588ca10a7ead332b12', N'299e88252f734c77896b8a30463e3981', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'30d3180389f644d1afae0b7c13fed708', 1, N'ee919944bb4b4b3fa070f2b126ebef61', N'', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'323d81af8f67429fb6618d96cd7a6d27', 2, N'f04154a10982475f802ed04f1c6619ba', N'26d494514fc34e6baf002a3e46d3c907', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'33d26fc6556e44e0894a01d56a4a4c3b', 1, N'dd6f0d67ca2046579e5e497cc251c5f4', N'70e42ac3c1bc4c15a8ccffd29b81951b', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'350b94598a6846b781b052b7d54ffd84', 2, N'3ef8bbf2e8a840f3b1ec4eee25b32afe', N'ae375ab455d54202af13f2dfd9aea8ab', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'36fc28cf328843b5abf53b13b7ffed31', 2, N'd656ef4ed9094e43a2aa195d1657c7b4', N'299e88252f734c77896b8a30463e3981', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'3f1fa1cc1559478ebf94c683004a9fe1', 1, N'bd5b02dcd45a41dfa1895342f45bfeea', N'', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'426ea1700fff4dcda875f7a206209df9', 2, N'5145ea552b9c4ea086ae84ebbfbcf738', N'26d494514fc34e6baf002a3e46d3c907', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'4be0d6368d364afc8ae4aa49862e149f', 1, N'70e42ac3c1bc4c15a8ccffd29b81951b', N'', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'5aa144aabdde4e838275d7724e1789ce', 2, N'61ca7d7bda0a44559082b28d89df4e28', N'4cace82f79934f4e82fa76f86240bb5a', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'6126d12960b84a499672eb69bd97b92c', 2, N'd2a868f1786846d78dbee2b55d1945f9', N'ae375ab455d54202af13f2dfd9aea8ab', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'65fb611c7774499c8bb8b75b04af5095', 2, N'81943b32ac46491594de11e31b4c462e', N'4cace82f79934f4e82fa76f86240bb5a', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'6729d90e094c4071aa0550dd2dfa3ad7', 2, N'c93b125329c049d7ae570d3167a4168f', N'ae375ab455d54202af13f2dfd9aea8ab', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'6cf2733726dc43dcbf94dc9f25719bc7', 2, N'f42cc7276f1849c48959c96d2675bb2c', N'4cace82f79934f4e82fa76f86240bb5a', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'932a962babd24e1c8e70e2daca2fa597', 1, N'299e88252f734c77896b8a30463e3981', N'b951417498c642b6ad09387db54d213c', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'a0bd2fba291642beb6bfb054c6d95ec1', 1, N'2808aa26521d48e6aaca987c4e940a4c', N'ee919944bb4b4b3fa070f2b126ebef61', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'a0f16e2e42fe4cc2be3b91ae9aeea8f7', 2, N'f10f44249d85464b99803f1d102ea84c', N'4202fca1393a450d9a41c0aa42d9723f', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'ac4eba5f44ee4d1fbd20db41ae53efa3', 1, N'26d494514fc34e6baf002a3e46d3c907', N'bd5b02dcd45a41dfa1895342f45bfeea', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'acc7e356b60b414ca51f4d3a5178f657', 2, N'21995a19ed7d487598a4464c19853997', N'ae375ab455d54202af13f2dfd9aea8ab', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'ada8a989fc1946328e357cccc5e4242b', 1, N'4202fca1393a450d9a41c0aa42d9723f', N'bd5b02dcd45a41dfa1895342f45bfeea', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'b133683d8c4b422ebd2fe1aa9977894e', 1, N'c9992db5cfbd4ddeb34e7502424518b5', N'bd5b02dcd45a41dfa1895342f45bfeea', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'b3e9aae3d86a4ba8a33cfd689e958c35', 1, N'f1ea3cc2ef9e41fd9e8bde63a3eca58a', N'ee919944bb4b4b3fa070f2b126ebef61', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'b400109ae3b848188a149a5917ca0166', 1, N'35e5d3036e4e4d6c8abae414c7b77e53', N'bd5b02dcd45a41dfa1895342f45bfeea', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'c90707d5485b41d0b333202e1504c4a2', 1, N'a50b2eaebe6c448aabc54bb264220718', N'ee919944bb4b4b3fa070f2b126ebef61', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'cba228d765414ae1a5364fa5535a8187', 2, N'63beb80ac750449a9ced102cd947fa9c', N'4202fca1393a450d9a41c0aa42d9723f', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'd01b28ff72a94900ada7bf5faa2ff6e3', 2, N'539d1865f3f3469385d9d6777cbcb13f', N'dd6f0d67ca2046579e5e497cc251c5f4', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'dfdaf76bd5264494937fc5d7121befed', 1, N'ae375ab455d54202af13f2dfd9aea8ab', N'bd5b02dcd45a41dfa1895342f45bfeea', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'e36fc7461024435283adfb82bd7ec2ea', 2, N'9b2e38f8a340438f9ece13b5ebf576f1', N'299e88252f734c77896b8a30463e3981', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'e820f6079a3a43558b05bc96d06478ce', 2, N'c8fd07c817bc4760987c4ae64c8e7c42', N'4202fca1393a450d9a41c0aa42d9723f', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'ec11e2b0032940afb30ce9d919a88754', 2, N'fcd426bf235f48408973e2444b3d7e79', N'4202fca1393a450d9a41c0aa42d9723f', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'efe463c20a3d4d43b8993957c06e0260', 2, N'164aead4c1a24f99a3f6e54692b9c0d6', N'26d494514fc34e6baf002a3e46d3c907', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'f5a00956521d49498b0510dc67bf46e2', 2, N'ecf537d67bd54ceea6906e21533ee6e3', N'dd6f0d67ca2046579e5e497cc251c5f4', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'f7cad047dc17418d84844206bc1b9f9b', 2, N'5d3993c0993041ee8c684b5cc21fe499', N'7254cf35dfa84940b959a0932d1376d9', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'f81c02384a1e478dbb62275cf03fe23d', 2, N'50be26335dc2439aa6ef5a4eb28368b1', N'dd6f0d67ca2046579e5e497cc251c5f4', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'fe062ac45fe44b3daa9ba0b1d9983811', 2, N'a3e2a9951dff4744ab6b65596bd4b63b', N'26d494514fc34e6baf002a3e46d3c907', 1)
INSERT [dbo].[AdminAuthority] ([AuthorityId], [Type], [SourceAuthorityId], [ParentAuthorityId], [Status]) VALUES (N'ffef1f3b674046c795075d7b14be6fc7', 1, N'2f362834c8174397be4180fa97bb7ac9', N'70e42ac3c1bc4c15a8ccffd29b81951b', 1)
