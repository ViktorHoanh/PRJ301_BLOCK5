USE [master]
GO
/****** Object:  Database [FinalProject]    Script Date: 23/08/2022 8:09:06 AM ******/
CREATE DATABASE [FinalProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FinalProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FinalProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FinalProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FinalProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FinalProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FinalProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FinalProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FinalProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FinalProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FinalProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FinalProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [FinalProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FinalProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FinalProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FinalProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FinalProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FinalProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FinalProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FinalProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FinalProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FinalProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FinalProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FinalProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FinalProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FinalProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FinalProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FinalProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FinalProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FinalProject] SET RECOVERY FULL 
GO
ALTER DATABASE [FinalProject] SET  MULTI_USER 
GO
ALTER DATABASE [FinalProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FinalProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FinalProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FinalProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FinalProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FinalProject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FinalProject', N'ON'
GO
ALTER DATABASE [FinalProject] SET QUERY_STORE = OFF
GO
USE [FinalProject]
GO
/****** Object:  Table [dbo].[Absent]    Script Date: 23/08/2022 8:09:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Absent](
	[abid] [int] NOT NULL,
	[eid] [int] NOT NULL,
	[fromdate] [date] NOT NULL,
	[todate] [date] NOT NULL,
	[reason] [nvarchar](150) NULL,
	[isCheck] [bit] NULL,
 CONSTRAINT [PK_Absent] PRIMARY KEY CLUSTERED 
(
	[abid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 23/08/2022 8:09:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[eid] [int] NOT NULL,
	[ename] [nvarchar](150) NOT NULL,
	[pid] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 23/08/2022 8:09:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[pid] [nvarchar](150) NOT NULL,
	[pname] [nvarchar](150) NOT NULL,
	[basesalary] [float] NOT NULL,
	[allowancesalary] [float] NOT NULL,
	[insurance] [float] NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timesheet]    Script Date: 23/08/2022 8:09:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timesheet](
	[tid] [int] NOT NULL,
	[eid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Timesheet] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Absent] ([abid], [eid], [fromdate], [todate], [reason], [isCheck]) VALUES (1, 2, CAST(N'2022-01-01' AS Date), CAST(N'2022-01-01' AS Date), N'Đi du lịch cùng công ty', 1)
INSERT [dbo].[Absent] ([abid], [eid], [fromdate], [todate], [reason], [isCheck]) VALUES (2, 2, CAST(N'2022-02-01' AS Date), CAST(N'2022-02-05' AS Date), N'Tết nguyên đán', 1)
INSERT [dbo].[Absent] ([abid], [eid], [fromdate], [todate], [reason], [isCheck]) VALUES (3, 3, CAST(N'2022-01-01' AS Date), CAST(N'2022-01-01' AS Date), N'Đi du lịch cùng công ty', 1)
INSERT [dbo].[Absent] ([abid], [eid], [fromdate], [todate], [reason], [isCheck]) VALUES (4, 3, CAST(N'2022-02-01' AS Date), CAST(N'2022-02-05' AS Date), N'Tết nguyên đán', 1)
INSERT [dbo].[Absent] ([abid], [eid], [fromdate], [todate], [reason], [isCheck]) VALUES (5, 4, CAST(N'2022-01-01' AS Date), CAST(N'2022-01-01' AS Date), N'chơiĐi du lịch cùng công ty', 1)
INSERT [dbo].[Absent] ([abid], [eid], [fromdate], [todate], [reason], [isCheck]) VALUES (6, 4, CAST(N'2022-02-01' AS Date), CAST(N'2022-02-05' AS Date), N'Tết nguyên đán', 1)
INSERT [dbo].[Absent] ([abid], [eid], [fromdate], [todate], [reason], [isCheck]) VALUES (7, 5, CAST(N'2022-01-01' AS Date), CAST(N'2022-01-01' AS Date), N'Đi du lịch cùng công ty', 1)
INSERT [dbo].[Absent] ([abid], [eid], [fromdate], [todate], [reason], [isCheck]) VALUES (8, 5, CAST(N'2022-02-01' AS Date), CAST(N'2022-02-05' AS Date), N'Tết nguyên đán', 1)
INSERT [dbo].[Absent] ([abid], [eid], [fromdate], [todate], [reason], [isCheck]) VALUES (9, 6, CAST(N'2022-01-01' AS Date), CAST(N'2022-01-01' AS Date), N'Đi du lịch cùng công ty', 1)
INSERT [dbo].[Absent] ([abid], [eid], [fromdate], [todate], [reason], [isCheck]) VALUES (10, 6, CAST(N'2022-02-01' AS Date), CAST(N'2022-02-05' AS Date), N'Tết nguyên đán', 1)
INSERT [dbo].[Absent] ([abid], [eid], [fromdate], [todate], [reason], [isCheck]) VALUES (11, 7, CAST(N'2022-01-01' AS Date), CAST(N'2022-01-01' AS Date), N'Đi du lịch cùng công ty', 1)
INSERT [dbo].[Absent] ([abid], [eid], [fromdate], [todate], [reason], [isCheck]) VALUES (12, 7, CAST(N'2022-02-01' AS Date), CAST(N'2022-02-05' AS Date), N'Tết nguyên đán', 1)
INSERT [dbo].[Absent] ([abid], [eid], [fromdate], [todate], [reason], [isCheck]) VALUES (13, 7, CAST(N'2022-01-02' AS Date), CAST(N'2022-01-31' AS Date), N'Nghỉ thai sản', 1)
INSERT [dbo].[Absent] ([abid], [eid], [fromdate], [todate], [reason], [isCheck]) VALUES (14, 6, CAST(N'2022-03-08' AS Date), CAST(N'2022-03-12' AS Date), N'Chăm con ốm', 1)
INSERT [dbo].[Absent] ([abid], [eid], [fromdate], [todate], [reason], [isCheck]) VALUES (15, 5, CAST(N'2022-03-10' AS Date), CAST(N'2022-03-11' AS Date), N'Có việc riêng cần giải quyết', 0)
GO
INSERT [dbo].[Employee] ([eid], [ename], [pid]) VALUES (1, N'Đào Văn Chỉnh', N'GD')
INSERT [dbo].[Employee] ([eid], [ename], [pid]) VALUES (2, N'Nguyễn Thị Năm', N'KT')
INSERT [dbo].[Employee] ([eid], [ename], [pid]) VALUES (3, N'Đào Đình Cử', N'LX')
INSERT [dbo].[Employee] ([eid], [ename], [pid]) VALUES (4, N'Bùi Thị Chi', N'BH')
INSERT [dbo].[Employee] ([eid], [ename], [pid]) VALUES (5, N'Nguyễn Ngọc Quý', N'KD')
INSERT [dbo].[Employee] ([eid], [ename], [pid]) VALUES (6, N'Hoàng Thị Hải Ánh', N'NV')
INSERT [dbo].[Employee] ([eid], [ename], [pid]) VALUES (7, N'Nguyễn Thị Ngọc Ánh', N'NV')
GO
INSERT [dbo].[Position] ([pid], [pname], [basesalary], [allowancesalary], [insurance]) VALUES (N'BH', N'Bán hàng', 4194400, 970000, 440412)
INSERT [dbo].[Position] ([pid], [pname], [basesalary], [allowancesalary], [insurance]) VALUES (N'GD', N'Giám đốc', 4500000, 970000, 0)
INSERT [dbo].[Position] ([pid], [pname], [basesalary], [allowancesalary], [insurance]) VALUES (N'KD', N'Kinh doanh', 4200000, 970000, 441000)
INSERT [dbo].[Position] ([pid], [pname], [basesalary], [allowancesalary], [insurance]) VALUES (N'KT', N'Kế toán', 4194400, 970000, 440412)
INSERT [dbo].[Position] ([pid], [pname], [basesalary], [allowancesalary], [insurance]) VALUES (N'LX', N'Lái xe', 4194400, 970000, 440412)
INSERT [dbo].[Position] ([pid], [pname], [basesalary], [allowancesalary], [insurance]) VALUES (N'NV', N'Nhân viên', 4200000, 970000, 441000)
GO
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (1, 1, CAST(N'2022-01-01' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (2, 1, CAST(N'2022-01-02' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (3, 1, CAST(N'2022-01-03' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (4, 1, CAST(N'2022-01-04' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (5, 1, CAST(N'2022-01-05' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (6, 1, CAST(N'2022-01-06' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (7, 1, CAST(N'2022-01-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (8, 1, CAST(N'2022-01-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (9, 1, CAST(N'2022-01-09' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (10, 1, CAST(N'2022-01-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (11, 1, CAST(N'2022-01-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (12, 1, CAST(N'2022-01-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (13, 1, CAST(N'2022-01-13' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (14, 1, CAST(N'2022-01-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (15, 1, CAST(N'2022-01-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (16, 1, CAST(N'2022-01-16' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (17, 1, CAST(N'2022-01-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (18, 1, CAST(N'2022-01-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (19, 1, CAST(N'2022-01-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (20, 1, CAST(N'2022-01-20' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (21, 1, CAST(N'2022-01-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (22, 1, CAST(N'2022-01-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (23, 1, CAST(N'2022-01-23' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (24, 1, CAST(N'2022-01-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (25, 1, CAST(N'2022-01-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (26, 1, CAST(N'2022-01-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (27, 1, CAST(N'2022-01-27' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (28, 1, CAST(N'2022-01-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (29, 1, CAST(N'2022-01-29' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (30, 1, CAST(N'2022-01-30' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (31, 1, CAST(N'2022-01-31' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (32, 2, CAST(N'2022-01-01' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (33, 2, CAST(N'2022-01-02' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (34, 2, CAST(N'2022-01-03' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (35, 2, CAST(N'2022-01-04' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (36, 2, CAST(N'2022-01-05' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (37, 2, CAST(N'2022-01-06' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (38, 2, CAST(N'2022-01-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (39, 2, CAST(N'2022-01-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (40, 2, CAST(N'2022-01-09' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (41, 2, CAST(N'2022-01-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (42, 2, CAST(N'2022-01-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (43, 2, CAST(N'2022-01-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (44, 2, CAST(N'2022-01-13' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (45, 2, CAST(N'2022-01-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (46, 2, CAST(N'2022-01-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (47, 2, CAST(N'2022-01-16' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (48, 2, CAST(N'2022-01-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (49, 2, CAST(N'2022-01-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (50, 2, CAST(N'2022-01-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (51, 2, CAST(N'2022-01-20' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (52, 2, CAST(N'2022-01-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (53, 2, CAST(N'2022-01-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (54, 2, CAST(N'2022-01-23' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (55, 2, CAST(N'2022-01-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (56, 2, CAST(N'2022-01-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (57, 2, CAST(N'2022-01-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (58, 2, CAST(N'2022-01-27' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (59, 2, CAST(N'2022-01-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (60, 2, CAST(N'2022-01-29' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (61, 2, CAST(N'2022-01-30' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (62, 2, CAST(N'2022-01-31' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (63, 3, CAST(N'2022-01-01' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (64, 3, CAST(N'2022-01-02' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (65, 3, CAST(N'2022-01-03' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (66, 3, CAST(N'2022-01-04' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (67, 3, CAST(N'2022-01-05' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (68, 3, CAST(N'2022-01-06' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (69, 3, CAST(N'2022-01-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (70, 3, CAST(N'2022-01-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (71, 3, CAST(N'2022-01-09' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (72, 3, CAST(N'2022-01-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (73, 3, CAST(N'2022-01-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (74, 3, CAST(N'2022-01-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (75, 3, CAST(N'2022-01-13' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (76, 3, CAST(N'2022-01-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (77, 3, CAST(N'2022-01-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (78, 3, CAST(N'2022-01-16' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (79, 3, CAST(N'2022-01-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (80, 3, CAST(N'2022-01-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (81, 3, CAST(N'2022-01-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (82, 3, CAST(N'2022-01-20' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (83, 3, CAST(N'2022-01-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (84, 3, CAST(N'2022-01-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (85, 3, CAST(N'2022-01-23' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (86, 3, CAST(N'2022-01-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (87, 3, CAST(N'2022-01-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (88, 3, CAST(N'2022-01-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (89, 3, CAST(N'2022-01-27' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (90, 3, CAST(N'2022-01-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (91, 3, CAST(N'2022-01-29' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (92, 3, CAST(N'2022-01-30' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (93, 3, CAST(N'2022-01-31' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (94, 4, CAST(N'2022-01-01' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (95, 4, CAST(N'2022-01-02' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (96, 4, CAST(N'2022-01-03' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (97, 4, CAST(N'2022-01-04' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (98, 4, CAST(N'2022-01-05' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (99, 4, CAST(N'2022-01-06' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (100, 4, CAST(N'2022-01-07' AS Date), 1)
GO
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (101, 4, CAST(N'2022-01-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (102, 4, CAST(N'2022-01-09' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (103, 4, CAST(N'2022-01-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (104, 4, CAST(N'2022-01-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (105, 4, CAST(N'2022-01-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (106, 4, CAST(N'2022-01-13' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (107, 4, CAST(N'2022-01-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (108, 4, CAST(N'2022-01-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (109, 4, CAST(N'2022-01-16' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (110, 4, CAST(N'2022-01-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (111, 4, CAST(N'2022-01-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (112, 4, CAST(N'2022-01-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (113, 4, CAST(N'2022-01-20' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (114, 4, CAST(N'2022-01-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (115, 4, CAST(N'2022-01-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (116, 4, CAST(N'2022-01-23' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (117, 4, CAST(N'2022-01-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (118, 4, CAST(N'2022-01-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (119, 4, CAST(N'2022-01-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (120, 4, CAST(N'2022-01-27' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (121, 4, CAST(N'2022-01-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (122, 4, CAST(N'2022-01-29' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (123, 4, CAST(N'2022-01-30' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (124, 4, CAST(N'2022-01-31' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (125, 5, CAST(N'2022-01-01' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (126, 5, CAST(N'2022-01-02' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (127, 5, CAST(N'2022-01-03' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (128, 5, CAST(N'2022-01-04' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (129, 5, CAST(N'2022-01-05' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (130, 5, CAST(N'2022-01-06' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (131, 5, CAST(N'2022-01-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (132, 5, CAST(N'2022-01-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (133, 5, CAST(N'2022-01-09' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (134, 5, CAST(N'2022-01-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (135, 5, CAST(N'2022-01-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (136, 5, CAST(N'2022-01-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (137, 5, CAST(N'2022-01-13' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (138, 5, CAST(N'2022-01-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (139, 5, CAST(N'2022-01-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (140, 5, CAST(N'2022-01-16' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (141, 5, CAST(N'2022-01-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (142, 5, CAST(N'2022-01-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (143, 5, CAST(N'2022-01-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (144, 5, CAST(N'2022-01-20' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (145, 5, CAST(N'2022-01-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (146, 5, CAST(N'2022-01-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (147, 5, CAST(N'2022-01-23' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (148, 5, CAST(N'2022-01-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (149, 5, CAST(N'2022-01-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (150, 5, CAST(N'2022-01-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (151, 5, CAST(N'2022-01-27' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (152, 5, CAST(N'2022-01-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (153, 5, CAST(N'2022-01-29' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (154, 5, CAST(N'2022-01-30' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (155, 5, CAST(N'2022-01-31' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (156, 6, CAST(N'2022-01-01' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (157, 6, CAST(N'2022-01-02' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (158, 6, CAST(N'2022-01-03' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (159, 6, CAST(N'2022-01-04' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (160, 6, CAST(N'2022-01-05' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (161, 6, CAST(N'2022-01-06' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (162, 6, CAST(N'2022-01-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (163, 6, CAST(N'2022-01-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (164, 6, CAST(N'2022-01-09' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (165, 6, CAST(N'2022-01-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (166, 6, CAST(N'2022-01-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (167, 6, CAST(N'2022-01-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (168, 6, CAST(N'2022-01-13' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (169, 6, CAST(N'2022-01-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (170, 6, CAST(N'2022-01-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (171, 6, CAST(N'2022-01-16' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (172, 6, CAST(N'2022-01-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (173, 6, CAST(N'2022-01-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (174, 6, CAST(N'2022-01-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (175, 6, CAST(N'2022-01-20' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (176, 6, CAST(N'2022-01-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (177, 6, CAST(N'2022-01-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (178, 6, CAST(N'2022-01-23' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (179, 6, CAST(N'2022-01-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (180, 6, CAST(N'2022-01-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (181, 6, CAST(N'2022-01-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (182, 6, CAST(N'2022-01-27' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (183, 6, CAST(N'2022-01-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (184, 6, CAST(N'2022-01-29' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (185, 6, CAST(N'2022-01-30' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (186, 6, CAST(N'2022-01-31' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (187, 7, CAST(N'2022-01-01' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (188, 7, CAST(N'2022-01-02' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (189, 7, CAST(N'2022-01-03' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (190, 7, CAST(N'2022-01-04' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (191, 7, CAST(N'2022-01-05' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (192, 7, CAST(N'2022-01-06' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (193, 7, CAST(N'2022-01-07' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (194, 7, CAST(N'2022-01-08' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (195, 7, CAST(N'2022-01-09' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (196, 7, CAST(N'2022-01-10' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (197, 7, CAST(N'2022-01-11' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (198, 7, CAST(N'2022-01-12' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (199, 7, CAST(N'2022-01-13' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (200, 7, CAST(N'2022-01-14' AS Date), 2)
GO
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (201, 7, CAST(N'2022-01-15' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (202, 7, CAST(N'2022-01-16' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (203, 7, CAST(N'2022-01-17' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (204, 7, CAST(N'2022-01-18' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (205, 7, CAST(N'2022-01-19' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (206, 7, CAST(N'2022-01-20' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (207, 7, CAST(N'2022-01-21' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (208, 7, CAST(N'2022-01-22' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (209, 7, CAST(N'2022-01-23' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (210, 7, CAST(N'2022-01-24' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (211, 7, CAST(N'2022-01-25' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (212, 7, CAST(N'2022-01-26' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (213, 7, CAST(N'2022-01-27' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (214, 7, CAST(N'2022-01-28' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (215, 7, CAST(N'2022-01-29' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (216, 7, CAST(N'2022-01-30' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (217, 7, CAST(N'2022-01-31' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (218, 1, CAST(N'2022-02-01' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (219, 1, CAST(N'2022-02-02' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (220, 1, CAST(N'2022-02-03' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (221, 1, CAST(N'2022-02-04' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (222, 1, CAST(N'2022-02-05' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (223, 1, CAST(N'2022-02-06' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (224, 1, CAST(N'2022-02-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (225, 1, CAST(N'2022-02-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (226, 1, CAST(N'2022-02-09' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (227, 1, CAST(N'2022-02-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (228, 1, CAST(N'2022-02-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (229, 1, CAST(N'2022-02-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (230, 1, CAST(N'2022-02-13' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (231, 1, CAST(N'2022-02-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (232, 1, CAST(N'2022-02-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (233, 1, CAST(N'2022-02-16' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (234, 1, CAST(N'2022-02-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (235, 1, CAST(N'2022-02-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (236, 1, CAST(N'2022-02-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (237, 1, CAST(N'2022-02-20' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (238, 1, CAST(N'2022-02-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (239, 1, CAST(N'2022-02-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (240, 1, CAST(N'2022-02-23' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (241, 1, CAST(N'2022-02-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (242, 1, CAST(N'2022-02-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (243, 1, CAST(N'2022-02-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (244, 1, CAST(N'2022-02-27' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (245, 1, CAST(N'2022-02-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (246, 2, CAST(N'2022-02-01' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (247, 2, CAST(N'2022-02-02' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (248, 2, CAST(N'2022-02-03' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (249, 2, CAST(N'2022-02-04' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (250, 2, CAST(N'2022-02-05' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (251, 2, CAST(N'2022-02-06' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (252, 2, CAST(N'2022-02-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (253, 2, CAST(N'2022-02-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (254, 2, CAST(N'2022-02-09' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (255, 2, CAST(N'2022-02-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (256, 2, CAST(N'2022-02-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (257, 2, CAST(N'2022-02-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (258, 2, CAST(N'2022-02-13' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (259, 2, CAST(N'2022-02-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (260, 2, CAST(N'2022-02-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (261, 2, CAST(N'2022-02-16' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (262, 2, CAST(N'2022-02-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (263, 2, CAST(N'2022-02-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (264, 2, CAST(N'2022-02-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (265, 2, CAST(N'2022-02-20' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (266, 2, CAST(N'2022-02-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (267, 2, CAST(N'2022-02-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (268, 2, CAST(N'2022-02-23' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (269, 2, CAST(N'2022-02-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (270, 2, CAST(N'2022-02-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (271, 2, CAST(N'2022-02-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (272, 2, CAST(N'2022-02-27' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (273, 2, CAST(N'2022-02-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (274, 3, CAST(N'2022-02-01' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (275, 3, CAST(N'2022-02-02' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (276, 3, CAST(N'2022-02-03' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (277, 3, CAST(N'2022-02-04' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (278, 3, CAST(N'2022-02-05' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (279, 3, CAST(N'2022-02-06' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (280, 3, CAST(N'2022-02-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (281, 3, CAST(N'2022-02-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (282, 3, CAST(N'2022-02-09' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (283, 3, CAST(N'2022-02-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (284, 3, CAST(N'2022-02-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (285, 3, CAST(N'2022-02-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (286, 3, CAST(N'2022-02-13' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (287, 3, CAST(N'2022-02-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (288, 3, CAST(N'2022-02-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (289, 3, CAST(N'2022-02-16' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (290, 3, CAST(N'2022-02-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (291, 3, CAST(N'2022-02-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (292, 3, CAST(N'2022-02-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (293, 3, CAST(N'2022-02-20' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (294, 3, CAST(N'2022-02-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (295, 3, CAST(N'2022-02-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (296, 3, CAST(N'2022-02-23' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (297, 3, CAST(N'2022-02-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (298, 3, CAST(N'2022-02-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (299, 3, CAST(N'2022-02-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (300, 3, CAST(N'2022-02-27' AS Date), 4)
GO
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (301, 3, CAST(N'2022-02-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (302, 4, CAST(N'2022-02-01' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (303, 4, CAST(N'2022-02-02' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (304, 4, CAST(N'2022-02-03' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (305, 4, CAST(N'2022-02-04' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (306, 4, CAST(N'2022-02-05' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (307, 4, CAST(N'2022-02-06' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (308, 4, CAST(N'2022-02-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (309, 4, CAST(N'2022-02-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (310, 4, CAST(N'2022-02-09' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (311, 4, CAST(N'2022-02-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (312, 4, CAST(N'2022-02-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (313, 4, CAST(N'2022-02-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (314, 4, CAST(N'2022-02-13' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (315, 4, CAST(N'2022-02-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (316, 4, CAST(N'2022-02-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (317, 4, CAST(N'2022-02-16' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (318, 4, CAST(N'2022-02-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (319, 4, CAST(N'2022-02-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (320, 4, CAST(N'2022-02-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (321, 4, CAST(N'2022-02-20' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (322, 4, CAST(N'2022-02-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (323, 4, CAST(N'2022-02-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (324, 4, CAST(N'2022-02-23' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (325, 4, CAST(N'2022-02-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (326, 4, CAST(N'2022-02-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (327, 4, CAST(N'2022-02-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (328, 4, CAST(N'2022-02-27' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (329, 4, CAST(N'2022-02-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (330, 5, CAST(N'2022-02-01' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (331, 5, CAST(N'2022-02-02' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (332, 5, CAST(N'2022-02-03' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (333, 5, CAST(N'2022-02-04' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (334, 5, CAST(N'2022-02-05' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (335, 5, CAST(N'2022-02-06' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (336, 5, CAST(N'2022-02-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (337, 5, CAST(N'2022-02-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (338, 5, CAST(N'2022-02-09' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (339, 5, CAST(N'2022-02-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (340, 5, CAST(N'2022-02-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (341, 5, CAST(N'2022-02-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (342, 5, CAST(N'2022-02-13' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (343, 5, CAST(N'2022-02-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (344, 5, CAST(N'2022-02-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (345, 5, CAST(N'2022-02-16' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (346, 5, CAST(N'2022-02-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (347, 5, CAST(N'2022-02-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (348, 5, CAST(N'2022-02-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (349, 5, CAST(N'2022-02-20' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (350, 5, CAST(N'2022-02-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (351, 5, CAST(N'2022-02-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (352, 5, CAST(N'2022-02-23' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (353, 5, CAST(N'2022-02-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (354, 5, CAST(N'2022-02-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (355, 5, CAST(N'2022-02-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (356, 5, CAST(N'2022-02-27' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (357, 5, CAST(N'2022-02-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (358, 6, CAST(N'2022-02-01' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (359, 6, CAST(N'2022-02-02' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (360, 6, CAST(N'2022-02-03' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (361, 6, CAST(N'2022-02-04' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (362, 6, CAST(N'2022-02-05' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (363, 6, CAST(N'2022-02-06' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (364, 6, CAST(N'2022-02-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (365, 6, CAST(N'2022-02-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (366, 6, CAST(N'2022-02-09' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (367, 6, CAST(N'2022-02-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (368, 6, CAST(N'2022-02-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (369, 6, CAST(N'2022-02-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (370, 6, CAST(N'2022-02-13' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (371, 6, CAST(N'2022-02-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (372, 6, CAST(N'2022-02-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (373, 6, CAST(N'2022-02-16' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (374, 6, CAST(N'2022-02-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (375, 6, CAST(N'2022-02-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (376, 6, CAST(N'2022-02-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (377, 6, CAST(N'2022-02-20' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (378, 6, CAST(N'2022-02-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (379, 6, CAST(N'2022-02-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (380, 6, CAST(N'2022-02-23' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (381, 6, CAST(N'2022-02-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (382, 6, CAST(N'2022-02-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (383, 6, CAST(N'2022-02-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (384, 6, CAST(N'2022-02-27' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (385, 6, CAST(N'2022-02-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (386, 7, CAST(N'2022-02-01' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (387, 7, CAST(N'2022-02-02' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (388, 7, CAST(N'2022-02-03' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (389, 7, CAST(N'2022-02-04' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (390, 7, CAST(N'2022-02-05' AS Date), 2)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (391, 7, CAST(N'2022-02-06' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (392, 7, CAST(N'2022-02-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (393, 7, CAST(N'2022-02-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (394, 7, CAST(N'2022-02-09' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (395, 7, CAST(N'2022-02-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (396, 7, CAST(N'2022-02-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (397, 7, CAST(N'2022-02-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (398, 7, CAST(N'2022-02-13' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (399, 7, CAST(N'2022-02-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (400, 7, CAST(N'2022-02-15' AS Date), 1)
GO
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (401, 7, CAST(N'2022-02-16' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (402, 7, CAST(N'2022-02-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (403, 7, CAST(N'2022-02-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (404, 7, CAST(N'2022-02-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (405, 7, CAST(N'2022-02-20' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (406, 7, CAST(N'2022-02-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (407, 7, CAST(N'2022-02-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (408, 7, CAST(N'2022-02-23' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (409, 7, CAST(N'2022-02-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (410, 7, CAST(N'2022-02-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (411, 7, CAST(N'2022-02-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (412, 7, CAST(N'2022-02-27' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (413, 7, CAST(N'2022-02-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (414, 1, CAST(N'2022-03-01' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (415, 1, CAST(N'2022-03-02' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (416, 1, CAST(N'2022-03-03' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (417, 1, CAST(N'2022-03-04' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (418, 1, CAST(N'2022-03-05' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (419, 1, CAST(N'2022-03-06' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (420, 1, CAST(N'2022-03-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (421, 1, CAST(N'2022-03-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (422, 1, CAST(N'2022-03-09' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (423, 1, CAST(N'2022-03-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (424, 1, CAST(N'2022-03-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (425, 1, CAST(N'2022-03-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (426, 1, CAST(N'2022-03-13' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (427, 1, CAST(N'2022-03-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (428, 1, CAST(N'2022-03-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (429, 1, CAST(N'2022-03-16' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (430, 1, CAST(N'2022-03-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (431, 1, CAST(N'2022-03-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (432, 1, CAST(N'2022-03-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (433, 1, CAST(N'2022-03-20' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (434, 1, CAST(N'2022-03-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (435, 1, CAST(N'2022-03-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (436, 1, CAST(N'2022-03-23' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (437, 1, CAST(N'2022-03-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (438, 1, CAST(N'2022-03-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (439, 1, CAST(N'2022-03-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (440, 1, CAST(N'2022-03-27' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (441, 1, CAST(N'2022-03-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (442, 1, CAST(N'2022-03-29' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (443, 1, CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (444, 1, CAST(N'2022-03-31' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (445, 2, CAST(N'2022-03-01' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (446, 2, CAST(N'2022-03-02' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (447, 2, CAST(N'2022-03-03' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (448, 2, CAST(N'2022-03-04' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (449, 2, CAST(N'2022-03-05' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (450, 2, CAST(N'2022-03-06' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (451, 2, CAST(N'2022-03-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (452, 2, CAST(N'2022-03-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (453, 2, CAST(N'2022-03-09' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (454, 2, CAST(N'2022-03-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (455, 2, CAST(N'2022-03-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (456, 2, CAST(N'2022-03-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (457, 2, CAST(N'2022-03-13' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (458, 2, CAST(N'2022-03-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (459, 2, CAST(N'2022-03-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (460, 2, CAST(N'2022-03-16' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (461, 2, CAST(N'2022-03-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (462, 2, CAST(N'2022-03-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (463, 2, CAST(N'2022-03-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (464, 2, CAST(N'2022-03-20' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (465, 2, CAST(N'2022-03-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (466, 2, CAST(N'2022-03-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (467, 2, CAST(N'2022-03-23' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (468, 2, CAST(N'2022-03-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (469, 2, CAST(N'2022-03-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (470, 2, CAST(N'2022-03-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (471, 2, CAST(N'2022-03-27' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (472, 2, CAST(N'2022-03-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (473, 2, CAST(N'2022-03-29' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (474, 2, CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (475, 2, CAST(N'2022-03-31' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (476, 3, CAST(N'2022-03-01' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (477, 3, CAST(N'2022-03-02' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (478, 3, CAST(N'2022-03-03' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (479, 3, CAST(N'2022-03-04' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (480, 3, CAST(N'2022-03-05' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (481, 3, CAST(N'2022-03-06' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (482, 3, CAST(N'2022-03-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (483, 3, CAST(N'2022-03-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (484, 3, CAST(N'2022-03-09' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (485, 3, CAST(N'2022-03-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (486, 3, CAST(N'2022-03-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (487, 3, CAST(N'2022-03-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (488, 3, CAST(N'2022-03-13' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (489, 3, CAST(N'2022-03-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (490, 3, CAST(N'2022-03-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (491, 3, CAST(N'2022-03-16' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (492, 3, CAST(N'2022-03-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (493, 3, CAST(N'2022-03-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (494, 3, CAST(N'2022-03-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (495, 3, CAST(N'2022-03-20' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (496, 3, CAST(N'2022-03-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (497, 3, CAST(N'2022-03-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (498, 3, CAST(N'2022-03-23' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (499, 3, CAST(N'2022-03-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (500, 3, CAST(N'2022-03-25' AS Date), 1)
GO
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (501, 3, CAST(N'2022-03-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (502, 3, CAST(N'2022-03-27' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (503, 3, CAST(N'2022-03-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (504, 3, CAST(N'2022-03-29' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (505, 3, CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (506, 3, CAST(N'2022-03-31' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (507, 4, CAST(N'2022-03-01' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (508, 4, CAST(N'2022-03-02' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (509, 4, CAST(N'2022-03-03' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (510, 4, CAST(N'2022-03-04' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (511, 4, CAST(N'2022-03-05' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (512, 4, CAST(N'2022-03-06' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (513, 4, CAST(N'2022-03-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (514, 4, CAST(N'2022-03-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (515, 4, CAST(N'2022-03-09' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (516, 4, CAST(N'2022-03-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (517, 4, CAST(N'2022-03-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (518, 4, CAST(N'2022-03-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (519, 4, CAST(N'2022-03-13' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (520, 4, CAST(N'2022-03-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (521, 4, CAST(N'2022-03-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (522, 4, CAST(N'2022-03-16' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (523, 4, CAST(N'2022-03-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (524, 4, CAST(N'2022-03-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (525, 4, CAST(N'2022-03-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (526, 4, CAST(N'2022-03-20' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (527, 4, CAST(N'2022-03-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (528, 4, CAST(N'2022-03-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (529, 4, CAST(N'2022-03-23' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (530, 4, CAST(N'2022-03-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (531, 4, CAST(N'2022-03-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (532, 4, CAST(N'2022-03-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (533, 4, CAST(N'2022-03-27' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (534, 4, CAST(N'2022-03-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (535, 4, CAST(N'2022-03-29' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (536, 4, CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (537, 4, CAST(N'2022-03-31' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (538, 5, CAST(N'2022-03-01' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (539, 5, CAST(N'2022-03-02' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (540, 5, CAST(N'2022-03-03' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (541, 5, CAST(N'2022-03-04' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (542, 5, CAST(N'2022-03-05' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (543, 5, CAST(N'2022-03-06' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (544, 5, CAST(N'2022-03-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (545, 5, CAST(N'2022-03-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (546, 5, CAST(N'2022-03-09' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (547, 5, CAST(N'2022-03-10' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (548, 5, CAST(N'2022-03-11' AS Date), 4)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (549, 5, CAST(N'2022-03-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (550, 5, CAST(N'2022-03-13' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (551, 5, CAST(N'2022-03-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (552, 5, CAST(N'2022-03-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (553, 5, CAST(N'2022-03-16' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (554, 5, CAST(N'2022-03-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (555, 5, CAST(N'2022-03-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (556, 5, CAST(N'2022-03-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (557, 5, CAST(N'2022-03-20' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (558, 5, CAST(N'2022-03-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (559, 5, CAST(N'2022-03-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (560, 5, CAST(N'2022-03-23' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (561, 5, CAST(N'2022-03-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (562, 5, CAST(N'2022-03-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (563, 5, CAST(N'2022-03-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (564, 5, CAST(N'2022-03-27' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (565, 5, CAST(N'2022-03-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (566, 5, CAST(N'2022-03-29' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (567, 5, CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (568, 5, CAST(N'2022-03-31' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (569, 6, CAST(N'2022-03-01' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (570, 6, CAST(N'2022-03-02' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (571, 6, CAST(N'2022-03-03' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (572, 6, CAST(N'2022-03-04' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (573, 6, CAST(N'2022-03-05' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (574, 6, CAST(N'2022-03-06' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (575, 6, CAST(N'2022-03-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (576, 6, CAST(N'2022-03-08' AS Date), 3)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (577, 6, CAST(N'2022-03-09' AS Date), 3)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (578, 6, CAST(N'2022-03-10' AS Date), 3)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (579, 6, CAST(N'2022-03-11' AS Date), 3)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (580, 6, CAST(N'2022-03-12' AS Date), 3)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (581, 6, CAST(N'2022-03-13' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (582, 6, CAST(N'2022-03-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (583, 6, CAST(N'2022-03-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (584, 6, CAST(N'2022-03-16' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (585, 6, CAST(N'2022-03-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (586, 6, CAST(N'2022-03-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (587, 6, CAST(N'2022-03-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (588, 6, CAST(N'2022-03-20' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (589, 6, CAST(N'2022-03-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (590, 6, CAST(N'2022-03-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (591, 6, CAST(N'2022-03-23' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (592, 6, CAST(N'2022-03-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (593, 6, CAST(N'2022-03-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (594, 6, CAST(N'2022-03-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (595, 6, CAST(N'2022-03-27' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (596, 6, CAST(N'2022-03-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (597, 6, CAST(N'2022-03-29' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (598, 6, CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (599, 6, CAST(N'2022-03-31' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (600, 7, CAST(N'2022-03-01' AS Date), 1)
GO
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (601, 7, CAST(N'2022-03-02' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (602, 7, CAST(N'2022-03-03' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (603, 7, CAST(N'2022-03-04' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (604, 7, CAST(N'2022-03-05' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (605, 7, CAST(N'2022-03-06' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (606, 7, CAST(N'2022-03-07' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (607, 7, CAST(N'2022-03-08' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (608, 7, CAST(N'2022-03-09' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (609, 7, CAST(N'2022-03-10' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (610, 7, CAST(N'2022-03-11' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (611, 7, CAST(N'2022-03-12' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (612, 7, CAST(N'2022-03-13' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (613, 7, CAST(N'2022-03-14' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (614, 7, CAST(N'2022-03-15' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (615, 7, CAST(N'2022-03-16' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (616, 7, CAST(N'2022-03-17' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (617, 7, CAST(N'2022-03-18' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (618, 7, CAST(N'2022-03-19' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (619, 7, CAST(N'2022-03-20' AS Date), 5)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (620, 7, CAST(N'2022-03-21' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (621, 7, CAST(N'2022-03-22' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (622, 7, CAST(N'2022-03-23' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (623, 7, CAST(N'2022-03-24' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (624, 7, CAST(N'2022-03-25' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (625, 7, CAST(N'2022-03-26' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (626, 7, CAST(N'2022-03-27' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (627, 7, CAST(N'2022-03-28' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (628, 7, CAST(N'2022-03-29' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (629, 7, CAST(N'2022-03-30' AS Date), 1)
INSERT [dbo].[Timesheet] ([tid], [eid], [date], [status]) VALUES (630, 7, CAST(N'2022-03-31' AS Date), 1)
GO
ALTER TABLE [dbo].[Absent]  WITH CHECK ADD  CONSTRAINT [FK_Absent_Employee] FOREIGN KEY([eid])
REFERENCES [dbo].[Employee] ([eid])
GO
ALTER TABLE [dbo].[Absent] CHECK CONSTRAINT [FK_Absent_Employee]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position] FOREIGN KEY([pid])
REFERENCES [dbo].[Position] ([pid])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position]
GO
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Timesheet_Employee] FOREIGN KEY([eid])
REFERENCES [dbo].[Employee] ([eid])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Timesheet_Employee]
GO
USE [master]
GO
ALTER DATABASE [FinalProject] SET  READ_WRITE 
GO
