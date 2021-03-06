USE [FootBallManager]
GO
/****** Object:  User [##MS_PolicyEventProcessingLogin##]    Script Date: 12/17/2021 12:58:10 PM ******/
CREATE USER [##MS_PolicyEventProcessingLogin##] FOR LOGIN [##MS_PolicyEventProcessingLogin##] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [##MS_AgentSigningCertificate##]    Script Date: 12/17/2021 12:58:10 PM ******/
CREATE USER [##MS_AgentSigningCertificate##] FOR LOGIN [##MS_AgentSigningCertificate##]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [varchar](30) NULL,
	[Password] [varchar](30) NULL,
	[DisplayName] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [int] NOT NULL,
	[name] [varchar](150) NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [bit] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Skill]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Skill](
	[eid] [int] NOT NULL,
	[sid] [int] NOT NULL,
 CONSTRAINT [PK_Employee_Skill] PRIMARY KEY CLUSTERED 
(
	[eid] ASC,
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enemy]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enemy](
	[e_id] [int] IDENTITY(1,1) NOT NULL,
	[e_name] [nvarchar](255) NULL,
	[e_phone] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[e_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fund]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fund](
	[f_id] [int] IDENTITY(1,1) NOT NULL,
	[f_in] [float] NULL,
	[f_out] [float] NULL,
	[f_description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[f_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[goal]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[goal](
	[g_id] [int] IDENTITY(1,1) NOT NULL,
	[playerId] [int] NULL,
	[g_goal] [int] NULL,
	[g_description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[g_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[imageTeam]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imageTeam](
	[i_id] [int] IDENTITY(1,1) NOT NULL,
	[i_data] [varbinary](max) NULL,
	[playerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[i_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[member]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member](
	[m_id] [int] IDENTITY(1,1) NOT NULL,
	[m_name] [nvarchar](255) NULL,
	[m_address] [nvarchar](255) NULL,
	[m_dob] [date] NULL,
	[m_phone] [varchar](10) NULL,
	[m_shirtNumber] [int] NULL,
	[m_exp] [float] NULL,
	[p_status] [bit] NULL,
	[roleId] [int] NULL,
	[positionId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[m_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pitch]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pitch](
	[pt_id] [int] IDENTITY(1,1) NOT NULL,
	[pt_name] [nvarchar](255) NULL,
	[pt_phone] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[pt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[position]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[position](
	[p_id] [int] IDENTITY(1,1) NOT NULL,
	[p_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roleMember]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roleMember](
	[r_id] [int] IDENTITY(1,1) NOT NULL,
	[r_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ProductCode] [varchar](10) NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[Unit] [varchar](10) NULL,
	[price] [float] NULL,
	[image] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedule]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule](
	[s_id] [int] IDENTITY(1,1) NOT NULL,
	[enemyId] [int] NULL,
	[pitchId] [int] NULL,
	[s_status] [bit] NULL,
	[s_result] [varchar](10) NULL,
	[s_description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[id] [int] NOT NULL,
	[name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] NOT NULL,
	[name] [varchar](150) NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [bit] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Skill]    Script Date: 12/17/2021 12:58:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Skill](
	[suid] [int] NOT NULL,
	[skid] [int] NOT NULL,
 CONSTRAINT [PK_Student_Skill] PRIMARY KEY CLUSTERED 
(
	[suid] ASC,
	[skid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[member] ADD  DEFAULT ((1)) FOR [p_status]
GO
ALTER TABLE [dbo].[schedule] ADD  DEFAULT ((0)) FOR [s_status]
GO
ALTER TABLE [dbo].[Employee_Skill]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Skill_Employee] FOREIGN KEY([eid])
REFERENCES [dbo].[Employee] ([id])
GO
ALTER TABLE [dbo].[Employee_Skill] CHECK CONSTRAINT [FK_Employee_Skill_Employee]
GO
ALTER TABLE [dbo].[Employee_Skill]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Skill_Skill] FOREIGN KEY([sid])
REFERENCES [dbo].[Skill] ([id])
GO
ALTER TABLE [dbo].[Employee_Skill] CHECK CONSTRAINT [FK_Employee_Skill_Skill]
GO
ALTER TABLE [dbo].[goal]  WITH CHECK ADD FOREIGN KEY([playerId])
REFERENCES [dbo].[member] ([m_id])
GO
ALTER TABLE [dbo].[imageTeam]  WITH CHECK ADD FOREIGN KEY([playerId])
REFERENCES [dbo].[member] ([m_id])
GO
ALTER TABLE [dbo].[member]  WITH CHECK ADD FOREIGN KEY([positionId])
REFERENCES [dbo].[position] ([p_id])
GO
ALTER TABLE [dbo].[member]  WITH CHECK ADD FOREIGN KEY([roleId])
REFERENCES [dbo].[roleMember] ([r_id])
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD FOREIGN KEY([enemyId])
REFERENCES [dbo].[enemy] ([e_id])
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD FOREIGN KEY([pitchId])
REFERENCES [dbo].[pitch] ([pt_id])
GO
ALTER TABLE [dbo].[Student_Skill]  WITH CHECK ADD  CONSTRAINT [FK_Student_Skill_Skill] FOREIGN KEY([skid])
REFERENCES [dbo].[Skill] ([id])
GO
ALTER TABLE [dbo].[Student_Skill] CHECK CONSTRAINT [FK_Student_Skill_Skill]
GO
ALTER TABLE [dbo].[Student_Skill]  WITH CHECK ADD  CONSTRAINT [FK_Student_Skill_Student] FOREIGN KEY([suid])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Student_Skill] CHECK CONSTRAINT [FK_Student_Skill_Student]
GO
