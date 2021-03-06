USE [master]
GO
/****** Object:  Database [DW_REducativos]    Script Date: 11/21/2012 11:20:19 ******/
CREATE DATABASE [DW_REducativos] ON  PRIMARY 
( NAME = N'DW_REducativos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DW_REducativos.mdf' , SIZE = 19456KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DW_REducativos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DW_REducativos_log.ldf' , SIZE = 69760KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DW_REducativos] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DW_REducativos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DW_REducativos] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DW_REducativos] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DW_REducativos] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DW_REducativos] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DW_REducativos] SET ARITHABORT OFF
GO
ALTER DATABASE [DW_REducativos] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DW_REducativos] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DW_REducativos] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DW_REducativos] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DW_REducativos] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DW_REducativos] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DW_REducativos] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DW_REducativos] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DW_REducativos] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DW_REducativos] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DW_REducativos] SET  DISABLE_BROKER
GO
ALTER DATABASE [DW_REducativos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DW_REducativos] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DW_REducativos] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DW_REducativos] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DW_REducativos] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DW_REducativos] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DW_REducativos] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DW_REducativos] SET  READ_WRITE
GO
ALTER DATABASE [DW_REducativos] SET RECOVERY FULL
GO
ALTER DATABASE [DW_REducativos] SET  MULTI_USER
GO
ALTER DATABASE [DW_REducativos] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DW_REducativos] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'DW_REducativos', N'ON'
GO
USE [DW_REducativos]
GO
/****** Object:  Table [dbo].[Dim_Usuario]    Script Date: 11/21/2012 11:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_Usuario](
	[UserId_SK] [int] IDENTITY(1,1) NOT NULL,
	[UserId_BK] [uniqueidentifier] NOT NULL,
	[UserName] [varchar](256) NOT NULL,
	[Cedula] [int] NULL,
	[IdTipoVinculacion] [int] NULL,
	[TipoVinculacion] [varchar](100) NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[UserId_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dim_TipoUsoReserva]    Script Date: 11/21/2012 11:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_TipoUsoReserva](
	[IdTipoUsoReserva_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoUsoReserva_BK] [int] NOT NULL,
	[UsoReserva] [varchar](50) NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Dim_TipoUsoReserva] PRIMARY KEY CLUSTERED 
(
	[IdTipoUsoReserva_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dim_TiposNovedad]    Script Date: 11/21/2012 11:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_TiposNovedad](
	[IdTipoNovedad_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoNovedad_BK] [int] NOT NULL,
	[Novedad] [varchar](255) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_TiposNovedad] PRIMARY KEY CLUSTERED 
(
	[IdTipoNovedad_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dim_TipoMantenimiento]    Script Date: 11/21/2012 11:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_TipoMantenimiento](
	[IdTipoMantenimiento_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoMantenimiento_BK] [int] NOT NULL,
	[TipoMantenimiento] [nvarchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_TipoMantenimiento] PRIMARY KEY CLUSTERED 
(
	[IdTipoMantenimiento_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Hora]    Script Date: 11/21/2012 11:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_Hora](
	[IdHora] [int] NOT NULL,
	[Hora] [int] NOT NULL,
	[ParteDelDiaID] [int] NOT NULL,
	[ParteDelDia] [varchar](10) NOT NULL,
	[AmPmID] [int] NOT NULL,
	[AmPm] [varchar](2) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_DimensionHora] PRIMARY KEY CLUSTERED 
(
	[IdHora] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dim_Grupo]    Script Date: 11/21/2012 11:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_Grupo](
	[IdGrupo_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdGrupo_BK] [int] NOT NULL,
	[NumeroGrupo] [int] NOT NULL,
	[Capacidad] [int] NOT NULL,
	[Intensivo] [bit] NOT NULL,
	[TipoGrupo] [nchar](1) NOT NULL,
	[NombreMateria] [varchar](100) NOT NULL,
	[Semestre] [int] NOT NULL,
	[CodigoPrograma] [int] NOT NULL,
	[Jornada] [nchar](1) NOT NULL,
	[NombrePrograma] [nvarchar](100) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Dim_Grupo] PRIMARY KEY CLUSTERED 
(
	[IdGrupo_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registra el numero del grupo en el caso en q hallan varios.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dim_Grupo', @level2type=N'COLUMN',@level2name=N'NumeroGrupo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Representa la capacidad de estudiantes que tiene establecido para el grupo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dim_Grupo', @level2type=N'COLUMN',@level2name=N'Capacidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define si el grupo es intensivo o no.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dim_Grupo', @level2type=N'COLUMN',@level2name=N'Intensivo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Se refiere a si el grupo es intensivo (I) o regula (R)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dim_Grupo', @level2type=N'COLUMN',@level2name=N'TipoGrupo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registra el nombre de la materia.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dim_Grupo', @level2type=N'COLUMN',@level2name=N'NombreMateria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código del programa en la institución. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dim_Grupo', @level2type=N'COLUMN',@level2name=N'CodigoPrograma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Jornada en la cual se ofrece el programa (D.N)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dim_Grupo', @level2type=N'COLUMN',@level2name=N'Jornada'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre con el que se identifica el programa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dim_Grupo', @level2type=N'COLUMN',@level2name=N'NombrePrograma'
GO
/****** Object:  Table [dbo].[Dim_Recurso]    Script Date: 11/21/2012 11:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_Recurso](
	[IdEquipo_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdEquipo_BK] [int] NOT NULL,
	[Serie] [varchar](50) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[Marca] [varchar](150) NOT NULL,
	[IntervaloMantenimiento] [int] NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Categoria] [varchar](50) NOT NULL,
	[IdSede] [int] NOT NULL,
	[NombreSede] [varchar](100) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Dim_Recurso] PRIMARY KEY CLUSTERED 
(
	[IdEquipo_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dim_Periodo]    Script Date: 11/21/2012 11:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_Periodo](
	[IdPeriodo_SK] [int] IDENTITY(1,1) NOT NULL,
	[Anyo] [int] NOT NULL,
	[Semestre] [varchar](50) NOT NULL,
	[NumeroSemestre] [int] NOT NULL,
 CONSTRAINT [PK_Dim_Periodo] PRIMARY KEY CLUSTERED 
(
	[IdPeriodo_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dim_Fecha]    Script Date: 11/21/2012 11:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_Fecha](
	[IdFecha] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[DescripcionFecha] [varchar](50) NOT NULL,
	[Anyo] [int] NOT NULL,
	[Semestre] [varchar](50) NOT NULL,
	[NumeroSemestre] [int] NOT NULL,
	[Trimestre] [varchar](50) NOT NULL,
	[NumeroTrimestre] [int] NOT NULL,
	[Mes] [varchar](50) NOT NULL,
	[NumeroMes] [int] NOT NULL,
	[SemanaMes] [int] NOT NULL,
	[DiaMes] [int] NOT NULL,
	[DiaAnyo] [int] NOT NULL,
	[NumeroDiaSemana] [int] NOT NULL,
	[DiaSemana] [varchar](50) NOT NULL,
	[SemanaAnyo] [int] NOT NULL,
	[SemestreAcademico] [varchar](50) NOT NULL,
	[NumeroSemestreAcademico] [int] NOT NULL,
	[NumeroMesAcademico] [int] NOT NULL,
	[DiaSemestreAcademico] [int] NOT NULL,
	[IndicadorSemana] [varchar](50) NOT NULL,
	[IndicadorFestivo] [varchar](50) NOT NULL,
	[UltimoDiaMes] [varchar](2) NOT NULL,
	[UltimoDiaSemana] [varchar](2) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_DimensionFecha] PRIMARY KEY CLUSTERED 
(
	[IdFecha] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dim_Evento]    Script Date: 11/21/2012 11:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_Evento](
	[IdTipoEvento_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoEvento_BK] [int] NOT NULL,
	[TipoEvento] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NOT NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Dim_Evento] PRIMARY KEY CLUSTERED 
(
	[IdTipoEvento_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dim_EstadoReservaEspacio]    Script Date: 11/21/2012 11:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_EstadoReservaEspacio](
	[IdEstado_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdEstado_BK] [smallint] NOT NULL,
	[NombreEstado] [varchar](25) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NOT NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Dim_EstadoReservaEspacio] PRIMARY KEY CLUSTERED 
(
	[IdEstado_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dim_EstadoReserva]    Script Date: 11/21/2012 11:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_EstadoReserva](
	[IdEstadoReserva] [int] NOT NULL,
	[EstadoReserva] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Dim_EstadoReserva] PRIMARY KEY CLUSTERED 
(
	[IdEstadoReserva] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dim_Espacio]    Script Date: 11/21/2012 11:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_Espacio](
	[IdEspacio_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdEspacio_BK] [int] NOT NULL,
	[Espacio] [varchar](50) NOT NULL,
	[Bloque] [varchar](50) NOT NULL,
	[Sede] [varchar](100) NOT NULL,
	[TipoEspacio] [int] NULL,
	[Aire] [bit] NOT NULL,
	[CapacidadEspacio] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Espacio] PRIMARY KEY CLUSTERED 
(
	[IdEspacio_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define que tipo del espacio, es decir, si es una Salón, Laboratorio o Sala.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dim_Espacio', @level2type=N'COLUMN',@level2name=N'TipoEspacio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Capacidad o número de estudiantes que puede contener el espacio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dim_Espacio', @level2type=N'COLUMN',@level2name=N'CapacidadEspacio'
GO
/****** Object:  Table [dbo].[Dim_Empresa]    Script Date: 11/21/2012 11:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_Empresa](
	[IdEmpresa_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpresa_BK] [int] NOT NULL,
	[Empresa] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[Dim_Dias]    Script Date: 11/21/2012 11:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dim_Dias]
AS
SELECT     TOP (100) PERCENT NumeroDia, NombreDia
FROM         (SELECT     DATEPART(dw, a.Day + b.Count) AS NumeroDia, DATENAME(dw, a.Day + b.Count) AS NombreDia
                       FROM          (SELECT     GETDATE() AS Day) AS a CROSS JOIN
                                                  (SELECT     1 AS Count
                                                    UNION
                                                    SELECT     2 AS Expr1
                                                    UNION
                                                    SELECT     3 AS Expr1
                                                    UNION
                                                    SELECT     4 AS Expr1
                                                    UNION
                                                    SELECT     5 AS Expr1
                                                    UNION
                                                    SELECT     6 AS Expr1
                                                    UNION
                                                    SELECT     7 AS Expr1) AS b) AS c
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "c"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 252
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_Dias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_Dias'
GO
/****** Object:  Table [dbo].[Dim_Dependencia]    Script Date: 11/21/2012 11:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_Dependencia](
	[IdDependencia_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdDependencia_BK] [int] NOT NULL,
	[NombreDependencia] [varchar](255) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Dependencia] PRIMARY KEY CLUSTERED 
(
	[IdDependencia_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SSIS Configurations]    Script Date: 11/21/2012 11:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSIS Configurations](
	[ConfigurationFilter] [nvarchar](255) NOT NULL,
	[ConfiguredValue] [nvarchar](255) NULL,
	[PackagePath] [nvarchar](255) NOT NULL,
	[ConfiguredValueType] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_CambioEspacio]    Script Date: 11/21/2012 11:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dim_CambioEspacio](
	[IdCambioEspacio] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [varchar](25) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NOT NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Dim_CambioEspacio] PRIMARY KEY CLUSTERED 
(
	[IdCambioEspacio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fact_Novedades]    Script Date: 11/21/2012 11:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Novedades](
	[IdNovedades_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdNovedades_BK] [int] NOT NULL,
	[IdFechaNovedad] [int] NOT NULL,
	[IdEquipo] [int] NOT NULL,
	[IdTiposNovedad] [int] NOT NULL,
	[CantidadNovedades] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[Fechaupdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Novedades] PRIMARY KEY CLUSTERED 
(
	[IdNovedades_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Mantenimiento]    Script Date: 11/21/2012 11:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Mantenimiento](
	[IdMantenimiento_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdMantenimiento_BK] [int] NOT NULL,
	[IdFechaMantenimiento] [int] NOT NULL,
	[IdEquipo] [int] NOT NULL,
	[IdTipoMantenimiento] [int] NOT NULL,
	[IdEmpresa] [int] NULL,
	[CostoMantenimiento] [bigint] NOT NULL,
	[CantidadMantenimientos] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Mantenimiento] PRIMARY KEY CLUSTERED 
(
	[IdMantenimiento_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_AsignacionEspacios]    Script Date: 11/21/2012 11:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_AsignacionEspacios](
	[IdAsignacionEspacio_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdAsignacionEspacio_BK] [int] NOT NULL,
	[IdEstadoReservaEspacio] [int] NOT NULL,
	[IdReserva] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdEvento] [int] NOT NULL,
	[IdEspacio] [int] NULL,
	[HoraInicial] [int] NOT NULL,
	[HoraFinal] [int] NOT NULL,
	[FechaAsignacion] [int] NULL,
	[CambioEspacioReserva] [int] NOT NULL,
	[DifCupoPedidoYAsignado] [int] NOT NULL,
	[CantidadAsignaciones] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NOT NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Fact_AsignacionEspacios] PRIMARY KEY CLUSTERED 
(
	[IdAsignacionEspacio_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_AsignacionClases]    Script Date: 11/21/2012 11:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_AsignacionClases](
	[IdAsignacionClases_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdAsignacionClases_BK] [int] NOT NULL,
	[IdEspacio] [int] NOT NULL,
	[IdHoraInicial] [int] NOT NULL,
	[IdHoraFinal] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[IdDia] [int] NOT NULL,
	[IdGrupo] [int] NOT NULL,
	[CantidadAsignaciones] [int] NOT NULL,
	[HorasDuracionClases] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Fact_AsignacionClases] PRIMARY KEY CLUSTERED 
(
	[IdAsignacionClases_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[LlenarFecha]    Script Date: 11/21/2012 11:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery1.sql|4|0|C:\Users\CAMILO~1\AppData\Local\Temp\~vsA23D.sql

CREATE PROCEDURE [dbo].[LlenarFecha]
    @FechaInicial AS DATE,
	@FechaFinal AS DATE,
	@FechaInicialAcademico AS DATE,
	@FechaFinalAcademico AS DATE
	
	
	
AS
BEGIN
DECLARE @FechaCON DATE
DECLARE @FechaAcademicoCON DATE
DECLARE @DiaAcademicoCON INT
DECLARE @IdFecha AS INT
DECLARE	@Anyo AS INT
DECLARE @DescripcionFecha AS VARCHAR(50)
DECLARE @Semestre AS VARCHAR(50)
DECLARE	@NumeroSemestre AS INT
DECLARE @Trimestre AS VARCHAR(50)
DECLARE	@NumeroTrimestre AS INT
DECLARE	@Mes AS VARCHAR(50)
DECLARE	@NumeroMes AS INT
DECLARE	@SemanaMes AS INT
DECLARE	@DiaMes AS INT
DECLARE	@DiaAnyo AS INT
DECLARE	@DiaSemana AS VARCHAR(50)
DECLARE	@NumeroDiaSemana AS INT
DECLARE	@SemanaAnyo AS INT
DECLARE @SemestreAcademico AS VARCHAR(50)
DECLARE	@NumeroSemestreAcademico AS INT
DECLARE	@NumeroMesAcademico AS INT
DECLARE	@DiaSemestreAcademico AS INT
DECLARE	@IndicadorFestivo AS VARCHAR(50)
DECLARE	@IndicadorSemana AS VARCHAR(50)
DECLARE	@UltimoDiaSemana AS VARCHAR(2)
DECLARE	@UltimoDiaMes AS VARCHAR(2)
DECLARE @FechaCreacion AS DATETIME

DECLARE @M AS INT
DECLARE @N AS INT
DECLARE @Y AS INT
DECLARE @a AS INT
DECLARE @b AS INT
DECLARE @c AS INT
DECLARE @d AS INT
DECLARE @e AS INT
DECLARE @Pascua AS DATE
	
SET NOCOUNT ON;

SET LANGUAGE SPANISH
SET @FechaCON = @FechaInicial
SET @FechaAcademicoCON = @FechaInicialAcademico
SET @DiaAcademicoCON = 0

SET @IdFecha = (Select count(*) from Dim_Fecha)

SET @M = 24
SET @N = 5
SET @Y = YEAR(@FechaCON)
SET @a = @Y%19
SET @b = @Y%4
SET @c = @Y%7
SET @d = (19*@a + @M)%30
SET @e = (2*@b + 4*@c + 6*@d + @N)%7


IF((@d + @e)<10)
	BEGIN
		SET @Pascua = ''+CAST(@Y AS varchar)+'-03-'+CAST((@d+@e+22) AS varchar)+''
	END
IF((@d + @e)>9)
	BEGIN
		SET @Pascua = ''+CAST(@Y AS varchar)+'-04-'+CAST((@d+@e-9) AS varchar)+''
	END

IF(@Pascua=''+CAST(@Y AS varchar)+'-04-26')
	BEGIN
		SET @Pascua = ''+CAST(@Y AS varchar)+'-04-19'
	END

IF(@Pascua=''+CAST(@Y AS varchar)+'-04-25' AND @d=28 AND @e=6 AND @a>10)
	BEGIN
		SET @Pascua = ''+CAST(@Y AS varchar)+'-04-18'
	END

WHILE (@FechaCON<=@FechaFinal)
BEGIN
SET @DescripcionFecha = DATENAME(month, @FechaCON)+' '+DATENAME(day, @FechaCON)+', '+CAST(YEAR(@FechaCON) AS varchar)
SET @IdFecha=@IdFecha + 1
SET @Anyo = YEAR(@FechaCON)
SET @Mes = DATENAME(month, @FechaCON)
SET @NumeroMes = MONTH(@FechaCON)
SET @DiaMes = DATEPART(day, @FechaCON)
SET @DiaAnyo = DATEPART(dy,@FechaCON)
SET @DiaSemana = DATENAME(weekday, @FechaCON)
SET @NumeroDiaSemana = DATEPART(weekday, @FechaCON) - 1
SET @SemanaMes = DATEDIFF(week, DATEADD(MONTH, DATEDIFF(MONTH, 0, @FechaCON), 0), @FechaCON) +1
SET @SemanaAnyo = DATEPART(week,@FechaCON)

IF(@NumeroDiaSemana=0)
	BEGIN
		SET @NumeroDiaSemana = 7
	END

IF(DATEPART(WEEKDAY,@FechaCON)=1 OR DATEPART(WEEKDAY,@FechaCON)=7)
	BEGIN
		SET @IndicadorSemana = 'Fin de Semana'
	END
ELSE
	SET @IndicadorSemana = 'Dia Laborable'

IF(DATEPART(day, DATEADD(day, 1, @FechaCON))=1)
	BEGIN
		SET @UltimoDiaMes = 'Si'
	END
ELSE
	SET @UltimoDiaMes = 'No'


IF(Month(@FechaCON)<=6)
	BEGIN
		SET @Semestre = 'Primer Semestre'
		SET @NumeroSemestre = 1
		IF(Month(@FechaCON)<=3)
			BEGIN
				SET @Trimestre = 'Primero'
				SET @NumeroTrimestre = 1
			END
		ELSE
			BEGIN
				SET @Trimestre = 'Segundo'
				SET @NumeroTrimestre = 2
			END
	END
ELSE
	BEGIN
		SET @Semestre = 'Segundo Semestre'
		SET @NumeroSemestre = 2
		IF(Month(@FechaCON)<=9)
			BEGIN
				SET @Trimestre = 'Tercero'
				SET @NumeroTrimestre = 3
			END
		ELSE
			BEGIN
				SET @Trimestre = 'Cuarto'
				SET @NumeroTrimestre = 4
			END
	END

-- Festivos
IF((MONTH(@FechaCON)=1 and DATEPART(day,@FechaCON)=1) or (MONTH(@FechaCON)=5 and DATEPART(day,@FechaCON)=1) or (MONTH(@FechaCON)=7 and DATEPART(day,@FechaCON)=20) or (MONTH(@FechaCON)=8 and DATEPART(day,@FechaCON)=7) or (MONTH(@FechaCON)=12 and DATEPART(day,@FechaCON)=8) or (MONTH(@FechaCON)=12 and DATEPART(day,@FechaCON)=25))
	BEGIN
		SET @IndicadorFestivo = 'Festivo'
	END
ELSE IF((MONTH(@FechaCON)=1 and DATEPART(day,@FechaCON)>=6 and DATEPART(day,@FechaCON)<=12 and DATEPART(weekday, @FechaCON)=2) OR (MONTH(@FechaCON)=3 and DATEPART(day,@FechaCON)>=19 and DATEPART(day,@FechaCON)<=25 and DATEPART(weekday, @FechaCON)=2) OR (MONTH(@FechaCON)=6 and DATEPART(day,@FechaCON)>=29 and DATEPART(weekday, @FechaCON)=2) OR (MONTH(@FechaCON)=7 and DATEPART(day,@FechaCON)<=5 and DATEPART(weekday, @FechaCON)=2) OR (MONTH(@FechaCON)=8 and DATEPART(day,@FechaCON)>=15 and DATEPART(day,@FechaCON)<=21 and DATEPART(weekday, @FechaCON)=2) OR (MONTH(@FechaCON)=10 and DATEPART(day,@FechaCON)>=12 and DATEPART(day,@FechaCON)<=18 and DATEPART(weekday, @FechaCON)=2) OR (MONTH(@FechaCON)=11 and DATEPART(day,@FechaCON)>=1 and DATEPART(day,@FechaCON)<=7 and DATEPART(weekday, @FechaCON)=2) OR (MONTH(@FechaCON)=11 and DATEPART(day,@FechaCON)>=11 and DATEPART(day,@FechaCON)<=17 and DATEPART(weekday, @FechaCON)=2))
	BEGIN
		SET @IndicadorFestivo = 'Festivo'
	END
ELSE IF(DATEADD(day, -7, @Pascua)=@FechaCON OR DATEADD(day, -3, @Pascua)=@FechaCON OR DATEADD(day, -2, @Pascua)=@FechaCON OR @Pascua=@FechaCON OR DATEADD(day, 43, @Pascua)=@FechaCON OR DATEADD(day, 64, @Pascua)=@FechaCON OR DATEADD(day, 71, @Pascua)=@FechaCON)
	BEGIN
		SET @IndicadorFestivo = 'Festivo'
	END
ELSE
	SET @IndicadorFestivo = 'No Festivo'
-- Termina Festivos

IF(@NumeroDiaSemana=6 AND @IndicadorFestivo= 'No Festivo')
	BEGIN
		SET @UltimoDiaSemana = 'Si'
	END
ELSE
	SET @UltimoDiaSemana = 'No'


IF(@FechaCON>=@FechaAcademicoCON AND @FechaCON<=@FechaFinalAcademico)
	BEGIN
		SET @DiaAcademicoCON = @DiaAcademicoCON + 1
		SET @NumeroMesAcademico = MONTH(@FechaCON) - MONTH(@FechaInicialAcademico) + 1
		SET @DiaSemestreAcademico = @DiaAcademicoCON
		IF(MONTH(@FechaCON)<=6)
			BEGIN
				SET @SemestreAcademico = 'Primer Semestre'
				SET @NumeroSemestreAcademico = 1
			END
		ELSE
			BEGIN
				SET @SemestreAcademico = 'Segundo Semestre'
				SET @NumeroSemestreAcademico = 2
			END	
	END

ELSE
	BEGIN
		SET @SemestreAcademico = 'No Aplica'
		SET @NumeroSemestreAcademico = 0
		SET @NumeroMesAcademico = 0
		SET @DiaSemestreAcademico = 0
	END
	
SET @FechaCreacion = CURRENT_TIMESTAMP

  BEGIN TRY
          BEGIN TRANSACTION   
          INSERT INTO Dim_Fecha(
          [IdFecha],
          [Fecha],
          [Anyo],
          [Semestre],
          [NumeroSemestre],
          [Mes],
          [NumeroMes],
          [SemanaMes],
          [DiaMes],
          [DiaAnyo],
		  [NumeroDiaSemana],
		  [DiaSemana],
		  [SemanaAnyo],
		  [DescripcionFecha],
		  [IndicadorFestivo],
		  [UltimoDiaMes],
		  [IndicadorSemana],
		  [Trimestre],
		  [NumeroTrimestre],
		  [UltimoDiaSemana],
		  [SemestreAcademico],
		  [NumeroSemestreAcademico],
		  [NumeroMesAcademico],
		  [DiaSemestreAcademico],
		  [FechaCreacion]
          )
          VALUES(
			@IdFecha,
			@FechaCON,
			@Anyo,
			@Semestre,
			@NumeroSemestre,
			@Mes,
			@NumeroMes,
			@SemanaMes,
			@DiaMes,
			@DiaAnyo,
			@NumeroDiaSemana,
			@DiaSemana,
			@SemanaAnyo,
			@DescripcionFecha,
			@IndicadorFestivo,
			@UltimoDiaMes,
			@IndicadorSemana,
			@Trimestre,
			@NumeroTrimestre,
			@UltimoDiaSemana,
			@SemestreAcademico,
			@NumeroSemestreAcademico,
			@NumeroMesAcademico,
			@DiaSemestreAcademico,
			@FechaCreacion
          )
        
         
         
           COMMIT TRANSACTION
			
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH  

		

	SET @FechaCON = DATEADD(day, 1, @FechaCON)
	CONTINUE
	END      
       
END
GO
/****** Object:  StoredProcedure [dbo].[LlenarDim_Hora]    Script Date: 11/21/2012 11:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LlenarDim_Hora]
AS
BEGIN
SET NOCOUNT ON;
DECLARE @Fecha DATETIME
DECLARE @Hoy DATETIME
set @Hoy = CURRENT_TIMESTAMP
set @Fecha = '2012-01-01 00:00:00'
while @fecha < = '2012-01-01 23:59:00'
begin
insert into Dim_Hora(IdHora, Hora, ParteDelDiaID, ParteDelDia, AmPmID, AmPm, FechaCreacion, FechaUpdate)
SELECT
DATEPART(hh, @Fecha)+1 AS IdHora,
DATEPART(hh, @Fecha) AS Hora,
CASE
when datepart( hh, @fecha) between 0 and 5 then 1
when datepart( hh, @fecha) between 6 and 12 then 2
when datepart( hh, @fecha) between 13 and 17 then 3
else 4
end as ParteDelDiaID,
CASE
when datepart( hh, @fecha) between 0 and 5 then 'Madrugada'
when datepart( hh, @fecha) between 6 and 12 then 'Manhana'
when datepart( hh, @fecha) between 13 and 17 then 'Tarde'
else 'Noche'
end as ParteDelDia,
CASE
when datepart( hh, @fecha) between 0 and 12 then 1
else 2
end as AmPmID,
CASE
when datepart( hh, @fecha) between 0 and 12 then 'am'
else 'pm'
end as AmPm,
@Hoy AS FechaCreacion,
@Hoy AS FechaUpdate
 
SET @Fecha=dateadd( hh, 1, @fecha)
end
END
GO
/****** Object:  StoredProcedure [dbo].[LlenarDim_Fecha]    Script Date: 11/21/2012 11:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LlenarDim_Fecha]
 
    
    
	

	
AS
BEGIN
DECLARE @CantDatos INT
SET  @CantDatos= (Select count(*) from Dim_Fecha)
DECLARE @FechaInicial AS DATE
DECLARE @FechaFinal AS DATE
DECLARE @FechaInicialAcademico AS DATE
DECLARE @FechaFinalAcademico AS DATE
DECLARE @Hoy AS DATE
SET @Hoy=GetDate()

IF(@CantDatos=0)
	begin 
		SET @FechaInicial='2009-01-01'
		SET @FechaInicialAcademico='2009-01-01'
	end
	
else 
	begin
		SET @FechaInicial= DATEADD(DAY, 1,(Select MAX(Fecha)From Dim_Fecha))
		SET @FechaInicialAcademico= DATEADD(DAY, 1,(Select MAX(Fecha)From Dim_Fecha))
	end 

SET @FechaFinal= DATEADD(YEAR, 1, @Hoy)
SET @FechaFinalAcademico= DATEADD(YEAR, 1, @Hoy)

DECLARE @FechaCON DATE
DECLARE @FechaAcademicoCON DATE
DECLARE @DiaAcademicoCON INT
DECLARE @IdFecha AS INT
DECLARE	@Anyo AS INT
DECLARE @DescripcionFecha AS VARCHAR(50)
DECLARE @Semestre AS VARCHAR(50)
DECLARE	@NumeroSemestre AS INT
DECLARE @Trimestre AS VARCHAR(50)
DECLARE	@NumeroTrimestre AS INT
DECLARE	@Mes AS VARCHAR(50)
DECLARE	@NumeroMes AS INT
DECLARE	@SemanaMes AS INT
DECLARE	@DiaMes AS INT
DECLARE	@DiaAnyo AS INT
DECLARE	@DiaSemana AS VARCHAR(50)
DECLARE	@NumeroDiaSemana AS INT
DECLARE	@SemanaAnyo AS INT
DECLARE @SemestreAcademico AS VARCHAR(50)
DECLARE	@NumeroSemestreAcademico AS INT
DECLARE	@NumeroMesAcademico AS INT
DECLARE	@DiaSemestreAcademico AS INT
DECLARE	@IndicadorFestivo AS VARCHAR(50)
DECLARE	@IndicadorSemana AS VARCHAR(50)
DECLARE	@UltimoDiaSemana AS VARCHAR(2)
DECLARE	@UltimoDiaMes AS VARCHAR(2)

DECLARE @M AS INT
DECLARE @N AS INT
DECLARE @Y AS INT
DECLARE @a AS INT
DECLARE @b AS INT
DECLARE @c AS INT
DECLARE @d AS INT
DECLARE @e AS INT
DECLARE @Pascua AS DATE
	
SET NOCOUNT ON;

SET LANGUAGE SPANISH
SET @FechaCON = @FechaInicial
SET @FechaAcademicoCON = @FechaInicialAcademico
SET @DiaAcademicoCON = 0

SET @IdFecha = (Select count(*) from Dim_Fecha)

SET @M = 24
SET @N = 5
SET @Y = YEAR(@FechaCON)
SET @a = @Y%19
SET @b = @Y%4
SET @c = @Y%7
SET @d = (19*@a + @M)%30
SET @e = (2*@b + 4*@c + 6*@d + @N)%7


IF((@d + @e)<10)
	BEGIN
		SET @Pascua = ''+CAST(@Y AS varchar)+'-03-'+CAST((@d+@e+22) AS varchar)+''
	END
IF((@d + @e)>9)
	BEGIN
		SET @Pascua = ''+CAST(@Y AS varchar)+'-04-'+CAST((@d+@e-9) AS varchar)+''
	END

IF(@Pascua=''+CAST(@Y AS varchar)+'-04-26')
	BEGIN
		SET @Pascua = ''+CAST(@Y AS varchar)+'-04-19'
	END

IF(@Pascua=''+CAST(@Y AS varchar)+'-04-25' AND @d=28 AND @e=6 AND @a>10)
	BEGIN
		SET @Pascua = ''+CAST(@Y AS varchar)+'-04-18'
	END

WHILE (@FechaCON<=@FechaFinal)
BEGIN
SET @DescripcionFecha = DATENAME(month, @FechaCON)+' '+DATENAME(day, @FechaCON)+', '+CAST(YEAR(@FechaCON) AS varchar)
SET @IdFecha=@IdFecha + 1
SET @Anyo = YEAR(@FechaCON)
SET @Mes = DATENAME(month, @FechaCON)
SET @NumeroMes = MONTH(@FechaCON)
SET @DiaMes = DATEPART(day, @FechaCON)
SET @DiaAnyo = DATEPART(dy,@FechaCON)
SET @DiaSemana = DATENAME(weekday, @FechaCON)
SET @NumeroDiaSemana = DATEPART(weekday, @FechaCON) - 1
SET @SemanaMes = DATEDIFF(week, DATEADD(MONTH, DATEDIFF(MONTH, 0, @FechaCON), 0), @FechaCON) +1
SET @SemanaAnyo = DATEPART(week,@FechaCON)

IF(@NumeroDiaSemana=0)
	BEGIN
		SET @NumeroDiaSemana = 7
	END

IF(DATEPART(WEEKDAY,@FechaCON)=1 OR DATEPART(WEEKDAY,@FechaCON)=7)
	BEGIN
		SET @IndicadorSemana = 'Fin de Semana'
	END
ELSE
	SET @IndicadorSemana = 'Dia Laborable'

IF(DATEPART(day, DATEADD(day, 1, @FechaCON))=1)
	BEGIN
		SET @UltimoDiaMes = 'Si'
	END
ELSE
	SET @UltimoDiaMes = 'No'


IF(Month(@FechaCON)<=6)
	BEGIN
		SET @Semestre = 'Primer Semestre'
		SET @NumeroSemestre = 1
		IF(Month(@FechaCON)<=3)
			BEGIN
				SET @Trimestre = 'Primero'
				SET @NumeroTrimestre = 1
			END
		ELSE
			BEGIN
				SET @Trimestre = 'Segundo'
				SET @NumeroTrimestre = 2
			END
	END
ELSE
	BEGIN
		SET @Semestre = 'Segundo Semestre'
		SET @NumeroSemestre = 2
		IF(Month(@FechaCON)<=9)
			BEGIN
				SET @Trimestre = 'Tercero'
				SET @NumeroTrimestre = 3
			END
		ELSE
			BEGIN
				SET @Trimestre = 'Cuarto'
				SET @NumeroTrimestre = 4
			END
	END

-- Festivos
IF((MONTH(@FechaCON)=1 and DATEPART(day,@FechaCON)=1) or (MONTH(@FechaCON)=5 and DATEPART(day,@FechaCON)=1) or (MONTH(@FechaCON)=7 and DATEPART(day,@FechaCON)=20) or (MONTH(@FechaCON)=8 and DATEPART(day,@FechaCON)=7) or (MONTH(@FechaCON)=12 and DATEPART(day,@FechaCON)=8) or (MONTH(@FechaCON)=12 and DATEPART(day,@FechaCON)=25))
	BEGIN
		SET @IndicadorFestivo = 'Festivo'
	END
ELSE IF((MONTH(@FechaCON)=1 and DATEPART(day,@FechaCON)>=6 and DATEPART(day,@FechaCON)<=12 and DATEPART(weekday, @FechaCON)=2) OR (MONTH(@FechaCON)=3 and DATEPART(day,@FechaCON)>=19 and DATEPART(day,@FechaCON)<=25 and DATEPART(weekday, @FechaCON)=2) OR (MONTH(@FechaCON)=6 and DATEPART(day,@FechaCON)>=29 and DATEPART(weekday, @FechaCON)=2) OR (MONTH(@FechaCON)=7 and DATEPART(day,@FechaCON)<=5 and DATEPART(weekday, @FechaCON)=2) OR (MONTH(@FechaCON)=8 and DATEPART(day,@FechaCON)>=15 and DATEPART(day,@FechaCON)<=21 and DATEPART(weekday, @FechaCON)=2) OR (MONTH(@FechaCON)=10 and DATEPART(day,@FechaCON)>=12 and DATEPART(day,@FechaCON)<=18 and DATEPART(weekday, @FechaCON)=2) OR (MONTH(@FechaCON)=11 and DATEPART(day,@FechaCON)>=1 and DATEPART(day,@FechaCON)<=7 and DATEPART(weekday, @FechaCON)=2) OR (MONTH(@FechaCON)=11 and DATEPART(day,@FechaCON)>=11 and DATEPART(day,@FechaCON)<=17 and DATEPART(weekday, @FechaCON)=2))
	BEGIN
		SET @IndicadorFestivo = 'Festivo'
	END
ELSE IF(DATEADD(day, -7, @Pascua)=@FechaCON OR DATEADD(day, -3, @Pascua)=@FechaCON OR DATEADD(day, -2, @Pascua)=@FechaCON OR @Pascua=@FechaCON OR DATEADD(day, 43, @Pascua)=@FechaCON OR DATEADD(day, 64, @Pascua)=@FechaCON OR DATEADD(day, 71, @Pascua)=@FechaCON)
	BEGIN
		SET @IndicadorFestivo = 'Festivo'
	END
ELSE
	SET @IndicadorFestivo = 'No Festivo'
-- Termina Festivos

IF(@NumeroDiaSemana=6 AND @IndicadorFestivo= 'No Festivo')
	BEGIN
		SET @UltimoDiaSemana = 'Si'
	END
ELSE
	SET @UltimoDiaSemana = 'No'


IF(@FechaCON>=@FechaAcademicoCON AND @FechaCON<=@FechaFinalAcademico)
	BEGIN
		SET @DiaAcademicoCON = @DiaAcademicoCON + 1
		SET @NumeroMesAcademico = MONTH(@FechaCON) - MONTH(@FechaInicialAcademico) + 1
		SET @DiaSemestreAcademico = @DiaAcademicoCON
		IF(MONTH(@FechaCON)<=6)
			BEGIN
				SET @SemestreAcademico = 'Primer Semestre'
				SET @NumeroSemestreAcademico = 1
			END
		ELSE
			BEGIN
				SET @SemestreAcademico = 'Segundo Semestre'
				SET @NumeroSemestreAcademico = 2
			END	
	END

ELSE
	BEGIN
		SET @SemestreAcademico = 'No Aplica'
		SET @NumeroSemestreAcademico = 0
		SET @NumeroMesAcademico = 0
		SET @DiaSemestreAcademico = 0
	END

  BEGIN TRY
          BEGIN TRANSACTION   
          INSERT INTO Dim_Fecha(
          [IdFecha],
          [Fecha],
          [Anyo],
          [Semestre],
          [NumeroSemestre],
          [Mes],
          [NumeroMes],
          [SemanaMes],
          [DiaMes],
          [DiaAnyo],
		  [NumeroDiaSemana],
		  [DiaSemana],
		  [SemanaAnyo],
		  [DescripcionFecha],
		  [IndicadorFestivo],
		  [UltimoDiaMes],
		  [IndicadorSemana],
		  [Trimestre],
		  [NumeroTrimestre],
		  [UltimoDiaSemana],
		  [SemestreAcademico],
		  [NumeroSemestreAcademico],
		  [NumeroMesAcademico],
		  [DiaSemestreAcademico],
		  [FechaCreacion],
		  [FechaUpdate]
          )
          VALUES(
			@IdFecha,
			@FechaCON,
			@Anyo,
			@Semestre,
			@NumeroSemestre,
			@Mes,
			@NumeroMes,
			@SemanaMes,
			@DiaMes,
			@DiaAnyo,
			@NumeroDiaSemana,
			@DiaSemana,
			@SemanaAnyo,
			@DescripcionFecha,
			@IndicadorFestivo,
			@UltimoDiaMes,
			@IndicadorSemana,
			@Trimestre,
			@NumeroTrimestre,
			@UltimoDiaSemana,
			@SemestreAcademico,
			@NumeroSemestreAcademico,
			@NumeroMesAcademico,
			@DiaSemestreAcademico,
			@Hoy,
			@Hoy
          )
        
         
         
           COMMIT TRANSACTION
			
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH  

		

	SET @FechaCON = DATEADD(day, 1, @FechaCON)
	CONTINUE
	END      
       
END
GO
/****** Object:  Table [dbo].[Fact_ReservaEspacios]    Script Date: 11/21/2012 11:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_ReservaEspacios](
	[IdReservaEspacio_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdReservaEspacio_BK] [int] NOT NULL,
	[IdFechaRegistro] [int] NOT NULL,
	[IdFechaCancelacion] [int] NULL,
	[IdFechaReserva] [int] NOT NULL,
	[IdHoraInicial] [int] NOT NULL,
	[IdHoraFinal] [int] NOT NULL,
	[IdEvento] [int] NOT NULL,
	[IdEstadoReservaEspacio] [int] NOT NULL,
	[IdDependencia] [int] NOT NULL,
	[IdEspacioSolicitado] [int] NOT NULL,
	[IdUsuarioSolicitante] [int] NOT NULL,
	[DuracionReserva] [int] NOT NULL,
	[DifDiasRegisYReserva] [int] NOT NULL,
	[Cupo] [int] NOT NULL,
	[DifCupoYCapacidad] [int] NOT NULL,
	[CantidadReservas] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NOT NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Fact_ReservaEspacios] PRIMARY KEY CLUSTERED 
(
	[IdReservaEspacio_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Reserva]    Script Date: 11/21/2012 11:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Reserva](
	[IdReserva_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdReserva_BK] [int] NOT NULL,
	[IdEstadoReserva] [int] NOT NULL,
	[IdUsoReserva] [int] NULL,
	[IdRecurso] [bigint] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdEspacio] [int] NOT NULL,
	[IdDependencia] [int] NOT NULL,
	[IdHoraInicial] [int] NOT NULL,
	[IdHoraFinal] [int] NOT NULL,
	[HorasDuracionReserva] [int] NOT NULL,
	[IdFechaSolicitud] [int] NOT NULL,
	[IdFechaReserva] [int] NOT NULL,
	[DiasEntreSolyRes] [int] NOT NULL,
	[CantidadReservas] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Reserva] PRIMARY KEY CLUSTERED 
(
	[IdReserva_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Dim_Categoria]    Script Date: 11/21/2012 11:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dim_Categoria]
AS
SELECT     row_number() OVER (ORDER BY MIN(FechaCreacion) ASC) AS IdCategoria_SK, IdCategoria AS IdCategoria_BK, Categoria, MIN(FechaCreacion) AS Fecha
FROM         dbo.Dim_Recurso
GROUP BY IdCategoria, Categoria
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_Categoria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_Categoria'
GO
/****** Object:  View [dbo].[Dim_HoraInicial]    Script Date: 11/21/2012 11:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dim_HoraInicial]
AS
SELECT     Hora, ParteDelDia, AmPm, IdHora
FROM         dbo.Dim_Hora
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Dim_Hora"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_HoraInicial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_HoraInicial'
GO
/****** Object:  View [dbo].[Dim_HoraFinal]    Script Date: 11/21/2012 11:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dim_HoraFinal]
AS
SELECT     Hora, ParteDelDia, AmPm, IdHora
FROM         dbo.Dim_Hora
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Dim_Hora"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_HoraFinal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_HoraFinal'
GO
/****** Object:  View [dbo].[Dim_FechaInicial]    Script Date: 11/21/2012 11:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dim_FechaInicial]
AS
SELECT     Fecha, DescripcionFecha, Anyo, Semestre, Trimestre, Mes, IdFecha
FROM         dbo.Dim_Fecha
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Dim_Fecha"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 260
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_FechaInicial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_FechaInicial'
GO
/****** Object:  View [dbo].[Dim_FechaFinal]    Script Date: 11/21/2012 11:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dim_FechaFinal]
AS
SELECT     Fecha, DescripcionFecha, Anyo, Semestre, Trimestre, Mes, IdFecha
FROM         dbo.Dim_Fecha
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Dim_Fecha"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 260
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_FechaFinal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_FechaFinal'
GO
/****** Object:  View [dbo].[Dim_ReservaEspacios]    Script Date: 11/21/2012 11:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dim_ReservaEspacios]
AS
SELECT     dbo.Fact_ReservaEspacios.IdReservaEspacio_SK, dbo.Fact_ReservaEspacios.IdReservaEspacio_BK, dbo.Dim_Fecha.Fecha, dbo.Fact_ReservaEspacios.Cupo, 
                      dbo.Fact_ReservaEspacios.DifCupoYCapacidad
FROM         dbo.Fact_ReservaEspacios INNER JOIN
                      dbo.Dim_Fecha ON dbo.Fact_ReservaEspacios.IdFechaReserva = dbo.Dim_Fecha.IdFecha
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[67] 4[6] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Fact_ReservaEspacios"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 248
               Right = 237
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Dim_Fecha"
            Begin Extent = 
               Top = 35
               Left = 410
               Bottom = 218
               Right = 623
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_ReservaEspacios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_ReservaEspacios'
GO
/****** Object:  View [dbo].[Dim_Reserva]    Script Date: 11/21/2012 11:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dim_Reserva]
AS
SELECT     dbo.Fact_Reserva.IdReserva_SK, dbo.Fact_Reserva.IdReserva_BK, Dim_Hora_1.Hora AS HoraFinal, Dim_Fecha_1.Fecha AS FechaReserva, 
                      dbo.Dim_Fecha.Fecha AS FechaSolicitud, dbo.Dim_Hora.Hora AS HoraInicial
FROM         dbo.Fact_Reserva INNER JOIN
                      dbo.Dim_Fecha ON dbo.Fact_Reserva.IdFechaSolicitud = dbo.Dim_Fecha.IdFecha INNER JOIN
                      dbo.Dim_Hora ON dbo.Fact_Reserva.IdHoraInicial = dbo.Dim_Hora.IdHora INNER JOIN
                      dbo.Dim_Fecha AS Dim_Fecha_1 ON dbo.Fact_Reserva.IdFechaReserva = Dim_Fecha_1.IdFecha INNER JOIN
                      dbo.Dim_Hora AS Dim_Hora_1 ON dbo.Fact_Reserva.IdHoraFinal = Dim_Hora_1.IdHora
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Fact_Reserva"
            Begin Extent = 
               Top = 31
               Left = 268
               Bottom = 150
               Right = 467
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "Dim_Fecha"
            Begin Extent = 
               Top = 6
               Left = 0
               Bottom = 125
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Dim_Hora"
            Begin Extent = 
               Top = 5
               Left = 532
               Bottom = 124
               Right = 730
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Dim_Fecha_1"
            Begin Extent = 
               Top = 144
               Left = 0
               Bottom = 263
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Dim_Hora_1"
            Begin Extent = 
               Top = 132
               Left = 532
               Bottom = 251
               Right = 730
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1800
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_Reserva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_Reserva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Dim_Reserva'
GO
/****** Object:  Table [dbo].[Fact_Prestamo]    Script Date: 11/21/2012 11:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Prestamo](
	[IdPrestamo_SK] [int] IDENTITY(1,1) NOT NULL,
	[IdPrestamo_BK] [int] NOT NULL,
	[IdEquipo] [int] NOT NULL,
	[IdReserva] [int] NOT NULL,
	[IdEspacio] [int] NOT NULL,
	[IdDependencia] [int] NOT NULL,
	[IdFechaPrestamo] [int] NOT NULL,
	[IdFechaSolicitud] [int] NOT NULL,
	[IdHoraInicial] [int] NOT NULL,
	[IdHoraFinal] [int] NOT NULL,
	[CantidadPrestamos] [int] NOT NULL,
	[DiasEntreSolYRes] [int] NOT NULL,
	[HorasDuracionPrestamo] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaUpdate] [datetime] NULL,
	[FechaCaducidad] [datetime] NULL,
 CONSTRAINT [PK_Prestamo] PRIMARY KEY CLUSTERED 
(
	[IdPrestamo_SK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[BorrarTodo]    Script Date: 11/21/2012 11:20:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BorrarTodo] 
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
delete
from DW_REducativos.dbo.Fact_Reserva
delete
from DW_REducativos.dbo.Fact_Mantenimiento
delete
from DW_REducativos.dbo.Fact_Novedades
delete
from DW_REducativos.dbo.Fact_Prestamo
delete
from DW_REducativos.dbo.Dim_Dependencia
delete
from DW_REducativos.dbo.Dim_Empresa
delete
from DW_REducativos.dbo.Dim_Espacio
delete
from DW_REducativos.dbo.Dim_EstadoReserva
delete
from DW_REducativos.dbo.Dim_Fecha
delete
from DW_REducativos.dbo.Dim_Hora
delete
from DW_REducativos.dbo.Dim_Recurso
delete
from DW_REducativos.dbo.Dim_TipoMantenimiento
delete
from DW_REducativos.dbo.Dim_TipoUsoReserva
delete
from DW_REducativos.dbo.Dim_TiposNovedad
delete
from DW_REducativos.dbo.Dim_Usuario
END
GO
/****** Object:  ForeignKey [FK_Fact_Novedades_Dim_Fecha]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_Novedades]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Novedades_Dim_Fecha] FOREIGN KEY([IdFechaNovedad])
REFERENCES [dbo].[Dim_Fecha] ([IdFecha])
GO
ALTER TABLE [dbo].[Fact_Novedades] CHECK CONSTRAINT [FK_Fact_Novedades_Dim_Fecha]
GO
/****** Object:  ForeignKey [FK_Fact_Novedades_Dim_Recurso]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_Novedades]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Novedades_Dim_Recurso] FOREIGN KEY([IdEquipo])
REFERENCES [dbo].[Dim_Recurso] ([IdEquipo_SK])
GO
ALTER TABLE [dbo].[Fact_Novedades] CHECK CONSTRAINT [FK_Fact_Novedades_Dim_Recurso]
GO
/****** Object:  ForeignKey [FK_Fact_Novedades_Dim_TiposNovedad]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_Novedades]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Novedades_Dim_TiposNovedad] FOREIGN KEY([IdTiposNovedad])
REFERENCES [dbo].[Dim_TiposNovedad] ([IdTipoNovedad_SK])
GO
ALTER TABLE [dbo].[Fact_Novedades] CHECK CONSTRAINT [FK_Fact_Novedades_Dim_TiposNovedad]
GO
/****** Object:  ForeignKey [FK_Fact_Mantenimiento_Dim_Empresa]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_Mantenimiento]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Mantenimiento_Dim_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Dim_Empresa] ([IdEmpresa_SK])
GO
ALTER TABLE [dbo].[Fact_Mantenimiento] CHECK CONSTRAINT [FK_Fact_Mantenimiento_Dim_Empresa]
GO
/****** Object:  ForeignKey [FK_Fact_Mantenimiento_Dim_Fecha]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_Mantenimiento]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Mantenimiento_Dim_Fecha] FOREIGN KEY([IdFechaMantenimiento])
REFERENCES [dbo].[Dim_Fecha] ([IdFecha])
GO
ALTER TABLE [dbo].[Fact_Mantenimiento] CHECK CONSTRAINT [FK_Fact_Mantenimiento_Dim_Fecha]
GO
/****** Object:  ForeignKey [FK_Fact_Mantenimiento_Dim_Recurso]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_Mantenimiento]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Mantenimiento_Dim_Recurso] FOREIGN KEY([IdEquipo])
REFERENCES [dbo].[Dim_Recurso] ([IdEquipo_SK])
GO
ALTER TABLE [dbo].[Fact_Mantenimiento] CHECK CONSTRAINT [FK_Fact_Mantenimiento_Dim_Recurso]
GO
/****** Object:  ForeignKey [FK_Fact_Mantenimiento_Dim_TipoMantenimiento]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_Mantenimiento]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Mantenimiento_Dim_TipoMantenimiento] FOREIGN KEY([IdTipoMantenimiento])
REFERENCES [dbo].[Dim_TipoMantenimiento] ([IdTipoMantenimiento_SK])
GO
ALTER TABLE [dbo].[Fact_Mantenimiento] CHECK CONSTRAINT [FK_Fact_Mantenimiento_Dim_TipoMantenimiento]
GO
/****** Object:  ForeignKey [FK_Fact_AsignacionEspacios_Dim_CambioEspacio]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_AsignacionEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_CambioEspacio] FOREIGN KEY([CambioEspacioReserva])
REFERENCES [dbo].[Dim_CambioEspacio] ([IdCambioEspacio])
GO
ALTER TABLE [dbo].[Fact_AsignacionEspacios] CHECK CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_CambioEspacio]
GO
/****** Object:  ForeignKey [FK_Fact_AsignacionEspacios_Dim_Espacio]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_AsignacionEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_Espacio] FOREIGN KEY([IdEspacio])
REFERENCES [dbo].[Dim_Espacio] ([IdEspacio_SK])
GO
ALTER TABLE [dbo].[Fact_AsignacionEspacios] CHECK CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_Espacio]
GO
/****** Object:  ForeignKey [FK_Fact_AsignacionEspacios_Dim_EstadoReservaEspacio]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_AsignacionEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_EstadoReservaEspacio] FOREIGN KEY([IdEstadoReservaEspacio])
REFERENCES [dbo].[Dim_EstadoReservaEspacio] ([IdEstado_SK])
GO
ALTER TABLE [dbo].[Fact_AsignacionEspacios] CHECK CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_EstadoReservaEspacio]
GO
/****** Object:  ForeignKey [FK_Fact_AsignacionEspacios_Dim_Evento]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_AsignacionEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_Evento] FOREIGN KEY([IdEvento])
REFERENCES [dbo].[Dim_Evento] ([IdTipoEvento_SK])
GO
ALTER TABLE [dbo].[Fact_AsignacionEspacios] CHECK CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_Evento]
GO
/****** Object:  ForeignKey [FK_Fact_AsignacionEspacios_Dim_Fecha]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_AsignacionEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_Fecha] FOREIGN KEY([FechaAsignacion])
REFERENCES [dbo].[Dim_Fecha] ([IdFecha])
GO
ALTER TABLE [dbo].[Fact_AsignacionEspacios] CHECK CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_Fecha]
GO
/****** Object:  ForeignKey [FK_Fact_AsignacionEspacios_Dim_Hora]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_AsignacionEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_Hora] FOREIGN KEY([HoraFinal])
REFERENCES [dbo].[Dim_Hora] ([IdHora])
GO
ALTER TABLE [dbo].[Fact_AsignacionEspacios] CHECK CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_Hora]
GO
/****** Object:  ForeignKey [FK_Fact_AsignacionEspacios_Dim_Hora1]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_AsignacionEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_Hora1] FOREIGN KEY([HoraInicial])
REFERENCES [dbo].[Dim_Hora] ([IdHora])
GO
ALTER TABLE [dbo].[Fact_AsignacionEspacios] CHECK CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_Hora1]
GO
/****** Object:  ForeignKey [FK_Fact_AsignacionEspacios_Dim_Usuario]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_AsignacionEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Dim_Usuario] ([UserId_SK])
GO
ALTER TABLE [dbo].[Fact_AsignacionEspacios] CHECK CONSTRAINT [FK_Fact_AsignacionEspacios_Dim_Usuario]
GO
/****** Object:  ForeignKey [FK_Fact_AsignacionClases_Dim_Espacio]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_AsignacionClases]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_AsignacionClases_Dim_Espacio] FOREIGN KEY([IdEspacio])
REFERENCES [dbo].[Dim_Espacio] ([IdEspacio_SK])
GO
ALTER TABLE [dbo].[Fact_AsignacionClases] CHECK CONSTRAINT [FK_Fact_AsignacionClases_Dim_Espacio]
GO
/****** Object:  ForeignKey [FK_Fact_AsignacionClases_Dim_Grupo]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_AsignacionClases]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_AsignacionClases_Dim_Grupo] FOREIGN KEY([IdGrupo])
REFERENCES [dbo].[Dim_Grupo] ([IdGrupo_SK])
GO
ALTER TABLE [dbo].[Fact_AsignacionClases] CHECK CONSTRAINT [FK_Fact_AsignacionClases_Dim_Grupo]
GO
/****** Object:  ForeignKey [FK_Fact_AsignacionClases_Dim_Hora]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_AsignacionClases]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_AsignacionClases_Dim_Hora] FOREIGN KEY([IdHoraFinal])
REFERENCES [dbo].[Dim_Hora] ([IdHora])
GO
ALTER TABLE [dbo].[Fact_AsignacionClases] CHECK CONSTRAINT [FK_Fact_AsignacionClases_Dim_Hora]
GO
/****** Object:  ForeignKey [FK_Fact_AsignacionClases_Dim_Hora1]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_AsignacionClases]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_AsignacionClases_Dim_Hora1] FOREIGN KEY([IdHoraInicial])
REFERENCES [dbo].[Dim_Hora] ([IdHora])
GO
ALTER TABLE [dbo].[Fact_AsignacionClases] CHECK CONSTRAINT [FK_Fact_AsignacionClases_Dim_Hora1]
GO
/****** Object:  ForeignKey [FK_Fact_AsignacionClases_Dim_Periodo]    Script Date: 11/21/2012 11:20:25 ******/
ALTER TABLE [dbo].[Fact_AsignacionClases]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_AsignacionClases_Dim_Periodo] FOREIGN KEY([IdPeriodo])
REFERENCES [dbo].[Dim_Periodo] ([IdPeriodo_SK])
GO
ALTER TABLE [dbo].[Fact_AsignacionClases] CHECK CONSTRAINT [FK_Fact_AsignacionClases_Dim_Periodo]
GO
/****** Object:  ForeignKey [FK_Fact_ReservaEspacios_Dim_Dependencia]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_ReservaEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Dependencia] FOREIGN KEY([IdDependencia])
REFERENCES [dbo].[Dim_Dependencia] ([IdDependencia_SK])
GO
ALTER TABLE [dbo].[Fact_ReservaEspacios] CHECK CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Dependencia]
GO
/****** Object:  ForeignKey [FK_Fact_ReservaEspacios_Dim_Espacio]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_ReservaEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Espacio] FOREIGN KEY([IdEspacioSolicitado])
REFERENCES [dbo].[Dim_Espacio] ([IdEspacio_SK])
GO
ALTER TABLE [dbo].[Fact_ReservaEspacios] CHECK CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Espacio]
GO
/****** Object:  ForeignKey [FK_Fact_ReservaEspacios_Dim_EstadoReservaEspacio]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_ReservaEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_ReservaEspacios_Dim_EstadoReservaEspacio] FOREIGN KEY([IdEstadoReservaEspacio])
REFERENCES [dbo].[Dim_EstadoReservaEspacio] ([IdEstado_SK])
GO
ALTER TABLE [dbo].[Fact_ReservaEspacios] CHECK CONSTRAINT [FK_Fact_ReservaEspacios_Dim_EstadoReservaEspacio]
GO
/****** Object:  ForeignKey [FK_Fact_ReservaEspacios_Dim_Evento]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_ReservaEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Evento] FOREIGN KEY([IdEvento])
REFERENCES [dbo].[Dim_Evento] ([IdTipoEvento_SK])
GO
ALTER TABLE [dbo].[Fact_ReservaEspacios] CHECK CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Evento]
GO
/****** Object:  ForeignKey [FK_Fact_ReservaEspacios_Dim_Fecha]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_ReservaEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Fecha] FOREIGN KEY([IdFechaReserva])
REFERENCES [dbo].[Dim_Fecha] ([IdFecha])
GO
ALTER TABLE [dbo].[Fact_ReservaEspacios] CHECK CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Fecha]
GO
/****** Object:  ForeignKey [FK_Fact_ReservaEspacios_Dim_Fecha1]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_ReservaEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Fecha1] FOREIGN KEY([IdFechaRegistro])
REFERENCES [dbo].[Dim_Fecha] ([IdFecha])
GO
ALTER TABLE [dbo].[Fact_ReservaEspacios] CHECK CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Fecha1]
GO
/****** Object:  ForeignKey [FK_Fact_ReservaEspacios_Dim_Fecha2]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_ReservaEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Fecha2] FOREIGN KEY([IdFechaCancelacion])
REFERENCES [dbo].[Dim_Fecha] ([IdFecha])
GO
ALTER TABLE [dbo].[Fact_ReservaEspacios] CHECK CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Fecha2]
GO
/****** Object:  ForeignKey [FK_Fact_ReservaEspacios_Dim_Hora]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_ReservaEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Hora] FOREIGN KEY([IdHoraInicial])
REFERENCES [dbo].[Dim_Hora] ([IdHora])
GO
ALTER TABLE [dbo].[Fact_ReservaEspacios] CHECK CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Hora]
GO
/****** Object:  ForeignKey [FK_Fact_ReservaEspacios_Dim_Hora1]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_ReservaEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Hora1] FOREIGN KEY([IdHoraFinal])
REFERENCES [dbo].[Dim_Hora] ([IdHora])
GO
ALTER TABLE [dbo].[Fact_ReservaEspacios] CHECK CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Hora1]
GO
/****** Object:  ForeignKey [FK_Fact_ReservaEspacios_Dim_Usuario]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_ReservaEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Usuario] FOREIGN KEY([IdUsuarioSolicitante])
REFERENCES [dbo].[Dim_Usuario] ([UserId_SK])
GO
ALTER TABLE [dbo].[Fact_ReservaEspacios] CHECK CONSTRAINT [FK_Fact_ReservaEspacios_Dim_Usuario]
GO
/****** Object:  ForeignKey [FK_Fact_Reserva_Dim_Dependencia]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_Reserva]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Reserva_Dim_Dependencia] FOREIGN KEY([IdDependencia])
REFERENCES [dbo].[Dim_Dependencia] ([IdDependencia_SK])
GO
ALTER TABLE [dbo].[Fact_Reserva] CHECK CONSTRAINT [FK_Fact_Reserva_Dim_Dependencia]
GO
/****** Object:  ForeignKey [FK_Fact_Reserva_Dim_Espacio]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_Reserva]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Reserva_Dim_Espacio] FOREIGN KEY([IdEspacio])
REFERENCES [dbo].[Dim_Espacio] ([IdEspacio_SK])
GO
ALTER TABLE [dbo].[Fact_Reserva] CHECK CONSTRAINT [FK_Fact_Reserva_Dim_Espacio]
GO
/****** Object:  ForeignKey [FK_Fact_Reserva_Dim_EstadoReserva]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_Reserva]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Reserva_Dim_EstadoReserva] FOREIGN KEY([IdEstadoReserva])
REFERENCES [dbo].[Dim_EstadoReserva] ([IdEstadoReserva])
GO
ALTER TABLE [dbo].[Fact_Reserva] CHECK CONSTRAINT [FK_Fact_Reserva_Dim_EstadoReserva]
GO
/****** Object:  ForeignKey [FK_Fact_Reserva_Dim_FechaRes]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_Reserva]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Reserva_Dim_FechaRes] FOREIGN KEY([IdFechaReserva])
REFERENCES [dbo].[Dim_Fecha] ([IdFecha])
GO
ALTER TABLE [dbo].[Fact_Reserva] CHECK CONSTRAINT [FK_Fact_Reserva_Dim_FechaRes]
GO
/****** Object:  ForeignKey [FK_Fact_Reserva_Dim_FechaSol]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_Reserva]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Reserva_Dim_FechaSol] FOREIGN KEY([IdFechaSolicitud])
REFERENCES [dbo].[Dim_Fecha] ([IdFecha])
GO
ALTER TABLE [dbo].[Fact_Reserva] CHECK CONSTRAINT [FK_Fact_Reserva_Dim_FechaSol]
GO
/****** Object:  ForeignKey [FK_Fact_Reserva_Dim_HoraFin]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_Reserva]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Reserva_Dim_HoraFin] FOREIGN KEY([IdHoraFinal])
REFERENCES [dbo].[Dim_Hora] ([IdHora])
GO
ALTER TABLE [dbo].[Fact_Reserva] CHECK CONSTRAINT [FK_Fact_Reserva_Dim_HoraFin]
GO
/****** Object:  ForeignKey [FK_Fact_Reserva_Dim_HoraIni]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_Reserva]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Reserva_Dim_HoraIni] FOREIGN KEY([IdHoraInicial])
REFERENCES [dbo].[Dim_Hora] ([IdHora])
GO
ALTER TABLE [dbo].[Fact_Reserva] CHECK CONSTRAINT [FK_Fact_Reserva_Dim_HoraIni]
GO
/****** Object:  ForeignKey [FK_Fact_Reserva_Dim_TipoUsoReserva]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_Reserva]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Reserva_Dim_TipoUsoReserva] FOREIGN KEY([IdUsoReserva])
REFERENCES [dbo].[Dim_TipoUsoReserva] ([IdTipoUsoReserva_SK])
GO
ALTER TABLE [dbo].[Fact_Reserva] CHECK CONSTRAINT [FK_Fact_Reserva_Dim_TipoUsoReserva]
GO
/****** Object:  ForeignKey [FK_Fact_Reserva_Dim_Usuario]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_Reserva]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Reserva_Dim_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Dim_Usuario] ([UserId_SK])
GO
ALTER TABLE [dbo].[Fact_Reserva] CHECK CONSTRAINT [FK_Fact_Reserva_Dim_Usuario]
GO
/****** Object:  ForeignKey [FK_Fact_Prestamo_Dim_Dependencia]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_Prestamo]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Prestamo_Dim_Dependencia] FOREIGN KEY([IdDependencia])
REFERENCES [dbo].[Dim_Dependencia] ([IdDependencia_SK])
GO
ALTER TABLE [dbo].[Fact_Prestamo] CHECK CONSTRAINT [FK_Fact_Prestamo_Dim_Dependencia]
GO
/****** Object:  ForeignKey [FK_Fact_Prestamo_Dim_Espacio]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_Prestamo]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Prestamo_Dim_Espacio] FOREIGN KEY([IdEspacio])
REFERENCES [dbo].[Dim_Espacio] ([IdEspacio_SK])
GO
ALTER TABLE [dbo].[Fact_Prestamo] CHECK CONSTRAINT [FK_Fact_Prestamo_Dim_Espacio]
GO
/****** Object:  ForeignKey [FK_Fact_Prestamo_Dim_Recurso]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_Prestamo]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Prestamo_Dim_Recurso] FOREIGN KEY([IdEquipo])
REFERENCES [dbo].[Dim_Recurso] ([IdEquipo_SK])
GO
ALTER TABLE [dbo].[Fact_Prestamo] CHECK CONSTRAINT [FK_Fact_Prestamo_Dim_Recurso]
GO
/****** Object:  ForeignKey [FK_Fact_Prestamo_Fact_Prestamo]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_Prestamo]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Prestamo_Fact_Prestamo] FOREIGN KEY([IdPrestamo_SK])
REFERENCES [dbo].[Fact_Prestamo] ([IdPrestamo_SK])
GO
ALTER TABLE [dbo].[Fact_Prestamo] CHECK CONSTRAINT [FK_Fact_Prestamo_Fact_Prestamo]
GO
/****** Object:  ForeignKey [FK_Fact_Prestamo_Fact_Reserva]    Script Date: 11/21/2012 11:20:31 ******/
ALTER TABLE [dbo].[Fact_Prestamo]  WITH NOCHECK ADD  CONSTRAINT [FK_Fact_Prestamo_Fact_Reserva] FOREIGN KEY([IdReserva])
REFERENCES [dbo].[Fact_Reserva] ([IdReserva_SK])
GO
ALTER TABLE [dbo].[Fact_Prestamo] CHECK CONSTRAINT [FK_Fact_Prestamo_Fact_Reserva]
GO
