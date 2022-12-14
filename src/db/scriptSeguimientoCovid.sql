USE [master]
GO
/****** Object:  Database [SeguimientoCovid]    Script Date: 24/11/2022 20:17:15 ******/
CREATE DATABASE [SeguimientoCovid]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SeguimientoCovid', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS2019\MSSQL\DATA\SeguimientoCovid.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SeguimientoCovid_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS2019\MSSQL\DATA\SeguimientoCovid_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SeguimientoCovid] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SeguimientoCovid].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SeguimientoCovid] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET ARITHABORT OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SeguimientoCovid] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SeguimientoCovid] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SeguimientoCovid] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SeguimientoCovid] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SeguimientoCovid] SET  MULTI_USER 
GO
ALTER DATABASE [SeguimientoCovid] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SeguimientoCovid] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SeguimientoCovid] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SeguimientoCovid] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SeguimientoCovid] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SeguimientoCovid] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SeguimientoCovid] SET QUERY_STORE = OFF
GO
USE [SeguimientoCovid]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 24/11/2022 20:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[ID_Alumno] [int] IDENTITY(1,1) NOT NULL,
	[Matricula] [varchar](20) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Ap_pat] [varchar](100) NOT NULL,
	[Ap_mat] [varchar](100) NOT NULL,
	[Genero] [varchar](10) NOT NULL,
	[Correo] [varchar](200) NULL,
	[Celular] [varchar](20) NOT NULL,
	[F_EdoCivil] [tinyint] NOT NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[ID_Alumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlumnoGrupo]    Script Date: 24/11/2022 20:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlumnoGrupo](
	[ID_AlumnGru] [int] IDENTITY(1,1) NOT NULL,
	[F_Alumn] [int] NOT NULL,
	[F_GruCuat] [int] NOT NULL,
	[Extra] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
 CONSTRAINT [PK_AlumnoGrupo] PRIMARY KEY CLUSTERED 
(
	[ID_AlumnGru] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 24/11/2022 20:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[Id_Carrera] [int] IDENTITY(1,1) NOT NULL,
	[nombreCarrera] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[Id_Carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuatrimestre]    Script Date: 24/11/2022 20:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuatrimestre](
	[id_Cuatrimestre] [smallint] IDENTITY(1,1) NOT NULL,
	[Periodo] [varchar](30) NOT NULL,
	[Anio] [int] NOT NULL,
	[Inicio] [date] NULL,
	[Fin] [date] NULL,
	[Extra] [varchar](50) NULL,
 CONSTRAINT [PK_Cuatrimestre] PRIMARY KEY CLUSTERED 
(
	[id_Cuatrimestre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoCivil]    Script Date: 24/11/2022 20:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoCivil](
	[Id_Edo] [tinyint] IDENTITY(1,1) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
	[Extra] [varchar](50) NULL,
 CONSTRAINT [PK_EstadoCivil] PRIMARY KEY CLUSTERED 
(
	[Id_Edo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 24/11/2022 20:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[Id_grupo] [smallint] IDENTITY(1,1) NOT NULL,
	[Grado] [tinyint] NOT NULL,
	[Letra] [varchar](1) NOT NULL,
	[extra] [varchar](50) NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY CLUSTERED 
(
	[Id_grupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoCuatrimestre]    Script Date: 24/11/2022 20:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoCuatrimestre](
	[Id_GruCuat] [int] IDENTITY(1,1) NOT NULL,
	[F_ProgEd] [tinyint] NOT NULL,
	[F_Grupo] [smallint] NOT NULL,
	[F_Cuatri] [smallint] NOT NULL,
	[Turno] [varchar](50) NOT NULL,
	[Modalidad] [varchar](50) NOT NULL,
	[Extra] [varchar](50) NULL,
 CONSTRAINT [PK_GrupoCuatrimestre] PRIMARY KEY CLUSTERED 
(
	[Id_GruCuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 24/11/2022 20:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medico](
	[ID_Dr] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[App] [varchar](100) NOT NULL,
	[Apm] [varchar](100) NULL,
	[Telefono] [varchar](20) NOT NULL,
	[correo] [varchar](150) NOT NULL,
	[horario] [varchar](50) NULL,
	[especialidad] [varchar](150) NULL,
	[extra] [varchar](150) NULL,
 CONSTRAINT [PK_Medico] PRIMARY KEY CLUSTERED 
(
	[ID_Dr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PositivoAlumno]    Script Date: 24/11/2022 20:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositivoAlumno](
	[ID_posAl] [int] IDENTITY(1,1) NOT NULL,
	[FechaConfirmado] [date] NOT NULL,
	[Comprobacion] [varchar](200) NOT NULL,
	[Antecedentes] [varchar](200) NULL,
	[Riesgo] [varchar](100) NOT NULL,
	[NumContagio] [tinyint] NOT NULL,
	[Extra] [varchar](150) NULL,
	[F_Alumno] [int] NOT NULL,
 CONSTRAINT [PK_PositivoAlumno] PRIMARY KEY CLUSTERED 
(
	[ID_posAl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PositivoProfe]    Script Date: 24/11/2022 20:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositivoProfe](
	[Id_posProfe] [int] IDENTITY(1,1) NOT NULL,
	[FechaConfirmado] [date] NOT NULL,
	[Comprobacion] [varchar](200) NOT NULL,
	[Antecedentes] [varchar](200) NULL,
	[Riesgo] [varchar](100) NOT NULL,
	[NumContaio] [tinyint] NOT NULL,
	[Extra] [varchar](150) NULL,
	[F_Profe] [int] NOT NULL,
	[imagen] [varchar](150) NULL,
	[discpacidad] [int] NULL,
 CONSTRAINT [PK_PositivoProfe] PRIMARY KEY CLUSTERED 
(
	[Id_posProfe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfeGRupo]    Script Date: 24/11/2022 20:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfeGRupo](
	[ID_ProfeGru] [int] IDENTITY(1,1) NOT NULL,
	[F_Profe] [int] NOT NULL,
	[F_GruCuat] [int] NOT NULL,
	[Extra] [varchar](50) NULL,
	[Extra2] [varchar](50) NULL,
 CONSTRAINT [PK_ProfeGRupo] PRIMARY KEY CLUSTERED 
(
	[ID_ProfeGru] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 24/11/2022 20:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesor](
	[ID_Profe] [int] IDENTITY(1,1) NOT NULL,
	[RegistroEmpleado] [int] NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Ap_pat] [varchar](100) NOT NULL,
	[Ap_Mat] [varchar](100) NOT NULL,
	[Genero] [varchar](25) NOT NULL,
	[Categoria] [varchar](50) NOT NULL,
	[Correo] [varchar](200) NULL,
	[Celular] [varchar](20) NULL,
	[F_EdoCivil] [tinyint] NOT NULL,
 CONSTRAINT [PK_Profesor] PRIMARY KEY CLUSTERED 
(
	[ID_Profe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramaEducativo]    Script Date: 24/11/2022 20:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramaEducativo](
	[Id_pe] [tinyint] IDENTITY(1,1) NOT NULL,
	[ProgramaEd] [varchar](150) NOT NULL,
	[F_Carrera] [int] NOT NULL,
	[Extra] [varchar](50) NULL,
 CONSTRAINT [PK_ProgramaEducativo] PRIMARY KEY CLUSTERED 
(
	[Id_pe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeguimientoAL]    Script Date: 24/11/2022 20:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeguimientoAL](
	[Id_Seguimiento] [int] IDENTITY(1,1) NOT NULL,
	[F_PositivoAL] [int] NOT NULL,
	[F_medico] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Form_Comunica] [varchar](50) NOT NULL,
	[Reporte] [varchar](250) NOT NULL,
	[Entrevista] [varchar](200) NULL,
	[Extra] [varchar](150) NULL,
 CONSTRAINT [PK_SeguimientoAL] PRIMARY KEY CLUSTERED 
(
	[Id_Seguimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeguimientoPRO]    Script Date: 24/11/2022 20:17:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeguimientoPRO](
	[id_Segui] [int] IDENTITY(1,1) NOT NULL,
	[F_positivoProfe] [int] NOT NULL,
	[F_medico] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Form_Comunica] [varchar](50) NOT NULL,
	[Reporte] [varchar](250) NOT NULL,
	[Entrevista] [varchar](200) NULL,
	[Extra] [varchar](150) NULL,
	[imagen] [varchar](150) NULL,
 CONSTRAINT [PK_SeguimientoPRO] PRIMARY KEY CLUSTERED 
(
	[id_Segui] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Alumno] ON 

INSERT [dbo].[Alumno] ([ID_Alumno], [Matricula], [Nombre], [Ap_pat], [Ap_mat], [Genero], [Correo], [Celular], [F_EdoCivil]) VALUES (1, N'21323', N'Sergio', N'Carrido', N'Romero', N'Mujer', N'sergio@gmail.com', N'1212332', 1)
SET IDENTITY_INSERT [dbo].[Alumno] OFF
GO
SET IDENTITY_INSERT [dbo].[Carrera] ON 

INSERT [dbo].[Carrera] ([Id_Carrera], [nombreCarrera]) VALUES (1, N'Tics      ')
SET IDENTITY_INSERT [dbo].[Carrera] OFF
GO
SET IDENTITY_INSERT [dbo].[Cuatrimestre] ON 

INSERT [dbo].[Cuatrimestre] ([id_Cuatrimestre], [Periodo], [Anio], [Inicio], [Fin], [Extra]) VALUES (1, N'Segundo Cuatrimestre', 200, CAST(N'2022-08-10' AS Date), CAST(N'2022-08-10' AS Date), N'')
SET IDENTITY_INSERT [dbo].[Cuatrimestre] OFF
GO
SET IDENTITY_INSERT [dbo].[EstadoCivil] ON 

INSERT [dbo].[EstadoCivil] ([Id_Edo], [Estado], [Extra]) VALUES (1, N'Soltero', NULL)
INSERT [dbo].[EstadoCivil] ([Id_Edo], [Estado], [Extra]) VALUES (2, N'Casado', NULL)
INSERT [dbo].[EstadoCivil] ([Id_Edo], [Estado], [Extra]) VALUES (4, N'Divorciado', NULL)
INSERT [dbo].[EstadoCivil] ([Id_Edo], [Estado], [Extra]) VALUES (5, N'unión Libre', NULL)
INSERT [dbo].[EstadoCivil] ([Id_Edo], [Estado], [Extra]) VALUES (6, N'Viudo', NULL)
INSERT [dbo].[EstadoCivil] ([Id_Edo], [Estado], [Extra]) VALUES (12, N'raro', NULL)
SET IDENTITY_INSERT [dbo].[EstadoCivil] OFF
GO
SET IDENTITY_INSERT [dbo].[Grupo] ON 

INSERT [dbo].[Grupo] ([Id_grupo], [Grado], [Letra], [extra]) VALUES (1, 1, N'A', NULL)
SET IDENTITY_INSERT [dbo].[Grupo] OFF
GO
SET IDENTITY_INSERT [dbo].[GrupoCuatrimestre] ON 

INSERT [dbo].[GrupoCuatrimestre] ([Id_GruCuat], [F_ProgEd], [F_Grupo], [F_Cuatri], [Turno], [Modalidad], [Extra]) VALUES (19, 2, 1, 1, N'Matutino', N'Online', NULL)
SET IDENTITY_INSERT [dbo].[GrupoCuatrimestre] OFF
GO
SET IDENTITY_INSERT [dbo].[Medico] ON 

INSERT [dbo].[Medico] ([ID_Dr], [Nombre], [App], [Apm], [Telefono], [correo], [horario], [especialidad], [extra]) VALUES (1, N'Strange', N'Marvel', N'Marvel', N'987987', N'987987', N'98798', N'98787', N'9879')
INSERT [dbo].[Medico] ([ID_Dr], [Nombre], [App], [Apm], [Telefono], [correo], [horario], [especialidad], [extra]) VALUES (3, N'6', N'6', N'6', N'6', N'6', N'6', N'6', N'6')
INSERT [dbo].[Medico] ([ID_Dr], [Nombre], [App], [Apm], [Telefono], [correo], [horario], [especialidad], [extra]) VALUES (4, N'8', N'8', N'8', N'8', N'8', N'8', N'8', N'8')
INSERT [dbo].[Medico] ([ID_Dr], [Nombre], [App], [Apm], [Telefono], [correo], [horario], [especialidad], [extra]) VALUES (5, N'9', N'9', N'9', N'9', N'9', N'9', N'9', N'9')
INSERT [dbo].[Medico] ([ID_Dr], [Nombre], [App], [Apm], [Telefono], [correo], [horario], [especialidad], [extra]) VALUES (6, N'6', N'6', N'6', N'6', N'6', N'6', N'6', NULL)
INSERT [dbo].[Medico] ([ID_Dr], [Nombre], [App], [Apm], [Telefono], [correo], [horario], [especialidad], [extra]) VALUES (7, N'4', N'4', N'4', N'4', N'4', N'4', N'4', NULL)
INSERT [dbo].[Medico] ([ID_Dr], [Nombre], [App], [Apm], [Telefono], [correo], [horario], [especialidad], [extra]) VALUES (8, N'2', N'2', N'2', N'2', N'2', N'2', N'2', NULL)
INSERT [dbo].[Medico] ([ID_Dr], [Nombre], [App], [Apm], [Telefono], [correo], [horario], [especialidad], [extra]) VALUES (9, N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1')
INSERT [dbo].[Medico] ([ID_Dr], [Nombre], [App], [Apm], [Telefono], [correo], [horario], [especialidad], [extra]) VALUES (10, N'98', N'98', N'98', N'98', N'98', N'98', N'98', NULL)
INSERT [dbo].[Medico] ([ID_Dr], [Nombre], [App], [Apm], [Telefono], [correo], [horario], [especialidad], [extra]) VALUES (11, N'65', N'65', N'65', N'65', N'65', N'665', N'65', N'')
INSERT [dbo].[Medico] ([ID_Dr], [Nombre], [App], [Apm], [Telefono], [correo], [horario], [especialidad], [extra]) VALUES (12, N'77', N'77', N'77', N'77', N'77', N'77', N'77', NULL)
INSERT [dbo].[Medico] ([ID_Dr], [Nombre], [App], [Apm], [Telefono], [correo], [horario], [especialidad], [extra]) VALUES (13, N'88', N'88', N'88', N'888', N'888', N'88', N'88', NULL)
INSERT [dbo].[Medico] ([ID_Dr], [Nombre], [App], [Apm], [Telefono], [correo], [horario], [especialidad], [extra]) VALUES (14, N'99', N'99', N'99', N'99', N'99', N'99', N'99', NULL)
SET IDENTITY_INSERT [dbo].[Medico] OFF
GO
SET IDENTITY_INSERT [dbo].[PositivoAlumno] ON 

INSERT [dbo].[PositivoAlumno] ([ID_posAl], [FechaConfirmado], [Comprobacion], [Antecedentes], [Riesgo], [NumContagio], [Extra], [F_Alumno]) VALUES (1, CAST(N'2020-10-01' AS Date), N'imagenes/adwdw.jpg', N'Bien', N'Bajo', 1, N'', 1)
SET IDENTITY_INSERT [dbo].[PositivoAlumno] OFF
GO
SET IDENTITY_INSERT [dbo].[PositivoProfe] ON 

INSERT [dbo].[PositivoProfe] ([Id_posProfe], [FechaConfirmado], [Comprobacion], [Antecedentes], [Riesgo], [NumContaio], [Extra], [F_Profe], [imagen], [discpacidad]) VALUES (1, CAST(N'2020-10-22' AS Date), N'PCR', N'inguno', N'Alto', 1, NULL, 1, NULL, NULL)
INSERT [dbo].[PositivoProfe] ([Id_posProfe], [FechaConfirmado], [Comprobacion], [Antecedentes], [Riesgo], [NumContaio], [Extra], [F_Profe], [imagen], [discpacidad]) VALUES (2, CAST(N'2021-11-14' AS Date), N'Sintomas', N'EN el trabajo', N'medio', 2, NULL, 1, NULL, NULL)
INSERT [dbo].[PositivoProfe] ([Id_posProfe], [FechaConfirmado], [Comprobacion], [Antecedentes], [Riesgo], [NumContaio], [Extra], [F_Profe], [imagen], [discpacidad]) VALUES (4, CAST(N'2021-10-30' AS Date), N'Antígenos', N'En el microbus', N'Alto', 1, NULL, 3, NULL, NULL)
INSERT [dbo].[PositivoProfe] ([Id_posProfe], [FechaConfirmado], [Comprobacion], [Antecedentes], [Riesgo], [NumContaio], [Extra], [F_Profe], [imagen], [discpacidad]) VALUES (5, CAST(N'2022-02-12' AS Date), N'PCR', N'En el laboratorio con los del 5e', N'medio', 1, NULL, 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PositivoProfe] OFF
GO
SET IDENTITY_INSERT [dbo].[ProfeGRupo] ON 

INSERT [dbo].[ProfeGRupo] ([ID_ProfeGru], [F_Profe], [F_GruCuat], [Extra], [Extra2]) VALUES (7, 3, 19, N'1', NULL)
SET IDENTITY_INSERT [dbo].[ProfeGRupo] OFF
GO
SET IDENTITY_INSERT [dbo].[Profesor] ON 

INSERT [dbo].[Profesor] ([ID_Profe], [RegistroEmpleado], [Nombre], [Ap_pat], [Ap_Mat], [Genero], [Categoria], [Correo], [Celular], [F_EdoCivil]) VALUES (1, 11, N'Rosalba', N'Bolaños', N'Ortega', N'Mujer', N'PTC', N'jhags', N'7657567', 1)
INSERT [dbo].[Profesor] ([ID_Profe], [RegistroEmpleado], [Nombre], [Ap_pat], [Ap_Mat], [Genero], [Categoria], [Correo], [Celular], [F_EdoCivil]) VALUES (2, 23, N'Yruth', N'López', N'Rodríguez', N'Mujer', N'PA', N'hjgjhj', N'46545', 4)
INSERT [dbo].[Profesor] ([ID_Profe], [RegistroEmpleado], [Nombre], [Ap_pat], [Ap_Mat], [Genero], [Categoria], [Correo], [Celular], [F_EdoCivil]) VALUES (3, 40, N'Memo', N'Sánchez', N'Flores', N'Hombre', N'PTC', N'kjhkhjhkj', N'09809', 5)
INSERT [dbo].[Profesor] ([ID_Profe], [RegistroEmpleado], [Nombre], [Ap_pat], [Ap_Mat], [Genero], [Categoria], [Correo], [Celular], [F_EdoCivil]) VALUES (1002, 245, N'Pedro', N'Martínez', N'Galaviz', N'Masculino', N'PTC', NULL, NULL, 12)
INSERT [dbo].[Profesor] ([ID_Profe], [RegistroEmpleado], [Nombre], [Ap_pat], [Ap_Mat], [Genero], [Categoria], [Correo], [Celular], [F_EdoCivil]) VALUES (1003, 245, N'Pedro', N'Martínez', N'Galaviz', N'Masculino', N'PTC', NULL, NULL, 12)
SET IDENTITY_INSERT [dbo].[Profesor] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgramaEducativo] ON 

INSERT [dbo].[ProgramaEducativo] ([Id_pe], [ProgramaEd], [F_Carrera], [Extra]) VALUES (2, N'Tics', 1, NULL)
SET IDENTITY_INSERT [dbo].[ProgramaEducativo] OFF
GO
SET IDENTITY_INSERT [dbo].[SeguimientoPRO] ON 

INSERT [dbo].[SeguimientoPRO] ([id_Segui], [F_positivoProfe], [F_medico], [Fecha], [Form_Comunica], [Reporte], [Entrevista], [Extra], [imagen]) VALUES (1, 1, 1, CAST(N'2021-01-15' AS Date), N'Whats', N'Todo mal', N'Nad', NULL, NULL)
INSERT [dbo].[SeguimientoPRO] ([id_Segui], [F_positivoProfe], [F_medico], [Fecha], [Form_Comunica], [Reporte], [Entrevista], [Extra], [imagen]) VALUES (2, 1, 1, CAST(N'2021-01-16' AS Date), N'Telefono', N'Mejora', N'nada', NULL, NULL)
INSERT [dbo].[SeguimientoPRO] ([id_Segui], [F_positivoProfe], [F_medico], [Fecha], [Form_Comunica], [Reporte], [Entrevista], [Extra], [imagen]) VALUES (3, 2, 1, CAST(N'2022-02-10' AS Date), N'Vido llamad', N'Todo Bien', N'lloró', NULL, NULL)
SET IDENTITY_INSERT [dbo].[SeguimientoPRO] OFF
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_EstadoCivil] FOREIGN KEY([F_EdoCivil])
REFERENCES [dbo].[EstadoCivil] ([Id_Edo])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_EstadoCivil]
GO
ALTER TABLE [dbo].[AlumnoGrupo]  WITH CHECK ADD  CONSTRAINT [FK_AlumnoGrupo_Alumno] FOREIGN KEY([F_Alumn])
REFERENCES [dbo].[Alumno] ([ID_Alumno])
GO
ALTER TABLE [dbo].[AlumnoGrupo] CHECK CONSTRAINT [FK_AlumnoGrupo_Alumno]
GO
ALTER TABLE [dbo].[AlumnoGrupo]  WITH CHECK ADD  CONSTRAINT [FK_AlumnoGrupo_GrupoCuatrimestre] FOREIGN KEY([F_GruCuat])
REFERENCES [dbo].[GrupoCuatrimestre] ([Id_GruCuat])
GO
ALTER TABLE [dbo].[AlumnoGrupo] CHECK CONSTRAINT [FK_AlumnoGrupo_GrupoCuatrimestre]
GO
ALTER TABLE [dbo].[GrupoCuatrimestre]  WITH CHECK ADD  CONSTRAINT [FK_GrupoCuatrimestre_Cuatrimestre] FOREIGN KEY([F_Cuatri])
REFERENCES [dbo].[Cuatrimestre] ([id_Cuatrimestre])
GO
ALTER TABLE [dbo].[GrupoCuatrimestre] CHECK CONSTRAINT [FK_GrupoCuatrimestre_Cuatrimestre]
GO
ALTER TABLE [dbo].[GrupoCuatrimestre]  WITH CHECK ADD  CONSTRAINT [FK_GrupoCuatrimestre_Grupo] FOREIGN KEY([F_Grupo])
REFERENCES [dbo].[Grupo] ([Id_grupo])
GO
ALTER TABLE [dbo].[GrupoCuatrimestre] CHECK CONSTRAINT [FK_GrupoCuatrimestre_Grupo]
GO
ALTER TABLE [dbo].[GrupoCuatrimestre]  WITH CHECK ADD  CONSTRAINT [FK_GrupoCuatrimestre_ProgramaEducativo] FOREIGN KEY([F_ProgEd])
REFERENCES [dbo].[ProgramaEducativo] ([Id_pe])
GO
ALTER TABLE [dbo].[GrupoCuatrimestre] CHECK CONSTRAINT [FK_GrupoCuatrimestre_ProgramaEducativo]
GO
ALTER TABLE [dbo].[PositivoAlumno]  WITH CHECK ADD  CONSTRAINT [FK_PositivoAlumno_Alumno] FOREIGN KEY([F_Alumno])
REFERENCES [dbo].[Alumno] ([ID_Alumno])
GO
ALTER TABLE [dbo].[PositivoAlumno] CHECK CONSTRAINT [FK_PositivoAlumno_Alumno]
GO
ALTER TABLE [dbo].[PositivoProfe]  WITH CHECK ADD  CONSTRAINT [FK_PositivoProfe_Profesor] FOREIGN KEY([F_Profe])
REFERENCES [dbo].[Profesor] ([ID_Profe])
GO
ALTER TABLE [dbo].[PositivoProfe] CHECK CONSTRAINT [FK_PositivoProfe_Profesor]
GO
ALTER TABLE [dbo].[ProfeGRupo]  WITH CHECK ADD  CONSTRAINT [FK_ProfeGRupo_GrupoCuatrimestre] FOREIGN KEY([F_GruCuat])
REFERENCES [dbo].[GrupoCuatrimestre] ([Id_GruCuat])
GO
ALTER TABLE [dbo].[ProfeGRupo] CHECK CONSTRAINT [FK_ProfeGRupo_GrupoCuatrimestre]
GO
ALTER TABLE [dbo].[ProfeGRupo]  WITH CHECK ADD  CONSTRAINT [FK_ProfeGRupo_Profesor] FOREIGN KEY([F_Profe])
REFERENCES [dbo].[Profesor] ([ID_Profe])
GO
ALTER TABLE [dbo].[ProfeGRupo] CHECK CONSTRAINT [FK_ProfeGRupo_Profesor]
GO
ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD  CONSTRAINT [FK_Profesor_EstadoCivil] FOREIGN KEY([F_EdoCivil])
REFERENCES [dbo].[EstadoCivil] ([Id_Edo])
GO
ALTER TABLE [dbo].[Profesor] CHECK CONSTRAINT [FK_Profesor_EstadoCivil]
GO
ALTER TABLE [dbo].[ProgramaEducativo]  WITH CHECK ADD  CONSTRAINT [FK_ProgramaEducativo_Carrera] FOREIGN KEY([F_Carrera])
REFERENCES [dbo].[Carrera] ([Id_Carrera])
GO
ALTER TABLE [dbo].[ProgramaEducativo] CHECK CONSTRAINT [FK_ProgramaEducativo_Carrera]
GO
ALTER TABLE [dbo].[SeguimientoAL]  WITH CHECK ADD  CONSTRAINT [FK_SeguimientoAL_Medico] FOREIGN KEY([F_medico])
REFERENCES [dbo].[Medico] ([ID_Dr])
GO
ALTER TABLE [dbo].[SeguimientoAL] CHECK CONSTRAINT [FK_SeguimientoAL_Medico]
GO
ALTER TABLE [dbo].[SeguimientoAL]  WITH CHECK ADD  CONSTRAINT [FK_SeguimientoAL_PositivoAlumno] FOREIGN KEY([F_PositivoAL])
REFERENCES [dbo].[PositivoAlumno] ([ID_posAl])
GO
ALTER TABLE [dbo].[SeguimientoAL] CHECK CONSTRAINT [FK_SeguimientoAL_PositivoAlumno]
GO
ALTER TABLE [dbo].[SeguimientoPRO]  WITH CHECK ADD  CONSTRAINT [FK_SeguimientoPRO_Medico] FOREIGN KEY([F_medico])
REFERENCES [dbo].[Medico] ([ID_Dr])
GO
ALTER TABLE [dbo].[SeguimientoPRO] CHECK CONSTRAINT [FK_SeguimientoPRO_Medico]
GO
ALTER TABLE [dbo].[SeguimientoPRO]  WITH CHECK ADD  CONSTRAINT [FK_SeguimientoPRO_PositivoProfe] FOREIGN KEY([F_positivoProfe])
REFERENCES [dbo].[PositivoProfe] ([Id_posProfe])
GO
ALTER TABLE [dbo].[SeguimientoPRO] CHECK CONSTRAINT [FK_SeguimientoPRO_PositivoProfe]
GO
USE [master]
GO
ALTER DATABASE [SeguimientoCovid] SET  READ_WRITE 
GO
