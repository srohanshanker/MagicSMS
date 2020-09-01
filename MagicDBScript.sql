USE [MagicSMDB]
GO
/****** Object:  Table [dbo].[District]    Script Date: 9/1/2020 3:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Desc] [varchar](150) NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollment]    Script Date: 9/1/2020 3:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[SchoolYear] [varchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 9/1/2020 3:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[StudentId] [int] NULL,
	[SchoolYear] [varchar](50) NULL,
	[ServiceName] [varchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ServiceId] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 9/1/2020 3:14:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[DistrictId] [int] NULL,
	[FirstName] [varchar](150) NULL,
	[LastName] [varchar](100) NULL,
	[DOB] [datetime] NULL,
	[SSN] [varchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([Id], [Desc]) VALUES (1, N'Noida')
INSERT [dbo].[District] ([Id], [Desc]) VALUES (2, N'Meerut')
INSERT [dbo].[District] ([Id], [Desc]) VALUES (3, N'Hapur')
SET IDENTITY_INSERT [dbo].[District] OFF
GO
SET IDENTITY_INSERT [dbo].[Enrollment] ON 

INSERT [dbo].[Enrollment] ([Id], [StudentId], [SchoolYear], [StartDate], [EndDate]) VALUES (1, 1, N'2019', CAST(N'2020-07-01T00:00:00.000' AS DateTime), CAST(N'2021-06-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Enrollment] ([Id], [StudentId], [SchoolYear], [StartDate], [EndDate]) VALUES (2, 2, N'2015', CAST(N'2020-07-01T00:00:00.000' AS DateTime), CAST(N'2021-06-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Enrollment] ([Id], [StudentId], [SchoolYear], [StartDate], [EndDate]) VALUES (3, 3, N'2010', CAST(N'2010-04-01T00:00:00.000' AS DateTime), CAST(N'2011-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Enrollment] ([Id], [StudentId], [SchoolYear], [StartDate], [EndDate]) VALUES (4, 4, N'1995', CAST(N'1995-04-01T00:00:00.000' AS DateTime), CAST(N'1996-03-31T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Enrollment] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([StudentId], [SchoolYear], [ServiceName], [StartDate], [EndDate], [ServiceId]) VALUES (1, N'2019', N'Service One', CAST(N'2020-06-30T00:00:00.000' AS DateTime), CAST(N'2021-06-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Service] ([StudentId], [SchoolYear], [ServiceName], [StartDate], [EndDate], [ServiceId]) VALUES (2, N'2015', N'Service Two', CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2021-03-31T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Service] ([StudentId], [SchoolYear], [ServiceName], [StartDate], [EndDate], [ServiceId]) VALUES (3, N'2010', N'Service Three', CAST(N'2010-04-01T00:00:00.000' AS DateTime), CAST(N'2011-03-31T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Service] ([StudentId], [SchoolYear], [ServiceName], [StartDate], [EndDate], [ServiceId]) VALUES (4, N'1995', N'Service Four', CAST(N'1995-04-01T00:00:00.000' AS DateTime), CAST(N'1996-03-31T00:00:00.000' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentId], [DistrictId], [FirstName], [LastName], [DOB], [SSN]) VALUES (1, 1, N'Rohan', NULL, CAST(N'2020-08-31T11:39:11.277' AS DateTime), N'S345456423')
INSERT [dbo].[Student] ([StudentId], [DistrictId], [FirstName], [LastName], [DOB], [SSN]) VALUES (2, 2, N'Pawan', N'Kumar', CAST(N'2020-08-31T11:39:11.277' AS DateTime), N'S987656453')
INSERT [dbo].[Student] ([StudentId], [DistrictId], [FirstName], [LastName], [DOB], [SSN]) VALUES (3, 1, N'Ajay', N'Kumar', CAST(N'2010-05-23T00:00:00.000' AS DateTime), N'AJ5678965')
INSERT [dbo].[Student] ([StudentId], [DistrictId], [FirstName], [LastName], [DOB], [SSN]) VALUES (4, 2, N'Paul', N'Vincet', CAST(N'1990-04-13T00:00:00.000' AS DateTime), N'PV7652134')
INSERT [dbo].[Student] ([StudentId], [DistrictId], [FirstName], [LastName], [DOB], [SSN]) VALUES (5, 3, N'Radhe', N'Singh', CAST(N'1983-07-07T00:00:00.000' AS DateTime), N'RS3244326')
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
