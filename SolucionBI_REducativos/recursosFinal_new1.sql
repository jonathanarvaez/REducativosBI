USE [master]
GO
/****** Object:  Database [recursosFinal_new1]    Script Date: 11/12/2012 15:45:33 ******/
CREATE DATABASE [recursosFinal_new1] ON  PRIMARY 
( NAME = N'recursosFinal_new1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\recursosFinal_new1.mdf' , SIZE = 46080KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'recursosFinal_new1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\recursosFinal_new1_log.ldf' , SIZE = 688384KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [recursosFinal_new1] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [recursosFinal_new1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [recursosFinal_new1] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [recursosFinal_new1] SET ANSI_NULLS OFF
GO
ALTER DATABASE [recursosFinal_new1] SET ANSI_PADDING OFF
GO
ALTER DATABASE [recursosFinal_new1] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [recursosFinal_new1] SET ARITHABORT OFF
GO
ALTER DATABASE [recursosFinal_new1] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [recursosFinal_new1] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [recursosFinal_new1] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [recursosFinal_new1] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [recursosFinal_new1] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [recursosFinal_new1] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [recursosFinal_new1] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [recursosFinal_new1] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [recursosFinal_new1] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [recursosFinal_new1] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [recursosFinal_new1] SET  DISABLE_BROKER
GO
ALTER DATABASE [recursosFinal_new1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [recursosFinal_new1] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [recursosFinal_new1] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [recursosFinal_new1] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [recursosFinal_new1] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [recursosFinal_new1] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [recursosFinal_new1] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [recursosFinal_new1] SET  READ_WRITE
GO
ALTER DATABASE [recursosFinal_new1] SET RECOVERY FULL
GO
ALTER DATABASE [recursosFinal_new1] SET  MULTI_USER
GO
ALTER DATABASE [recursosFinal_new1] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [recursosFinal_new1] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'recursosFinal_new1', N'ON'
GO
USE [recursosFinal_new1]
GO
/****** Object:  ForeignKey [FK_PLAN_PROGRAMA_PROGRAMA]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[PlanPrograma] DROP CONSTRAINT [FK_PLAN_PROGRAMA_PROGRAMA]
GO
/****** Object:  ForeignKey [FK_EmpresaxServicios_Empresa]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[EmpresaxServicios] DROP CONSTRAINT [FK_EmpresaxServicios_Empresa]
GO
/****** Object:  ForeignKey [FK_EmpresaxServicios_ServiciosEmpresas]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[EmpresaxServicios] DROP CONSTRAINT [FK_EmpresaxServicios_ServiciosEmpresas]
GO
/****** Object:  ForeignKey [FK_Laboratorio_Programa]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[Laboratorio] DROP CONSTRAINT [FK_Laboratorio_Programa]
GO
/****** Object:  ForeignKey [FK_Contrato_Empresa]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[Contrato] DROP CONSTRAINT [FK_Contrato_Empresa]
GO
/****** Object:  ForeignKey [FK_Contrato_TipoContrato]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[Contrato] DROP CONSTRAINT [FK_Contrato_TipoContrato]
GO
/****** Object:  ForeignKey [FK_Docente_TipoVinculacion]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[Docente] DROP CONSTRAINT [FK_Docente_TipoVinculacion]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__72910220]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [FK__aspnet_Pa__Appli__72910220]
GO
/****** Object:  ForeignKey [FKACTUALIZA_263313]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[ActualizaPeriodo] DROP CONSTRAINT [FKACTUALIZA_263313]
GO
/****** Object:  ForeignKey [FKBLOQUES459729]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Bloques] DROP CONSTRAINT [FKBLOQUES459729]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__339FAB6E]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [FK__aspnet_Us__Appli__339FAB6E]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__7755B73D]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [FK__aspnet_Ro__Appli__7755B73D]
GO
/****** Object:  ForeignKey [ModelosMarcas]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Modelo] DROP CONSTRAINT [ModelosMarcas]
GO
/****** Object:  ForeignKey [FK_Sancion_CategoriaSancion_CategoriaSancion]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Sancion_CategoriaSancion] DROP CONSTRAINT [FK_Sancion_CategoriaSancion_CategoriaSancion]
GO
/****** Object:  ForeignKey [FK_Sancion_CategoriaSancion_Sancion]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Sancion_CategoriaSancion] DROP CONSTRAINT [FK_Sancion_CategoriaSancion_Sancion]
GO
/****** Object:  ForeignKey [FK_Servicio_CategoriaEquipo]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Servicio] DROP CONSTRAINT [FK_Servicio_CategoriaEquipo]
GO
/****** Object:  ForeignKey [FK_Servicio_Sede]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Servicio] DROP CONSTRAINT [FK_Servicio_Sede]
GO
/****** Object:  ForeignKey [FK_PROGRAMA_PRIORIDAD_PRIORIDAD]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[ProgramaPrioridad] DROP CONSTRAINT [FK_PROGRAMA_PRIORIDAD_PRIORIDAD]
GO
/****** Object:  ForeignKey [FK_PROGRAMA_PRIORIDAD_PROGRAMA]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[ProgramaPrioridad] DROP CONSTRAINT [FK_PROGRAMA_PRIORIDAD_PROGRAMA]
GO
/****** Object:  ForeignKey [FK_UsoExclusivo_CategoriaEquipo]    Script Date: 11/12/2012 15:45:42 ******/
ALTER TABLE [dbo].[UsoExclusivo] DROP CONSTRAINT [FK_UsoExclusivo_CategoriaEquipo]
GO
/****** Object:  ForeignKey [FK_UsoExclusivo_Periodo]    Script Date: 11/12/2012 15:45:42 ******/
ALTER TABLE [dbo].[UsoExclusivo] DROP CONSTRAINT [FK_UsoExclusivo_Periodo]
GO
/****** Object:  ForeignKey [FK_SolicitudLaboratorio_FuenteGasto]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[SolicitudLaboratorio] DROP CONSTRAINT [FK_SolicitudLaboratorio_FuenteGasto]
GO
/****** Object:  ForeignKey [FK_SolicitudLaboratorio_Laboratorio]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[SolicitudLaboratorio] DROP CONSTRAINT [FK_SolicitudLaboratorio_Laboratorio]
GO
/****** Object:  ForeignKey [FK_SolicitudLaboratorio_Suministro]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[SolicitudLaboratorio] DROP CONSTRAINT [FK_SolicitudLaboratorio_Suministro]
GO
/****** Object:  ForeignKey [FK_Solicitud_Servicio]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[Solicitud] DROP CONSTRAINT [FK_Solicitud_Servicio]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__74794A92]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__PathI__74794A92]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__756D6ECB]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__UserI__756D6ECB]
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__58D1301D]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_Profile] DROP CONSTRAINT [FK__aspnet_Pr__UserI__58D1301D]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__671F4F74]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__RoleI__671F4F74]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__662B2B3B]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__UserI__662B2B3B]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__70A8B9AE]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__Appli__70A8B9AE]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__719CDDE7]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__UserI__719CDDE7]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__73852659]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] DROP CONSTRAINT [FK__aspnet_Pe__PathI__73852659]
GO
/****** Object:  ForeignKey [FK_DependenciaUsuario_aspnet_Users]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[DependenciaUsuario] DROP CONSTRAINT [FK_DependenciaUsuario_aspnet_Users]
GO
/****** Object:  ForeignKey [FK_DependenciaUsuario_Dependencia]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[DependenciaUsuario] DROP CONSTRAINT [FK_DependenciaUsuario_Dependencia]
GO
/****** Object:  ForeignKey [FK_Espacio_TipoEspacio]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[Espacio] DROP CONSTRAINT [FK_Espacio_TipoEspacio]
GO
/****** Object:  ForeignKey [FKSALON212358]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[Espacio] DROP CONSTRAINT [FKSALON212358]
GO
/****** Object:  ForeignKey [EquiposCategoriasEquipos]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[Equipo] DROP CONSTRAINT [EquiposCategoriasEquipos]
GO
/****** Object:  ForeignKey [EquiposModelos]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[Equipo] DROP CONSTRAINT [EquiposModelos]
GO
/****** Object:  ForeignKey [FK_Equipo_Dependencia]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[Equipo] DROP CONSTRAINT [FK_Equipo_Dependencia]
GO
/****** Object:  ForeignKey [FK_Equipos_Sede]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[Equipo] DROP CONSTRAINT [FK_Equipos_Sede]
GO
/****** Object:  ForeignKey [FK_ItemContratado_Contrato]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ItemContratado] DROP CONSTRAINT [FK_ItemContratado_Contrato]
GO
/****** Object:  ForeignKey [FK_PermisoLaboratorio_aspnet_Roles]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[PermisoLaboratorio] DROP CONSTRAINT [FK_PermisoLaboratorio_aspnet_Roles]
GO
/****** Object:  ForeignKey [FK_PermisoLaboratorio_Laboratorio]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[PermisoLaboratorio] DROP CONSTRAINT [FK_PermisoLaboratorio_Laboratorio]
GO
/****** Object:  ForeignKey [FK_Permiso_aspnet_Roles]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Permiso] DROP CONSTRAINT [FK_Permiso_aspnet_Roles]
GO
/****** Object:  ForeignKey [FK_Permiso_Programa]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Permiso] DROP CONSTRAINT [FK_Permiso_Programa]
GO
/****** Object:  ForeignKey [FK_MATERIA_PLAN_PROGRAMA]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Materia] DROP CONSTRAINT [FK_MATERIA_PLAN_PROGRAMA]
GO
/****** Object:  ForeignKey [FK_ReservaEspacios_aspnet_Users]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ReservaEspacios] DROP CONSTRAINT [FK_ReservaEspacios_aspnet_Users]
GO
/****** Object:  ForeignKey [FK_ReservaEspacios_Dependencia]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ReservaEspacios] DROP CONSTRAINT [FK_ReservaEspacios_Dependencia]
GO
/****** Object:  ForeignKey [FK_ReservaEspacios_Espacio1]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ReservaEspacios] DROP CONSTRAINT [FK_ReservaEspacios_Espacio1]
GO
/****** Object:  ForeignKey [FK_ReservaEspacios_EstadoReservaEspacio]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ReservaEspacios] DROP CONSTRAINT [FK_ReservaEspacios_EstadoReservaEspacio]
GO
/****** Object:  ForeignKey [FK_ReservaEspacios_Periodo]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ReservaEspacios] DROP CONSTRAINT [FK_ReservaEspacios_Periodo]
GO
/****** Object:  ForeignKey [FK_ReservaEspacios_TipoEvento]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ReservaEspacios] DROP CONSTRAINT [FK_ReservaEspacios_TipoEvento]
GO
/****** Object:  ForeignKey [FK_Reserva_aspnet_Users]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Reserva] DROP CONSTRAINT [FK_Reserva_aspnet_Users]
GO
/****** Object:  ForeignKey [FK_Reserva_Dependencia]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Reserva] DROP CONSTRAINT [FK_Reserva_Dependencia]
GO
/****** Object:  ForeignKey [FK_Reserva_Servicio]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Reserva] DROP CONSTRAINT [FK_Reserva_Servicio]
GO
/****** Object:  ForeignKey [FK_Reserva_TipoUsoReserva]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Reserva] DROP CONSTRAINT [FK_Reserva_TipoUsoReserva]
GO
/****** Object:  ForeignKey [FK_Reservas_Espacio]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Reserva] DROP CONSTRAINT [FK_Reservas_Espacio]
GO
/****** Object:  ForeignKey [FK_Grupo_Docente]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Grupo] DROP CONSTRAINT [FK_Grupo_Docente]
GO
/****** Object:  ForeignKey [FKGRUPO113750]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Grupo] DROP CONSTRAINT [FKGRUPO113750]
GO
/****** Object:  ForeignKey [FKGRUPO158371]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Grupo] DROP CONSTRAINT [FKGRUPO158371]
GO
/****** Object:  ForeignKey [HistorialnovedadesEquipos]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[HistorialNovedad] DROP CONSTRAINT [HistorialnovedadesEquipos]
GO
/****** Object:  ForeignKey [HistorialNovedadesTipoNovedad]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[HistorialNovedad] DROP CONSTRAINT [HistorialNovedadesTipoNovedad]
GO
/****** Object:  ForeignKey [FK_ContratadoSolicitud_ItemContratado]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ContratadoSolicitud] DROP CONSTRAINT [FK_ContratadoSolicitud_ItemContratado]
GO
/****** Object:  ForeignKey [FK_ContratadoSolicitud_SolicitudLaboratorio]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ContratadoSolicitud] DROP CONSTRAINT [FK_ContratadoSolicitud_SolicitudLaboratorio]
GO
/****** Object:  ForeignKey [FK_DependenciaEspacio_Dependencia]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[DependenciaEspacio] DROP CONSTRAINT [FK_DependenciaEspacio_Dependencia]
GO
/****** Object:  ForeignKey [FK_DependenciaEspacio_Espacio]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[DependenciaEspacio] DROP CONSTRAINT [FK_DependenciaEspacio_Espacio]
GO
/****** Object:  ForeignKey [FK_RESTRICCION_SALON_PERIODO]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[RestriccionEspacio] DROP CONSTRAINT [FK_RESTRICCION_SALON_PERIODO]
GO
/****** Object:  ForeignKey [FK_RestriccionEspacio_Espacio]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[RestriccionEspacio] DROP CONSTRAINT [FK_RestriccionEspacio_Espacio]
GO
/****** Object:  ForeignKey [FK_SuministrosEntregados_ContratadoSolicitud]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[SuministrosEntregados] DROP CONSTRAINT [FK_SuministrosEntregados_ContratadoSolicitud]
GO
/****** Object:  ForeignKey [FKPrestamos455484]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[Prestamo] DROP CONSTRAINT [FKPrestamos455484]
GO
/****** Object:  ForeignKey [PrestamoReservas]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[Prestamo] DROP CONSTRAINT [PrestamoReservas]
GO
/****** Object:  ForeignKey [PrestamosEquipos]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[Prestamo] DROP CONSTRAINT [PrestamosEquipos]
GO
/****** Object:  ForeignKey [FK_SancionEspacios_ReservaEspacios]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[SancionEspacios] DROP CONSTRAINT [FK_SancionEspacios_ReservaEspacios]
GO
/****** Object:  ForeignKey [FK_SancionEspacios_Sancion_CategoriaSancion]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[SancionEspacios] DROP CONSTRAINT [FK_SancionEspacios_Sancion_CategoriaSancion]
GO
/****** Object:  ForeignKey [FK_SancionAudiovisuales_Sancion_CategoriaSancion1]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[SancionAudiovisuales] DROP CONSTRAINT [FK_SancionAudiovisuales_Sancion_CategoriaSancion1]
GO
/****** Object:  ForeignKey [SancionesReservas]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[SancionAudiovisuales] DROP CONSTRAINT [SancionesReservas]
GO
/****** Object:  ForeignKey [FK_AsignacionReservaEspacios_Espacio]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[AsignacionReservaEspacios] DROP CONSTRAINT [FK_AsignacionReservaEspacios_Espacio]
GO
/****** Object:  ForeignKey [FK_AsignacionReservaEspacios_ReservaEspacios]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[AsignacionReservaEspacios] DROP CONSTRAINT [FK_AsignacionReservaEspacios_ReservaEspacios]
GO
/****** Object:  ForeignKey [FK_DetalleNovedad_Empresa]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[DetalleNovedad] DROP CONSTRAINT [FK_DetalleNovedad_Empresa]
GO
/****** Object:  ForeignKey [FK_DetalleNovedad_HistorialNovedad]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[DetalleNovedad] DROP CONSTRAINT [FK_DetalleNovedad_HistorialNovedad]
GO
/****** Object:  ForeignKey [FK_DetalleNovedad_TipoMantenimiento]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[DetalleNovedad] DROP CONSTRAINT [FK_DetalleNovedad_TipoMantenimiento]
GO
/****** Object:  ForeignKey [FK_Horario_Espacio]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[Horario] DROP CONSTRAINT [FK_Horario_Espacio]
GO
/****** Object:  ForeignKey [FK_HORARIO_GRUPO]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[Horario] DROP CONSTRAINT [FK_HORARIO_GRUPO]
GO
/****** Object:  ForeignKey [FK_Detalle_Repuesto_DetalleNovedad]    Script Date: 11/12/2012 15:45:47 ******/
ALTER TABLE [dbo].[DetalleRepuesto] DROP CONSTRAINT [FK_Detalle_Repuesto_DetalleNovedad]
GO
/****** Object:  ForeignKey [FK_Detalle_Repuesto_Repuesto]    Script Date: 11/12/2012 15:45:47 ******/
ALTER TABLE [dbo].[DetalleRepuesto] DROP CONSTRAINT [FK_Detalle_Repuesto_Repuesto]
GO
/****** Object:  ForeignKey [FK_AsignacionEspacio_Espacio]    Script Date: 11/12/2012 15:45:47 ******/
ALTER TABLE [dbo].[AsignacionEspacio] DROP CONSTRAINT [FK_AsignacionEspacio_Espacio]
GO
/****** Object:  ForeignKey [FKASIGNACION53323]    Script Date: 11/12/2012 15:45:47 ******/
ALTER TABLE [dbo].[AsignacionEspacio] DROP CONSTRAINT [FKASIGNACION53323]
GO
/****** Object:  ForeignKey [FKASIGNACION864505]    Script Date: 11/12/2012 15:45:47 ******/
ALTER TABLE [dbo].[AsignacionEspacio] DROP CONSTRAINT [FKASIGNACION864505]
GO
/****** Object:  StoredProcedure [dbo].[HorarioInsertar]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[HorarioInsertar]
GO
/****** Object:  StoredProcedure [dbo].[Horarios2]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[Horarios2]
GO
/****** Object:  StoredProcedure [dbo].[HorasPorCategoriaEquipo]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[HorasPorCategoriaEquipo]
GO
/****** Object:  StoredProcedure [dbo].[InsertarDetalleRepuesto]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[InsertarDetalleRepuesto]
GO
/****** Object:  StoredProcedure [dbo].[ConsultaHorasdeUso]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[ConsultaHorasdeUso]
GO
/****** Object:  StoredProcedure [dbo].[ConsultaHorasPorDependencia]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[ConsultaHorasPorDependencia]
GO
/****** Object:  StoredProcedure [dbo].[EliminarDetalleRepuesto]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[EliminarDetalleRepuesto]
GO
/****** Object:  StoredProcedure [dbo].[AjusteCambioEspacio]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[AjusteCambioEspacio]
GO
/****** Object:  StoredProcedure [dbo].[AjusteEliminarHorario]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[AjusteEliminarHorario]
GO
/****** Object:  StoredProcedure [dbo].[AjusteInsertarHorario]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[AjusteInsertarHorario]
GO
/****** Object:  View [dbo].[VHorasUsoEquipoDependencia]    Script Date: 11/12/2012 15:45:47 ******/
DROP VIEW [dbo].[VHorasUsoEquipoDependencia]
GO
/****** Object:  StoredProcedure [dbo].[ValidarCruce]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[ValidarCruce]
GO
/****** Object:  View [dbo].[VHoraUsoEquipos]    Script Date: 11/12/2012 15:45:47 ******/
DROP VIEW [dbo].[VHoraUsoEquipos]
GO
/****** Object:  View [dbo].[Vista_consultasolicitudreserva_BORRAR]    Script Date: 11/12/2012 15:45:47 ******/
DROP VIEW [dbo].[Vista_consultasolicitudreserva_BORRAR]
GO
/****** Object:  View [dbo].[VistaHistorialNovedad]    Script Date: 11/12/2012 15:45:47 ******/
DROP VIEW [dbo].[VistaHistorialNovedad]
GO
/****** Object:  View [dbo].[vistaprueba]    Script Date: 11/12/2012 15:45:47 ******/
DROP VIEW [dbo].[vistaprueba]
GO
/****** Object:  UserDefinedFunction [dbo].[UsoPorDependencia]    Script Date: 11/12/2012 15:45:47 ******/
DROP FUNCTION [dbo].[UsoPorDependencia]
GO
/****** Object:  StoredProcedure [dbo].[ReporteAdmisiones]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[ReporteAdmisiones]
GO
/****** Object:  View [dbo].[ReservasEspaciosConAsignacion]    Script Date: 11/12/2012 15:45:47 ******/
DROP VIEW [dbo].[ReservasEspaciosConAsignacion]
GO
/****** Object:  StoredProcedure [dbo].[QuitarSancionesAudiovisuales]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[QuitarSancionesAudiovisuales]
GO
/****** Object:  View [dbo].[ReservaEspaciosSinAsignacion]    Script Date: 11/12/2012 15:45:47 ******/
DROP VIEW [dbo].[ReservaEspaciosSinAsignacion]
GO
/****** Object:  StoredProcedure [dbo].[Sancionar]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[Sancionar]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarSolicitudEspacio]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[ActualizarSolicitudEspacio]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarDetalleNovedad]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[ActualizarDetalleNovedad]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEspacioSolicitado]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[ActualizarEspacioSolicitado]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarHistorial]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[ActualizarHistorial]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarPrestamo]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[ActualizarPrestamo]
GO
/****** Object:  Table [dbo].[AsignacionEspacio]    Script Date: 11/12/2012 15:45:47 ******/
ALTER TABLE [dbo].[AsignacionEspacio] DROP CONSTRAINT [FK_AsignacionEspacio_Espacio]
GO
ALTER TABLE [dbo].[AsignacionEspacio] DROP CONSTRAINT [FKASIGNACION53323]
GO
ALTER TABLE [dbo].[AsignacionEspacio] DROP CONSTRAINT [FKASIGNACION864505]
GO
DROP TABLE [dbo].[AsignacionEspacio]
GO
/****** Object:  StoredProcedure [dbo].[EliminarSolicitud]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[EliminarSolicitud]
GO
/****** Object:  StoredProcedure [dbo].[DescargarEquipo]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[DescargarEquipo]
GO
/****** Object:  Table [dbo].[DetalleRepuesto]    Script Date: 11/12/2012 15:45:47 ******/
ALTER TABLE [dbo].[DetalleRepuesto] DROP CONSTRAINT [FK_Detalle_Repuesto_DetalleNovedad]
GO
ALTER TABLE [dbo].[DetalleRepuesto] DROP CONSTRAINT [FK_Detalle_Repuesto_Repuesto]
GO
DROP TABLE [dbo].[DetalleRepuesto]
GO
/****** Object:  StoredProcedure [dbo].[consulta]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[consulta]
GO
/****** Object:  StoredProcedure [dbo].[ConsultaAuditoriosInsert]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[ConsultaAuditoriosInsert]
GO
/****** Object:  StoredProcedure [dbo].[ConsultaAuditoriosUpdate]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[ConsultaAuditoriosUpdate]
GO
/****** Object:  StoredProcedure [dbo].[ConsultaEquipos]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[ConsultaEquipos]
GO
/****** Object:  StoredProcedure [dbo].[ConsultarMantenimiento]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[ConsultarMantenimiento]
GO
/****** Object:  StoredProcedure [dbo].[ConsultaUsoPorEquipo]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[ConsultaUsoPorEquipo]
GO
/****** Object:  StoredProcedure [dbo].[ConsultaUsoPorServicio]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[ConsultaUsoPorServicio]
GO
/****** Object:  StoredProcedure [dbo].[GetEventos]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[GetEventos]
GO
/****** Object:  StoredProcedure [dbo].[HistorialDetalle]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[HistorialDetalle]
GO
/****** Object:  StoredProcedure [dbo].[InsertarEquipo]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[InsertarEquipo]
GO
/****** Object:  StoredProcedure [dbo].[InsertarHistorialDetalle]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[InsertarHistorialDetalle]
GO
/****** Object:  StoredProcedure [dbo].[InsertarHistorialDetalle2]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[InsertarHistorialDetalle2]
GO
/****** Object:  StoredProcedure [dbo].[InsertarHistorialDetalleDescarga]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[InsertarHistorialDetalleDescarga]
GO
/****** Object:  StoredProcedure [dbo].[InsertarDetalleNovedad]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[InsertarDetalleNovedad]
GO
/****** Object:  StoredProcedure [dbo].[InsertarPrestamo]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[InsertarPrestamo]
GO
/****** Object:  StoredProcedure [dbo].[InsertarSolicitudEspacio]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[InsertarSolicitudEspacio]
GO
/****** Object:  StoredProcedure [dbo].[InsertarSolicitudEspacio2]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[InsertarSolicitudEspacio2]
GO
/****** Object:  UserDefinedFunction [dbo].[HorasEquipoPorDependenciaCategoria]    Script Date: 11/12/2012 15:45:47 ******/
DROP FUNCTION [dbo].[HorasEquipoPorDependenciaCategoria]
GO
/****** Object:  StoredProcedure [dbo].[Horarios]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[Horarios]
GO
/****** Object:  StoredProcedure [dbo].[GrupoActualizar]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[GrupoActualizar]
GO
/****** Object:  StoredProcedure [dbo].[GrupoInsertar]    Script Date: 11/12/2012 15:45:47 ******/
DROP PROCEDURE [dbo].[GrupoInsertar]
GO
/****** Object:  UserDefinedFunction [dbo].[ObtenerEquipoHorasFecha]    Script Date: 11/12/2012 15:45:46 ******/
DROP FUNCTION [dbo].[ObtenerEquipoHorasFecha]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[Horario] DROP CONSTRAINT [FK_Horario_Espacio]
GO
ALTER TABLE [dbo].[Horario] DROP CONSTRAINT [FK_HORARIO_GRUPO]
GO
DROP TABLE [dbo].[Horario]
GO
/****** Object:  StoredProcedure [dbo].[InsertarReserva]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[InsertarReserva]
GO
/****** Object:  StoredProcedure [dbo].[InsertarRestrincionEspacio]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[InsertarRestrincionEspacio]
GO
/****** Object:  UserDefinedFunction [dbo].[MantenimientoPostgrados]    Script Date: 11/12/2012 15:45:46 ******/
DROP FUNCTION [dbo].[MantenimientoPostgrados]
GO
/****** Object:  StoredProcedure [dbo].[InsertarHistorial]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[InsertarHistorial]
GO
/****** Object:  StoredProcedure [dbo].[IngresoPorAnio]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[IngresoPorAnio]
GO
/****** Object:  StoredProcedure [dbo].[IngresoPorAnio2]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[IngresoPorAnio2]
GO
/****** Object:  StoredProcedure [dbo].[ConsutarExisteRestriccion]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[ConsutarExisteRestriccion]
GO
/****** Object:  StoredProcedure [dbo].[DeleteRestriccionEspacio]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[DeleteRestriccionEspacio]
GO
/****** Object:  Table [dbo].[DetalleNovedad]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[DetalleNovedad] DROP CONSTRAINT [FK_DetalleNovedad_Empresa]
GO
ALTER TABLE [dbo].[DetalleNovedad] DROP CONSTRAINT [FK_DetalleNovedad_HistorialNovedad]
GO
ALTER TABLE [dbo].[DetalleNovedad] DROP CONSTRAINT [FK_DetalleNovedad_TipoMantenimiento]
GO
DROP TABLE [dbo].[DetalleNovedad]
GO
/****** Object:  Table [dbo].[AsignacionReservaEspacios]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[AsignacionReservaEspacios] DROP CONSTRAINT [FK_AsignacionReservaEspacios_Espacio]
GO
ALTER TABLE [dbo].[AsignacionReservaEspacios] DROP CONSTRAINT [FK_AsignacionReservaEspacios_ReservaEspacios]
GO
DROP TABLE [dbo].[AsignacionReservaEspacios]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarNumerosGrupos]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[ActualizarNumerosGrupos]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarHistorialNovedad]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[ActualizarHistorialNovedad]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEstadoReserva]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[ActualizarEstadoReserva]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarReserva]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[ActualizarReserva]
GO
/****** Object:  StoredProcedure [dbo].[AjusteEliminarGrupo]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[AjusteEliminarGrupo]
GO
/****** Object:  StoredProcedure [dbo].[AjusteActualizarGrupo]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[AjusteActualizarGrupo]
GO
/****** Object:  StoredProcedure [dbo].[AjusteInsertarGrupo]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[AjusteInsertarGrupo]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
GO
/****** Object:  Table [dbo].[SancionAudiovisuales]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[SancionAudiovisuales] DROP CONSTRAINT [FK_SancionAudiovisuales_Sancion_CategoriaSancion1]
GO
ALTER TABLE [dbo].[SancionAudiovisuales] DROP CONSTRAINT [SancionesReservas]
GO
DROP TABLE [dbo].[SancionAudiovisuales]
GO
/****** Object:  Table [dbo].[SancionEspacios]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[SancionEspacios] DROP CONSTRAINT [FK_SancionEspacios_ReservaEspacios]
GO
ALTER TABLE [dbo].[SancionEspacios] DROP CONSTRAINT [FK_SancionEspacios_Sancion_CategoriaSancion]
GO
DROP TABLE [dbo].[SancionEspacios]
GO
/****** Object:  StoredProcedure [dbo].[ReservasConsecutivas]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[ReservasConsecutivas]
GO
/****** Object:  StoredProcedure [dbo].[sp_verificarReservasReturn]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[sp_verificarReservasReturn]
GO
/****** Object:  StoredProcedure [dbo].[sp_verificarReservasSedeReturn]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[sp_verificarReservasSedeReturn]
GO
/****** Object:  Table [dbo].[Prestamo]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[Prestamo] DROP CONSTRAINT [FKPrestamos455484]
GO
ALTER TABLE [dbo].[Prestamo] DROP CONSTRAINT [PrestamoReservas]
GO
ALTER TABLE [dbo].[Prestamo] DROP CONSTRAINT [PrestamosEquipos]
GO
DROP TABLE [dbo].[Prestamo]
GO
/****** Object:  StoredProcedure [dbo].[UpdateRestrincionEspacios]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[UpdateRestrincionEspacios]
GO
/****** Object:  StoredProcedure [dbo].[VerificarReserva]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[VerificarReserva]
GO
/****** Object:  StoredProcedure [dbo].[VerificarReserva2]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[VerificarReserva2]
GO
/****** Object:  Table [dbo].[SuministrosEntregados]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[SuministrosEntregados] DROP CONSTRAINT [FK_SuministrosEntregados_ContratadoSolicitud]
GO
DROP TABLE [dbo].[SuministrosEntregados]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 11/12/2012 15:45:46 ******/
DROP VIEW [dbo].[vw_aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 11/12/2012 15:45:46 ******/
DROP VIEW [dbo].[vw_aspnet_MembershipUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 11/12/2012 15:45:46 ******/
DROP VIEW [dbo].[vw_aspnet_Profiles]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 11/12/2012 15:45:46 ******/
DROP VIEW [dbo].[vw_aspnet_WebPartState_Shared]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 11/12/2012 15:45:46 ******/
DROP VIEW [dbo].[vw_aspnet_WebPartState_User]
GO
/****** Object:  Table [dbo].[RestriccionEspacio]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[RestriccionEspacio] DROP CONSTRAINT [FK_RESTRICCION_SALON_PERIODO]
GO
ALTER TABLE [dbo].[RestriccionEspacio] DROP CONSTRAINT [FK_RestriccionEspacio_Espacio]
GO
DROP TABLE [dbo].[RestriccionEspacio]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_Profile_GetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_Profile_SetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_Users_DeleteUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 11/12/2012 15:45:46 ******/
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEquipo]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[ActualizarEquipo]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_AnyDataInTables]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_CreateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_GetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_SetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState]
GO
/****** Object:  Table [dbo].[DependenciaEspacio]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[DependenciaEspacio] DROP CONSTRAINT [FK_DependenciaEspacio_Dependencia]
GO
ALTER TABLE [dbo].[DependenciaEspacio] DROP CONSTRAINT [FK_DependenciaEspacio_Espacio]
GO
DROP TABLE [dbo].[DependenciaEspacio]
GO
/****** Object:  UserDefinedFunction [dbo].[ContarPosgtrados]    Script Date: 11/12/2012 15:45:45 ******/
DROP FUNCTION [dbo].[ContarPosgtrados]
GO
/****** Object:  StoredProcedure [dbo].[ContarSatisfechas]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[ContarSatisfechas]
GO
/****** Object:  Table [dbo].[ContratadoSolicitud]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ContratadoSolicitud] DROP CONSTRAINT [FK_ContratadoSolicitud_ItemContratado]
GO
ALTER TABLE [dbo].[ContratadoSolicitud] DROP CONSTRAINT [FK_ContratadoSolicitud_SolicitudLaboratorio]
GO
DROP TABLE [dbo].[ContratadoSolicitud]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
GO
/****** Object:  Table [dbo].[HistorialNovedad]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[HistorialNovedad] DROP CONSTRAINT [HistorialnovedadesEquipos]
GO
ALTER TABLE [dbo].[HistorialNovedad] DROP CONSTRAINT [HistorialNovedadesTipoNovedad]
GO
DROP TABLE [dbo].[HistorialNovedad]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Grupo] DROP CONSTRAINT [FK_Grupo_Docente]
GO
ALTER TABLE [dbo].[Grupo] DROP CONSTRAINT [FKGRUPO113750]
GO
ALTER TABLE [dbo].[Grupo] DROP CONSTRAINT [FKGRUPO158371]
GO
DROP TABLE [dbo].[Grupo]
GO
/****** Object:  StoredProcedure [dbo].[InsertarSolicitudesSuministro]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[InsertarSolicitudesSuministro]
GO
/****** Object:  StoredProcedure [dbo].[EspaciosActualizar]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[EspaciosActualizar]
GO
/****** Object:  StoredProcedure [dbo].[EspaciosInsertar]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[EspaciosInsertar]
GO
/****** Object:  UserDefinedFunction [dbo].[IngresoEquiposPorCategoria]    Script Date: 11/12/2012 15:45:45 ******/
DROP FUNCTION [dbo].[IngresoEquiposPorCategoria]
GO
/****** Object:  UserDefinedFunction [dbo].[IngresoEquiposPorCategoria2]    Script Date: 11/12/2012 15:45:45 ******/
DROP FUNCTION [dbo].[IngresoEquiposPorCategoria2]
GO
/****** Object:  Table [dbo].[Reserva]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Reserva] DROP CONSTRAINT [FK_Reserva_aspnet_Users]
GO
ALTER TABLE [dbo].[Reserva] DROP CONSTRAINT [FK_Reserva_Dependencia]
GO
ALTER TABLE [dbo].[Reserva] DROP CONSTRAINT [FK_Reserva_Servicio]
GO
ALTER TABLE [dbo].[Reserva] DROP CONSTRAINT [FK_Reserva_TipoUsoReserva]
GO
ALTER TABLE [dbo].[Reserva] DROP CONSTRAINT [FK_Reservas_Espacio]
GO
DROP TABLE [dbo].[Reserva]
GO
/****** Object:  Table [dbo].[ReservaEspacios]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ReservaEspacios] DROP CONSTRAINT [FK_ReservaEspacios_aspnet_Users]
GO
ALTER TABLE [dbo].[ReservaEspacios] DROP CONSTRAINT [FK_ReservaEspacios_Dependencia]
GO
ALTER TABLE [dbo].[ReservaEspacios] DROP CONSTRAINT [FK_ReservaEspacios_Espacio1]
GO
ALTER TABLE [dbo].[ReservaEspacios] DROP CONSTRAINT [FK_ReservaEspacios_EstadoReservaEspacio]
GO
ALTER TABLE [dbo].[ReservaEspacios] DROP CONSTRAINT [FK_ReservaEspacios_Periodo]
GO
ALTER TABLE [dbo].[ReservaEspacios] DROP CONSTRAINT [FK_ReservaEspacios_TipoEvento]
GO
DROP TABLE [dbo].[ReservaEspacios]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Materia] DROP CONSTRAINT [FK_MATERIA_PLAN_PROGRAMA]
GO
DROP TABLE [dbo].[Materia]
GO
/****** Object:  Table [dbo].[Permiso]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Permiso] DROP CONSTRAINT [FK_Permiso_aspnet_Roles]
GO
ALTER TABLE [dbo].[Permiso] DROP CONSTRAINT [FK_Permiso_Programa]
GO
DROP TABLE [dbo].[Permiso]
GO
/****** Object:  Table [dbo].[PermisoLaboratorio]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[PermisoLaboratorio] DROP CONSTRAINT [FK_PermisoLaboratorio_aspnet_Roles]
GO
ALTER TABLE [dbo].[PermisoLaboratorio] DROP CONSTRAINT [FK_PermisoLaboratorio_Laboratorio]
GO
DROP TABLE [dbo].[PermisoLaboratorio]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[aspnet_Roles_CreateRole]
GO
/****** Object:  StoredProcedure [dbo].[InsertarSancion]    Script Date: 11/12/2012 15:45:45 ******/
DROP PROCEDURE [dbo].[InsertarSancion]
GO
/****** Object:  Table [dbo].[ItemContratado]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ItemContratado] DROP CONSTRAINT [FK_ItemContratado_Contrato]
GO
DROP TABLE [dbo].[ItemContratado]
GO
/****** Object:  StoredProcedure [dbo].[InsertarBloques]    Script Date: 11/12/2012 15:45:44 ******/
DROP PROCEDURE [dbo].[InsertarBloques]
GO
/****** Object:  StoredProcedure [dbo].[InsertarModelo]    Script Date: 11/12/2012 15:45:44 ******/
DROP PROCEDURE [dbo].[InsertarModelo]
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[Equipo] DROP CONSTRAINT [EquiposCategoriasEquipos]
GO
ALTER TABLE [dbo].[Equipo] DROP CONSTRAINT [EquiposModelos]
GO
ALTER TABLE [dbo].[Equipo] DROP CONSTRAINT [FK_Equipo_Dependencia]
GO
ALTER TABLE [dbo].[Equipo] DROP CONSTRAINT [FK_Equipos_Sede]
GO
DROP TABLE [dbo].[Equipo]
GO
/****** Object:  Table [dbo].[Espacio]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[Espacio] DROP CONSTRAINT [FK_Espacio_TipoEspacio]
GO
ALTER TABLE [dbo].[Espacio] DROP CONSTRAINT [FKSALON212358]
GO
DROP TABLE [dbo].[Espacio]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarUsuario]    Script Date: 11/12/2012 15:45:44 ******/
DROP PROCEDURE [dbo].[ActualizarUsuario]
GO
/****** Object:  Table [dbo].[DependenciaUsuario]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[DependenciaUsuario] DROP CONSTRAINT [FK_DependenciaUsuario_aspnet_Users]
GO
ALTER TABLE [dbo].[DependenciaUsuario] DROP CONSTRAINT [FK_DependenciaUsuario_Dependencia]
GO
DROP TABLE [dbo].[DependenciaUsuario]
GO
/****** Object:  StoredProcedure [dbo].[EliminarModelo]    Script Date: 11/12/2012 15:45:44 ******/
DROP PROCEDURE [dbo].[EliminarModelo]
GO
/****** Object:  UserDefinedFunction [dbo].[ConsultarCategoria]    Script Date: 11/12/2012 15:45:44 ******/
DROP FUNCTION [dbo].[ConsultarCategoria]
GO
/****** Object:  StoredProcedure [dbo].[DocenteInsertar]    Script Date: 11/12/2012 15:45:43 ******/
DROP PROCEDURE [dbo].[DocenteInsertar]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] DROP CONSTRAINT [FK__aspnet_Pe__PathI__73852659]
GO
DROP TABLE [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 11/12/2012 15:45:43 ******/
DROP PROCEDURE [dbo].[aspnet_Paths_CreatePath]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__Appli__70A8B9AE]
GO
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__UserI__719CDDE7]
GO
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [DF__aspnet_Me__Passw__662B2B3B]
GO
DROP TABLE [dbo].[aspnet_Membership]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarDocente]    Script Date: 11/12/2012 15:45:43 ******/
DROP PROCEDURE [dbo].[ActualizarDocente]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarBloque]    Script Date: 11/12/2012 15:45:43 ******/
DROP PROCEDURE [dbo].[ActualizarBloque]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarListaDocente]    Script Date: 11/12/2012 15:45:43 ******/
DROP PROCEDURE [dbo].[ActualizarListaDocente]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarModelo]    Script Date: 11/12/2012 15:45:43 ******/
DROP PROCEDURE [dbo].[ActualizarModelo]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 11/12/2012 15:45:43 ******/
DROP PROCEDURE [dbo].[aspnet_Users_CreateUser]
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__RoleI__671F4F74]
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__UserI__662B2B3B]
GO
DROP TABLE [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 11/12/2012 15:45:43 ******/
DROP PROCEDURE [dbo].[aspnet_Roles_GetAllRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 11/12/2012 15:45:43 ******/
DROP PROCEDURE [dbo].[aspnet_Roles_RoleExists]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_Profile] DROP CONSTRAINT [FK__aspnet_Pr__UserI__58D1301D]
GO
DROP TABLE [dbo].[aspnet_Profile]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__PathI__74794A92]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__UserI__756D6ECB]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [DF__aspnet_Perso__Id__681373AD]
GO
DROP TABLE [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  Table [dbo].[Solicitud]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[Solicitud] DROP CONSTRAINT [FK_Solicitud_Servicio]
GO
DROP TABLE [dbo].[Solicitud]
GO
/****** Object:  Table [dbo].[SolicitudLaboratorio]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[SolicitudLaboratorio] DROP CONSTRAINT [FK_SolicitudLaboratorio_FuenteGasto]
GO
ALTER TABLE [dbo].[SolicitudLaboratorio] DROP CONSTRAINT [FK_SolicitudLaboratorio_Laboratorio]
GO
ALTER TABLE [dbo].[SolicitudLaboratorio] DROP CONSTRAINT [FK_SolicitudLaboratorio_Suministro]
GO
DROP TABLE [dbo].[SolicitudLaboratorio]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 11/12/2012 15:45:42 ******/
DROP VIEW [dbo].[vw_aspnet_Roles]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 11/12/2012 15:45:42 ******/
DROP VIEW [dbo].[vw_aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 11/12/2012 15:45:42 ******/
DROP VIEW [dbo].[vw_aspnet_WebPartState_Paths]
GO
/****** Object:  Table [dbo].[UsoExclusivo]    Script Date: 11/12/2012 15:45:42 ******/
ALTER TABLE [dbo].[UsoExclusivo] DROP CONSTRAINT [FK_UsoExclusivo_CategoriaEquipo]
GO
ALTER TABLE [dbo].[UsoExclusivo] DROP CONSTRAINT [FK_UsoExclusivo_Periodo]
GO
DROP TABLE [dbo].[UsoExclusivo]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 11/12/2012 15:45:42 ******/
DROP VIEW [dbo].[vw_aspnet_Applications]
GO
/****** Object:  Table [dbo].[ProgramaPrioridad]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[ProgramaPrioridad] DROP CONSTRAINT [FK_PROGRAMA_PRIORIDAD_PRIORIDAD]
GO
ALTER TABLE [dbo].[ProgramaPrioridad] DROP CONSTRAINT [FK_PROGRAMA_PRIORIDAD_PROGRAMA]
GO
DROP TABLE [dbo].[ProgramaPrioridad]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Servicio] DROP CONSTRAINT [FK_Servicio_CategoriaEquipo]
GO
ALTER TABLE [dbo].[Servicio] DROP CONSTRAINT [FK_Servicio_Sede]
GO
DROP TABLE [dbo].[Servicio]
GO
/****** Object:  Table [dbo].[Sancion_CategoriaSancion]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Sancion_CategoriaSancion] DROP CONSTRAINT [FK_Sancion_CategoriaSancion_CategoriaSancion]
GO
ALTER TABLE [dbo].[Sancion_CategoriaSancion] DROP CONSTRAINT [FK_Sancion_CategoriaSancion_Sancion]
GO
DROP TABLE [dbo].[Sancion_CategoriaSancion]
GO
/****** Object:  Table [dbo].[Modelo]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Modelo] DROP CONSTRAINT [ModelosMarcas]
GO
DROP TABLE [dbo].[Modelo]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 11/12/2012 15:45:41 ******/
DROP PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [FK__aspnet_Ro__Appli__7755B73D]
GO
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [DF__aspnet_Ro__RoleI__690797E6]
GO
DROP TABLE [dbo].[aspnet_Roles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 11/12/2012 15:45:41 ******/
DROP PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [FK__aspnet_Us__Appli__339FAB6E]
GO
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__UserI__69FBBC1F]
GO
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__Mobil__6AEFE058]
GO
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__IsAno__6BE40491]
GO
DROP TABLE [dbo].[aspnet_Users]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 11/12/2012 15:45:41 ******/
DROP PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
GO
/****** Object:  Table [dbo].[Bloques]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Bloques] DROP CONSTRAINT [FKBLOQUES459729]
GO
DROP TABLE [dbo].[Bloques]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarRepuesto]    Script Date: 11/12/2012 15:45:41 ******/
DROP PROCEDURE [dbo].[ActualizarRepuesto]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarMarca]    Script Date: 11/12/2012 15:45:41 ******/
DROP PROCEDURE [dbo].[ActualizarMarca]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarCategoria]    Script Date: 11/12/2012 15:45:41 ******/
DROP PROCEDURE [dbo].[ActualizarCategoria]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEmpresa]    Script Date: 11/12/2012 15:45:41 ******/
DROP PROCEDURE [dbo].[ActualizarEmpresa]
GO
/****** Object:  Table [dbo].[ActualizaPeriodo]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[ActualizaPeriodo] DROP CONSTRAINT [FKACTUALIZA_263313]
GO
DROP TABLE [dbo].[ActualizaPeriodo]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarSede]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[ActualizarSede]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarSuministro]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[ActualizarSuministro]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId]
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [FK__aspnet_Pa__Appli__72910220]
GO
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [DF__aspnet_Pa__PathI__671F4F74]
GO
DROP TABLE [dbo].[aspnet_Paths]
GO
/****** Object:  StoredProcedure [dbo].[EliminarCategoria]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[EliminarCategoria]
GO
/****** Object:  StoredProcedure [dbo].[EliminarRepuesto]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[EliminarRepuesto]
GO
/****** Object:  StoredProcedure [dbo].[EliminarEmpresa]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[EliminarEmpresa]
GO
/****** Object:  StoredProcedure [dbo].[EliminarMarca]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[EliminarMarca]
GO
/****** Object:  StoredProcedure [dbo].[EliminarSuministro]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[EliminarSuministro]
GO
/****** Object:  Table [dbo].[Docente]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[Docente] DROP CONSTRAINT [FK_Docente_TipoVinculacion]
GO
DROP TABLE [dbo].[Docente]
GO
/****** Object:  StoredProcedure [dbo].[ConsultaPeriodo]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[ConsultaPeriodo]
GO
/****** Object:  Table [dbo].[Contrato]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[Contrato] DROP CONSTRAINT [FK_Contrato_Empresa]
GO
ALTER TABLE [dbo].[Contrato] DROP CONSTRAINT [FK_Contrato_TipoContrato]
GO
DROP TABLE [dbo].[Contrato]
GO
/****** Object:  StoredProcedure [dbo].[InsertarRepuesto]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[InsertarRepuesto]
GO
/****** Object:  StoredProcedure [dbo].[InsertarMarca]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[InsertarMarca]
GO
/****** Object:  StoredProcedure [dbo].[InsertarCategoria]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[InsertarCategoria]
GO
/****** Object:  StoredProcedure [dbo].[InsertarEmpresa]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[InsertarEmpresa]
GO
/****** Object:  Table [dbo].[Laboratorio]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[Laboratorio] DROP CONSTRAINT [FK_Laboratorio_Programa]
GO
DROP TABLE [dbo].[Laboratorio]
GO
/****** Object:  StoredProcedure [dbo].[InsertarSedes]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[InsertarSedes]
GO
/****** Object:  StoredProcedure [dbo].[InsertarSuministro]    Script Date: 11/12/2012 15:45:40 ******/
DROP PROCEDURE [dbo].[InsertarSuministro]
GO
/****** Object:  Table [dbo].[EmpresaxServicios]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[EmpresaxServicios] DROP CONSTRAINT [FK_EmpresaxServicios_Empresa]
GO
ALTER TABLE [dbo].[EmpresaxServicios] DROP CONSTRAINT [FK_EmpresaxServicios_ServiciosEmpresas]
GO
DROP TABLE [dbo].[EmpresaxServicios]
GO
/****** Object:  Table [dbo].[PlanPrograma]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[PlanPrograma] DROP CONSTRAINT [FK_PLAN_PROGRAMA_PROGRAMA]
GO
DROP TABLE [dbo].[PlanPrograma]
GO
/****** Object:  Table [dbo].[MateriaTemp]    Script Date: 11/12/2012 15:45:40 ******/
DROP TABLE [dbo].[MateriaTemp]
GO
/****** Object:  Table [dbo].[Periodo]    Script Date: 11/12/2012 15:45:40 ******/
DROP TABLE [dbo].[Periodo]
GO
/****** Object:  Table [dbo].[PeriodosSolicitarSuministro]    Script Date: 11/12/2012 15:45:40 ******/
DROP TABLE [dbo].[PeriodosSolicitarSuministro]
GO
/****** Object:  Table [dbo].[EstadoReservaEspacio]    Script Date: 11/12/2012 15:45:40 ******/
DROP TABLE [dbo].[EstadoReservaEspacio]
GO
/****** Object:  Table [dbo].[FuenteGasto]    Script Date: 11/12/2012 15:45:40 ******/
DROP TABLE [dbo].[FuenteGasto]
GO
/****** Object:  Table [dbo].[Horas]    Script Date: 11/12/2012 15:45:40 ******/
DROP TABLE [dbo].[Horas]
GO
/****** Object:  Table [dbo].[Historial_Ajuste_Horario]    Script Date: 11/12/2012 15:45:39 ******/
DROP TABLE [dbo].[Historial_Ajuste_Horario]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 11/12/2012 15:45:39 ******/
DROP TABLE [dbo].[Marca]
GO
/****** Object:  Table [dbo].[Dependencia]    Script Date: 11/12/2012 15:45:39 ******/
DROP TABLE [dbo].[Dependencia]
GO
/****** Object:  Table [dbo].[Devolucion]    Script Date: 11/12/2012 15:45:39 ******/
DROP TABLE [dbo].[Devolucion]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 11/12/2012 15:45:39 ******/
DROP TABLE [dbo].[Empresa]
GO
/****** Object:  StoredProcedure [dbo].[ConsultarEspaciosPorIds]    Script Date: 11/12/2012 15:45:39 ******/
DROP PROCEDURE [dbo].[ConsultarEspaciosPorIds]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEstadoReservaMultiple]    Script Date: 11/12/2012 15:45:39 ******/
DROP PROCEDURE [dbo].[ActualizarEstadoReservaMultiple]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 11/12/2012 15:45:39 ******/
ALTER TABLE [dbo].[aspnet_Applications] DROP CONSTRAINT [DF__aspnet_Ap__Appli__65370702]
GO
DROP TABLE [dbo].[aspnet_Applications]
GO
/****** Object:  Table [dbo].[CategoriaEquipo]    Script Date: 11/12/2012 15:45:39 ******/
DROP TABLE [dbo].[CategoriaEquipo]
GO
/****** Object:  Table [dbo].[CategoriaSancion]    Script Date: 11/12/2012 15:45:39 ******/
DROP TABLE [dbo].[CategoriaSancion]
GO
/****** Object:  Table [dbo].[CategoriaSuministro]    Script Date: 11/12/2012 15:45:39 ******/
DROP TABLE [dbo].[CategoriaSuministro]
GO
/****** Object:  Table [dbo].[Auditoria]    Script Date: 11/12/2012 15:45:39 ******/
DROP TABLE [dbo].[Auditoria]
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 11/12/2012 15:45:39 ******/
DROP TABLE [dbo].[aspnet_WebEvent_Events]
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 11/12/2012 15:45:39 ******/
DROP TABLE [dbo].[aspnet_SchemaVersions]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 11/12/2012 15:45:39 ******/
DROP PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 11/12/2012 15:45:39 ******/
DROP PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
GO
/****** Object:  Table [dbo].[Repuesto]    Script Date: 11/12/2012 15:45:39 ******/
DROP TABLE [dbo].[Repuesto]
GO
/****** Object:  Table [dbo].[Sancion]    Script Date: 11/12/2012 15:45:38 ******/
DROP TABLE [dbo].[Sancion]
GO
/****** Object:  Table [dbo].[Prioridad]    Script Date: 11/12/2012 15:45:38 ******/
DROP TABLE [dbo].[Prioridad]
GO
/****** Object:  Table [dbo].[Programa]    Script Date: 11/12/2012 15:45:38 ******/
DROP TABLE [dbo].[Programa]
GO
/****** Object:  StoredProcedure [dbo].[RecibirParametros]    Script Date: 11/12/2012 15:45:38 ******/
DROP PROCEDURE [dbo].[RecibirParametros]
GO
/****** Object:  Table [dbo].[Sede]    Script Date: 11/12/2012 15:45:37 ******/
DROP TABLE [dbo].[Sede]
GO
/****** Object:  Table [dbo].[ServiciosEmpresas]    Script Date: 11/12/2012 15:45:37 ******/
DROP TABLE [dbo].[ServiciosEmpresas]
GO
/****** Object:  Table [dbo].[Suministro]    Script Date: 11/12/2012 15:45:37 ******/
DROP TABLE [dbo].[Suministro]
GO
/****** Object:  Table [dbo].[TipoContrato]    Script Date: 11/12/2012 15:45:37 ******/
DROP TABLE [dbo].[TipoContrato]
GO
/****** Object:  Table [dbo].[TipoEspacio]    Script Date: 11/12/2012 15:45:37 ******/
DROP TABLE [dbo].[TipoEspacio]
GO
/****** Object:  Table [dbo].[TipoEvento]    Script Date: 11/12/2012 15:45:37 ******/
DROP TABLE [dbo].[TipoEvento]
GO
/****** Object:  Table [dbo].[TipoMantenimiento]    Script Date: 11/12/2012 15:45:37 ******/
DROP TABLE [dbo].[TipoMantenimiento]
GO
/****** Object:  Table [dbo].[TipoMedida]    Script Date: 11/12/2012 15:45:37 ******/
DROP TABLE [dbo].[TipoMedida]
GO
/****** Object:  Table [dbo].[TiposNovedad]    Script Date: 11/12/2012 15:45:36 ******/
DROP TABLE [dbo].[TiposNovedad]
GO
/****** Object:  Table [dbo].[TipoSolicitud]    Script Date: 11/12/2012 15:45:36 ******/
DROP TABLE [dbo].[TipoSolicitud]
GO
/****** Object:  Table [dbo].[TiposPresentacion]    Script Date: 11/12/2012 15:45:36 ******/
DROP TABLE [dbo].[TiposPresentacion]
GO
/****** Object:  Table [dbo].[TipoUsoReserva]    Script Date: 11/12/2012 15:45:36 ******/
DROP TABLE [dbo].[TipoUsoReserva]
GO
/****** Object:  Table [dbo].[TipoVinculacion]    Script Date: 11/12/2012 15:45:36 ******/
DROP TABLE [dbo].[TipoVinculacion]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
DROP SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
DROP SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
DROP SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
DROP SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
DROP SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
DROP SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
DROP SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
DROP SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
DROP SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
DROP SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
DROP SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
DROP SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
DROP SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_WebEvent_FullAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_FullAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_ReportingAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_BasicAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_FullAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_ReportingAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_BasicAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_FullAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_ReportingAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_BasicAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_FullAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_ReportingAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_BasicAccess'

Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
DROP ROLE [aspnet_Membership_BasicAccess]
GO
/****** Object:  User [Siare]    Script Date: 11/12/2012 15:45:33 ******/
DROP USER [Siare]
GO
/****** Object:  User [Siare]    Script Date: 11/12/2012 15:45:33 ******/
CREATE USER [Siare] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 11/12/2012 15:45:33 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]
GO
/****** Object:  Table [dbo].[TipoVinculacion]    Script Date: 11/12/2012 15:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoVinculacion](
	[IdTipo] [int] IDENTITY(1,1) NOT NULL,
	[NombreVinculacion] [varchar](100) NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_TipoVinculacion] PRIMARY KEY CLUSTERED 
(
	[IdTipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla, campo identificador del tipo de vinculacion.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoVinculacion', @level2type=N'COLUMN',@level2name=N'IdTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo referente al nombre común con el que se conoce al tipo de vnculación.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoVinculacion', @level2type=N'COLUMN',@level2name=N'NombreVinculacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En este campo se almacena una breve descripcion de guia para el tipo de vincualcion al que hace referencia.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoVinculacion', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En este objeto se almacena la inforamcion referente a los tipos de vicualcion que tiene un docente con la Universidad del Magdalena, ejemplo: catedratico, tiempo completo. etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoVinculacion'
GO
/****** Object:  Table [dbo].[TipoUsoReserva]    Script Date: 11/12/2012 15:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoUsoReserva](
	[IdTipoUsoReserva] [int] IDENTITY(1,1) NOT NULL,
	[UsoReserva] [varchar](50) NULL,
 CONSTRAINT [PK_TipoUsoReserva] PRIMARY KEY CLUSTERED 
(
	[IdTipoUsoReserva] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposPresentacion]    Script Date: 11/12/2012 15:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposPresentacion](
	[IdPresentacion] [int] IDENTITY(1,1) NOT NULL,
	[NombrePresentacion] [nchar](10) NOT NULL,
 CONSTRAINT [PK_TiposPresentacion] PRIMARY KEY CLUSTERED 
(
	[IdPresentacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoSolicitud]    Script Date: 11/12/2012 15:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoSolicitud](
	[IdTipoSolicitud] [bit] NOT NULL,
	[TipoSolicitud] [varchar](50) NULL,
 CONSTRAINT [PK_TipoSolicitud] PRIMARY KEY CLUSTERED 
(
	[IdTipoSolicitud] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposNovedad]    Script Date: 11/12/2012 15:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposNovedad](
	[IdTipoNovedad] [int] IDENTITY(1,1) NOT NULL,
	[Novedad] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoNovedad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TiposNovedad', @level2type=N'COLUMN',@level2name=N'IdTipoNovedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe la novedad o estado que presentara el recursos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TiposNovedad', @level2type=N'COLUMN',@level2name=N'Novedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'alamcena las posibles novedades que se presentara en el trasncurso de la instancia del equipo en servicio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TiposNovedad'
GO
/****** Object:  Table [dbo].[TipoMedida]    Script Date: 11/12/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMedida](
	[IdTipoMedida] [int] IDENTITY(1,1) NOT NULL,
	[Medida] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TipoMedida] PRIMARY KEY CLUSTERED 
(
	[IdTipoMedida] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del tipo de medida' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoMedida', @level2type=N'COLUMN',@level2name=N'IdTipoMedida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identifica la caracteristicas del tipo de medida, Ejm. Gramos, Mililitros, Unidad..etc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoMedida', @level2type=N'COLUMN',@level2name=N'Medida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contendra los tipos de medida son utilizados en la presentaciones de los suministros.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoMedida'
GO
/****** Object:  Table [dbo].[TipoMantenimiento]    Script Date: 11/12/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMantenimiento](
	[IdTipoMantenimiento] [int] IDENTITY(1,1) NOT NULL,
	[NombreTipoMantenimiento] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TipoMantenimiento] PRIMARY KEY CLUSTERED 
(
	[IdTipoMantenimiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clave Primaria de la Tabla,concecutivo identificador de los tipos de mantenimiento ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoMantenimiento', @level2type=N'COLUMN',@level2name=N'IdTipoMantenimiento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registra la descripcion de los tipos de mantenimiento de Equipos disponibles' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoMantenimiento', @level2type=N'COLUMN',@level2name=N'NombreTipoMantenimiento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guarda los tipos de mantenimento de equipos disponibles' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoMantenimiento'
GO
/****** Object:  Table [dbo].[TipoEvento]    Script Date: 11/12/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoEvento](
	[IdTipoEvento] [int] IDENTITY(1,1) NOT NULL,
	[TipoEvento] [varchar](50) NOT NULL,
	[Descripcion] [varbinary](50) NULL,
 CONSTRAINT [PK_TipoEvento] PRIMARY KEY CLUSTERED 
(
	[IdTipoEvento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LLave primaria de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEvento', @level2type=N'COLUMN',@level2name=N'IdTipoEvento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del Tipo de evento que se realizara ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEvento', @level2type=N'COLUMN',@level2name=N'TipoEvento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripcion general del tipo de evento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEvento', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'almacena la informacion a los diferentes tipos de eventos para las solicitudes de espacios fisicos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEvento'
GO
/****** Object:  Table [dbo].[TipoEspacio]    Script Date: 11/12/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEspacio](
	[IdTipoEspacio] [int] IDENTITY(1,1) NOT NULL,
	[TipoEspacio] [nvarchar](50) NULL,
	[EsEspecial] [bit] NULL,
 CONSTRAINT [PK_TipoEspacio] PRIMARY KEY CLUSTERED 
(
	[IdTipoEspacio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificado de la tabla, autonumerico.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEspacio', @level2type=N'COLUMN',@level2name=N'IdTipoEspacio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del tipo de espacio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEspacio', @level2type=N'COLUMN',@level2name=N'TipoEspacio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Determina si el espacio tiene un caracter especial.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEspacio', @level2type=N'COLUMN',@level2name=N'EsEspecial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define los diferentes tipos de Espacio que se pueden presentar en la intitucion (salones, laboratorios, salas de internet)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoEspacio'
GO
/****** Object:  Table [dbo].[TipoContrato]    Script Date: 11/12/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoContrato](
	[IdTipoContrato] [int] NOT NULL,
	[TipoContrato] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TipoContrato] PRIMARY KEY CLUSTERED 
(
	[IdTipoContrato] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de los tipos de contratos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoContrato', @level2type=N'COLUMN',@level2name=N'IdTipoContrato'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del tipo o categoria que existen para contratos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoContrato', @level2type=N'COLUMN',@level2name=N'TipoContrato'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contendra los tipos de contratos que maneja la institución' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoContrato'
GO
/****** Object:  Table [dbo].[Suministro]    Script Date: 11/12/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suministro](
	[IdSuministro] [int] IDENTITY(1,1) NOT NULL,
	[NombreSuministro] [nvarchar](max) NOT NULL,
	[Sinonimo] [nvarchar](50) NULL,
	[Formula] [nvarchar](50) NULL,
	[Grado] [nvarchar](50) NULL,
	[ReferenciaUso] [nvarchar](max) NULL,
	[ReferenciaProveedor] [nvarchar](50) NULL,
	[IdMarca] [int] NULL,
	[IdTipoMedida] [int] NOT NULL,
	[Cantidad] [decimal](18, 1) NOT NULL,
	[IdCategoriaSuministro] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
	[UsuarioIngreso] [nvarchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[UsuarioModifico] [nvarchar](50) NULL,
	[FechaModifico] [datetime] NULL,
	[GuiaSeguridad] [nvarchar](50) NULL,
	[IdPresentacion] [int] NULL,
 CONSTRAINT [PK_Suministro] PRIMARY KEY CLUSTERED 
(
	[IdSuministro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del Suministro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'IdSuministro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripcion o nombre comercial del suministro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'NombreSuministro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre no comercial por el cual es conocido el suministro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'Sinonimo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es la descripcion de como esta compuesto el suministro, sólo aplicará para suministros tipo quimicos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'Formula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es el nivel o concentración del quimico en una solución.  Aplicará sólo para categoria tipo quimicos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'Grado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Especificará que uso tendra dentro de la práctica o el laboratorio, se utilizara para hacer referencia de busqueda.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'ReferenciaUso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es un identificador para realizar un pedido de un producto y marca especifica, Sólo aplicará para categorias tipo quimicos, medios de cultivos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'ReferenciaProveedor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador foranea de la empresa que produce el suministro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'IdMarca'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' Identificador foraneo de la unidad de medida de la presentación.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'IdTipoMedida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador Foraneo de la Categoria de Suministros' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'IdCategoriaSuministro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si el suministro se encuentra vigente comercialmente o si su uso aun es permitido.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'usuario que realiza el registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'UsuarioIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en la que se realizo el registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'FechaIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que realizo actualizaciones al registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'UsuarioModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de la actualizacion del registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'FechaModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contiene la ruta de la guia de seguridad del quimico o medio de cultivo.  Aplica solamente para los suministros de categoria quimicos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro', @level2type=N'COLUMN',@level2name=N'GuiaSeguridad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contiene todos los suministros que se requieren para la realizacion de la practica o el manejo del mismo laboratorio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Suministro'
GO
/****** Object:  Table [dbo].[ServiciosEmpresas]    Script Date: 11/12/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosEmpresas](
	[IdServiciosEmpresas] [int] IDENTITY(1,1) NOT NULL,
	[ServiciosEmpresa] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ServiciosEmpresas] PRIMARY KEY CLUSTERED 
(
	[IdServiciosEmpresas] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador de registros' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ServiciosEmpresas', @level2type=N'COLUMN',@level2name=N'IdServiciosEmpresas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'descripcion de los servicios que puede prestar una empresa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ServiciosEmpresas', @level2type=N'COLUMN',@level2name=N'ServiciosEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contiene los diversos servicios que una empresa puede ofrecer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ServiciosEmpresas'
GO
/****** Object:  Table [dbo].[Sede]    Script Date: 11/12/2012 15:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sede](
	[IdSede] [int] IDENTITY(1,1) NOT NULL,
	[NombreSede] [varchar](100) NOT NULL,
 CONSTRAINT [PK__SEDE__08EA5793] PRIMARY KEY CLUSTERED 
(
	[IdSede] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla, campo identificador de la sede.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sede', @level2type=N'COLUMN',@level2name=N'IdSede'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define el nombre con el cual se maneja la sede en la institución. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sede', @level2type=N'COLUMN',@level2name=N'NombreSede'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Esta tabla contiene la información relacionada a las sedes con las cuales cuenta la  institución.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sede'
GO
/****** Object:  StoredProcedure [dbo].[RecibirParametros]    Script Date: 11/12/2012 15:45:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RecibirParametros]
    @Parametros VARCHAR(max)
--@Parametros es la cadena de entrada
AS --Creamos una tabla temporal por simplificar el trabajo
--y almacenar los parametros que vayamos obteniendo

    BEGIN
        DECLARE @Instruccion VARCHAR(max)
  
    
        SET @Instruccion = 'SELECT ReservaEspacios.IdReservaEspacio,ReservaEspacios.FechaRegistro,ReservaEspacios.TipoEvento,ReservaEspacios.HoraInicial,ReservaEspacios.HoraFinal, 
                         ReservaEspacios.IdPeriodo,ReservaEspacios.Telefono,ReservaEspacios.Cupo,ReservaEspacios.NombreEvento, 
                         ReservaEspacios.Observaciones,ReservaEspacios.IdEstadoReservaEspacio,ReservaEspacios.Enviado,ReservaEspacios.CanceladoPor, 
                         ReservaEspacios.FechaCancelacion,ReservaEspacios.IdDependencia,ReservaEspacios.FechaReserva,ReservaEspacios.Responsable, 
                         ReservaEspacios.IdUsuarioSolicitante, TipoEvento.TipoEvento AS TipoEven,EstadoReservaEspacio.NombreEstado, 
                         aspnet_Users.UserName, ReservaEspacios.Correo,ReservaEspacios.IdDependencia AS IdDep,Dependencia.NombreDependencia,ISNULL(AsignacionReservaEspacios.IdEspacio,0) AS IdEspacio,ISNULL(Espacio.NombreEspacio,'
            +  CHAR(39) + 'Sin Asignar' + CHAR(39) + ')'
            + ' AS NombreEspacio
                         FROM ReservaEspacios 
                         INNER JOIN TipoEvento ON ReservaEspacios.TipoEvento = TipoEvento.IdTipoEvento INNER JOIN
                         EstadoReservaEspacio ON ReservaEspacios.IdEstadoReservaEspacio = EstadoReservaEspacio.IdEstado INNER JOIN
                         Dependencia ON ReservaEspacios.IdDependencia = Dependencia.IdDependencia INNER JOIN
                         aspnet_Users ON ReservaEspacios.IdUsuarioSolicitante = aspnet_Users.UserId INNER JOIN
                         AsignacionReservaEspacios ON ReservaEspacios.IdReservaEspacio = AsignacionReservaEspacios.IdReserva LEFT OUTER JOIN
                         Espacio ON AsignacionReservaEspacios.IdEspacio = Espacio.IdEspacio where ReservaEspacios.IdReservaEspacio IN('
            + @Parametros + ')order by ReservaEspacios.FechaReserva'
  
  
  
        EXEC (@Instruccion )

      -- SELECT  @Instruccion
    END
--Y cuando se han recorrido todos los parametros sacamos por pantalla el resultado
--SELECT * FROM #parametros

    SET NOCOUNT OFF
GO
/****** Object:  Table [dbo].[Programa]    Script Date: 11/12/2012 15:45:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programa](
	[IdPrograma] [int] IDENTITY(1,1) NOT NULL,
	[CodigoPrograma] [int] NOT NULL,
	[Jornada] [nchar](1) NOT NULL,
	[NombrePrograma] [nvarchar](100) NOT NULL,
	[Usuario] [nvarchar](256) NULL,
	[Modifico] [nvarchar](256) NOT NULL,
	[Modalidad] [nchar](1) NULL,
 CONSTRAINT [PK_PROGRAMA_1] PRIMARY KEY CLUSTERED 
(
	[IdPrograma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla, campo identificador del programa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Programa', @level2type=N'COLUMN',@level2name=N'IdPrograma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código del programa en la institución. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Programa', @level2type=N'COLUMN',@level2name=N'CodigoPrograma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Jornada en la cual se ofrece el programa (D.N)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Programa', @level2type=N'COLUMN',@level2name=N'Jornada'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre con el que se identifica el programa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Programa', @level2type=N'COLUMN',@level2name=N'NombrePrograma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hace referencia al usuario que realiza el registro del programa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Programa', @level2type=N'COLUMN',@level2name=N'Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del usuario que modificó la información del programa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Programa', @level2type=N'COLUMN',@level2name=N'Modifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contiene la información relacionada con los programas ofrecidas por la institución' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Programa'
GO
/****** Object:  Table [dbo].[Prioridad]    Script Date: 11/12/2012 15:45:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prioridad](
	[IdPrioridad] [int] IDENTITY(1,1) NOT NULL,
	[OrdenPrioritario] [int] NOT NULL,
	[SedePreferencial] [int] NULL,
	[MismaSede] [bit] NOT NULL,
	[Aire] [bit] NOT NULL,
	[Usuario] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK__PRIORIDAD__1920BF5C] PRIMARY KEY CLUSTERED 
(
	[IdPrioridad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sancion]    Script Date: 11/12/2012 15:45:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sancion](
	[IdSancion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Duracion] [int] NOT NULL,
 CONSTRAINT [PK__TipoSanc__5087DE792C3393D0] PRIMARY KEY CLUSTERED 
(
	[IdSancion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Repuesto]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Repuesto](
	[IdRepuesto] [int] IDENTITY(1,1) NOT NULL,
	[Repuesto] [varchar](255) NOT NULL,
 CONSTRAINT [PK__Repuesto__318BBE67727BF387] PRIMARY KEY CLUSTERED 
(
	[IdRepuesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Repuesto', @level2type=N'COLUMN',@level2name=N'IdRepuesto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe el repuesto que se utilizará para el mantenimiento.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Repuesto', @level2type=N'COLUMN',@level2name=N'Repuesto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena las posibles parter de un equipo que fueron utilizadas para los mantenimientos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Repuesto'
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Auditoria]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auditoria](
	[IdTransaccion] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](256) NOT NULL,
	[HoraFecha] [datetime] NOT NULL,
	[TipoTransaccion] [int] NOT NULL,
	[DatosModificados] [varchar](350) NOT NULL,
	[NombreTabla] [varchar](30) NOT NULL,
 CONSTRAINT [PK__AUDITORIA__1CF15040] PRIMARY KEY CLUSTERED 
(
	[IdTransaccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla, campo identificador de la de la transacción.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Auditoria', @level2type=N'COLUMN',@level2name=N'IdTransaccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifica el usuario que realiza la transacción.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Auditoria', @level2type=N'COLUMN',@level2name=N'Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registra la hora en la que se realiza la operación.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Auditoria', @level2type=N'COLUMN',@level2name=N'HoraFecha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guardar el tipo de transacción realizada.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Auditoria', @level2type=N'COLUMN',@level2name=N'TipoTransaccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena cuales fueron los datos o variables que fueron cambiadas.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Auditoria', @level2type=N'COLUMN',@level2name=N'DatosModificados'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que registra el nombre de la tabla de la base de datos en la cual ocurrieron los cambios.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Auditoria', @level2type=N'COLUMN',@level2name=N'NombreTabla'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla utilizada para almacenar la información necesaria utilizada en la revisión de cambios al sistema y auditoria.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Auditoria'
GO
/****** Object:  Table [dbo].[CategoriaSuministro]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaSuministro](
	[IdCategoriaSuministro] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
 CONSTRAINT [PK_CategoriaSuministro] PRIMARY KEY CLUSTERED 
(
	[IdCategoriaSuministro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identifica la categoria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaSuministro', @level2type=N'COLUMN',@level2name=N'NombreCategoria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalla las caracteristica o especificaciones de las categorias' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaSuministro', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contendra la las categorias o especializades en que se divide los suministros.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaSuministro'
GO
/****** Object:  Table [dbo].[CategoriaSancion]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaSancion](
	[IdCategoriaSancion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CategoriaSancion] PRIMARY KEY CLUSTERED 
(
	[IdCategoriaSancion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriaEquipo]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoriaEquipo](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Categori__A3C02A104885B9BB] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla es númerico incremental.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaEquipo', @level2type=N'COLUMN',@level2name=N'IdCategoria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe la categoria del equipo. Ejemplo: Televisor, Video Proyector, etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaEquipo', @level2type=N'COLUMN',@level2name=N'Categoria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Permite almacenar las categorias de equipos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CategoriaEquipo'
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEstadoReservaMultiple]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarEstadoReservaMultiple] 
	
	 @IdReserva VARCHAR(max)
AS
BEGIN
Declare @Id int
 DECLARE @Instruccion VARCHAR(max)
	BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION
			
	
    -- Actualizando espacios
     SET @Instruccion='UPDATE ReservaEspacios SET Enviado = 1,IdEstadoReservaEspacio = 3
                        where IdReservaEspacio IN('+ @IdReserva + ')'
     EXEC (@Instruccion)
     
		
	--Ejecutamos el lote de Lote de operaciones y transacciones
			COMMIT TRANSACTION
			set @Id=1
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @Id = -1
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        SELECT  @Id
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultarEspaciosPorIds]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ConsultarEspaciosPorIds]
    @Parametros VARCHAR(max) = NULL
--@Parametros es la cadena de entrada
AS --Creamos una tabla temporal por simplificar el trabajo
--y almacenar los parametros que vayamos obteniendo

    BEGIN
        DECLARE @Instruccion VARCHAR(max)
  
    
    IF  (@Parametros IS NULL)  
    BEGIN 
      SET @Instruccion = 'SELECT        Espacio.IdEspacio, Espacio.CodBloque, Espacio.Disponible, Espacio.NombreEspacio, Espacio.TipoEspacio, Espacio.DescripcionEspacio, Espacio.Aire, 
                         Espacio.CapacidadEspacio, Espacio.Margen, Espacio.Nomenclatura, Bloques.NombreBloque, Sede.NombreSede, TipoEspacio.TipoEspacio AS NombreTipo
		FROM            Bloques INNER JOIN
                         Espacio ON Bloques.CodBloque = Espacio.CodBloque INNER JOIN
                         Sede ON Bloques.IdSede = Sede.IdSede INNER JOIN
                         TipoEspacio ON Espacio.TipoEspacio = TipoEspacio.IdTipoEspacio
	 ORDER BY Espacio.NombreEspacio'               
	  
	END
	ELSE
	BEGIN 				
      SET @Instruccion = 'SELECT        Espacio.IdEspacio, Espacio.CodBloque, Espacio.Disponible, Espacio.NombreEspacio, Espacio.TipoEspacio, Espacio.DescripcionEspacio, Espacio.Aire, 
                         Espacio.CapacidadEspacio, Espacio.Margen, Espacio.Nomenclatura, Bloques.NombreBloque, Sede.NombreSede, TipoEspacio.TipoEspacio AS NombreTipo
		FROM            Bloques INNER JOIN
                         Espacio ON Bloques.CodBloque = Espacio.CodBloque INNER JOIN
                         Sede ON Bloques.IdSede = Sede.IdSede INNER JOIN
                         TipoEspacio ON Espacio.TipoEspacio = TipoEspacio.IdTipoEspacio
		WHERE Espacio.IdEspacio IN('+ @Parametros + ')ORDER BY Espacio.NombreEspacio'               
	END

    EXEC (@Instruccion )

      --  SELECT  @Instruccion
    END
--Y cuando se han recorrido todos los parametros sacamos por pantalla el resultado
--SELECT * FROM #parametros

    SET NOCOUNT OFF
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[IdEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[NombreEmpresa] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Contacto] [varchar](50) NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificado de la tabla, autonumerico incremental' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'IdEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la empresa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'NombreEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Direccion fisica de la ubicación de la empresa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Telefono fijo de la empresa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'Telefono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del contacto en la empresa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa', @level2type=N'COLUMN',@level2name=N'Contacto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Esta tabla almacena las empresas que tienen relacion con la dependencia y que proveen los servicios de manteniemiento, soporte entre otros.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empresa'
GO
/****** Object:  Table [dbo].[Devolucion]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Devolucion](
	[IdDevolucion] [int] IDENTITY(1,1) NOT NULL,
	[Devolucion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Devoluci__7B3585A26339AFF7] PRIMARY KEY CLUSTERED 
(
	[IdDevolucion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla, identifica los tipo de devolución.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Devolucion', @level2type=N'COLUMN',@level2name=N'IdDevolucion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe forma como se realizó la devolución del equipo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Devolucion', @level2type=N'COLUMN',@level2name=N'Devolucion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Se almacenan los tipos de devolucion. Ejemplo 

Devolucion despues de la hora.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Devolucion'
GO
/****** Object:  Table [dbo].[Dependencia]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dependencia](
	[IdDependencia] [int] IDENTITY(1,1) NOT NULL,
	[NombreDependencia] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Dependencia] PRIMARY KEY CLUSTERED 
(
	[IdDependencia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'almacena las diferentes dependencias u oficinas con las que se cuenta en la institución.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dependencia'
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marca](
	[IdMarca] [int] IDENTITY(1,1) NOT NULL,
	[Marca] [varchar](150) NOT NULL,
 CONSTRAINT [PK__Marcas__4076A88757C7FD4B] PRIMARY KEY CLUSTERED 
(
	[IdMarca] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contiene los registros de las marcar de los equipos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Marca', @level2type=N'COLUMN',@level2name=N'IdMarca'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe la marca del equipo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Marca', @level2type=N'COLUMN',@level2name=N'Marca'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contiene los registros de los modeloes de los equipos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Marca'
GO
/****** Object:  Table [dbo].[Historial_Ajuste_Horario]    Script Date: 11/12/2012 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historial_Ajuste_Horario](
	[IdHistorialAjuste] [int] IDENTITY(1,1) NOT NULL,
	[IdPrograma] [int] NOT NULL,
	[CodPrograma] [int] NOT NULL,
	[JornadaPrograma] [nvarchar](50) NOT NULL,
	[PlanEstudio] [int] NOT NULL,
	[IdMateria] [int] NOT NULL,
	[NombreMateria] [nvarchar](100) NOT NULL,
	[CodUnidadAcademica] [int] NOT NULL,
	[ConsecutivoCurso] [int] NOT NULL,
	[Semestre] [int] NOT NULL,
	[CodigoMateria] [nvarchar](50) NOT NULL,
	[IdGrupo] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[IdDocente] [int] NOT NULL,
	[NumeroGrupo] [int] NOT NULL,
	[TipoGrupo] [nchar](10) NOT NULL,
	[Capacidad] [int] NOT NULL,
	[NombreElectiva] [nvarchar](100) NULL,
	[IdHorario] [int] NULL,
	[Dia] [int] NULL,
	[HoraInicial] [int] NULL,
	[HoraFinal] [int] NULL,
	[TipoTransaccion] [nvarchar](50) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Usuario] [nvarchar](50) NOT NULL,
	[NombreEspacio] [nvarchar](100) NULL,
 CONSTRAINT [PK_Historial_Ajuste_Horario] PRIMARY KEY CLUSTERED 
(
	[IdHistorialAjuste] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de registro en la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'IdHistorialAjuste'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del programa en la tabla programa del sistema SIARE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'IdPrograma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código del programa en los registros ante el ministerio de educación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'CodPrograma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código de la jornada del programa y es un carácter (D, N, M), Diurno, Nocturno o Mixto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'JornadaPrograma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de plan de estudio de la materia emitido por admisiones.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'PlanEstudio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la materia en la tabla materia del SIARE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'IdMateria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es la forma como se hace llamar a la materia.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'NombreMateria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de materia emitido por admisiones.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'CodUnidadAcademica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de materia emitido por admisiones.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'ConsecutivoCurso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de materia emitido por admisiones.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'Semestre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de materia emitido por admisiones.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'CodigoMateria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del grupo en la tabla grupo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'IdGrupo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de periodo semestral en la cual está asociado el grupo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'IdPeriodo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Documento de identificación del docente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'IdDocente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe la forma como se desarrollan las actividades académicas del grupo, Intensivo (I) o Regulares(R).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'TipoGrupo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es la cantidad de estudiantes por grupos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'Capacidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe que tipo de electiva es el grupo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'NombreElectiva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del horario en la tabla horario del SIARE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'IdHorario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dias en que se realizara las clases del grupo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'Dia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hora inicial de clase del grupo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'HoraInicial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hora final de la clase del grupo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'HoraFinal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe el tiempo de transacción que sufrió el registro (inserción, actualización y eliminación).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'TipoTransaccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en la que se realizó la transacción.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'FechaRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que realizó la transacción.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario', @level2type=N'COLUMN',@level2name=N'Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contiene los registros modificados del horario académico. Esta información es útil para notificar a admisiones sobre los cambios realizados en los horarios académicos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Historial_Ajuste_Horario'
GO
/****** Object:  Table [dbo].[Horas]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horas](
	[idHora] [int] IDENTITY(1,1) NOT NULL,
	[Hora] [int] NOT NULL,
 CONSTRAINT [PK_Horas] PRIMARY KEY CLUSTERED 
(
	[idHora] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FuenteGasto]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FuenteGasto](
	[IdDestinacion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
 CONSTRAINT [PK_FuenteGasto] PRIMARY KEY CLUSTERED 
(
	[IdDestinacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoReservaEspacio]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadoReservaEspacio](
	[IdEstado] [smallint] IDENTITY(1,1) NOT NULL,
	[NombreEstado] [varchar](25) NOT NULL,
 CONSTRAINT [PK_EstadoReservaEspacio] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LLave primaria secuencial de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EstadoReservaEspacio', @level2type=N'COLUMN',@level2name=N'IdEstado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'almacena el nombre del estado de asignacion de solicitudes de espacios fisicos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EstadoReservaEspacio', @level2type=N'COLUMN',@level2name=N'NombreEstado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena la informacion referente a los estados de asignacion a solicitudes de espacios fisicos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EstadoReservaEspacio'
GO
/****** Object:  Table [dbo].[PeriodosSolicitarSuministro]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeriodosSolicitarSuministro](
	[IdPeriodoSuministro] [int] IDENTITY(1,1) NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [bit] NOT NULL,
	[UsuarioIngreso] [nvarchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[UsuarioModifico] [nvarchar](50) NULL,
	[FechaModifico] [datetime] NULL,
 CONSTRAINT [PK_PeriodosSolicitarSuministro] PRIMARY KEY CLUSTERED 
(
	[IdPeriodoSuministro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador auto incremental de la tabla.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PeriodosSolicitarSuministro', @level2type=N'COLUMN',@level2name=N'IdPeriodoSuministro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es la fecha de inicio en la que se abre el sistema para realizar las solicitudes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PeriodosSolicitarSuministro', @level2type=N'COLUMN',@level2name=N'FechaInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es la fecha en la cual se cierra el sistema para realizar las solicitudes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PeriodosSolicitarSuministro', @level2type=N'COLUMN',@level2name=N'FechaFin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es una texto opcional para describir algún detalle del periodo que se abre, podrían ser eventualidades o excepciones.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PeriodosSolicitarSuministro', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si el periodo se encuentra activo para realizar las comparaciones de apertura del sistema.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PeriodosSolicitarSuministro', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que ingresa el periodo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PeriodosSolicitarSuministro', @level2type=N'COLUMN',@level2name=N'UsuarioIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en el cual se ingresó el periodo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PeriodosSolicitarSuministro', @level2type=N'COLUMN',@level2name=N'FechaIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que realiza las modificaciones al periodo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PeriodosSolicitarSuministro', @level2type=N'COLUMN',@level2name=N'UsuarioModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de modificación del registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PeriodosSolicitarSuministro', @level2type=N'COLUMN',@level2name=N'FechaModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contiene las fechas o periodos en los cuales los coordinadores de laboratorios tendrán la posibilidad de solicitar suministros para laboratorios.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PeriodosSolicitarSuministro'
GO
/****** Object:  Table [dbo].[Periodo]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Periodo](
	[IdPeriodo] [int] IDENTITY(1,1) NOT NULL,
	[Anio] [int] NOT NULL,
	[Periodo] [int] NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFinal] [datetime] NOT NULL,
	[Usuario] [nvarchar](256) NOT NULL,
	[FechaInicioAjustes] [datetime] NULL,
	[FechaFinAjustes] [datetime] NULL,
	[FechaInicioSolicitud] [datetime] NULL,
	[FechaFinSolicitud] [datetime] NULL,
 CONSTRAINT [PK__PERIODO__15502E78] PRIMARY KEY CLUSTERED 
(
	[IdPeriodo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena el id del periodo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Periodo', @level2type=N'COLUMN',@level2name=N'IdPeriodo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe el año del periodo Ejm:(2010)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Periodo', @level2type=N'COLUMN',@level2name=N'Anio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Alamacena el periodo (I, II)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Periodo', @level2type=N'COLUMN',@level2name=N'Periodo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registra la fecha de inicio de la vigencia del periodo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Periodo', @level2type=N'COLUMN',@level2name=N'FechaInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registra la fecha de finalización de la vigencia del periodo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Periodo', @level2type=N'COLUMN',@level2name=N'FechaFinal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del usuario que realiza la inserción del periodo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Periodo', @level2type=N'COLUMN',@level2name=N'Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se almacenan los la información referente a los periodos academicos y su duración Ejm: (2010-I)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Periodo'
GO
/****** Object:  Table [dbo].[MateriaTemp]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MateriaTemp](
	[IdPlanEstudio] [int] NULL,
	[NombreMateria] [varchar](100) NULL,
	[CodUnidadAcademica] [int] NULL,
	[ConsecutivoCurso] [int] NULL,
	[Semestre] [int] NULL,
	[CodigoMateria] [varchar](50) NULL,
	[IdPrograma] [int] NULL,
	[Jornada] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlanPrograma]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanPrograma](
	[IdPlanEstudio] [int] NOT NULL,
	[IdPrograma] [int] NOT NULL,
	[FechaInicioPlan] [int] NOT NULL,
	[Periodo] [int] NOT NULL,
	[Usuario] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_PLAN_PROGRAMA] PRIMARY KEY CLUSTERED 
(
	[IdPlanEstudio] ASC,
	[IdPrograma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo identificador del plan de estudio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PlanPrograma', @level2type=N'COLUMN',@level2name=N'IdPlanEstudio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que define con que programa se asocia el plan programa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PlanPrograma', @level2type=N'COLUMN',@level2name=N'IdPrograma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define la fecha de inicio del plan del programa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PlanPrograma', @level2type=N'COLUMN',@level2name=N'FechaInicioPlan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo identificador del periodo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PlanPrograma', @level2type=N'COLUMN',@level2name=N'Periodo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del usuario que realiza la inserción del plan programa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PlanPrograma', @level2type=N'COLUMN',@level2name=N'Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla se inserta la información referente a la identificación de los planes de estudios con los que contaría un programa en particular.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PlanPrograma'
GO
/****** Object:  Table [dbo].[EmpresaxServicios]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresaxServicios](
	[IdEmpresaxServicio] [int] IDENTITY(1,1) NOT NULL,
	[IdServiciosEmpresas] [int] NOT NULL,
	[IdEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_EmpresaxServicios] PRIMARY KEY CLUSTERED 
(
	[IdEmpresaxServicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador de registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmpresaxServicios', @level2type=N'COLUMN',@level2name=N'IdEmpresaxServicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador foraneo de los servicios que prestarian las empresas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmpresaxServicios', @level2type=N'COLUMN',@level2name=N'IdServiciosEmpresas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador foranea de las empresas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmpresaxServicios', @level2type=N'COLUMN',@level2name=N'IdEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'creará una relación de mucho a muchos entre las empresas y los servicios.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EmpresaxServicios'
GO
/****** Object:  StoredProcedure [dbo].[InsertarSuministro]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Roberto Mal>
-- Create date: <09/11/2011>
-- Description:	<Inserta un Nuevo Suministro>
-- =============================================
CREATE PROCEDURE [dbo].[InsertarSuministro]
    @NombreSuministro as Varchar(MAX),
    @Sinonimo AS Varchar(50)=NULL,
	@Formula   AS Varchar(50)=NULL,
	@Grado  AS Varchar(50)=NULL,
	@ReferenciaUso as  Varchar(MAX)=NULL,
	@ReferenciaProveedor as Varchar(50)=NULL,
	@IdMarca as int,
	@IdTipoMedida as int,
	@Cantidad as decimal(18,1),
	@IdCategoriaSuministro as int,
	@UsuarioIngreso as Varchar(50),
	@GuiaSeguridad   as Varchar(50)=NULL,
	@IdPresentacion  as int
		
AS
BEGIN

SET NOCOUNT ON;
Declare @Ret int

	
  BEGIN TRY
  
  
          BEGIN TRANSACTION   
          
            if (@IdPresentacion=0)
          begin
          set @IdPresentacion=null
          end
          
                        
        INSERT INTO Suministro(
       NombreSuministro,       
        Sinonimo,
        Formula,
        Grado,
        ReferenciaUso  ,
        ReferenciaProveedor,
        IdMarca,
        IdTipoMedida,
      	Cantidad,
      	IdCategoriaSuministro,
        Estado,
        UsuarioIngreso,
       FechaIngreso,
       GuiaSeguridad,
       IdPresentacion
        )
        VALUES(
        @NombreSuministro, 
        @Sinonimo,
        @Formula,
        @Grado,
		@ReferenciaUso,
		@ReferenciaProveedor,
		@IdMarca,
		@IdTipoMedida,
		@Cantidad,
		@IdCategoriaSuministro,
		1,
		@UsuarioIngreso,
		SYSDATETIME(),
		@GuiaSeguridad,
		@IdPresentacion
	      )  
           COMMIT TRANSACTION
			set @Ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
           set @Ret=0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH  
       select @Ret
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarSedes]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Gabriel Barrios>
-- Create date: <18/06/10>
-- Description:	<Insertar nuevas sedes>
-- =============================================
CREATE PROCEDURE [dbo].[InsertarSedes] 
	-- Add the parameters for the stored procedure here
	@NombreSede Varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  BEGIN TRY
          BEGIN TRANSACTION   
          
          INSERT INTO Sede
          (NombreSede)
          VALUES (@NombreSede)
          
          
          COMMIT TRANSACTION
			
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
           
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH  
END
GO
/****** Object:  Table [dbo].[Laboratorio]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laboratorio](
	[IdLaboratorio] [int] IDENTITY(1,1) NOT NULL,
	[NombreLaboratorio] [nvarchar](max) NULL,
	[Ubicacion] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[IdPrograma] [int] NOT NULL,
	[IdUsuarioIngreso] [nvarchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[UsuarioModifico] [nvarchar](50) NULL,
	[FechaModifico] [datetime] NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Laboratorio] PRIMARY KEY CLUSTERED 
(
	[IdLaboratorio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador unico de cada laboratorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Laboratorio', @level2type=N'COLUMN',@level2name=N'IdLaboratorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define los tipos de practicas que se realizan dentro del laboratorio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Laboratorio', @level2type=N'COLUMN',@level2name=N'NombreLaboratorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'indica la ubicación física del laboratorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Laboratorio', @level2type=N'COLUMN',@level2name=N'Ubicacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'amplia información del laboratorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Laboratorio', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'indica a que programa se encuentra relacionado el laboratorio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Laboratorio', @level2type=N'COLUMN',@level2name=N'IdPrograma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que realiza el registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Laboratorio', @level2type=N'COLUMN',@level2name=N'IdUsuarioIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de ingresó del laboratorio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Laboratorio', @level2type=N'COLUMN',@level2name=N'FechaIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que realiza modificaciones al registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Laboratorio', @level2type=N'COLUMN',@level2name=N'UsuarioModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de actualizacion del registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Laboratorio', @level2type=N'COLUMN',@level2name=N'FechaModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Determina el estado del laboratorio en activo (1) o inactivo (0)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Laboratorio', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contendra todos los laboratorios de caracter académico y todos aquellos que disponga la dirección institucional.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Laboratorio'
GO
/****** Object:  StoredProcedure [dbo].[InsertarEmpresa]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarEmpresa]
	@NombreEmpresa as varchar(100),
	@Direccion as varchar(100),
	@Telefono as varchar(100),
	@Contacto as varchar(100)=null
		
AS
BEGIN
	SET NOCOUNT ON;
 Declare @Ret int
	
  BEGIN TRY
          BEGIN TRANSACTION  
          
          INSERT INTO Empresa(NombreEmpresa,Direccion,Telefono,Contacto) VALUES(@NombreEmpresa,@Direccion,@Telefono,@Contacto)
                   
            COMMIT TRANSACTION
			set @Ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @Ret=0
        END CATCH  
        select @Ret
   
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarCategoria]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[InsertarCategoria]
	@Categoria as varchar(100)
	
		
AS
BEGIN
	SET NOCOUNT ON;
 Declare @Ret int
	
  BEGIN TRY
          BEGIN TRANSACTION  
          
          INSERT INTO CategoriaEquipo(Categoria) VALUES(@Categoria)
                   
            COMMIT TRANSACTION
			set @Ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @Ret=0
        END CATCH  
        select @Ret
   
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarMarca]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[InsertarMarca]
	@Marca as varchar(150)
	
		
AS
BEGIN
	SET NOCOUNT ON;
 Declare @Ret int
	
  BEGIN TRY
          BEGIN TRANSACTION  
          
          INSERT INTO Marca(Marca) VALUES(@Marca)
                   
            COMMIT TRANSACTION
			set @Ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @Ret=0
        END CATCH  
        select @Ret
   
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarRepuesto]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarRepuesto]
	@Repuesto as varchar(255)
	
		
AS
BEGIN
	SET NOCOUNT ON;
 Declare @Ret int
	
  BEGIN TRY
          BEGIN TRANSACTION  
          
          INSERT INTO Repuesto(Repuesto) VALUES(@Repuesto)
                   
            COMMIT TRANSACTION
			set @Ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @Ret=0
        END CATCH  
        select @Ret
   
END
GO
/****** Object:  Table [dbo].[Contrato]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contrato](
	[IdContrato] [int] IDENTITY(1,1) NOT NULL,
	[Contrato] [nvarchar](50) NOT NULL,
	[ObjetoContrato] [nvarchar](max) NOT NULL,
	[FechaContrato] [date] NOT NULL,
	[ValorContrato] [int] NOT NULL,
	[UsuarioIngreso] [nvarchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[UsuarioModifico] [nvarchar](50) NULL,
	[FechaModifico] [datetime] NULL,
	[IdTipoContrato] [int] NULL,
	[JustificacionModificacion] [nvarchar](max) NULL,
	[IdEmpresa] [int] NULL,
 CONSTRAINT [PK_Contrato] PRIMARY KEY CLUSTERED 
(
	[IdContrato] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de contrato' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contrato', @level2type=N'COLUMN',@level2name=N'IdContrato'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Referencia o nombre del contrato son combinaciones alfa-numericas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contrato', @level2type=N'COLUMN',@level2name=N'Contrato'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe el detalle de lo que se quiere contratar.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contrato', @level2type=N'COLUMN',@level2name=N'ObjetoContrato'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en la cual se expide el contrato o entra en vigencia.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contrato', @level2type=N'COLUMN',@level2name=N'FechaContrato'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Monto o valor total del contrato' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contrato', @level2type=N'COLUMN',@level2name=N'ValorContrato'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que realizo el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contrato', @level2type=N'COLUMN',@level2name=N'UsuarioIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en la cual se realizo el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contrato', @level2type=N'COLUMN',@level2name=N'FechaIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que realiza las modificaciones.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contrato', @level2type=N'COLUMN',@level2name=N'UsuarioModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de la ultima Actualizacion del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contrato', @level2type=N'COLUMN',@level2name=N'FechaModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador foraneo del tipo de contrato.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contrato', @level2type=N'COLUMN',@level2name=N'IdTipoContrato'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción que justifique las modificaciones realizadas al contrato.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contrato', @level2type=N'COLUMN',@level2name=N'JustificacionModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Empresa o proveedor de los suministros' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contrato', @level2type=N'COLUMN',@level2name=N'IdEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contiene los objetos juridicos para adquirir suministros o recursos para los laboratorios.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Contrato'
GO
/****** Object:  StoredProcedure [dbo].[ConsultaPeriodo]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[ConsultaPeriodo]
	-- Add the parameters for the stored procedure here
	@IdPeriodo as int
	
AS
BEGIN
DECLARE @FechaInicio Datetime
DECLARE @FechaFin Datetime   

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   
	SELECT @FechaInicio=FechaInicio,@FechaFin=FechaFinal
	FROM Periodo
	WHERE IdPeriodo=@IdPeriodo
	SELECT @FechaInicio,@FechaFin
END
GO
/****** Object:  Table [dbo].[Docente]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Docente](
	[Cedula] [int] IDENTITY(1,1) NOT NULL,
	[TipoDocente] [int] NULL,
	[Apellidos] [varchar](100) NULL,
	[Nombres] [varchar](100) NULL,
	[Usuario] [nvarchar](256) NOT NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_DOCENTE] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__DOCENTE__03317E3D] UNIQUE NONCLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla, campo identificador del docente.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Docente', @level2type=N'COLUMN',@level2name=N'Cedula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registra el tipo de vinculación del docente.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Docente', @level2type=N'COLUMN',@level2name=N'TipoDocente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe los apellidos del docente.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Docente', @level2type=N'COLUMN',@level2name=N'Apellidos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe los nombres del docente.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Docente', @level2type=N'COLUMN',@level2name=N'Nombres'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del usuario que realiza la inserción del bloque.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Docente', @level2type=N'COLUMN',@level2name=N'Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si el docente se encuntra actualmente activo o no en la Universidad del Magdalena.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Docente', @level2type=N'COLUMN',@level2name=N'Activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Esta tabla permite identificar los docentes activos que pueden ser asignados para dirigir las diferentes materias.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Docente'
GO
/****** Object:  StoredProcedure [dbo].[EliminarSuministro]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto Mal
-- Create date: 24/10/2011
-- Description:	Eliminar un Suministro dado un Id de Suministro
-- =============================================
create PROCEDURE [dbo].[EliminarSuministro]
    @IdSuministro as int
    
AS
BEGIN

SET NOCOUNT ON;
DECLARE @Res as int
	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
       Delete from Suministro where IdSuministro=@IdSuministro
             
          COMMIT TRANSACTION
		  SET @Res = 1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
           SET @res=-1 
            
        END CATCH  
      
      SELECT @res
       
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarMarca]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[EliminarMarca]
    @IdMarca as int
    
AS
BEGIN

SET NOCOUNT ON;
DECLARE @Res as int
	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
       Delete from Marca where IdMarca=@IdMarca
             
          COMMIT TRANSACTION
		  SET @Res = 1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
           SET @res=-1 
            
        END CATCH  
      
      SELECT @res
       
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarEmpresa]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[EliminarEmpresa]
    @IdEmpresa as int
    
AS
BEGIN

SET NOCOUNT ON;
DECLARE @Res as int
	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
       Delete from Empresa where IdEmpresa=@IdEmpresa
             
          COMMIT TRANSACTION
		  SET @Res = 1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
           SET @res=-1 
            
        END CATCH  
      
      SELECT @res
       
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarRepuesto]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarRepuesto]
    @IdRepuesto as int
    
AS
BEGIN

SET NOCOUNT ON;
DECLARE @Res as int
	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
       Delete from Repuesto where IdRepuesto=@IdRepuesto
             
          COMMIT TRANSACTION
		  SET @Res = 1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
           SET @res=-1 
            
        END CATCH  
      
      SELECT @res
       
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarCategoria]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[EliminarCategoria]
    @IdCategoria as int
    
AS
BEGIN

SET NOCOUNT ON;
DECLARE @Res as int
	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
       Delete from CategoriaEquipo where IdCategoria=@IdCategoria
             
          COMMIT TRANSACTION
		  SET @Res = 1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
           SET @res=-1 
            
        END CATCH  
      
      SELECT @res
       
END
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarSuministro]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto Mal
-- Create date: 09/11/2011
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ActualizarSuministro]
	@NombreSuministro as Varchar(MAX),
    @Sinonimo AS Varchar(50)=NULL,
	@Formula   AS Varchar(50)=NULL,
	@Grado  AS Varchar(50)=NULL,
	@ReferenciaUso as  Varchar(MAX)=NULL,
	@ReferenciaProveedor as Varchar(50)=NULL,
	@IdMarca as int,
	@IdTipoMedida as int,
	@Cantidad as decimal(18,1),
	@IdCategoriaSuministro as int,
	@GuiaSeguridad   as Varchar(50)=NULL,
	@UsuarioActualizo as varchar(50),
	@Estado as Bit, 
	@IdPresentacion as int,
	@original_IdSuministro as int
		
AS
BEGIN
	SET NOCOUNT ON;
 Declare @Ret int
	
  BEGIN TRY
  
  
          BEGIN TRANSACTION  
          
          if (@IdPresentacion=0)
          begin
          set @IdPresentacion=null
          end
          
          UPDATE Suministro SET NombreSuministro=@NombreSuministro,Sinonimo=@Sinonimo,Formula=@Formula,
          Grado=@Grado,ReferenciaUso=@ReferenciaUso,ReferenciaProveedor=@ReferenciaProveedor,IdMarca=@IdMarca,
          IdTipoMedida=@IdTipoMedida,Cantidad=@Cantidad,IdCategoriaSuministro=@IdCategoriaSuministro,
          GuiaSeguridad=@GuiaSeguridad,UsuarioModifico=@UsuarioActualizo,FechaModifico=SYSDATETIME(),Estado=@Estado,IdPresentacion=@IdPresentacion
           where IdSuministro=@original_IdSuministro
                   
            COMMIT TRANSACTION
			set @Ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @Ret=0
        END CATCH  
        select @Ret
   
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarSede]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Gabriel Barrios>
-- Create date: <21/06/10>
-- Description:	<Modificar las caracteristicas de la sede>
-- =============================================
CREATE PROCEDURE [dbo].[ActualizarSede]
@IdSede int,
@NombreSede Varchar(100)
	
AS
BEGIN
	BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION
			
	
    -- Actualizando espacios
	UPDATE Sede
	SET
	NombreSede = @NombreSede
	
	WHERE(IdSede = @IdSede)
	
	--Ejecutamos el lote de Lote de opearaciones y transacciones
			COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @IdSede = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        SELECT  @IdSede
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 11/12/2012 15:45:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  Table [dbo].[ActualizaPeriodo]    Script Date: 11/12/2012 15:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActualizaPeriodo](
	[IdActual] [int] IDENTITY(1,1) NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[NuevaFechaInicial] [datetime] NOT NULL,
	[NuevaFechaFinal] [datetime] NOT NULL,
	[Usuario] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK__ACTUALIZA_PERIOD__20C1E124] PRIMARY KEY CLUSTERED 
(
	[IdActual] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEmpresa]    Script Date: 11/12/2012 15:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarEmpresa]
	@NombreEmpresa as varchar(100),
	@Direccion as varchar(100),
	@Telefono as varchar(100),
	@Contacto as varchar(100)=null,
	@original_IdEmpresa as int
		
AS
BEGIN
	SET NOCOUNT ON;
 Declare @Ret int
	
  BEGIN TRY
          BEGIN TRANSACTION  
          
          UPDATE Empresa SET NombreEmpresa=@NombreEmpresa,Direccion=@Direccion,Telefono=@Telefono,Contacto=@Contacto where IdEmpresa=@original_IdEmpresa
                   
            COMMIT TRANSACTION
			set @Ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @Ret=0
        END CATCH  
        select @Ret
   
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarCategoria]    Script Date: 11/12/2012 15:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarCategoria] 
	@Categoria as varchar(100),
	@original_IdCategoria as int
		
AS
BEGIN
	SET NOCOUNT ON;
 Declare @Ret int
	
  BEGIN TRY
          BEGIN TRANSACTION  
          
          UPDATE CategoriaEquipo SET Categoria=@Categoria where IdCategoria=@original_IdCategoria
                   
            COMMIT TRANSACTION
			set @Ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @Ret=0
        END CATCH  
        select @Ret
   
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarMarca]    Script Date: 11/12/2012 15:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[ActualizarMarca] 
	@Marca as varchar(150),
	@original_IdMarca as int
		
AS
BEGIN
	SET NOCOUNT ON;
 Declare @Ret int
	
  BEGIN TRY
          BEGIN TRANSACTION  
          
          UPDATE Marca SET Marca=@Marca where IdMarca=@original_IdMarca
                   
            COMMIT TRANSACTION
			set @Ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @Ret=0
        END CATCH  
        select @Ret
   
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarRepuesto]    Script Date: 11/12/2012 15:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarRepuesto] 
	@Repuesto as varchar(255),
	@original_IdRepuesto as int
		
AS
BEGIN
	SET NOCOUNT ON;
 Declare @Ret int
	
  BEGIN TRY
          BEGIN TRANSACTION  
          
          UPDATE Repuesto SET Repuesto=@Repuesto where IdRepuesto=@original_IdRepuesto
                   
            COMMIT TRANSACTION
			set @Ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @Ret=0
        END CATCH  
        select @Ret
   
END
GO
/****** Object:  Table [dbo].[Bloques]    Script Date: 11/12/2012 15:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bloques](
	[CodBloque] [int] IDENTITY(1,1) NOT NULL,
	[IdSede] [int] NOT NULL,
	[NombreBloque] [varchar](50) NOT NULL,
 CONSTRAINT [PK__BLOQUES__108B795B] PRIMARY KEY CLUSTERED 
(
	[CodBloque] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__BLOQUES__117F9D94] UNIQUE NONCLUSTERED 
(
	[NombreBloque] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla, campo identificador del bloque.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bloques', @level2type=N'COLUMN',@level2name=N'CodBloque'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo identificador de la sede.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bloques', @level2type=N'COLUMN',@level2name=N'IdSede'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registra el nombre del bloque. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bloques', @level2type=N'COLUMN',@level2name=N'NombreBloque'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'En esta tabla reposan los datos de los bloques de salones, un bloque de salones es un grupo de salones delimitado ya sea por edificación o ubicación.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bloques'
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 11/12/2012 15:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 11/12/2012 15:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL DEFAULT (NULL),
	[IsAnonymous] [bit] NOT NULL DEFAULT ((0)),
	[LastActivityDate] [datetime] NOT NULL,
	[Cedula] [int] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_aspnet_Users] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 11/12/2012 15:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 11/12/2012 15:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 11/12/2012 15:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  Table [dbo].[Modelo]    Script Date: 11/12/2012 15:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modelo](
	[IdModelo] [int] IDENTITY(1,1) NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[IdMarca] [int] NOT NULL,
 CONSTRAINT [PK__Modelos__CC30D30C44B528D7] PRIMARY KEY CLUSTERED 
(
	[IdModelo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'llave primaria de la tabla y identificador incremental de los modelos de equipos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modelo', @level2type=N'COLUMN',@level2name=N'IdModelo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe el modelo del equipo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modelo', @level2type=N'COLUMN',@level2name=N'Modelo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifica la marca del modelo de los equipos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modelo', @level2type=N'COLUMN',@level2name=N'IdMarca'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contiene los registros de los modeloes de los equipos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modelo'
GO
/****** Object:  Table [dbo].[Sancion_CategoriaSancion]    Script Date: 11/12/2012 15:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sancion_CategoriaSancion](
	[IdSancionCategoriaSancion] [int] IDENTITY(1,1) NOT NULL,
	[IdSancion] [int] NOT NULL,
	[IdCategoriaSancion] [int] NOT NULL,
	[Habilitada] [bit] NULL,
 CONSTRAINT [PK_Sancion_CategoriaSancion] PRIMARY KEY CLUSTERED 
(
	[IdSancionCategoriaSancion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 11/12/2012 15:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Servicio](
	[IdServicio] [int] IDENTITY(1,1) NOT NULL,
	[EquiposDeshabilitados] [int] NULL,
	[IdCategoria] [int] NOT NULL,
	[UsuarioRegistro] [varchar](50) NULL,
	[FechaRegistro] [datetime] NULL,
	[UsuarioModifico] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[IdSede] [int] NULL,
 CONSTRAINT [PK_Servicio] PRIMARY KEY CLUSTERED 
(
	[IdServicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla. Identificador númerico incremental del servicio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Servicio', @level2type=N'COLUMN',@level2name=N'IdServicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es la cantidad de recursos que no se pondran en servicio de prestamo. Este campo permite determinar con cuantos servicios se cuenta para la reserva por categoria de equipos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Servicio', @level2type=N'COLUMN',@level2name=N'EquiposDeshabilitados'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es el Id de la categoria que identifica el tipo de servicio que se programarla.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Servicio', @level2type=N'COLUMN',@level2name=N'IdCategoria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que crea el registro por primera ves en la bases de datos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Servicio', @level2type=N'COLUMN',@level2name=N'UsuarioRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Servicio', @level2type=N'COLUMN',@level2name=N'FechaRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que modificó por ultima ves el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Servicio', @level2type=N'COLUMN',@level2name=N'UsuarioModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de la última modificación del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Servicio', @level2type=N'COLUMN',@level2name=N'FechaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Permite programar los servicios a los cuales se podra realizar reservas.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Servicio'
GO
/****** Object:  Table [dbo].[ProgramaPrioridad]    Script Date: 11/12/2012 15:45:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramaPrioridad](
	[IdPrioridad] [int] IDENTITY(1,1) NOT NULL,
	[IdPrograma] [int] NOT NULL,
	[Semestre] [int] NOT NULL,
	[Usuario] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK__PROGRAMA_PRIORID__1ED998B2] PRIMARY KEY CLUSTERED 
(
	[IdPrioridad] ASC,
	[IdPrograma] ASC,
	[Semestre] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 11/12/2012 15:45:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
GO
/****** Object:  Table [dbo].[UsoExclusivo]    Script Date: 11/12/2012 15:45:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsoExclusivo](
	[IdUsoExclusivo] [int] IDENTITY(1,1) NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[IdCategoriaEquipo] [int] NOT NULL,
	[NumeroEquipo] [int] NOT NULL,
	[DiaSemana] [int] NOT NULL,
	[HoraInicio] [datetime] NOT NULL,
	[HoraFin] [datetime] NOT NULL,
 CONSTRAINT [PK_UsoExclusivo] PRIMARY KEY CLUSTERED 
(
	[IdUsoExclusivo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 11/12/2012 15:45:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 11/12/2012 15:45:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 11/12/2012 15:45:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
GO
/****** Object:  Table [dbo].[SolicitudLaboratorio]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudLaboratorio](
	[IdSolicitudLab] [int] IDENTITY(1,1) NOT NULL,
	[IdLaboratorio] [int] NOT NULL,
	[IdSuministro] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[UsuarioIngreso] [nvarchar](50) NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModifico] [nvarchar](50) NULL,
	[Estado] [bit] NOT NULL,
	[Aprobacion] [bit] NULL,
	[UsuarioAprueba] [nvarchar](50) NULL,
	[FechaAprobacion] [datetime] NULL,
	[IdDestinacion] [int] NOT NULL,
	[Importante] [bit] NULL,
 CONSTRAINT [PK_SolicitudLaboratorio] PRIMARY KEY CLUSTERED 
(
	[IdSolicitudLab] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la solicitud de suministros para el laboratorio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudLaboratorio', @level2type=N'COLUMN',@level2name=N'IdSolicitudLab'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador foraneo del laboratorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudLaboratorio', @level2type=N'COLUMN',@level2name=N'IdLaboratorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador foraneo del suministro solicitado.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudLaboratorio', @level2type=N'COLUMN',@level2name=N'IdSuministro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es el numero de suministros que se requier por presentacion del mismo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudLaboratorio', @level2type=N'COLUMN',@level2name=N'Cantidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de ingreso del registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudLaboratorio', @level2type=N'COLUMN',@level2name=N'FechaIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que realiza el ingreso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudLaboratorio', @level2type=N'COLUMN',@level2name=N'UsuarioIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en la cual fue modificado el registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudLaboratorio', @level2type=N'COLUMN',@level2name=N'FechaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que actualizo el registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudLaboratorio', @level2type=N'COLUMN',@level2name=N'UsuarioModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica el estado de la solicitud, sí es 1 es activa y 0 desactiva' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudLaboratorio', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica si la Facultad o Dirección de programa realizaron su aprobación de lo solicitado.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudLaboratorio', @level2type=N'COLUMN',@level2name=N'Aprobacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que aprueba la solicitud realizada, generalmente será un programa o facultad, pero también la puede realizar la oficina de Recursos Educativos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudLaboratorio', @level2type=N'COLUMN',@level2name=N'UsuarioAprueba'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en la que se realiza la aprobacion.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudLaboratorio', @level2type=N'COLUMN',@level2name=N'FechaAprobacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foranea del tipo de destinacion para el cual realiza la solicitud' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudLaboratorio', @level2type=N'COLUMN',@level2name=N'IdDestinacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'es para determinar si la solicitud debe llevar algun grado de importancia por parte de recursos educativos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudLaboratorio', @level2type=N'COLUMN',@level2name=N'Importante'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contendra todas la necesidades que tienen los laboratorios en cuanto a cantidades de suministros.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SolicitudLaboratorio'
GO
/****** Object:  Table [dbo].[Solicitud]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Solicitud](
	[IdSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[EsSatisfecha] [bit] NULL,
	[Fecha] [datetime] NULL,
	[IdServicio] [int] NULL,
 CONSTRAINT [PK_Solicitud] PRIMARY KEY CLUSTERED 
(
	[IdSolicitud] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Profile__57DD0BE4] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarModelo]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarModelo]
	
	@Modelo as Varchar(100),
	@IdMarca as int, 	
	@original_IdModelo as int
    
		
AS
BEGIN
	SET NOCOUNT ON;
 Declare @Ret int
	
  BEGIN TRY
          BEGIN TRANSACTION  
          
          UPDATE Modelo SET Modelo=@Modelo,IdMarca=@IdMarca where IdModelo=@original_IdModelo               
            COMMIT TRANSACTION
			set @Ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @Ret=0
        END CATCH  
        select @Ret
   
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarListaDocente]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        Henry Rodriguez Diaz
-- Create date: 09/06/2010
-- Description:    Actualizar Lista Docente
-- =============================================
CREATE PROCEDURE [dbo].[ActualizarListaDocente]
    @Cedula INT,
    @Apellidos NVARCHAR(256),
    @Nombres NVARCHAR(256),
    @TipoDocente INT
    --@Usuario NVARCHAR(256) = NULL
   
AS
    BEGIN   
       
       
        BEGIN TRY
               
            --Lote de opearaciones y transacciones
            BEGIN TRANSACTION
           
            --UPDATE Docente
            --SET Activo = 'False' 
                       
            IF EXISTS (SELECT * FROM Docente WHERE Cedula = @Cedula)
            BEGIN
            UPDATE Docente
                SET    TipoDocente = @TipoDocente,
                    Apellidos = @Apellidos,
                    Nombres = @Nombres,
                    Usuario = 'siare',
                    Activo = 'True'       
                WHERE (    Cedula = @Cedula )
            END   
            ELSE
            BEGIN
            SET IDENTITY_INSERT [dbo].[Docente] ON
            INSERT INTO    [Docente]
                (    [Cedula],
                    [TipoDocente],
                    [Apellidos],
                    [Nombres],                   
                    [Usuario],
                    [Activo]               
                )
                VALUES
                (
                    @Cedula,
                    @TipoDocente,
                    @Apellidos,
                    @Nombres,
                    'siare',
                    'True'
                )
            END           
                --Realizando insersión
            SET IDENTITY_INSERT [dbo].[Docente] OFF                                
            --Ejecutamos el lote de Lote de opearaciones y transacciones
            COMMIT TRANSACTION
           
        END TRY
       
        --Revertimos el lote de operacioens realizadas en caso de fallos
        BEGIN CATCH
       
       
            --ROLLBACK TRANSACTION
   --         --SET @IdGrupo = 0
   --         PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
           
        END CATCH
          
        --SELECT  @IdGrupo 
    
    END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarBloque]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriel Barrios M
-- Create date: 22/06/10
-- Description:	Actualiza las caracteristicas de los bloques
-- =============================================
CREATE PROCEDURE [dbo].[ActualizarBloque] 
	@CodBloque int,
	@IdSede int,
	@NombreBloque varchar(50)
AS
BEGIN
	BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION
			
	
    -- Actualizando espacios
	UPDATE Bloques
	SET
	IdSede = @IdSede,
	NombreBloque = @NombreBloque
	
	WHERE(CodBloque = @CodBloque)
	
	--Ejecutamos el lote de Lote de opearaciones y transacciones
			COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @CodBloque = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        SELECT  @CodBloque
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarDocente]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriel Barrios M
-- Create date: 01/12/10
-- Description:	Actualiza las caracteristicas de los docentes
-- =============================================
CREATE PROCEDURE [dbo].[ActualizarDocente] 
	@Cedula int,
	@TipoDocente int,
	@Apellidos varchar(100),
	@Nombres varchar(100),
	@Usuario nvarchar(256),
	@Activo bit
AS
BEGIN
	BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION
			
	
    -- Actualizando espacios
	UPDATE Docente
	SET
	TipoDocente= @TipoDocente,
	Apellidos = @Apellidos,
	Nombres = @Nombres,
	Usuario= @Usuario,
	Activo = @Activo
	WHERE (Cedula = @Cedula)
	
	--Ejecutamos el lote de Lote de opearaciones y transacciones
			COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @Cedula = 1
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        SELECT  @Cedula
END
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL DEFAULT ((0)),
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[DocenteInsertar]    Script Date: 11/12/2012 15:45:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Henry Rodriguez
-- Create date: 15/04/2010
-- Description:	Insercción de Nuevos Docentes
-- =============================================

CREATE PROCEDURE [dbo].[DocenteInsertar]
	@Cedula INT, 
	@TipoDocente INT, 
	@Apellidos VARCHAR(100),
	@Nombres VARCHAR(100),
	@Usuario VARCHAR(256) 
		
AS
	BEGIN	
		
		SET IDENTITY_INSERT [dbo].[Docente] ON
				
		BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION   
				
				--Realizando insercción
				INSERT INTO	[Docente]
				(	[Cedula],
					[TipoDocente],
					[Apellidos],					
					[Nombres],
					[Usuario]
				)
				VALUES
				(
					@Cedula, 
					@TipoDocente, 
					@Apellidos,
					@Nombres,
					@Usuario 			
				)
		
              
			--Ejecutamos el lote de Lote de opearaciones y transacciones
			COMMIT TRANSACTION
			
		END TRY
		
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
           
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH      
		
		SET IDENTITY_INSERT [dbo].[Docente] OFF
		
    END
GO
/****** Object:  UserDefinedFunction [dbo].[ConsultarCategoria]    Script Date: 11/12/2012 15:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[ConsultarCategoria] 
(
	-- Add the parameters for the function here
	@IdServicio int
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @IdCategoria int

	-- Add the T-SQL statements to compute the return value here
	set @IdCategoria=(SELECT IdCategoria from Servicio where IdServicio=@Idservicio)

	-- Return the result of the function
	RETURN @IdCategoria

END
GO
/****** Object:  StoredProcedure [dbo].[EliminarModelo]    Script Date: 11/12/2012 15:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[EliminarModelo]
    @IdModelo as int
    
AS
BEGIN

SET NOCOUNT ON;
DECLARE @Res as int
	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
       Delete from Modelo where IdModelo=@IdModelo
             
          COMMIT TRANSACTION
		  SET @Res = 1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
           SET @res=-1 
            
        END CATCH  
      
      SELECT @res
       
END
GO
/****** Object:  Table [dbo].[DependenciaUsuario]    Script Date: 11/12/2012 15:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DependenciaUsuario](
	[IdDependenciaUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdDependencia] [int] NOT NULL,
	[IdUsuario] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_DependenciaUsuario] PRIMARY KEY CLUSTERED 
(
	[IdDependenciaUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarUsuario]    Script Date: 11/12/2012 15:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ActualizarUsuario]
	@usuario varchar(50),
	@Cedula int
	
AS
BEGIN
	BEGIN TRY
		
		Declare @Ret int=1	--Lote de opearaciones y transacciones
			BEGIN TRANSACTION
			
	
    -- Actualizando espacios
	UPDATE aspnet_Users
	SET
	Cedula = @Cedula WHERE(UserName = @usuario)
	
	--Ejecutamos el lote de Lote de opearaciones y transacciones
			COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @Ret = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        SELECT  @Ret
END
GO
/****** Object:  Table [dbo].[Espacio]    Script Date: 11/12/2012 15:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Espacio](
	[IdEspacio] [int] IDENTITY(1,1) NOT NULL,
	[CodBloque] [int] NOT NULL,
	[Disponible] [bit] NOT NULL,
	[NombreEspacio] [varchar](50) NOT NULL,
	[TipoEspacio] [int] NULL,
	[DescripcionEspacio] [varchar](100) NULL,
	[Aire] [bit] NOT NULL,
	[CapacidadEspacio] [int] NOT NULL,
	[Usuario] [nvarchar](256) NOT NULL,
	[Margen] [int] NOT NULL,
	[Nomenclatura] [varchar](50) NULL,
	[UsuarioRegistro] [varchar](50) NULL,
	[FechaRegistro] [datetime] NULL,
	[UsuarioModifico] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[Extension] [int] NULL,
 CONSTRAINT [PK_Espacio] PRIMARY KEY CLUSTERED 
(
	[IdEspacio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla, campo identificador del espacio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Espacio', @level2type=N'COLUMN',@level2name=N'IdEspacio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo identificador del bloque.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Espacio', @level2type=N'COLUMN',@level2name=N'CodBloque'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define si el espacio se encuentra disponible o no (0,1).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Espacio', @level2type=N'COLUMN',@level2name=N'Disponible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena el asignado al salón dentro de la institución. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Espacio', @level2type=N'COLUMN',@level2name=N'NombreEspacio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define que tipo del espacio, es decir, si es una Salón, Laboratorio o Sala.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Espacio', @level2type=N'COLUMN',@level2name=N'TipoEspacio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Breve descripción de las principales características del espacio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Espacio', @level2type=N'COLUMN',@level2name=N'DescripcionEspacio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Capacidad o número de estudiantes que puede contener el espacio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Espacio', @level2type=N'COLUMN',@level2name=N'CapacidadEspacio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del usuario que realiza el registro del nuevo espacio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Espacio', @level2type=N'COLUMN',@level2name=N'Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Margen de ampliación en la capacidad del espacio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Espacio', @level2type=N'COLUMN',@level2name=N'Margen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre abreviado del Esapcio Academico Ejm:BS-102' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Espacio', @level2type=N'COLUMN',@level2name=N'Nomenclatura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Esta tabla posee la información referente con los espacios académicos o salones.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Espacio'
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 11/12/2012 15:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Equipo](
	[IdEquipo] [int] IDENTITY(1,1) NOT NULL,
	[IdDependencia] [int] NULL,
	[Serie] [varchar](50) NULL,
	[IdAlmacen] [int] NOT NULL,
	[VidaUtil] [int] NULL,
	[Descripcion] [varchar](255) NULL,
	[IdCategoria] [int] NOT NULL,
	[IdSede] [int] NOT NULL,
	[IdModelo] [int] NOT NULL,
	[IntervaloMantenimiento] [int] NULL,
	[FechaIngresoEquipo] [datetime] NULL,
	[UsuarioRegistro] [varchar](50) NULL,
	[FechaRegistro] [datetime] NULL,
	[UsuarioModifico] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK__Equipos__D805240840E497F3] PRIMARY KEY CLUSTERED 
(
	[IdEquipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla, es un identificador incremental.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipo', @level2type=N'COLUMN',@level2name=N'IdEquipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Se refiere a la dependecia a la cual pertenece o está asignado el equipo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipo', @level2type=N'COLUMN',@level2name=N'IdDependencia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Este campo guarda el identificador de fabricacion del equipo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipo', @level2type=N'COLUMN',@level2name=N'Serie'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena el identificador que designa la oficina de almacen al ingresar al inventario de la universidad.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipo', @level2type=N'COLUMN',@level2name=N'IdAlmacen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena el periodo de vida (años), del recursos para estimar el tiempo que se puede hacer uso.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipo', @level2type=N'COLUMN',@level2name=N'VidaUtil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guarda la caracteristica fisicas del equipo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipo', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la categoria al cual corresponde el equipo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipo', @level2type=N'COLUMN',@level2name=N'IdCategoria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la sede al cual corresponde el equipo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipo', @level2type=N'COLUMN',@level2name=N'IdSede'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la modelo al cual corresponde el equipo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipo', @level2type=N'COLUMN',@level2name=N'IdModelo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Se refiere al tiempo en dias en el cual se recomeinda hacer mantenimiento preventivo al equipo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipo', @level2type=N'COLUMN',@level2name=N'IntervaloMantenimiento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hace referencia a la fecha en la cual se ingreso el euipo a la dependencia.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipo', @level2type=N'COLUMN',@level2name=N'FechaIngresoEquipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que crea el registro por primera ves en la bases de datos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipo', @level2type=N'COLUMN',@level2name=N'UsuarioRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipo', @level2type=N'COLUMN',@level2name=N'FechaRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de la última modificación del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipo', @level2type=N'COLUMN',@level2name=N'FechaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacenas los recursos que se requieren para los prestamos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Equipo'
GO
/****** Object:  StoredProcedure [dbo].[InsertarModelo]    Script Date: 11/12/2012 15:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarModelo]
	@Modelo as varchar(100),
	@IdMarca as int
		
AS
BEGIN
	SET NOCOUNT ON;
 Declare @Ret int
	
  BEGIN TRY
          BEGIN TRANSACTION  
          
          INSERT INTO Modelo(Modelo,IdMarca) VALUES(@Modelo,@IdMarca)
                   
            COMMIT TRANSACTION
			set @Ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @Ret=0
        END CATCH  
        select @Ret
   
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarBloques]    Script Date: 11/12/2012 15:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Gabriel Barrios>
-- Create date: <22/06/10>
-- Description:	<insertar nuevos bloques>
-- =============================================
CREATE PROCEDURE [dbo].[InsertarBloques]
	--@CodBloque int,
	@IdSede int,
	@NombreBloque varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  BEGIN TRY
          BEGIN TRANSACTION   
          
          INSERT INTO Bloques
          (IdSede,NombreBloque)
          VALUES (@IdSede,@NombreBloque)
          
          
          COMMIT TRANSACTION
			
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
           
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH  
END
GO
/****** Object:  Table [dbo].[ItemContratado]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemContratado](
	[IdItemContratado] [int] IDENTITY(1,1) NOT NULL,
	[ItemContrato] [int] NOT NULL,
	[ValorUnitarioItem] [int] NOT NULL,
	[IvaAplicado] [int] NOT NULL,
	[CantidadContratada] [int] NOT NULL,
	[UsuarioIngreso] [nvarchar](50) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[UsuarioModifico] [nvarchar](50) NULL,
	[FechaModifico] [datetime] NULL,
	[IdContrato] [int] NULL,
	[Referenciaproveedor] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ItemContratado] PRIMARY KEY CLUSTERED 
(
	[IdItemContratado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de  los item contratados' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemContratado', @level2type=N'COLUMN',@level2name=N'IdItemContratado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es numero de referencia de los productos contratados. Esta información se toma de contrato actual del cual se desagregan los pedidos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemContratado', @level2type=N'COLUMN',@level2name=N'ItemContrato'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es el valor unitario contratado del item' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemContratado', @level2type=N'COLUMN',@level2name=N'ValorUnitarioItem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica el impuesto que debe ser sobrecargado al costo del item, este valor varia o en ocasiones es 0.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemContratado', @level2type=N'COLUMN',@level2name=N'IvaAplicado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es la cantidad del producto que se contrato y puede variar por debajo de la solicitud del laboratorio, nunca varia por encima.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemContratado', @level2type=N'COLUMN',@level2name=N'CantidadContratada'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que ingreso el registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemContratado', @level2type=N'COLUMN',@level2name=N'UsuarioIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de ingreso del registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemContratado', @level2type=N'COLUMN',@level2name=N'FechaIngreso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que actualizo el registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemContratado', @level2type=N'COLUMN',@level2name=N'UsuarioModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de modificación del registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemContratado', @level2type=N'COLUMN',@level2name=N'FechaModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador foraneo del contrato.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemContratado', @level2type=N'COLUMN',@level2name=N'IdContrato'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'referencia del producto que suministra el proveedor para solicitud de pedidos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemContratado', @level2type=N'COLUMN',@level2name=N'Referenciaproveedor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contendra todos los suministros y cantidades contratadas para cierto periodo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemContratado'
GO
/****** Object:  StoredProcedure [dbo].[InsertarSancion]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarSancion]
    @NombreSancion AS VARCHAR(50),
	@Duracion AS INT,
	@IdCategoriaSancion AS INT
	
AS
BEGIN

SET NOCOUNT ON;
DECLARE @IdSancion as int
	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
        INSERT INTO Sancion([Nombre],[Duracion])
        VALUES(@NombreSancion, @Duracion) 
       
          COMMIT TRANSACTION
		  SET @IdSancion = IDENT_CURRENT('[Sancion]') 
		   
		   INSERT INTO dbo.Sancion_CategoriaSancion([IdSancion],[IdCategoriaSancion], [Habilitada])
		   VALUES(@IdSancion, @IdCategoriaSancion, 'True')  
		   
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
           SET @IdSancion=-1 
            
        END CATCH  
      
      SELECT @IdSancion
       
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  Table [dbo].[PermisoLaboratorio]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermisoLaboratorio](
	[IdPermiso] [int] IDENTITY(1,1) NOT NULL,
	[IdRol] [uniqueidentifier] NOT NULL,
	[IdLaboratorio] [int] NOT NULL,
 CONSTRAINT [PK_PermisoLaboratorio] PRIMARY KEY CLUSTERED 
(
	[IdPermiso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de los permisos cedidos a los responsables de los laboratorios.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermisoLaboratorio', @level2type=N'COLUMN',@level2name=N'IdPermiso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador de rol asignado para los privilegios del usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermisoLaboratorio', @level2type=N'COLUMN',@level2name=N'IdRol'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador del laboratorio asignado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermisoLaboratorio', @level2type=N'COLUMN',@level2name=N'IdLaboratorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contendra los permisos que para los usurios que administran los laboratorio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PermisoLaboratorio'
GO
/****** Object:  Table [dbo].[Permiso]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permiso](
	[IdPermiso] [int] IDENTITY(1,1) NOT NULL,
	[IdRol] [uniqueidentifier] NULL,
	[IdPrograma] [int] NULL,
 CONSTRAINT [PK_Permiso] PRIMARY KEY CLUSTERED 
(
	[IdPermiso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Materia](
	[IdMateria] [int] IDENTITY(1,1) NOT NULL,
	[IdPrograma] [int] NOT NULL,
	[IdPlanEstudio] [int] NOT NULL,
	[NombreMateria] [varchar](100) NOT NULL,
	[CodUnidadAcademica] [int] NOT NULL,
	[ConsecutivoCurso] [int] NOT NULL,
	[Semestre] [int] NOT NULL,
	[CodigoMateria] [varchar](15) NOT NULL,
	[Usuario] [nvarchar](256) NOT NULL,
	[idOld] [int] NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [Id_Materia] PRIMARY KEY CLUSTERED 
(
	[IdMateria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla, campo identificador de la materia.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Materia', @level2type=N'COLUMN',@level2name=N'IdMateria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo identificador del código del programa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Materia', @level2type=N'COLUMN',@level2name=N'IdPrograma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo identificador del código del plan de estudios.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Materia', @level2type=N'COLUMN',@level2name=N'IdPlanEstudio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registra el nombre de la materia.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Materia', @level2type=N'COLUMN',@level2name=N'NombreMateria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código de la materia dentro de la institución educativa.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Materia', @level2type=N'COLUMN',@level2name=N'CodigoMateria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Esta tabla contiene la información relacionada con las materias ofrecidas por la institución.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Materia'
GO
/****** Object:  Table [dbo].[ReservaEspacios]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReservaEspacios](
	[IdReservaEspacio] [int] IDENTITY(1,1) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Correo] [varchar](250) NOT NULL,
	[TipoEvento] [int] NOT NULL,
	[HoraInicial] [int] NOT NULL,
	[HoraFinal] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Cupo] [int] NOT NULL,
	[NombreEvento] [varchar](50) NULL,
	[Observaciones] [varchar](200) NULL,
	[IdEstadoReservaEspacio] [smallint] NOT NULL,
	[Enviado] [bit] NOT NULL,
	[CanceladoPor] [uniqueidentifier] NULL,
	[FechaCancelacion] [datetime] NULL,
	[IdDependencia] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL,
	[Responsable] [varchar](50) NULL,
	[IdUsuarioSolicitante] [uniqueidentifier] NOT NULL,
	[IdEspacioSolicitado] [int] NULL,
	[Lugar] [nvarchar](250) NULL,
 CONSTRAINT [PK_ReservaEspacios] PRIMARY KEY CLUSTERED 
(
	[IdReservaEspacio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la Tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'IdReservaEspacio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en que se realizo la reserva del espacio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'FechaRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Direccion de correo electronico del usuario solicitante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'Correo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica el tipo de actividad que se va a realizar(Conferencia,seminario,intensiva)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'TipoEvento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hora de Inicio del Evento solicitado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'HoraInicial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hora de fin del evento para el cual se solicita el espacio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'HoraFinal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Periodo academico en el cual se desarrollara el evento para el cual se solicita el espacio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'IdPeriodo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Telefono del solicitante del espacio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'Telefono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Capacidad minima del espacio solicitado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'Cupo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Evento que se realizara y para el cual se solicita el espacio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'NombreEvento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Observaciones generales de la realizacion del evento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'Observaciones'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado de la reserva solicitada(En asignacion,Cancelado,asignado)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'IdEstadoReservaEspacio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'India si se envio el correo (Enviado o no enviado)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'Enviado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que cancelo la reserva' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'CanceladoPor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha cancelacion de la reserva' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'FechaCancelacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dependencia a la cual pertenece el usuario solicitante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'IdDependencia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en la cual se requiere el espacio solicitado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'FechaReserva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario Responsable de la solicitud de espacio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'Responsable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Id que representa el usuario del directorio activo al cual se le carga la solicitud' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios', @level2type=N'COLUMN',@level2name=N'IdUsuarioSolicitante'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que almacena la informacion referente a las reservas de los espacios fisicos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ReservaEspacios'
GO
/****** Object:  Table [dbo].[Reserva]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reserva](
	[IdReserva] [int] IDENTITY(1,1) NOT NULL,
	[FechaSolicitud] [date] NOT NULL,
	[FechaReserva] [date] NOT NULL,
	[HoraInicial] [int] NOT NULL,
	[HoraFinal] [int] NOT NULL,
	[EstadoReserva] [bit] NOT NULL,
	[IdServicio] [int] NOT NULL,
	[IdDependencia] [int] NOT NULL,
	[IdEspacio] [int] NOT NULL,
	[IdTipoUsoReserva] [int] NULL,
	[IdUsuarioSolicitante] [uniqueidentifier] NOT NULL,
	[UsuarioRegistro] [varchar](50) NULL,
	[FechaRegistro] [datetime] NULL,
	[UsuarioModifico] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[AsociativoReservas] [int] NULL,
 CONSTRAINT [PK__Reservas__0E49C69D5026DB83] PRIMARY KEY CLUSTERED 
(
	[IdReserva] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Este campo contiene un identificador para cada reserva, el cual se incrementa para cada registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva', @level2type=N'COLUMN',@level2name=N'IdReserva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contiene la fecha en que fue tramitada la solicitud de reserva del recursos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva', @level2type=N'COLUMN',@level2name=N'FechaSolicitud'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contiene la fecha para la cual se reserva el recurso.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva', @level2type=N'COLUMN',@level2name=N'FechaReserva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contiene la hora en la iniciarian el uso del recurso el dia en el fue reservado.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva', @level2type=N'COLUMN',@level2name=N'HoraInicial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contiene la hora en la finalizarian el uso del recurso el dia en el fue reservado.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva', @level2type=N'COLUMN',@level2name=N'HoraFinal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica el estado (Activo ó Cancelado) de la reserva.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva', @level2type=N'COLUMN',@level2name=N'EstadoReserva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contiene el Id del servicio que se reservo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva', @level2type=N'COLUMN',@level2name=N'IdServicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Guarda el Id de la dependencia a la cual se cargara la reserva y con la que el usuario se encuentra relacionado. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva', @level2type=N'COLUMN',@level2name=N'IdDependencia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena el id del lugar donde se hara uso del servicio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva', @level2type=N'COLUMN',@level2name=N'IdEspacio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena el di del uso que se le dará a la reserva.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva', @level2type=N'COLUMN',@level2name=N'IdTipoUsoReserva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contiene el id del usuario que realizó la solicitud.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva', @level2type=N'COLUMN',@level2name=N'IdUsuarioSolicitante'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que crea el registro por primera ves en la bases de datos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva', @level2type=N'COLUMN',@level2name=N'UsuarioRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva', @level2type=N'COLUMN',@level2name=N'FechaRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que modificó por ultima ves el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva', @level2type=N'COLUMN',@level2name=N'UsuarioModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de la última modificación del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva', @level2type=N'COLUMN',@level2name=N'FechaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'La tabla reservas contiene los campos necesarios para registras las solicitudes de reserva de los servicios por parte de los usuarios.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Reserva'
GO
/****** Object:  UserDefinedFunction [dbo].[IngresoEquiposPorCategoria2]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION  [dbo].[IngresoEquiposPorCategoria2]
(	
	-- Add the parameters for the function here
	@anio as int ,
	@IdCategoria int
	)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	 SELECT ISNULL((SELECT COUNT(CategoriaEquipo.Categoria) AS total
FROM   CategoriaEquipo INNER JOIN
       Equipo ON CategoriaEquipo.IdCategoria = Equipo.IdCategoria
WHERE  (DATEPART(YYYY, Equipo.FechaIngresoEquipo)= @anio)and (Equipo.IdCategoria=@IdCategoria)
GROUP BY CategoriaEquipo.Categoria),0) AS TotalCategoria,
 @IdCategoria AS IdCategoria,
(SELECT Categoria FROM dbo.CategoriaEquipo WHERE IdCategoria= @IdCategoria) AS Categoria,@anio As Anio

)
GO
/****** Object:  UserDefinedFunction [dbo].[IngresoEquiposPorCategoria]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================================
-- Template generated from Template Explorer using:
-- Create Multi-Statement Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
create FUNCTION  [dbo].[IngresoEquiposPorCategoria]
(	
	-- Add the parameters for the function here
	@anio as int ,
	@IdCategoria int
	)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	 SELECT ISNULL((SELECT COUNT(CategoriaEquipo.Categoria) AS total
FROM   CategoriaEquipo INNER JOIN
       Equipo ON CategoriaEquipo.IdCategoria = Equipo.IdCategoria
WHERE  (DATEPART(YYYY, Equipo.FechaIngresoEquipo)= @anio)and (Equipo.IdCategoria=@IdCategoria)
GROUP BY CategoriaEquipo.Categoria),0) AS TotalCategoria,
 @IdCategoria AS IdCategoria,
(SELECT Categoria FROM dbo.CategoriaEquipo WHERE IdCategoria= @IdCategoria) AS Categoria
)
GO
/****** Object:  StoredProcedure [dbo].[EspaciosInsertar]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Gabriel Barrios>
-- Create date: <18/06/10>
-- Description:	<Insertar nuevo espacio>
-- =============================================
CREATE PROCEDURE [dbo].[EspaciosInsertar] 
	-- Add the parameters for the stored procedure here
	--@IdEspacio int,
	@CodBloque int, 
	@Disponible bit,
	@NombreEspacio varchar(50),
	@TipoEspacio int,
	@DescripcionEspacio varchar(100),
	@Aire bit,
	@CapacidadEspacio int,
	@Margen int,
	@Nomenclatura varchar(50),
	@UsuarioRegistro varchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  BEGIN TRY
          BEGIN TRANSACTION   
          
          INSERT INTO Espacio
          (CodBloque,Disponible,NombreEspacio,TipoEspacio,DescripcionEspacio,Aire,CapacidadEspacio,Usuario,Margen,Nomenclatura,UsuarioRegistro,FechaRegistro)
          VALUES (@CodBloque,@Disponible,@NombreEspacio,@TipoEspacio,@DescripcionEspacio,@Aire,@CapacidadEspacio,@UsuarioRegistro,@Margen,@Nomenclatura,@UsuarioRegistro,SYSDATETIME())
          
          
          COMMIT TRANSACTION
			
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
           
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[EspaciosActualizar]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriel Barrios
-- Create date: 09/06/2010
-- Description:	Actualizar los registros de los salones
-- =============================================
CREATE PROCEDURE [dbo].[EspaciosActualizar]
	
	@IdEspacio int,
	@CodBloque int, 
	@Disponible bit,
	@NombreEspacio varchar(50),
	@TipoEspacio int,
	@DescripcionEspacio varchar(100),
	@Aire bit,
	@CapacidadEspacio int,
	@Margen int,
	@Nomenclatura varchar(50),
	@UsuarioModifico varchar(50)
	
	
AS
BEGIN
	BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION
			
	
    -- Actualizando espacios
	UPDATE Espacio
	SET
	CodBloque = @CodBloque, 
	Disponible = @Disponible,
	NombreEspacio = @NombreEspacio,
	TipoEspacio = @TipoEspacio,
	DescripcionEspacio = @DescripcionEspacio,
	Aire = @Aire,
	CapacidadEspacio = @CapacidadEspacio,
	Usuario = @UsuarioModifico,
	Margen = @Margen,
	Nomenclatura = @Nomenclatura,
	UsuarioModifico = @UsuarioModifico,
	FechaModificacion = SYSDATETIME()
	
	WHERE(IdEspacio = @IdEspacio)
	--Ejecutamos el lote de Lote de opearaciones y transacciones
			COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @IdEspacio = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        SELECT  @IdEspacio
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarSolicitudesSuministro]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================================
-- Author:		Gabriel Barrios
-- Create date: 2 Nov 2011
-- Description:	Insert de solicitudes de suministro
-- ================================================
CREATE PROCEDURE [dbo].[InsertarSolicitudesSuministro]

	@IdLaboratorio int,
	@IdSuministro int,
	@Cantidad int,
	--@FechaIngreso datetime,
	@UsuarioIngreso nvarchar(50),
	@Estado bit,
	@IdDestinacion int
AS
BEGIN

	SET NOCOUNT ON;
Declare @insertado int
	BEGIN TRY
		BEGIN TRANSACTION
			
			INSERT INTO SolicitudLaboratorio(
			IdLaboratorio,
			IdSuministro,
			Cantidad,
			FechaIngreso,
			UsuarioIngreso,
			Estado,IdDestinacion
			)
			VALUES(
			@IdLaboratorio,
			@IdSuministro,
			@Cantidad,
			SYSDATETIME(),
			@UsuarioIngreso,
			@Estado,
			@IdDestinacion
			)
			
			COMMIT TRANSACTION
			
			set @insertado=1
			
	END TRY
    
	BEGIN CATCH
		
		ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @insertado=-1
            
     END CATCH  
      
      select @insertado
       
END
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grupo](
	[IdGrupo] [int] IDENTITY(1,1) NOT NULL,
	[IdMateria] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[IdDocente] [int] NULL,
	[NumeroGrupo] [int] NOT NULL,
	[Capacidad] [int] NOT NULL,
	[Usuario] [nvarchar](256) NOT NULL,
	[Intensivo] [bit] NOT NULL,
	[TipoGrupo] [nchar](1) NOT NULL,
	[NombreElectiva] [nvarchar](100) NULL,
	[TipoResponsable] [nchar](3) NOT NULL,
	[Observaciones] [nvarchar](256) NULL,
	[FechaRegistro] [datetime] NULL,
	[UsuarioModifico] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_GRUPO] PRIMARY KEY CLUSTERED 
(
	[IdGrupo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla, campo identificador del grupo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Grupo', @level2type=N'COLUMN',@level2name=N'IdGrupo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo identificador de la materia.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Grupo', @level2type=N'COLUMN',@level2name=N'IdMateria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo identificador del periodo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Grupo', @level2type=N'COLUMN',@level2name=N'IdPeriodo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo identificador del docente.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Grupo', @level2type=N'COLUMN',@level2name=N'IdDocente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registra el numero del grupo en el caso en q hallan varios.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Grupo', @level2type=N'COLUMN',@level2name=N'NumeroGrupo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Representa la capacidad de estudiantes que tiene establecido para el grupo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Grupo', @level2type=N'COLUMN',@level2name=N'Capacidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hace referencia al usuario que realiza el registro del grupo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Grupo', @level2type=N'COLUMN',@level2name=N'Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define si el grupo es intensivo o no.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Grupo', @level2type=N'COLUMN',@level2name=N'Intensivo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Se refiere a si el grupo es intensivo (I) o regula (R)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Grupo', @level2type=N'COLUMN',@level2name=N'TipoGrupo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registra el nombre de la electiva en  el caso de serlo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Grupo', @level2type=N'COLUMN',@level2name=N'NombreElectiva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena las observaciones principales que se deben ten er en cuenta acerca del grupo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Grupo', @level2type=N'COLUMN',@level2name=N'Observaciones'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla hace referencia a los grupos que se conforman para cubrir las diferentes demandas de materias.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Grupo'
GO
/****** Object:  Table [dbo].[HistorialNovedad]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HistorialNovedad](
	[IdHistorialNovedad] [int] IDENTITY(1,1) NOT NULL,
	[IdEquipo] [int] NOT NULL,
	[FechaNovedad] [datetime] NOT NULL,
	[IdTipoNovedad] [int] NOT NULL,
	[UsuarioRegistro] [varchar](50) NULL,
	[FechaRegistro] [datetime] NULL,
 CONSTRAINT [PK__Historia__0409AF74670A40DB] PRIMARY KEY CLUSTERED 
(
	[IdHistorialNovedad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HistorialNovedad', @level2type=N'COLUMN',@level2name=N'IdHistorialNovedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del Equipo al cual se agrega o modifica una novedad.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HistorialNovedad', @level2type=N'COLUMN',@level2name=N'IdEquipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registra la fecha de la novedad.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HistorialNovedad', @level2type=N'COLUMN',@level2name=N'FechaNovedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define el tipo de novedad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HistorialNovedad', @level2type=N'COLUMN',@level2name=N'IdTipoNovedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que crea el registro por primera ves en la bases de datos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HistorialNovedad', @level2type=N'COLUMN',@level2name=N'UsuarioRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HistorialNovedad', @level2type=N'COLUMN',@level2name=N'FechaRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena los registros de las novedades que se presenta durante el periodo que se encuentre el equipo en uso. Ejemplo: Ingreso a inventario, mantenimientos, etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HistorialNovedad'
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  Table [dbo].[ContratadoSolicitud]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContratadoSolicitud](
	[IdContratadoSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[IdSolicitudLab] [int] NOT NULL,
	[IdItemContratado] [int] NOT NULL,
 CONSTRAINT [PK_ContratadoSolicitud] PRIMARY KEY CLUSTERED 
(
	[IdContratadoSolicitud] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de las solicitudes contratadas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ContratadoSolicitud', @level2type=N'COLUMN',@level2name=N'IdContratadoSolicitud'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador foranea de la solicitud.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ContratadoSolicitud', @level2type=N'COLUMN',@level2name=N'IdSolicitudLab'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del item contratado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ContratadoSolicitud', @level2type=N'COLUMN',@level2name=N'IdItemContratado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relaciona los item que se contraten con una solicitud del laboratorio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ContratadoSolicitud'
GO
/****** Object:  StoredProcedure [dbo].[ContarSatisfechas]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ContarSatisfechas]
	@FechaInicio datetime,
	@Fechafin datetime
		
AS
BEGIN
DECLARE @IdCategoria int
DECLARE @Categoria Varchar(50)
DECLARE @FINAL  TABLE(
Categoria varchar(50),
Insatisfechas int, 
Satisfechas int
)

DECLARE @TablaAuxiliarCategoria TABLE(
IdCategoria int,
Categoria varchar(50)
)

INSERT  @TablaAuxiliarCategoria
                (
                 IdCategoria
                )
                                
               SELECT  IdCategoria
               FROM CategoriaEquipo
               
       DECLARE TablaAuxiliarCategoria_Cursor CURSOR
       FOR SELECT  IdCategoria
       FROM  @TablaAuxiliarCategoria
        OPEN  TablaAuxiliarCategoria_Cursor 
        FETCH NEXT FROM TablaAuxiliarCategoria_Cursor  INTO @IdCategoria
        
           WHILE @@FETCH_STATUS = 0
            BEGIN 
            
                INSERT  into @FINAL
                        (
                        Categoria,
                        Insatisfechas,
                        Satisfechas
                        )
                        VALUES(
                        
                      ( select Categoria from CategoriaEquipo where IdCategoria=@IdCategoria),                                         
                  (SELECT COUNT(ISNULL(Solicitud.EsSatisfecha,0)) 
                  FROM CategoriaEquipo INNER JOIN
                      Servicio ON CategoriaEquipo.IdCategoria = Servicio.IdCategoria INNER JOIN
                      Solicitud ON Servicio.IdServicio = Solicitud.IdServicio
                       WHERE (Solicitud.Fecha>=@FechaInicio) and (Solicitud.Fecha<=@FechaFin) and (Servicio.IdCategoria = @IdCategoria) AND (Solicitud.EsSatisfecha = 0 )), 
                       
                    (SELECT COUNT(ISNULL(Solicitud.EsSatisfecha,0)) 
                     FROM CategoriaEquipo INNER JOIN
                      Servicio ON CategoriaEquipo.IdCategoria = Servicio.IdCategoria INNER JOIN
                      Solicitud ON Servicio.IdServicio = Solicitud.IdServicio
                     WHERE (Solicitud.Fecha>=@FechaInicio) and (Solicitud.Fecha<=@FechaFin)and (Servicio.IdCategoria = @IdCategoria) AND (Solicitud.EsSatisfecha = 1)))
                                  
             FETCH NEXT FROM TablaAuxiliarCategoria_Cursor INTO @IdCategoria
             end
              CLOSE  TablaAuxiliarCategoria_Cursor
              DEALLOCATE TablaAuxiliarCategoria_Cursor
              
              select Categoria,Insatisfechas,Satisfechas from @FINAL
END
GO
/****** Object:  UserDefinedFunction [dbo].[ContarPosgtrados]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery9.sql|7|0|C:\Users\rmal\AppData\Local\Temp\~vs647A.sql
-- Batch submitted through debugger: SQLQuery7.sql|7|0|C:\Users\rmal\AppData\Local\Temp\~vs82CE.sql
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================

	CREATE FUNCTION [dbo].[ContarPosgtrados]
(
	@IdSede as int,
	@IdCategoria as int,
	@dia as int,
	@horaFin as int,
	@min as int
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	

	-- Add the T-SQL statements to compute the return value here
		Declare @EquiposPostgrados int=0
		Declare @hora int=@horaFin
		Declare @PostgradosVBTOTAL int,@PostgradosPTTOTAL int,@PostgradosVBParcial int,@PostgradosPTParcial int,@PostGeneral int
		
		 set @PostgradosVBTOTAL =(SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
             FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria 
         WHERE    (dbo.Equipo.IdSede = @idsede) and (Equipo.IdDependencia=9) and (Equipo.IdCategoria=2 or Equipo.IdCategoria=17 ))
         
       
		
		
		set  @PostgradosPTTOTAL =(SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
             FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria 
         WHERE    (dbo.Equipo.IdSede = @idsede) and (Equipo.IdDependencia=9) and (Equipo.IdCategoria=1 or Equipo.IdCategoria=18))
		
		
		  set @PostgradosVBParcial =(SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
             FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria 
         WHERE    (dbo.Equipo.IdSede = @idsede) and (Equipo.IdDependencia=9) and (Equipo.IdCategoria=17))
		
		
		 set  @PostgradosPTParcial =(SELECT DISTINCT COUNT(Equipo.IdEquipo) AS Expr1
FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria
WHERE     (Equipo.IdSede = @idsede) AND (Equipo.IdDependencia = 9) AND (Equipo.IdCategoria = 18))
		
		
		
		 set @PostGeneral =  (SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
     FROM      Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria 
     WHERE    (dbo.Equipo.IdSede = @idsede) and (Equipo.IdDependencia=9) and (Equipo.IdCategoria=@IdCategoria))
		
		
		
		if 	@IdCategoria=2 OR @IdCategoria=17 
         begin --8
         
          if @dia=5
          begin  --7
          if(@hora=14 and @min=0)
             begin ---6
              SET @EquiposPostgrados=@PostgradosVBTOTAL
             end  --cierre 6
             else
             begin  ---5
                  if(@hora=14 and @min>0)
                         begin ---4
                          SET @EquiposPostgrados= @PostgradosVBParcial
                           end  --cierre 4
                                 else 
                                 begin --3
                                    if(@hora>14 )
                                         begin --2
                                         SET @EquiposPostgrados=  @PostgradosVBParcial
                                         end  --cierre 2
                                            else
                                                begin --1
                                                SET @EquiposPostgrados= @PostgradosVBTOTAL
                                                end --cerre 1
                               
                                  end---cierre 3
                  
                
             end  ----cierre 5
          
          end  --cierre 7
         
         
          if(@dia=6 or @dia=7)
          begin  --9
            SET @EquiposPostgrados=  @PostgradosVBParcial
          end   --cierre 9
          else
           begin  --10
             SET @EquiposPostgrados= @PostgradosVBTOTAL
           end   --cierre 10
         
         end --cierre 8
		
		---------------------------------------------
		else
		begin --11
		
		if 	@IdCategoria=1 OR @IdCategoria=18 
         begin --8
         
          if @dia=5
          begin  --7
          if(@hora=14 and @min=0)
             begin ---6
              SET @EquiposPostgrados=@PostgradosPTTOTAL
             end  --cierre 6
             else
             begin  ---5
                  if(@hora=14 and @min>0)
                         begin ---4
                          
                          SET @EquiposPostgrados= @PostgradosPTParcial
                           end  --cierre 4
                                 else 
                                 begin --3
                                    if(@hora>14 )
                                         begin --2
                                         SET @EquiposPostgrados=  @PostgradosPTParcial
                                         end  --cierre 2
                                            else
                                                begin --1
                                                SET @EquiposPostgrados= @PostgradosPTTOTAL
                                                end --cerre 1
                               
                                  end---cierre 3
                  
                
             end  ----cierre 5
          
          end  --cierre 7
         
         
          if(@dia=6 or @dia=7)
          begin  --9
            SET @EquiposPostgrados=  @PostgradosPTParcial
          end   --cierre 9
          else
           begin  --10
             SET @EquiposPostgrados= @PostgradosPTTOTAL
           end   --cierre 10
         
         end --cierre 8
		
		
		else
		
		begin  --12
		
		  SET @EquiposPostgrados=@PostGeneral--ojo
		
		end   --cierre 12
		
		
		
		
		end--cierre 11

------------------------------------------------------------------
	-- Return the result of the function
	RETURN @EquiposPostgrados

END
GO
/****** Object:  Table [dbo].[DependenciaEspacio]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DependenciaEspacio](
	[IdDependenciaEspacio] [int] IDENTITY(1,1) NOT NULL,
	[IdDependencia] [int] NOT NULL,
	[IdEspacio] [int] NOT NULL,
 CONSTRAINT [PK_DependenciaEspacio] PRIMARY KEY CLUSTERED 
(
	[IdDependenciaEspacio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, @CurrentTimeUtc, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEquipo]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Roberto Mal Villalobos>
-- Create date: <17/08/2010>
-- Description:Actualiza la taba Equipo
-- =============================================
CREATE PROCEDURE [dbo].[ActualizarEquipo]
	@original_IdEquipo int,
	@IdDependencia AS INT,
	@Serie varchar(50),
	@IdAlmacen int,
	@VidaUtil int,
	@Descripcion varchar(255),
	@IdCategoria int,
	@IdSede int,
	@IdModelo int,
	@IntervaloMantenimiento AS INT,
	@FechaIngresoEquipo AS DATETIME,
	@UsuarioModifico AS VARCHAR(50)
	
AS
BEGIN

declare @FechaModificacion datetime

	BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION

   
	UPDATE Equipo 
	SET
	IdDependencia=@IdDependencia, 
	Serie=@Serie,
	IdAlmacen=@IdAlmacen,
	VidaUtil=@VidaUtil,
	Descripcion=@Descripcion,
	IdCategoria=@IdCategoria,
	IdSede=@IdSede,
	IdModelo=@IdModelo,
	IntervaloMantenimiento=@IntervaloMantenimiento,
	FechaIngresoEquipo=@FechaIngresoEquipo,
	UsuarioModifico=@UsuarioModifico,
	FechaModificacion=SYSDATETIME()
	
	WHERE IdEquipo=@original_IdEquipo
	--Ejecutamos el lote de Lote de opearaciones y transacciones
			COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
		    SET @original_IdEquipo=0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        SELECT  @original_IdEquipo
			
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 11/12/2012 15:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  Table [dbo].[RestriccionEspacio]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestriccionEspacio](
	[IdRestriccion] [int] IDENTITY(1,1) NOT NULL,
	[IdEspacio] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[HoraInicialReservada] [int] NOT NULL,
	[HoraFinalReservada] [int] NOT NULL,
	[DiaReserva] [int] NOT NULL,
	[Usuario] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_RESTRICCION_SALON] PRIMARY KEY CLUSTERED 
(
	[IdRestriccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la restricción.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RestriccionEspacio', @level2type=N'COLUMN',@level2name=N'IdRestriccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del espacio para el cual aplica la restricción.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RestriccionEspacio', @level2type=N'COLUMN',@level2name=N'IdEspacio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificados del periodo en el cual se registra la restricción.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RestriccionEspacio', @level2type=N'COLUMN',@level2name=N'IdPeriodo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hora en la que se inicia el lapso de restricción.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RestriccionEspacio', @level2type=N'COLUMN',@level2name=N'HoraInicialReservada'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hora en la que se finaliza el lapso de reserva.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RestriccionEspacio', @level2type=N'COLUMN',@level2name=N'HoraFinalReservada'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Día en el cual se hace efectiva la restricción.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RestriccionEspacio', @level2type=N'COLUMN',@level2name=N'DiaReserva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del usuario que realiza el registro de restricción.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RestriccionEspacio', @level2type=N'COLUMN',@level2name=N'Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Es esta tabla se almacenan las restricciones horarios o lapsos en los cuales un espacio se encuentra reservado o restringido por un motivo especial.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RestriccionEspacio'
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  Table [dbo].[SuministrosEntregados]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuministrosEntregados](
	[IdSuministrosEntregados] [int] NOT NULL,
	[IdContratoSolicitud] [int] NOT NULL,
	[CantidadEntregada] [int] NOT NULL,
	[FechaEntrega] [datetime] NOT NULL,
	[Usuarioentrega] [nvarchar](50) NOT NULL,
	[FechaModifico] [datetime] NULL,
	[UsuarioModifico] [nvarchar](50) NULL,
	[NumeroFactura] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SuministrosEntregados] PRIMARY KEY CLUSTERED 
(
	[IdSuministrosEntregados] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuministrosEntregados', @level2type=N'COLUMN',@level2name=N'IdSuministrosEntregados'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador foraneo de lo contratado y lo solicitado.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuministrosEntregados', @level2type=N'COLUMN',@level2name=N'IdContratoSolicitud'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cantidad de productos entregados por solicitud contratada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuministrosEntregados', @level2type=N'COLUMN',@level2name=N'CantidadEntregada'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de entrega al laboratorio del pedido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuministrosEntregados', @level2type=N'COLUMN',@level2name=N'FechaEntrega'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Responsable de la entrega de los productos al laboratorio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuministrosEntregados', @level2type=N'COLUMN',@level2name=N'Usuarioentrega'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en la cual se realizó la actualización al registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuministrosEntregados', @level2type=N'COLUMN',@level2name=N'FechaModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que realizo la actualización del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuministrosEntregados', @level2type=N'COLUMN',@level2name=N'UsuarioModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero de factura relacionada al pedido entregado por el proveedor.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuministrosEntregados', @level2type=N'COLUMN',@level2name=N'NumeroFactura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relaciona todas las entregas realizadas con los pedidos y item contratados.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SuministrosEntregados'
GO
/****** Object:  StoredProcedure [dbo].[VerificarReserva2]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VerificarReserva2]
@idServicio int,
@fechaReserva date,
@horaInicio int,
@horaFin INT,
@idsede INT,
@dia INT

AS

BEGIN

DECLARE @combosReservados int, @combosTotales int, @combosDeshabilitados int, @Mantenimiento INT,@EquiposPostgrados INT,@MantenimientoPostgradosVB INT,@MantenimientoPostgradosPT INT,@totales INT

Declare @Hf int
Declare @Hi int
Declare @ban int=1
Declare @Disponibles int=0
 
SET @Mantenimiento = (SELECT     COUNT(dv.IdHistorialNovedad) AS Expr1
FROM         HistorialNovedad AS dv INNER JOIN
                      Equipo ON dv.IdEquipo = Equipo.IdEquipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Servicio ON CategoriaEquipo.IdCategoria = Servicio.IdCategoria INNER JOIN
                      Sede ON Equipo.IdSede = Sede.IdSede
WHERE        (dv.IdTipoNovedad <> 2 AND dv.IdTipoNovedad<>6) and (Equipo.IdDependencia=24)  AND (dv.FechaNovedad =
                             (SELECT        MAX(FechaNovedad) AS Expr1
                               FROM            HistorialNovedad AS d
                               WHERE        (IdEquipo = dv.IdEquipo) AND (Servicio.IdServicio = @idServicio) AND (dbo.Sede.IdSede = @idsede) )))

---total de equipos por categoria


SET @combosTotales = (SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Servicio ON CategoriaEquipo.IdCategoria = Servicio.IdCategoria
WHERE     (Servicio.IdServicio = @idServicio) AND (dbo.Equipo.IdSede = @idsede))


---Equipos desabilitados
SET @combosDeshabilitados = (SELECT     Servicio.EquiposDeshabilitados
FROM         Servicio
WHERE    Servicio.IdServicio = @idServicio)








   
--posgrados

SET @EquiposPostgrados=0
SET @MantenimientoPostgradosPT=0
SET @MantenimientoPostgradosVB=0
SET @totales=0

if(@idServicio=1 OR @idServicio=15)
begin
SET @EquiposPostgrados = (SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria 
WHERE    (dbo.Equipo.IdSede = @idsede) and (Equipo.IdDependencia=9) and (Equipo.IdCategoria=1 OR Equipo.IdCategoria=18) )

 SET @MantenimientoPostgradosPT=(SELECT    COUNT(dv.IdHistorialNovedad) AS Idhistorial
FROM         HistorialNovedad AS dv INNER JOIN
                      Equipo ON dv.IdEquipo = Equipo.IdEquipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Sede ON Equipo.IdSede = Sede.IdSede
WHERE (dv.IdTipoNovedad <> 2 AND dv.IdTipoNovedad<>6) AND (Equipo.IdCategoria=1 OR Equipo.IdCategoria=18)and (dv.FechaNovedad =
                             (SELECT MAX(FechaNovedad) AS Max
                               FROM            HistorialNovedad
                               WHERE        (IdEquipo = dv.IdEquipo) AND (Equipo.IdCategoria=1 OR Equipo.IdCategoria=18)and (dbo.Sede.IdSede = @idsede) and (Equipo.IdDependencia=9))))

SET @EquiposPostgrados=@EquiposPostgrados-@MantenimientoPostgradosPT



end
else
begin
    if(@idServicio=2 OR @idServicio=16)
    begin
    SET @EquiposPostgrados = (SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
     FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria 
     WHERE    (dbo.Equipo.IdSede = @idsede) and (Equipo.IdDependencia=9) and (Equipo.IdCategoria=2 OR Equipo.IdCategoria=17) )
     
      
      
      
  SET @MantenimientoPostgradosVB=(SELECT    COUNT(dv.IdHistorialNovedad) AS Idhistorial
FROM         HistorialNovedad AS dv INNER JOIN
                      Equipo ON dv.IdEquipo = Equipo.IdEquipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Sede ON Equipo.IdSede = Sede.IdSede
WHERE (dv.IdTipoNovedad <> 2 AND dv.IdTipoNovedad<>6) and(Equipo.IdCategoria=2 or Equipo.IdCategoria=17) AND (dv.FechaNovedad =
                             (SELECT MAX(FechaNovedad) AS Max
                               FROM            HistorialNovedad
                               WHERE        (IdEquipo = dv.IdEquipo) AND (Equipo.IdCategoria=2 or Equipo.IdCategoria=17)and (dbo.Sede.IdSede = @idsede) and (Equipo.IdDependencia=9))))
      
       SET @EquiposPostgrados=@EquiposPostgrados-@MantenimientoPostgradosVB
      
       end
       
      
       
       
      
      
      
end

set @Disponibles=@combosTotales+@EquiposPostgrados-@combosDeshabilitados - @Mantenimiento
set @combosReservados=0
set @Hi=@horaInicio
while (@Hi<@horaFin) 
begin

set @Hf=@Hi+1



SET @combosReservados = (SELECT COUNT (Reserva.IdReserva)                      
FROM         Reserva INNER JOIN
                      Servicio ON Servicio.IdServicio = Reserva.IdServicio
WHERE     (Servicio.IdServicio = @idServicio) AND (Reserva.EstadoReserva = 'True') AND ((@Hi >= Reserva.HoraInicial AND @Hi < Reserva.HoraFinal)  OR (@Hf > Reserva.HoraInicial AND @Hf <= Reserva.HoraFinal) OR (@Hi <= Reserva.HoraInicial AND @Hf >= Reserva.HoraFinal))
AND (Reserva.FechaReserva = @fechaReserva) AND (dbo.Servicio.IdSede = @idsede))

if(@combosReservados<@Disponibles)
      begin
      set @ban=1
      end
  else 
      begin
      set @ban=0
      set @Hi=@horaFin
      end
    set @Hi=@Hi+1  
      
 end
  
--select @combosTotales as combostotales,@combosDeshabilitados as combosDeshabilitados,@Mantenimiento as Mantenimiento,@combosReservados as combosReservados,@Disponibles as Disponibles,@EquiposPostgrados as Postgrados,@ban as retorno 
select @ban as retorno
END
GO
/****** Object:  StoredProcedure [dbo].[VerificarReserva]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VerificarReserva]
@idServicio int,
@fechaReserva date,
@horaInicio int,
@horaFin INT,
@idsede INT,
@dia INT

AS

BEGIN

DECLARE @combosReservados int, @combosTotales int, @combosDeshabilitados int, @Mantenimiento INT,@EquiposPostgrados INT,@MantenimientoPostgradosVB INT,@MantenimientoPostgradosPT INT,@totales INT

Declare @Hf int
Declare @Hi int
Declare @ban int=1
Declare @Disponibles int=0
 
SET @Mantenimiento = (SELECT     COUNT(dv.IdHistorialNovedad) AS Expr1
FROM         HistorialNovedad AS dv INNER JOIN
                      Equipo ON dv.IdEquipo = Equipo.IdEquipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Servicio ON CategoriaEquipo.IdCategoria = Servicio.IdCategoria INNER JOIN
                      Sede ON Equipo.IdSede = Sede.IdSede
WHERE        (dv.IdTipoNovedad <> 2 AND dv.IdTipoNovedad<>6) and (Equipo.IdDependencia=24)  AND (dv.FechaNovedad =
                             (SELECT        MAX(FechaNovedad) AS Expr1
                               FROM            HistorialNovedad AS d
                               WHERE        (IdEquipo = dv.IdEquipo) AND (Servicio.IdServicio = @idServicio) AND (dbo.Sede.IdSede = @idsede) )))

---total de equipos por categoria


SET @combosTotales = (SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Servicio ON CategoriaEquipo.IdCategoria = Servicio.IdCategoria
WHERE     (Servicio.IdServicio = @idServicio) AND (dbo.Equipo.IdSede = @idsede) and (Equipo.IdDependencia=24))


---Equipos desabilitados
SET @combosDeshabilitados = (SELECT     Servicio.EquiposDeshabilitados
FROM         Servicio
WHERE    Servicio.IdServicio = @idServicio)








   
--posgrados

SET @EquiposPostgrados=0
SET @MantenimientoPostgradosPT=0
SET @MantenimientoPostgradosVB=0
SET @totales=0

if(@idServicio=1 OR @idServicio=15)
begin
SET @EquiposPostgrados = (SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria 
WHERE    (dbo.Equipo.IdSede = @idsede) and (Equipo.IdDependencia=9) and (Equipo.IdCategoria=1 OR Equipo.IdCategoria=18) )

 SET @MantenimientoPostgradosPT=(SELECT    COUNT(dv.IdHistorialNovedad) AS Idhistorial
FROM         HistorialNovedad AS dv INNER JOIN
                      Equipo ON dv.IdEquipo = Equipo.IdEquipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Sede ON Equipo.IdSede = Sede.IdSede
WHERE (dv.IdTipoNovedad <> 2 AND dv.IdTipoNovedad<>6) AND (Equipo.IdCategoria=1 OR Equipo.IdCategoria=18)and (dv.FechaNovedad =
                             (SELECT MAX(FechaNovedad) AS Max
                               FROM            HistorialNovedad
                               WHERE        (IdEquipo = dv.IdEquipo) AND (Equipo.IdCategoria=1 OR Equipo.IdCategoria=18)and (dbo.Sede.IdSede = @idsede) and (Equipo.IdDependencia=9))))

SET @EquiposPostgrados=@EquiposPostgrados-@MantenimientoPostgradosPT



end
else
begin
    if(@idServicio=2 OR @idServicio=16)
    begin
    SET @EquiposPostgrados = (SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
     FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria 
     WHERE    (dbo.Equipo.IdSede = @idsede) and (Equipo.IdDependencia=9) and (Equipo.IdCategoria=2 OR Equipo.IdCategoria=17) )
     
      
      
      
  SET @MantenimientoPostgradosVB=(SELECT    COUNT(dv.IdHistorialNovedad) AS Idhistorial
FROM         HistorialNovedad AS dv INNER JOIN
                      Equipo ON dv.IdEquipo = Equipo.IdEquipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Sede ON Equipo.IdSede = Sede.IdSede
WHERE (dv.IdTipoNovedad <> 2 AND dv.IdTipoNovedad<>6) and(Equipo.IdCategoria=2 or Equipo.IdCategoria=17) AND (dv.FechaNovedad =
                             (SELECT MAX(FechaNovedad) AS Max
                               FROM            HistorialNovedad
                               WHERE        (IdEquipo = dv.IdEquipo) AND (Equipo.IdCategoria=2 or Equipo.IdCategoria=17)and (dbo.Sede.IdSede = @idsede) and (Equipo.IdDependencia=9))))
      
       SET @EquiposPostgrados=@EquiposPostgrados-@MantenimientoPostgradosVB
      
       end
       
      
       
       
      
      
      
end

set @Disponibles=@combosTotales+@EquiposPostgrados-@combosDeshabilitados - @Mantenimiento
set @combosReservados=0
set @Hi=@horaInicio
while (@Hi<@horaFin) 
begin

set @Hf=@Hi+1



SET @combosReservados = (SELECT COUNT (Reserva.IdReserva)                      
FROM         Reserva INNER JOIN
                      Servicio ON Servicio.IdServicio = Reserva.IdServicio
WHERE     (Servicio.IdServicio = @idServicio) AND (Reserva.EstadoReserva = 'True') AND ((@Hi >= Reserva.HoraInicial AND @Hi < Reserva.HoraFinal)  OR (@Hf > Reserva.HoraInicial AND @Hf <= Reserva.HoraFinal) OR (@Hi <= Reserva.HoraInicial AND @Hf >= Reserva.HoraFinal))
AND (Reserva.FechaReserva = @fechaReserva) AND (dbo.Servicio.IdSede = @idsede))

if(@combosReservados<@Disponibles)
      begin
      set @ban=1
      end
  else 
      begin
      set @ban=0
      set @Hi=@horaFin
      end
    set @Hi=@Hi+1  
      
 end
  
--select @combosTotales as combostotales,@combosDeshabilitados as combosDeshabilitados,@Mantenimiento as Mantenimiento,@combosReservados as combosReservados,@Disponibles as Disponibles,@EquiposPostgrados as Postgrados,@ban as retorno 
select @ban as retorno
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateRestrincionEspacios]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriel Barrios M
-- Create date: 01/12/10
-- Description:	Actualiza las caracteristicas de los docentes
-- =============================================
CREATE PROCEDURE [dbo].[UpdateRestrincionEspacios] 
	@original_IdRestriccion int,
	@HoraInicialReservada int,
	@HoraFinalReservada int,
	@Usuario nvarchar(256)
AS
BEGIN
	BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION
			
	
    -- Actualizando espacios
	UPDATE RestriccionEspacio
	SET
	HoraInicialReservada = @HoraInicialReservada,
	HoraFinalReservada = @HoraFinalReservada,
	Usuario = @Usuario
	WHERE (IdRestriccion = @original_IdRestriccion)
	
	--Ejecutamos el lote de Lote de opearaciones y transacciones
			COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @original_IdRestriccion = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        SELECT  @original_IdRestriccion
END
GO
/****** Object:  Table [dbo].[Prestamo]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prestamo](
	[IdPrestamo] [int] IDENTITY(1,1) NOT NULL,
	[IdReserva] [int] NOT NULL,
	[IdEquipo] [int] NOT NULL,
	[IdDevolucion] [int] NULL,
	[FechaDevolucion] [datetime] NULL,
	[Recibe] [varchar](50) NULL,
	[Entrega] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPrestamo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla, es un identificador incremental.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prestamo', @level2type=N'COLUMN',@level2name=N'IdPrestamo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifica la reserva al cual se hara el prestamo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prestamo', @level2type=N'COLUMN',@level2name=N'IdReserva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifica el equipo que prestara.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prestamo', @level2type=N'COLUMN',@level2name=N'IdEquipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifica el tipo de devolución que realizó.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prestamo', @level2type=N'COLUMN',@level2name=N'IdDevolucion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena la fecha y horas que se realizó la devolución del recursos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prestamo', @level2type=N'COLUMN',@level2name=N'FechaDevolucion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena el usuario que recibe los recursos despues de su uso y registra su devolucion.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prestamo', @level2type=N'COLUMN',@level2name=N'Recibe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena el usuario que entrega el recursos para su uso.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prestamo', @level2type=N'COLUMN',@level2name=N'Entrega'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena los registros de los prestamos de los recursos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Prestamo'
GO
/****** Object:  StoredProcedure [dbo].[sp_verificarReservasSedeReturn]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_verificarReservasSedeReturn]
@idServicio int,
@fechaReserva date,
@horaInicio int,
@horaFin INT,
@idsede INT,
@dia INT



AS

BEGIN



DECLARE @combosReservados int, @combosTotales int, @combosDeshabilitados int, @Mantenimiento INT,@EquiposPostgrados INT,
@Disponibles INT,@Hi INT,@Hf INT,@ban INT=1,@ReservasPostgrados int,@TotalPostgrados int=0,@addPosgrados int=0,
@IdCategoria INT=0,@MantenimientoPostgrados INT,@MantenimientoPostgradosVB INT

--Set @fechaReserva='31/10/2011'

SET @Mantenimiento = (SELECT     COUNT(dv.IdHistorialNovedad) AS Expr1
FROM         HistorialNovedad AS dv INNER JOIN
                      Equipo ON dv.IdEquipo = Equipo.IdEquipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Servicio ON CategoriaEquipo.IdCategoria = Servicio.IdCategoria INNER JOIN
                      Sede ON Equipo.IdSede = Sede.IdSede
WHERE        (dv.IdTipoNovedad <> 2 AND dv.IdTipoNovedad<>6)  and (dv.FechaNovedad =
                             (SELECT        MAX(FechaNovedad) AS Expr1
                               FROM            HistorialNovedad AS d
                               WHERE        (IdEquipo = dv.IdEquipo))) AND (Servicio.IdServicio = @idServicio) AND (dbo.Sede.IdSede = @idsede))

SET @combosReservados = (SELECT COUNT (Reserva.IdReserva)                      
FROM         Reserva INNER JOIN
                      Servicio ON Servicio.IdServicio = Reserva.IdServicio
WHERE     (Servicio.IdServicio = @idServicio) AND (Reserva.EstadoReserva = 'True') AND ((@horaInicio >= Reserva.HoraInicial AND @horaInicio < Reserva.HoraFinal)  OR (@horaFin > Reserva.HoraInicial AND @horaFin <= Reserva.HoraFinal) OR (@horaInicio <= Reserva.HoraInicial AND @horaFin >= Reserva.HoraFinal))
AND (Reserva.FechaReserva = @fechaReserva) AND (dbo.Servicio.IdSede = @idsede))


SET @combosTotales = (SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Servicio ON CategoriaEquipo.IdCategoria = Servicio.IdCategoria
WHERE     (Servicio.IdServicio = @idServicio) AND (dbo.Equipo.IdSede = @idsede) and (Equipo.IdDependencia=24))

SET @combosDeshabilitados = (SELECT     Servicio.EquiposDeshabilitados
FROM         Servicio
WHERE    Servicio.IdServicio = @idServicio)


------------------------------
SET @IdCategoria=( SELECT     CategoriaEquipo.IdCategoria
FROM         Servicio INNER JOIN
                      CategoriaEquipo ON Servicio.IdCategoria = CategoriaEquipo.IdCategoria
WHERE     (Servicio.IdServicio = @idServicio) AND (Servicio.IdSede = @idsede))

-----------------------------------

--------------total postgrados--------------

if(@IdCategoria=1)
begin

SET @TotalPostgrados = (SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria 
WHERE     (CategoriaEquipo.IdCategoria = 18) AND (dbo.Equipo.IdSede = @idsede) and Equipo.IdDependencia=9)

SET @MantenimientoPostgrados=(SELECT    COUNT(dv.IdHistorialNovedad) AS Idhistorial
FROM         HistorialNovedad AS dv INNER JOIN
                      Equipo ON dv.IdEquipo = Equipo.IdEquipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Sede ON Equipo.IdSede = Sede.IdSede
WHERE (dv.IdTipoNovedad <> 2 AND dv.IdTipoNovedad<>6) AND (Equipo.IdCategoria=1 OR Equipo.IdCategoria=18)and (dv.FechaNovedad =
                             (SELECT MAX(FechaNovedad) AS Max
                               FROM            HistorialNovedad
                               WHERE        (IdEquipo = dv.IdEquipo) AND (Equipo.IdCategoria=1 OR Equipo.IdCategoria=18)and (dbo.Sede.IdSede = @idsede) and (Equipo.IdDependencia=9))))




end
else
begin
if(@IdCategoria=2)
begin

SET @TotalPostgrados = (SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria
WHERE     (CategoriaEquipo.IdCategoria = 17) AND (dbo.Equipo.IdSede = @idsede) and Equipo.IdDependencia=9)


 SET @MantenimientoPostgrados=(SELECT    COUNT(dv.IdHistorialNovedad) AS Idhistorial
FROM         HistorialNovedad AS dv INNER JOIN
                      Equipo ON dv.IdEquipo = Equipo.IdEquipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Sede ON Equipo.IdSede = Sede.IdSede
WHERE (dv.IdTipoNovedad <> 2 AND dv.IdTipoNovedad<>6) AND (Equipo.IdCategoria=2 OR Equipo.IdCategoria=17)and (dv.FechaNovedad =
                             (SELECT MAX(FechaNovedad) AS Max
                               FROM            HistorialNovedad
                               WHERE        (IdEquipo = dv.IdEquipo) AND (Equipo.IdCategoria=2 OR Equipo.IdCategoria=17)and (dbo.Sede.IdSede = @idsede) and (Equipo.IdDependencia=9))))


end
else
begin

SET @TotalPostgrados = (SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria 
WHERE     (CategoriaEquipo.IdCategoria = @IdCategoria) AND (dbo.Equipo.IdSede = @idsede) and Equipo.IdDependencia=9)


SET @MantenimientoPostgrados=(SELECT    COUNT(dv.IdHistorialNovedad) AS Idhistorial
FROM         HistorialNovedad AS dv INNER JOIN
                      Equipo ON dv.IdEquipo = Equipo.IdEquipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Sede ON Equipo.IdSede = Sede.IdSede
WHERE (dv.IdTipoNovedad <> 2 AND dv.IdTipoNovedad<>6) AND (Equipo.IdCategoria=@IdCategoria)and (dv.FechaNovedad =
                             (SELECT MAX(FechaNovedad) AS Max
                               FROM            HistorialNovedad
                               WHERE        (IdEquipo = dv.IdEquipo) AND (Equipo.IdCategoria=@IdCategoria)and (dbo.Sede.IdSede = @idsede) and (Equipo.IdDependencia=9))))



end

end
SET @TotalPostgrados= @TotalPostgrados-@MantenimientoPostgrados
--------------------------------------------------------------------------------



--posgrados

SET @EquiposPostgrados = (SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Servicio ON CategoriaEquipo.IdCategoria = Servicio.IdCategoria
WHERE     (Servicio.IdServicio = @idServicio) AND (dbo.Equipo.IdSede = @idsede) and Equipo.IdDependencia=9)

if @dia=5 and @horaFin>14
begin
SET @addPosgrados=@EquiposPostgrados
SET @EquiposPostgrados=0
end
else
   begin
      if @dia=6 or @dia=7 
      begin
      SET @addPosgrados=@EquiposPostgrados
      SET @EquiposPostgrados=0
      
      end
      
    end
   
--posgrados
    
--SELECT @combosTotales +@EquiposPostgrados - @combosDeshabilitados - @combosReservados - @Mantenimiento



SET @ReservasPostgrados = (SELECT COUNT (Reserva.IdReserva)                      
FROM         Reserva INNER JOIN
                      Servicio ON Servicio.IdServicio = Reserva.IdServicio
WHERE     (Servicio.IdServicio = @idServicio) AND (Reserva.EstadoReserva = 'True') AND ((@horaInicio >= Reserva.HoraInicial AND @horaInicio < Reserva.HoraFinal)  OR (@horaFin > Reserva.HoraInicial AND @horaFin <= Reserva.HoraFinal) OR (@horaInicio <= Reserva.HoraInicial AND @horaFin >= Reserva.HoraFinal))
AND (Reserva.FechaReserva = @fechaReserva) AND (dbo.Servicio.IdSede = @idsede) and (Reserva.AsociativoReservas IS NOT NULL))


----------nuevo-------------
SET @TotalPostgrados=@TotalPostgrados+@addPosgrados
set @Disponibles=@combosTotales+@EquiposPostgrados-@combosDeshabilitados - @Mantenimiento
set @combosReservados=0
set @Hi=@horaInicio

if(@ReservasPostgrados>@TotalPostgrados)
begin 
set @Disponibles=@Disponibles-(@ReservasPostgrados-@TotalPostgrados)

end


while (@Hi<@horaFin) 
begin

set @Hf=@Hi+1



SET @combosReservados = (SELECT COUNT (Reserva.IdReserva)                      
FROM         Reserva INNER JOIN
                      Servicio ON Servicio.IdServicio = Reserva.IdServicio
WHERE     (Servicio.IdServicio = @idServicio) AND (Reserva.EstadoReserva = 'True') AND ((@Hi >= Reserva.HoraInicial AND @Hi < Reserva.HoraFinal)  OR (@Hf > Reserva.HoraInicial AND @Hf <= Reserva.HoraFinal) OR (@Hi <= Reserva.HoraInicial AND @Hf >= Reserva.HoraFinal))
AND (Reserva.FechaReserva = @fechaReserva) AND (Servicio.IdSede = @idsede)and (Reserva.AsociativoReservas IS NULL))


if(@combosReservados<@Disponibles)
      begin
      set @ban=1
      end
  else 
      begin
      set @ban=0
      set @Hi=@horaFin
      end
    set @Hi=@Hi+1  
      
 end

select @ban as retorno
--,@TotalPostgrados as TotalPostgrados,
--@IdCategoria as categoria,@Disponibles as Disponibles,
--@ReservasPostgrados as Reservaspostgrados,@MantenimientoPostgrados as MantenimientoPostgrados,@combosReservados as Reservados






-----------------------------

END
GO
/****** Object:  StoredProcedure [dbo].[sp_verificarReservasReturn]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_verificarReservasReturn]
@idServicio int,
@fechaReserva datetime,
@horaInicio int,
@horaFin int

AS

BEGIN


DECLARE @combosReservados int, @combosTotales int, @combosDeshabilitados int, @Mantenimiento int

--SET @combosReservados = (SELECT COUNT (Reserva.IdReserva)                      
--FROM         Reserva INNER JOIN
--                      Servicio ON Servicio.IdServicio = Reserva.IdServicio
--WHERE     (Servicio.IdServicio = @idServicio) AND ( ( Reserva.HoraInicial <= @horaInicio AND @horaInicio < Reserva.HoraFinal) OR (@horaFin > Reserva.HoraInicial AND @horaFin <= Reserva.HoraFinal))
--AND (Reserva.FechaReserva = @fechaReserva) AND (Reserva.EstadoReserva = 'True'))

SET @Mantenimiento = (SELECT        Count(dv.IdHistorialNovedad)
FROM            HistorialNovedad AS dv INNER JOIN
                         Equipo ON dv.IdEquipo = Equipo.IdEquipo INNER JOIN
                         CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                         Servicio ON CategoriaEquipo.IdCategoria = Servicio.IdCategoria
WHERE        (dv.IdTipoNovedad <> 2 AND dv.IdTipoNovedad <> 6) AND (dv.FechaNovedad =
                             (SELECT        MAX(FechaNovedad) AS Expr1
                               FROM            HistorialNovedad AS d
                               WHERE        (IdEquipo = dv.IdEquipo))) AND (Servicio.IdServicio = @idServicio))

SET @combosReservados = (SELECT COUNT (Reserva.IdReserva)                      
FROM         Reserva INNER JOIN
                      Servicio ON Servicio.IdServicio = Reserva.IdServicio
WHERE     (Servicio.IdServicio = @idServicio) AND (Reserva.EstadoReserva = 'True') AND ((@horaInicio >= Reserva.HoraInicial AND @horaInicio < Reserva.HoraFinal)  OR (@horaFin > Reserva.HoraInicial AND @horaFin <= Reserva.HoraFinal) OR (@horaInicio <= Reserva.HoraInicial AND @horaFin >= Reserva.HoraFinal))
AND (Reserva.FechaReserva = @fechaReserva) )


SET @combosTotales = (SELECT   DISTINCT  COUNT (Equipo.IdEquipo)
FROM         Equipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Servicio ON CategoriaEquipo.IdCategoria = Servicio.IdCategoria
WHERE     Servicio.IdServicio = @idServicio)

SET @combosDeshabilitados = (SELECT     Servicio.EquiposDeshabilitados
FROM         Servicio
WHERE    Servicio.IdServicio = @idServicio)


SELECT @combosTotales - @combosDeshabilitados - @combosReservados - @Mantenimiento

END
GO
/****** Object:  StoredProcedure [dbo].[ReservasConsecutivas]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Henry Rodriguez
-- Create date: 21/10/2010
-- Description:	Devuelve las reservas que son consecutivas y
-- cumplen ciertos requerimientos.
-- =============================================

CREATE PROCEDURE [dbo].[ReservasConsecutivas]
	@idReserva INT	
AS
BEGIN

DECLARE @TemIdReserva INT


DECLARE @CountHorafinal INT
DECLARE @Maximo INT
DECLARE @Contador INT

DECLARE	@TablaFinal TABLE (IdReserva INT, HoraInicial INT, HoraFinal INT)

DECLARE @TablaAuxiliar TABLE (IdReserva INT,HoraInicial INT, HoraFinal INT)


INSERT INTO  @TablaAuxiliar 
SELECT IdReserva, HoraInicial,HoraFinal  FROM dbo.Reserva WHERE 
(dbo.Reserva.IdUsuarioSolicitante = (SELECT dbo.Reserva.IdUsuarioSolicitante FROM dbo.Reserva WHERE dbo.Reserva.IdReserva = @idReserva)) 
AND
(dbo.Reserva.IdServicio = (SELECT dbo.Reserva.IdServicio FROM dbo.Reserva WHERE dbo.Reserva.IdReserva = @idReserva))
AND
(dbo.Reserva.FechaReserva = (SELECT dbo.Reserva.FechaReserva FROM dbo.Reserva WHERE dbo.Reserva.IdReserva = @idReserva))
 AND
(dbo.Reserva.EstadoReserva = 'True')
AND
(dbo.Reserva.HoraInicial >= (SELECT dbo.Reserva.HoraFinal FROM dbo.Reserva WHERE dbo.Reserva.IdReserva = @idReserva))

ORDER BY HoraInicial ASC


INSERT INTO  @TablaFinal 
SELECT IdReserva, HoraInicial,HoraFinal  FROM dbo.Reserva WHERE dbo.Reserva.IdReserva = @idReserva

SET @CountHorafinal = (SELECT dbo.Reserva.HoraFinal FROM dbo.Reserva WHERE dbo.Reserva.IdReserva = @idReserva)

	 DECLARE TablaAuxiliar_Cursor CURSOR
       FOR SELECT  IdReserva
       FROM   @TablaAuxiliar
       
       OPEN TablaAuxiliar_Cursor

       FETCH NEXT FROM TablaAuxiliar_Cursor INTO @TemIdReserva
        
            WHILE @@FETCH_STATUS = 0
            BEGIN                        
        INSERT  @TablaFinal
                (
                  IdReserva,
                  HoraInicial,
                  HoraFinal
		                 
                )
                SELECT  IdReserva,
                        HoraInicial,
                        HoraFinal
                FROM    @TablaAuxiliar
                WHERE   HoraInicial = @CountHorafinal
                        AND IdReserva = @TemIdReserva
                        
                    IF  ( SELECT COUNT(IdReserva) FROM @TablaFinal) > 1 
                    BEGIN 
                     SET @CountHorafinal = ( SELECT  HoraFinal
                                FROM    @TablaAuxiliar
                                WHERE   IdReserva = @TemIdReserva) 
					END
                      		
        FETCH NEXT FROM TablaAuxiliar_Cursor INTO @TemIdReserva
    END
            
        CLOSE  TablaAuxiliar_Cursor
        DEALLOCATE TablaAuxiliar_Cursor 
        

   SELECT IdReserva, HoraInicial, HoraFinal  FROM @TablaFinal
   
END
GO
/****** Object:  Table [dbo].[SancionEspacios]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SancionEspacios](
	[IdSancionEspacios] [int] IDENTITY(1,1) NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
	[IdReservaEspacios] [int] NOT NULL,
	[IdSancionCategoriaSancion] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
	[DeshabilitadoPor] [varchar](50) NULL,
	[HabilitadoPor] [varchar](50) NULL,
 CONSTRAINT [PK_SancionEspacios] PRIMARY KEY CLUSTERED 
(
	[IdSancionEspacios] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clave primaria identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SancionEspacios', @level2type=N'COLUMN',@level2name=N'IdSancionEspacios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha Inicio de la sancion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SancionEspacios', @level2type=N'COLUMN',@level2name=N'FechaInicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha Final de la sancion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SancionEspacios', @level2type=N'COLUMN',@level2name=N'FechaFin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reserva a la cual esta asociada la sancion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SancionEspacios', @level2type=N'COLUMN',@level2name=N'IdReservaEspacios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Categoria a la cual esta asociada la sancion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SancionEspacios', @level2type=N'COLUMN',@level2name=N'IdSancionCategoriaSancion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica el estado de la sancion(Activa o inactiva)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SancionEspacios', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que desabilito la sancion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SancionEspacios', @level2type=N'COLUMN',@level2name=N'DeshabilitadoPor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que habilito la sancion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SancionEspacios', @level2type=N'COLUMN',@level2name=N'HabilitadoPor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena la informacion referente a las sancones por incumplimiento de espacios fisicos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SancionEspacios'
GO
/****** Object:  Table [dbo].[SancionAudiovisuales]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SancionAudiovisuales](
	[IdSancionAudiovisuales] [int] IDENTITY(1,1) NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
	[IdReserva] [int] NOT NULL,
	[IdSancionCategoriaSancion] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
	[DeshabilitadoPor] [varchar](50) NULL,
	[HabilitadoPor] [varchar](50) NULL,
 CONSTRAINT [PK__Sancion__31F30BC84D5F7D71] PRIMARY KEY CLUSTERED 
(
	[IdSancionAudiovisuales] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[AjusteInsertarGrupo]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriel G. Barrios Martinez
-- Create date: 09 Dic 2011
-- Description:	Inserta crecacion de nuevos grupos en epoca de ajuste
-- =============================================
CREATE PROCEDURE [dbo].[AjusteInsertarGrupo] 
	-- Add the parameters for the stored procedure here
	@IdGrupo int,
	@FechaRegistro datetime,
	@Usuario nvarchar(50)
	

	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	declare @IdHistorialAjuste int
	declare @Transaccion nvarchar(50) = 'AgregarGrupo'
	
	BEGIN TRY
	
	--Lote de opearaciones y transacciones
			BEGIN TRANSACTION   
	
	Insert Into historial_Ajuste_Horario (IdPrograma,CodPrograma,JornadaPrograma,PlanEstudio,IdMateria,NombreMateria,CodUnidadAcademica,ConsecutivoCurso,Semestre,CodigoMateria,IdGrupo,IdPeriodo, IdDocente,NumeroGrupo,TipoGrupo,Capacidad,NombreElectiva,TipoTransaccion,FechaRegistro,Usuario) 
	SELECT     Programa.IdPrograma, Programa.CodigoPrograma, Programa.Jornada, Materia.IdPlanEstudio, Materia.IdMateria, Materia.NombreMateria, 
                      Materia.CodUnidadAcademica, Materia.ConsecutivoCurso, Materia.Semestre, Materia.CodigoMateria, Grupo.IdGrupo, Grupo.IdPeriodo, Grupo.IdDocente, 
                      Grupo.NumeroGrupo, Grupo.TipoGrupo, Grupo.Capacidad, Grupo.NombreElectiva,@Transaccion as transaccion,@FechaRegistro as FechaRegistro, @Usuario as Usuario
FROM         Grupo INNER JOIN
                      Materia ON Grupo.IdMateria = Materia.IdMateria INNER JOIN
                      PlanPrograma ON Materia.IdPlanEstudio = PlanPrograma.IdPlanEstudio AND Materia.IdPrograma = PlanPrograma.IdPrograma INNER JOIN
                      Programa ON PlanPrograma.IdPrograma = Programa.IdPrograma
Where Grupo.IdGrupo = @IdGrupo

--Capturamos el Id del nuevo registro	
				SET @IdHistorialAjuste = IDENT_CURRENT('[historial_Ajuste_Horario]')
				COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @IdHistorialAjuste = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        --SELECT  @IdHistorialAjuste  
     
    END
GO
/****** Object:  StoredProcedure [dbo].[AjusteActualizarGrupo]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriel G. Barrios Martinez
-- Create date: 09 Dic 2011
-- Description:	Inserta crecacion de nuevos grupos en epoca de ajuste
-- =============================================
CREATE PROCEDURE [dbo].[AjusteActualizarGrupo] 
	-- Add the parameters for the stored procedure here
	@IdGrupo int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	declare @IdHistorialAjuste int
	declare @Transaccion nvarchar(50) = 'ActualizarGrupo'
	
	BEGIN TRY
	
	--Lote de opearaciones y transacciones
			BEGIN TRANSACTION   
	
	Insert Into historial_Ajuste_Horario (IdPrograma,CodPrograma,JornadaPrograma,PlanEstudio,IdMateria,NombreMateria,CodUnidadAcademica,ConsecutivoCurso,Semestre,CodigoMateria,IdGrupo,IdPeriodo, IdDocente,NumeroGrupo,TipoGrupo,Capacidad,NombreElectiva,TipoTransaccion,FechaRegistro,Usuario) 
	SELECT     Programa.IdPrograma, Programa.CodigoPrograma, Programa.Jornada, Materia.IdPlanEstudio, Materia.IdMateria, Materia.NombreMateria, 
                      Materia.CodUnidadAcademica, Materia.ConsecutivoCurso, Materia.Semestre, Materia.CodigoMateria, Grupo.IdGrupo, Grupo.IdPeriodo, Grupo.IdDocente, 
                      Grupo.NumeroGrupo, Grupo.TipoGrupo, Grupo.Capacidad, Grupo.NombreElectiva,@Transaccion as transaccion,SYSDATETIME(), Grupo.Usuario
FROM         Grupo INNER JOIN
                      Materia ON Grupo.IdMateria = Materia.IdMateria INNER JOIN
                      PlanPrograma ON Materia.IdPlanEstudio = PlanPrograma.IdPlanEstudio AND Materia.IdPrograma = PlanPrograma.IdPrograma INNER JOIN
                      Programa ON PlanPrograma.IdPrograma = Programa.IdPrograma
Where Grupo.IdGrupo = @IdGrupo

--Capturamos el Id del nuevo registro	
				SET @IdHistorialAjuste = IDENT_CURRENT('[historial_Ajuste_Horario]')
				COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @IdHistorialAjuste = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        --SELECT  @IdHistorialAjuste  
     
    END
GO
/****** Object:  StoredProcedure [dbo].[AjusteEliminarGrupo]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriel G. Barrios Martinez
-- Create date: 09 Dic 2011
-- Description:	Inserta crecacion de nuevos grupos en epoca de ajuste
-- =============================================
CREATE PROCEDURE [dbo].[AjusteEliminarGrupo] 
	-- Add the parameters for the stored procedure here
	@IdGrupo int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	declare @IdHistorialAjuste int
	declare @Transaccion nvarchar(50) = 'ElimnarGrupo'
	
	BEGIN TRY
	
	--Lote de opearaciones y transacciones
			BEGIN TRANSACTION   
	
	Insert Into historial_Ajuste_Horario (IdPrograma,CodPrograma,JornadaPrograma,PlanEstudio,IdMateria,NombreMateria,CodUnidadAcademica,ConsecutivoCurso,Semestre,CodigoMateria,IdGrupo,IdPeriodo, IdDocente,NumeroGrupo,TipoGrupo,Capacidad,NombreElectiva,TipoTransaccion,FechaRegistro,Usuario) 
	SELECT     Programa.IdPrograma, Programa.CodigoPrograma, Programa.Jornada, Materia.IdPlanEstudio, Materia.IdMateria, Materia.NombreMateria, 
                      Materia.CodUnidadAcademica, Materia.ConsecutivoCurso, Materia.Semestre, Materia.CodigoMateria, Grupo.IdGrupo, Grupo.IdPeriodo, Grupo.IdDocente, 
                      Grupo.NumeroGrupo, Grupo.TipoGrupo, Grupo.Capacidad, Grupo.NombreElectiva,@Transaccion as transaccion,SYSDATETIME(), Grupo.Usuario
FROM         Grupo INNER JOIN
                      Materia ON Grupo.IdMateria = Materia.IdMateria INNER JOIN
                      PlanPrograma ON Materia.IdPlanEstudio = PlanPrograma.IdPlanEstudio AND Materia.IdPrograma = PlanPrograma.IdPrograma INNER JOIN
                      Programa ON PlanPrograma.IdPrograma = Programa.IdPrograma
Where Grupo.IdGrupo = @IdGrupo

--Capturamos el Id del nuevo registro	
				SET @IdHistorialAjuste = IDENT_CURRENT('[historial_Ajuste_Horario]')
				COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @IdHistorialAjuste = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        --SELECT  @IdHistorialAjuste  
     
    END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarReserva]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarReserva] 
	
	@IdReserva as int,
	@Estado as int
		
AS
BEGIN
	SET NOCOUNT ON;
 Declare @Ret int
	
  BEGIN TRY
          BEGIN TRANSACTION  
          
          UPDATE Reserva SET EstadoReserva=@Estado where IdReserva=@IdReserva
                   
            COMMIT TRANSACTION
			set @Ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @Ret=0
        END CATCH  
        select @Ret
   
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEstadoReserva]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarEstadoReserva] 
	@IdReserva int
	
AS
BEGIN
Declare @Id int
	BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION
			
	
    -- Actualizando espacios
	UPDATE ReservaEspacios
	SET
	Enviado = 1,
	IdEstadoReservaEspacio = 3
	
	WHERE(IdReservaEspacio = @IdReserva)
	
	--Ejecutamos el lote de Lote de operaciones y transacciones
			COMMIT TRANSACTION
			set @Id=1
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @Id = -1
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        SELECT  @Id
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarHistorialNovedad]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto Mal Villalobos
-- Create date: 07/10/2010
-- Description:	Actualiza el Historial de Novedades
-- =============================================
CREATE PROCEDURE [dbo].[ActualizarHistorialNovedad]
    @IdEquipo as int,
    @FechaNovedad AS DATETIME,
	@IdTipoNovedad as int,
	@Usuario as varchar(50),
	@FechaRegistro as datetime,
	@IdHistorialNovedad as int	
AS
BEGIN
SET NOCOUNT ON;

	
  BEGIN TRY
          BEGIN TRANSACTION  
          
          UPDATE HistorialNovedad SET IdEquipo=@IdEquipo,FechaNovedad=@FechaNovedad,IdTipoNovedad=@IdTipoNovedad,
          UsuarioRegistro=@Usuario,FechaRegistro=@FechaRegistro where IdHistorialNovedad=@IdHistorialNovedad
          
          
            COMMIT TRANSACTION
			
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH  
       
	
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarNumerosGrupos]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Henry Rodriguez
-- Create date: 13/05/2010
-- Description:	Actualizar Grupo
-- =============================================
CREATE PROCEDURE [dbo].[ActualizarNumerosGrupos]
	@IdGrupoEliminado INT = Null

AS
	BEGIN	
		
		DECLARE	@IdMateria INT = NUll
	    DECLARE @NumeroGrupoEliminado INT = Null
	    
		BEGIN TRY
		
		    SET @NumeroGrupoEliminado = (SELECT NumeroGrupo FROM Grupo WHERE IdGrupo = @IdGrupoEliminado)
		    SET @IdMateria = (SELECT IdMateria FROM Grupo WHERE IdGrupo = @IdGrupoEliminado)
		    
		    
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION   
     
				--Realizando insercción
				UPDATE Grupo
				SET	    NumeroGrupo = NumeroGrupo - 1								
				WHERE (IdMateria = @IdMateria) AND (NumeroGrupo > @NumeroGrupoEliminado)				
              
			--Ejecutamos el lote de Lote de opearaciones y transacciones
			COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            --SET @IdGrupo = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
       -- SELECT  @IdGrupo  
     
    END
GO
/****** Object:  Table [dbo].[AsignacionReservaEspacios]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsignacionReservaEspacios](
	[IdAsignacionReserva] [int] IDENTITY(1,1) NOT NULL,
	[IdEspacio] [int] NULL,
	[IdReserva] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[IdUsuarioRegistro] [uniqueidentifier] NOT NULL,
	[FechaModificacion] [datetime] NULL,
	[IdUsuarioModifico] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AsignacionReservaEspacios] PRIMARY KEY CLUSTERED 
(
	[IdAsignacionReserva] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionReservaEspacios', @level2type=N'COLUMN',@level2name=N'IdAsignacionReserva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del espacio asignado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionReservaEspacios', @level2type=N'COLUMN',@level2name=N'IdEspacio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la Reserva a la cual pertenece la asignacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionReservaEspacios', @level2type=N'COLUMN',@level2name=N'IdReserva'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Registro de la asignacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionReservaEspacios', @level2type=N'COLUMN',@level2name=N'FechaRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del usuario que registro la reserva' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionReservaEspacios', @level2type=N'COLUMN',@level2name=N'IdUsuarioRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha modificacion de la asignacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionReservaEspacios', @level2type=N'COLUMN',@level2name=N'FechaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificacion del usuario que realizo la solicitud ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionReservaEspacios', @level2type=N'COLUMN',@level2name=N'IdUsuarioModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Esta tabla permite el almacenamiento de las reservas referentes a los espacios en ocaciones especiales, es decir, auditorios, salas en congresos y eventos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionReservaEspacios'
GO
/****** Object:  Table [dbo].[DetalleNovedad]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetalleNovedad](
	[IdDetalle] [int] IDENTITY(1,1) NOT NULL,
	[CostoMantenimiento] [bigint] NULL,
	[FechaDetalle] [datetime] NOT NULL,
	[Detalle] [varchar](max) NOT NULL,
	[IdEmpresa] [int] NULL,
	[IdHistorialNovedad] [int] NULL,
	[UsuarioRegistro] [varchar](50) NULL,
	[FechaRegistro] [datetime] NULL,
	[UsuarioModifico] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
	[IdTipoMantenimiento] [int] NULL,
 CONSTRAINT [PK__DetalleN__E43646A5489AC854] PRIMARY KEY CLUSTERED 
(
	[IdDetalle] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DetalleNovedad', @level2type=N'COLUMN',@level2name=N'IdDetalle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Determina el costo de la mano de obra sobre el detalle.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DetalleNovedad', @level2type=N'COLUMN',@level2name=N'CostoMantenimiento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Determina cuando se ingresó la descripción o lo realizado con la novedad.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DetalleNovedad', @level2type=N'COLUMN',@level2name=N'FechaDetalle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del detalle de la novedad. Ejemplo: Describir lo realizado en un mantenimiento o el estdo en que se encuentra el equipo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DetalleNovedad', @level2type=N'COLUMN',@level2name=N'Detalle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relaciona la empresa que se hizo cargo del mentenimiento o novedad.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DetalleNovedad', @level2type=N'COLUMN',@level2name=N'IdEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la Novedad a la cual se realiza el detalle.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DetalleNovedad', @level2type=N'COLUMN',@level2name=N'IdHistorialNovedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que crea el registro por primera ves en la bases de datos.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DetalleNovedad', @level2type=N'COLUMN',@level2name=N'UsuarioRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DetalleNovedad', @level2type=N'COLUMN',@level2name=N'FechaRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que modificó por ultima ves el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DetalleNovedad', @level2type=N'COLUMN',@level2name=N'UsuarioModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de la última modificación del registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DetalleNovedad', @level2type=N'COLUMN',@level2name=N'FechaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena la descripción de la novedad, Una novedad puede tener varias novedades.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DetalleNovedad'
GO
/****** Object:  StoredProcedure [dbo].[DeleteRestriccionEspacio]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[DeleteRestriccionEspacio]
   @original_IdRestriccion as int
    
AS
BEGIN

SET NOCOUNT ON;
DECLARE @Retorno as int
	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
       Delete from RestriccionEspacio where IdRestriccion = @original_IdRestriccion
             
          COMMIT TRANSACTION
		  SET @Retorno = 1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
           SET @Retorno=-1 
            
        END CATCH  
      
      SELECT @Retorno
       
END
GO
/****** Object:  StoredProcedure [dbo].[ConsutarExisteRestriccion]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ConsutarExisteRestriccion]
@IdEspacio int,
@IdPeriodo int,
@DiaReserva int,
@HoraInicialReservada int,
@HoraFinalReservada int
AS

BEGIN

DECLARE @ResulHI int,@ResulHF int

set @ResulHI = (SELECT     Count(IdRestriccion) as result
FROM         RestriccionEspacio
where IdEspacio = @IdEspacio and IdPeriodo = @IdPeriodo and DiaReserva = @DiaReserva 
and (HoraInicialReservada <= @HoraInicialReservada and HoraFinalReservada > @HoraInicialReservada))
 
set @ResulHF =(SELECT     Count(IdRestriccion) as result2
FROM         RestriccionEspacio
where IdEspacio = @IdEspacio and IdPeriodo = @IdPeriodo and DiaReserva = @DiaReserva
and ( (HoraInicialReservada < @HoraFinalReservada and HoraFinalReservada > @HoraFinalReservada)))

select @ResulHI+@ResulHF


END
GO
/****** Object:  StoredProcedure [dbo].[IngresoPorAnio2]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto mal
-- Create date: 30/09/2010
-- Description:	Ingreso de Equpos audiovisuales Por año
-- =============================================
CREATE PROCEDURE [dbo].[IngresoPorAnio2]
	AS
BEGIN
	
 Declare @IdCategoria int
Declare @Anios int
DECLARE @TablaAuxiliar TABLE
            (
           IdCategoria int
                            
            )
            
  DECLARE @TablaAuxiliarAnios Table
  (
  Anios int
  )        
    
  DECLARE @TablaFinal TABLE
  (
  Categoria Varchar(100),
  total int,
  Anio int
  )        
    INSERT @TablaAuxiliarAnios
    (
    Anios
    )
      SELECT DISTINCT Anio
      FROM Periodo where IdPeriodo<>8 and IdPeriodo<>10
            
            INSERT  @TablaAuxiliar
                (
                  IdCategoria
                )
                                
               SELECT IdCategoria
               FROM CategoriaEquipo where IdCategoria<>12
               
              DECLARE TablaAuxiliarAnios_Cursor CURSOR
       FOR SELECT  Anios
       FROM   @TablaAuxiliarAnios
       
       OPEN TablaAuxiliarAnios_Cursor 
        FETCH NEXT FROM TablaAuxiliarAnios_Cursor INTO @Anios
        
          WHILE @@FETCH_STATUS = 0
            BEGIN
               
               
       DECLARE TablaAuxiliar_Cursor CURSOR
       FOR SELECT  IdCategoria
       FROM   @TablaAuxiliar
       
       OPEN TablaAuxiliar_Cursor

        FETCH NEXT FROM TablaAuxiliar_Cursor INTO @IdCategoria
        
            WHILE @@FETCH_STATUS = 0
            BEGIN
        
                      INSERT  @TablaFinal
                        (
                         Categoria,
                         total,
                         Anio
                         
		                 )
		           SELECT Categoria,TotalCategoria,Anio
		                 FROM  [dbo].[IngresoEquiposPorCategoria2](@Anios,@IdCategoria)
                          FETCH NEXT FROM TablaAuxiliar_Cursor INTO @IdCategoria
                          END
                    CLOSE  TablaAuxiliar_Cursor
                    DEALLOCATE TablaAuxiliar_Cursor        
            
          FETCH NEXT FROM TablaAuxiliarAnios_Cursor INTO @Anios
          
         END 
           SELECT Categoria,
               total,Anio
        FROM  @TablaFinal        
END
GO
/****** Object:  StoredProcedure [dbo].[IngresoPorAnio]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto mal
-- Create date: 30/09/2010
-- Description:	Ingreso de Equpos audiovisuales Por año
-- =============================================
CREATE PROCEDURE [dbo].[IngresoPorAnio]
	@Anios int
AS
BEGIN
	
 Declare @IdCategoria int
 DECLARE @TablaAuxiliar TABLE
            (
           IdCategoria int
           
           
            )
  DECLARE @TablaFinal TABLE
  (
  Categoria Varchar(100),
  total int
  )          
            
            INSERT  @TablaAuxiliar
                (
                  IdCategoria
                )
                                
               SELECT IdCategoria
               FROM CategoriaEquipo where IdCategoria<>12
               
       DECLARE TablaAuxiliar_Cursor CURSOR
       FOR SELECT  IdCategoria
       FROM   @TablaAuxiliar
       
       OPEN TablaAuxiliar_Cursor

        FETCH NEXT FROM TablaAuxiliar_Cursor INTO @IdCategoria
        
            WHILE @@FETCH_STATUS = 0
            BEGIN
        
                      INSERT  @TablaFinal
                        (
                         Categoria,
                         total
		                 )
		           SELECT Categoria,TotalCategoria
                   FROM  [dbo].[IngresoEquiposPorCategoria](@Anios,@IdCategoria)
                          FETCH NEXT FROM TablaAuxiliar_Cursor INTO @IdCategoria
                          END
              SELECT Categoria,
               total
        FROM  @TablaFinal   
        CLOSE  TablaAuxiliar_Cursor
        DEALLOCATE TablaAuxiliar_Cursor      
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarHistorial]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarHistorial]
    @IdEquipo as int,
    @FechaNovedad AS DATETIME,
	@IdTipoNovedad as int,
	@Usuario as varchar(50)	
AS
BEGIN

SET NOCOUNT ON;
DECLARE @IdHistorial as int
	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
        INSERT INTO HistorialNovedad(
        [IdEquipo],
        [FechaNovedad],
        [IdTipoNovedad],
        [UsuarioRegistro],
        [FechaRegistro]
        )
        VALUES(
        @IdEquipo, 
        @FechaNovedad,
        @IdTipoNovedad,
        @Usuario,
		SYSDATETIME()
         ) 
       
          COMMIT TRANSACTION
		  SET @IdHistorial = IDENT_CURRENT('[HistorialNovedad]') 
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
           SET @IdHistorial=-1 
            
        END CATCH  
      
      SELECT @IdHistorial
       
END
GO
/****** Object:  UserDefinedFunction [dbo].[MantenimientoPostgrados]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[MantenimientoPostgrados]
(
	@IdSede as int,
	@IdCategoria as int
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @MantenimientoPostgrados int=0

	-- Add the T-SQL statements to compute the return value here
	if 	@IdCategoria=2 OR @IdCategoria=17 
	begin
	SET @MantenimientoPostgrados=(SELECT    COUNT(dv.IdHistorialNovedad) AS Idhistorial
FROM         HistorialNovedad AS dv INNER JOIN
                      Equipo ON dv.IdEquipo = Equipo.IdEquipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Sede ON Equipo.IdSede = Sede.IdSede
WHERE (dv.IdTipoNovedad <> 2) AND (dv.IdTipoNovedad<>6) AND (Equipo.IdCategoria = 2 OR Equipo.IdCategoria=17)and(Equipo.IdDependencia=9) and(dv.FechaNovedad =
                             (SELECT MAX(FechaNovedad) AS Max
                               FROM            HistorialNovedad
                               WHERE        (IdEquipo = dv.IdEquipo) AND (Equipo.IdCategoria = 2 OR Equipo.IdCategoria=17) AND (Sede.IdSede = @idsede) and (Equipo.IdDependencia=9))))
      
 end
 
 else

 begin
   if @IdCategoria=1 OR @IdCategoria=18
   begin
   
   SET @MantenimientoPostgrados=(SELECT    COUNT(dv.IdHistorialNovedad) AS Idhistorial
FROM         HistorialNovedad AS dv INNER JOIN
                      Equipo ON dv.IdEquipo = Equipo.IdEquipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria INNER JOIN
                      Sede ON Equipo.IdSede = Sede.IdSede
WHERE (dv.IdTipoNovedad <> 2) AND (dv.IdTipoNovedad<>6) AND (Equipo.IdCategoria = 1 OR Equipo.IdCategoria=18) and(dv.FechaNovedad =
                             (SELECT MAX(FechaNovedad) AS Max
                               FROM            HistorialNovedad
                               WHERE        (IdEquipo = dv.IdEquipo) AND (Equipo.IdCategoria = 1 OR Equipo.IdCategoria=18) AND (Sede.IdSede = @idsede) and (Equipo.IdDependencia=9))))
   
   
   end

	-- Return the result of the function
	

END
RETURN @MantenimientoPostgrados
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarRestrincionEspacio]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Gabriel Barrios>
-- Create date: <14/09/11>
-- Description:	<insertar nuevos bloques>
-- =============================================
CREATE PROCEDURE [dbo].[InsertarRestrincionEspacio]
	
	@IdEspacio int,
	@IdPeriodo int,
	@HoraInicialReservada int,
	@HoraFinalReservada int,
	@DiaReserva int,
	@Usuario nvarchar(256)
AS
BEGIN

	SET NOCOUNT ON;
       Declare @Ret int
  BEGIN TRY
          BEGIN TRANSACTION   
          
          INSERT INTO RestriccionEspacio
          (IdEspacio,IdPeriodo,HoraInicialReservada,HoraFinalReservada,DiaReserva,Usuario)
          VALUES (@IdEspacio,@IdPeriodo,@HoraInicialReservada,@HoraFinalReservada,@DiaReserva,@Usuario)
          
          
          COMMIT TRANSACTION
			set @Ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
           
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @Ret=0
        END CATCH 
        select @Ret 
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarReserva]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery1.sql|7|0|C:\Users\rmal\AppData\Local\Temp\~vsD29B.sql
CREATE PROCEDURE [dbo].[InsertarReserva]
    @FechaReserva as Date,
    @HoraInicial as int,
	@HoraFinal as int,
	@IdServicio as int,
	@IdDependencia as int,	
	@IdEspacio as int,
	@IdTipoUsoReserva as int,
	@IdUsuarioSolicitante as Varchar(50),
	@UsuarioRegistro as varchar(50),
	@Asociativo as int
	
	
	
AS
BEGIN

SET NOCOUNT ON;
DECLARE @IdReserva as int
	
  BEGIN TRY
          BEGIN TRANSACTION   
          
          INSERT INTO Reserva(FechaSolicitud,FechaReserva,HoraInicial,HoraFinal,EstadoReserva,IdServicio,
          IdDependencia,IdEspacio,IdTipoUsoReserva,IdUsuarioSolicitante,UsuarioRegistro,FechaRegistro,AsociativoReservas)
          values(SYSDATETIME(),@FechaReserva,@HoraInicial,@HoraFinal,1,@IdServicio,@IdDependencia,@IdEspacio,@IdTipoUsoReserva,
          @IdUsuarioSolicitante,@UsuarioRegistro,SYSDATETIME(),@Asociativo)
        
          COMMIT TRANSACTION
		  SET @IdReserva = IDENT_CURRENT('[Reserva]') 
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
           SET @IdReserva=-1 
            
        END CATCH  
      
      SELECT @IdReserva
       
END
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Horario](
	[IdHorario] [int] IDENTITY(1,1) NOT NULL,
	[IdGrupo] [int] NOT NULL,
	[HoraInicial] [int] NOT NULL,
	[HoraFinal] [int] NOT NULL,
	[Dia] [int] NOT NULL,
	[Usuario] [nvarchar](256) NOT NULL,
	[ESugerido] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[UsuarioModifico] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK__HORARIO__0AD2A005] PRIMARY KEY CLUSTERED 
(
	[IdHorario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla, campo identificador del horario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Horario', @level2type=N'COLUMN',@level2name=N'IdHorario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo identificador del grupo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Horario', @level2type=N'COLUMN',@level2name=N'IdGrupo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hora inicial del horario o lapso (6 -23).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Horario', @level2type=N'COLUMN',@level2name=N'HoraInicial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hora final del horario o lapso (7 -24).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Horario', @level2type=N'COLUMN',@level2name=N'HoraFinal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero que  identifica el día de la semana (1-7) ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Horario', @level2type=N'COLUMN',@level2name=N'Dia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del usuario que realiza la inserción del horario.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Horario', @level2type=N'COLUMN',@level2name=N'Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registra el Id del espacio que sugiere el solicitante.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Horario', @level2type=N'COLUMN',@level2name=N'ESugerido'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Esta tabla contiene los diferentes horarios o lapsos en los cuales se puede asignar a un grupo un salón.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Horario'
GO
/****** Object:  UserDefinedFunction [dbo].[ObtenerEquipoHorasFecha]    Script Date: 11/12/2012 15:45:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create FUNCTION  [dbo].[ObtenerEquipoHorasFecha]
(	
	-- Add the parameters for the function here
	@FechaInicio as datetime, 
	@FechaFin as datetime,
	@IdTipoUsoReserva as int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	 SELECT     TOP (100) PERCENT dbo.CategoriaEquipo.Categoria, SUM(ISNULL(dbo.Reserva.HoraFinal, 0) - ISNULL(dbo.Reserva.HoraInicial, 0)) AS HorasActivo, 
                      ISNULL(dbo.Reserva.IdDependencia, 0) AS IdDependencia
FROM         dbo.Prestamo INNER JOIN
                      dbo.Reserva ON dbo.Prestamo.IdReserva = dbo.Reserva.IdReserva INNER JOIN
                      dbo.Equipo ON dbo.Prestamo.IdEquipo = dbo.Equipo.IdEquipo RIGHT OUTER JOIN
                      dbo.CategoriaEquipo ON dbo.Equipo.IdCategoria = dbo.CategoriaEquipo.IdCategoria
                      where dbo.Reserva.FechaReserva >= @FechaInicio AND dbo.Reserva.FechaReserva <=@FechaFin AND dbo.Equipo.IdCategoria<>12 AND dbo.Reserva.IdTipoUsoReserva=@IdTipoUsoReserva
GROUP BY dbo.CategoriaEquipo.Categoria, dbo.Reserva.IdDependencia
ORDER BY dbo.CategoriaEquipo.Categoria
)
GO
/****** Object:  StoredProcedure [dbo].[GrupoInsertar]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Samir Hinojosa
-- Create date: 24/03/2010
-- Description:	Insercción de Grupos y horarios de grupos por Materia
-- =============================================

CREATE PROCEDURE [dbo].[GrupoInsertar]
	@IdMateria INT, 
	@IdPeriodo INT, 
	@IdDocente INT = NULL, 	
	@NumeroGrupo INT,
	@Capacidad INT, 
	@Usuario VARCHAR(256), 
	@Intensivo BIT,
	@TipoGrupo NCHAR(1),
	@NombreElectiva NVARCHAR(100) = NULL,
	@TipoResponsable NCHAR(3),
	@Observaciones NVARCHAR(256) = NULL,
	@FechaRegistro	DATETIME = NULL
	
AS
	BEGIN	
		
		DECLARE @IdGrupo INT
			
		BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION   
     
				--Realizando insercción
				INSERT INTO	[Grupo]
				(	[IdMateria],
					[IdPeriodo],
					[IdDocente],					
					[NumeroGrupo],
					[Capacidad],
					[Usuario],
					[Intensivo],
					[TipoGrupo],
					[NombreElectiva],
					[TipoResponsable],
					[Observaciones],
					[FechaRegistro]	
				)
				VALUES
				(
					@IdMateria,
					@IdPeriodo,
					@IdDocente,
					@NumeroGrupo,
					@Capacidad,
					@Usuario,
					@Intensivo,
					@TipoGrupo,
					@NombreElectiva,
					@TipoResponsable,
					@Observaciones,
					@FechaRegistro			
				)
	
				--Capturamos el Id del nuevo registro	
				SET @IdGrupo = IDENT_CURRENT('[Grupo]')
              
			--Ejecutamos el lote de Lote de opearaciones y transacciones
			
			COMMIT TRANSACTION
			
			
			
		END TRY	
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @IdGrupo = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
        
        EXEC dbo.AjusteInsertarGrupo @IdGrupo,@FechaRegistro, @Usuario
                   
        SELECT  @IdGrupo  
     
    END
GO
/****** Object:  StoredProcedure [dbo].[GrupoActualizar]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Samir Hinojosa
-- Create date: 25/03/2010
-- Description:	Actualizar Grupo
-- =============================================
CREATE PROCEDURE [dbo].[GrupoActualizar]
	@IdGrupo INT,
	
	@IdDocente INT, 
	@NumeroGrupo INT,
	@Capacidad INT, 
	@Intensivo BIT,
	@TipoGrupo NCHAR(1),
	@NombreElectiva NVARCHAR(100) = NULL,
	@TipoResponsable NCHAR(3) = NULL,
	@Observaciones NVARCHAR(256) = NULL,
	@UsuarioModifico NVARCHAR (100) = NULL,
	@FechaModificacion DATETIME = NULL 
	
AS
	BEGIN	
		
		DECLARE @_IdGrupo INT
		EXEC dbo.AjusteActualizarGrupo @IdGrupo
		BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION   
     
				--Realizando insercción
				UPDATE Grupo
				SET		
						
						IdDocente = @IdDocente,
						NumeroGrupo = @NumeroGrupo,
						Capacidad = @Capacidad,
						Intensivo = @Intensivo,
						TipoGrupo = @TipoGrupo,
						NombreElectiva = @NombreElectiva,
						TipoResponsable = @TipoResponsable,
						Observaciones = @Observaciones,
						UsuarioModifico = @UsuarioModifico,
						FechaModificacion =	@FechaModificacion
				WHERE (	IdGrupo = @IdGrupo )				
              
			--Ejecutamos el lote de Lote de opearaciones y transacciones
			COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @IdGrupo = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
        
        
           
        SELECT  @IdGrupo  
     
    END
GO
/****** Object:  StoredProcedure [dbo].[Horarios]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================================
CREATE PROCEDURE [dbo].[Horarios]
	@Dia int,
	@periodo int
AS
BEGIN

DECLARE	@TablaTemporal TABLE (IdSalon int, Nombre_Salon varchar(50), Capacidad_Salon int,
								H67 varchar(200),H78 varchar(200),H89 varchar(200),H910 varchar(200),
H1011 varchar(200),H1112 varchar(200),H1213 varchar(200),H1314 varchar(200),H1415 varchar(200),
H1516 varchar(200),H1617 varchar(200),H1718 varchar(200),H1819 varchar(200),H1920 varchar(200),
H2021 varchar(200),H2122 varchar(200))

-- variables del cursor salon
    DECLARE @SalonId INT
    DECLARE @SalonNombre varchar(50)
	DECLARE @Capacidad_Salon INT
    DECLARE @GetSalon CURSOR
-- Fin Variables Datos

-- variable del cursor Datos
	DECLARE @IdAsignacion			INT
	DECLARE	@IdHorario				INT  	
	DECLARE @IdPeriodo				INT
	DECLARE	@IdGrupo				INT
	DECLARE	@HoraInicio				INT
	DECLARE	@HoraFin				INT
	DECLARE	@DiaTemp				INT 
	DECLARE @NumeroGrupo			INT
	DECLARE @GrupoCapacidad			INT
	DECLARE @TipoGrupo				NCHAR(1)
	DECLARE	@MateriaNombre			VARCHAR(100)
	DECLARE @SemestreMateria		INT
	DECLARE @CodigoMateria			VARCHAR(15)	
	DECLARE	@SalonNombreTemp		VARCHAR(50)
	DECLARE @CapacidadSalon			INT
	DECLARE @PeriodoTemp			VARCHAR(200)
	DECLARE @GetDatos CURSOR
-- Fin Variables

	SET @GetSalon = CURSOR FOR SELECT Id_Salon,Nombre_Salon,Capacidad_Salon FROM SALON	
	OPEN @GetSalon
	FETCH NEXT FROM @GetSalon  INTO @SalonId,@SalonNombre,@Capacidad_Salon
	WHILE @@FETCH_STATUS <> -1
	BEGIN 

			SET @GetDatos = CURSOR FOR SELECT  A.Id_Asignacion,A.Id_Horario,A.Id_Periodo,H.Id_Grupo,H.Hora_Inicial,H.Hora_Final,H.Dia,G.Numero_Grupo,G.Capacidad,G.TipoGrupo,M.Nombre_Materia,M.Semestre,M.Codigo_Materia,S.Nombre_Salon,s.Capacidad_Salon,
							(SELECT P.Anio+'-'+P.Periodo FROM PERIODO P WHERE ( P.Id_Periodo= A.Id_Periodo AND GETDATE() BETWEEN Fecha_Inicio AND Fecha_Final)) AS Periodo
							FROM ASIGNACION_SALON A 
							INNER JOIN (HORARIO H INNER JOIN 
							(GRUPO G INNER JOIN MATERIA M ON G.Id_Materia=M.Id_Materia)ON H.Id_Grupo=G.Id_Grupo)
							ON A.Id_Horario = H.Id_Horario
							INNER JOIN SALON S ON A.Id_Salon = S.Id_Salon
							WHERE (S.Id_Salon=@SalonId AND H.Dia=@Dia)

		   OPEN  @GetDatos
		   FETCH NEXT FROM   @GetDatos INTO @IdAsignacion,@IdHorario,@IdPeriodo,@IdGrupo,@HoraInicio,@HoraFin,@DiaTemp,@NumeroGrupo,@GrupoCapacidad,@TipoGrupo,@MateriaNombre,@SemestreMateria,@CodigoMateria,@SalonNombreTemp,@CapacidadSalon,@PeriodoTemp		
			IF @@FETCH_STATUS <> 0 
			WHILE @@FETCH_STATUS = 0
				BEGIN	
				 FETCH NEXT FROM  @GetDatos INTO @IdAsignacion,@IdHorario,@IdPeriodo,@IdGrupo,@HoraInicio,@HoraFin,@DiaTemp,@NumeroGrupo,@GrupoCapacidad,@TipoGrupo,@MateriaNombre,@SemestreMateria,@CodigoMateria,@SalonNombreTemp,@CapacidadSalon,@PeriodoTemp	
			END

	PRINT @SalonId
	PRINT @SalonNombre
	FETCH NEXT FROM @GetSalon INTO @SalonId,@SalonNombre,@Capacidad_Salon
END
CLOSE @GetSalon
DEALLOCATE @GetSalon
END
GO
/****** Object:  UserDefinedFunction [dbo].[HorasEquipoPorDependenciaCategoria]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Heliberto Arias
-- Create date: 30/09/2010
-- Description:	Retorna el numero de horas de uso de para una dependencia y en una categoria de equipo
-- =============================================
CREATE  FUNCTION  [dbo].[HorasEquipoPorDependenciaCategoria]
(	
	-- Add the parameters for the function here
	@IdDependencia INT, 
	@IdCategoria INT,
	@FechaInicio Datetime,
	@FechaFin Datetime,
@HoraUso INT =0
)

RETURNS TABLE 

AS

RETURN 
(

--Retornamos las horas uso para una categoria y una depedencia
SELECT ISNULL( ( SELECT  
		--CategoriaEquipo.Categoria,
        --dbo.CategoriaEquipo.IdCategoria,
                        SUM(ISNULL(Reserva.HoraFinal, 0)
                            - ISNULL(Reserva.HoraInicial, 0)) AS HorasUso
                 FROM   Equipo
                        INNER JOIN Prestamo ON Equipo.IdEquipo = Prestamo.IdEquipo
                        INNER JOIN Reserva ON Prestamo.IdReserva = Reserva.IdReserva
                        RIGHT OUTER JOIN CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria
                 WHERE  dbo.Reserva.IdDependencia = @IdDependencia
                        AND dbo.CategoriaEquipo.IdCategoria = @IdCategoria and dbo.Reserva.FechaReserva >= @FechaInicio AND dbo.Reserva.FechaReserva<=@FechaFin 
                 GROUP BY CategoriaEquipo.Categoria,
                        dbo.CategoriaEquipo.IdCategoria
               
               ), 0) AS HorasUso, 
               @IdCategoria AS IdCategoria, 
               @IdDependencia AS IdDependencia,
               (SELECT Categoria FROM dbo.CategoriaEquipo WHERE IdCategoria= @IdCategoria) AS Categoria,
               (SELECT NombreDependencia FROM dbo.Dependencia WHERE IdDependencia= @IdDependencia) AS Dependencia
               
               
               
   
   
)
GO
/****** Object:  StoredProcedure [dbo].[InsertarSolicitudEspacio2]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarSolicitudEspacio2]
   	@Correo as varchar(250),
   	@TipoEvento as int,
	@HoraInicial as int,
	@HoraFinal as int,
	@IdPeriodo as int,
	@IdEspacioSolicitado as int,
	@Telefono as Varchar(50),
	@Cupo as int,
	@NombreEvento as Varchar(50),
	@Observaciones as Varchar(200),
	@IdEstadoReservaEspacio as int,
	@IdDependencia as int,
	@FechaReserva as Datetime,
	@Responsable as Varchar(50),
	@IdUsuarioSolicitante as Varchar(60),
	@IdUsuarioRegistro as Varchar(60),
	@IdEspacio as int=null
				
 AS
  BEGIN
  DECLARE @IdReservaEspacio as int

SET NOCOUNT ON;
	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
        INSERT INTO ReservaEspacios(
       FechaRegistro,
       Correo,
       TipoEvento,
       HoraInicial,
       HoraFinal,
       IdPeriodo,
       IdEspacioSolicitado,
       Telefono,
       Cupo,
       NombreEvento,
       Observaciones,
       IdEstadoReservaEspacio,
       Enviado,
       IdDependencia,
       FechaReserva,
       Responsable,
       IdUsuarioSolicitante
        )
        VALUES(
       SYSDATETIME(), 
        @Correo,
        @TipoEvento,
        @HoraInicial,
        @HoraFinal,
        @IdPeriodo,
        @IdEspacioSolicitado,
        @Telefono,
        @Cupo,
        @NombreEvento,
        @Observaciones,
        @IdEstadoReservaEspacio,
       0,
       @IdDependencia,
       @FechaReserva,
       @Responsable,
       @IdUsuarioSolicitante
                ) 
       
          SET @IdReservaEspacio = IDENT_CURRENT('[ReservaEspacios]') 
                
          INSERT INTO AsignacionReservaEspacios(
          IdReserva,
          FechaRegistro,
          IdUsuarioRegistro,
          IdEspacio
           )    
           VALUES(
           @IdReservaEspacio,
           SYSDATETIME(),
           @IdUsuarioRegistro,
           @IdEspacio
           )  
       
          COMMIT TRANSACTION
           SET @IdReservaEspacio = IDENT_CURRENT('[ReservaEspacios]') 
		
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
          SET @IdReservaEspacio=-1 
            
        END CATCH  
      SELECT @IdReservaEspacio
      
       
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarSolicitudEspacio]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarSolicitudEspacio]
   	@Correo as varchar(250),
   	@TipoEvento as int,
	@HoraInicial as int,
	@HoraFinal as int,
	@IdPeriodo as int,
	@IdEspacioSolicitado as int,
	@Telefono as Varchar(50),
	@Cupo as int,
	@NombreEvento as Varchar(50),
	@Observaciones as Varchar(200),
	@IdEstadoReservaEspacio as int,
	@IdDependencia as int,
	@FechaReserva as Datetime,
	@Responsable as Varchar(50),
	@IdUsuarioSolicitante as uniqueidentifier,
	@IdUsuarioRegistro as uniqueidentifier,
	@IdEspacio as int=null
				
 AS
  BEGIN
  DECLARE @IdReservaEspacio as int

SET NOCOUNT ON;
	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
        INSERT INTO ReservaEspacios(
       FechaRegistro,
       Correo,
       TipoEvento,
       HoraInicial,
       HoraFinal,
       IdPeriodo,
       IdEspacioSolicitado,
       Telefono,
       Cupo,
       NombreEvento,
       Observaciones,
       IdEstadoReservaEspacio,
       Enviado,
       IdDependencia,
       FechaReserva,
       Responsable,
       IdUsuarioSolicitante
        )
        VALUES(
       SYSDATETIME(), 
        @Correo,
        @TipoEvento,
        @HoraInicial,
        @HoraFinal,
        @IdPeriodo,
        @IdEspacioSolicitado,
        @Telefono,
        @Cupo,
        @NombreEvento,
        @Observaciones,
        @IdEstadoReservaEspacio,
       0,
       @IdDependencia,
       @FechaReserva,
       @Responsable,
       @IdUsuarioSolicitante
                ) 
       
          SET @IdReservaEspacio = IDENT_CURRENT('[ReservaEspacios]') 
                
          INSERT INTO AsignacionReservaEspacios(
          IdReserva,
          FechaRegistro,
          IdUsuarioRegistro,
          IdEspacio
           )    
           VALUES(
           @IdReservaEspacio,
           SYSDATETIME(),
           @IdUsuarioRegistro,
           @IdEspacio
           )  
       
          COMMIT TRANSACTION
           SET @IdReservaEspacio = IDENT_CURRENT('[ReservaEspacios]') 
		
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
          SET @IdReservaEspacio=-1 
            
        END CATCH  
      SELECT @IdReservaEspacio
      
       
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarPrestamo]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriel Barrios
-- Create date: 21/07/2010
-- Description:	insertar un nuevo prestamo
-- =============================================
CREATE PROCEDURE [dbo].[InsertarPrestamo]
	@IdReserva int,
	@IdEquipo int,
	@Entrega varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  BEGIN TRY
          BEGIN TRANSACTION   
          
          INSERT INTO Prestamo
          (IdReserva,IdEquipo,Entrega)
          VALUES (@IdReserva,@IdEquipo,@Entrega)
          
          
          COMMIT TRANSACTION
			
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
           
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH  
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarDetalleNovedad]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto Mal Villalobos
-- Create date: 07/10/2010
-- Description:	inserta un nuevo detalle de novedad
-- =============================================
CREATE PROCEDURE [dbo].[InsertarDetalleNovedad]
    @CostoMantenimiento as Int,
    @CostoRepuesto AS int,
	@FechaDetalle as datetime,
	@Detalle as int,
	@IdRepuesto as int,
	@IdEmpresa as int,
	@IdHistorialNovedad as int,
	@UsuarioRegistro as varchar(50),
	@UsuarioModifico as varchar(50),
	@FechaModificacion as datetime	
AS
BEGIN

SET NOCOUNT ON;

	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
        INSERT INTO DetalleNovedad(
        CostoMantenimiento,       
        CostoRepuesto,
        FechaDetalle,
        Detalle,
       IdRepuesto,
       IdEmpresa,
       IdHistorialNovedad,
       UsuarioRegistro,
      	FechaRegistro,
       UsuarioModifico,
       FechaModificacion
        )
        VALUES(
        @CostoMantenimiento, 
        @CostoRepuesto,
        @FechaDetalle,
        @Detalle,
		@IdRepuesto,
		@IdEmpresa,
		@IdHistorialNovedad,
		@UsuarioRegistro,
		SYSDATETIME(),
		@UsuarioModifico,
		@FechaModificacion
		
         )  
           COMMIT TRANSACTION
			
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH  
      
       
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarHistorialDetalleDescarga]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertarHistorialDetalleDescarga]
    @IdEquipo as int,
    @FechaNovedad AS DATETIME,
	@IdTipoNovedad as int,
	@Usuario as varchar(50),
	@DetalleNovedad AS 	VARCHAR(MAX)
		
AS
BEGIN

SET NOCOUNT ON;
DECLARE @IdHistorial as int
	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
        INSERT INTO HistorialNovedad(
        [IdEquipo],
        [FechaNovedad],
        [IdTipoNovedad],
        [UsuarioRegistro],
        [FechaRegistro]
        )
        VALUES(
        @IdEquipo, 
        @FechaNovedad,
        @IdTipoNovedad,
        @Usuario,
		SYSDATETIME()
         ) 
       
          COMMIT TRANSACTION
		  SET @IdHistorial = IDENT_CURRENT('[HistorialNovedad]') 
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
           SET @IdHistorial=-1 
            
        END CATCH  
      
      SELECT @IdHistorial
 BEGIN TRY
	BEGIN TRANSACTION
	
	INSERT INTO dbo.DetalleNovedad (
		FechaDetalle,
		Detalle,
		IdHistorialNovedad,
		UsuarioRegistro,
		FechaRegistro
		) VALUES ( 
		SYSDATETIME(),
		@DetalleNovedad,
		@IdHistorial,
		@Usuario,
		SYSDATETIME()
		)
		 COMMIT TRANSACTION
		 
 END TRY
 BEGIN CATCH
 ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
           SET @IdHistorial=-1 
            
 END CATCH
       
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarHistorialDetalle2]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarHistorialDetalle2]
    @IdEquipo as int,
    @FechaNovedad AS DATETIME,
	@IdTipoNovedad as int,
	@Usuario as varchar(50)	,
	@CostoMantenimiento as int,
	@CostoRepuesto as int,
	@Detalle as varchar(250),
	@IdRepuesto as int,
	@IdEmpresa as Int,
	@IdTipoMantenimento as int
		
AS
BEGIN
DECLARE @IdHistorial as int
SET NOCOUNT ON;

	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
        INSERT INTO HistorialNovedad(
        [IdEquipo],
        [FechaNovedad],
        [IdTipoNovedad],
        [UsuarioRegistro],
        [FechaRegistro]
        )
        VALUES(
        @IdEquipo, 
        @FechaNovedad,
        @IdTipoNovedad,
        @Usuario,
		SYSDATETIME()
         )  
         	SET @IdHistorial = IDENT_CURRENT('[HistorialNovedad]')
            INSERT INTO DetalleNovedad(
            CostoMantenimiento,
            FechaDetalle,
            Detalle,
            IdEmpresa,
            IdHistorialNovedad,
            UsuarioRegistro,
            FechaRegistro,
            IdTipoMantenimiento)
            VALUES(
            @CostoMantenimiento,
            @FechaNovedad,
            @Detalle,
            @IdEmpresa,
            @IdHistorial,
            @Usuario,
            SYSDATETIME(),
            @IdTipoMantenimento
            )
         
         
           COMMIT TRANSACTION
			
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            SELECT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
            
        END CATCH  
      
       
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarHistorialDetalle]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarHistorialDetalle]
    @FechaNovedad AS DATETIME,
	@Usuario as varchar(50)	,
	@CostoMantenimiento as bigint=Null,
	@Detalle as varchar(MAX),
	@IdEmpresa as Int=Null,
	@IdTipoMantenimiento as int=Null,
	@IdHistorial as int
		
AS
BEGIN

SET NOCOUNT ON;
DECLARE @IdDetalle as int
	
  BEGIN TRY
          BEGIN TRANSACTION   
                      
      
         
            INSERT INTO DetalleNovedad(
            CostoMantenimiento,
            FechaDetalle,
            Detalle,
            IdEmpresa,
            IdHistorialNovedad,
            UsuarioRegistro,
            FechaRegistro,
            IdTipoMantenimiento)
            VALUES(
            @CostoMantenimiento,
            @FechaNovedad,
            @Detalle,
            @IdEmpresa,
            @IdHistorial,
            @Usuario,
            SYSDATETIME(),
            @IdTipoMantenimiento
            )
         
         
           COMMIT TRANSACTION
            SET @IdDetalle = IDENT_CURRENT('[DetalleNovedad]') 
			
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            SELECT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
             SET @IdDetalle=-1 
            
        END CATCH  
          SELECT @IdDetalle
      
       
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarEquipo]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto Mal Villalobos
-- Create date: 25/08/2010
-- Description:	Procedimiento que inserta un nuevo equipo
-- =============================================
CREATE PROCEDURE [dbo].[InsertarEquipo]
    @IdDependencia AS INT,
	@Serie AS VARCHAR(50),
	@IdAlmacen AS INT,
	@VidaUtil AS INT,
	@Descripcion AS VARCHAR(255),
	@IdCategoria AS INT,
	@IdSede AS INT,
	@IdModelo AS INT,
	@IntervaloMantenimiento AS INT,
	@FechaIngresoEquipo AS DATETIME,
	@UsuarioRegistro AS VARCHAR(50)
	
	
	
AS
BEGIN
DECLARE @IdEquipo INT  
DECLARE @IdHistorial INT 
SET NOCOUNT ON;


  BEGIN TRY
          BEGIN TRANSACTION   
          INSERT INTO Equipo(
          [IdDependencia],
          [Serie],
          [IdAlmacen],
          [VidaUtil],
          [Descripcion],
          [IdCategoria],
          [IdSede],
          [IdModelo],
          [IntervaloMantenimiento],
          [FechaIngresoEquipo],
          [UsuarioRegistro],
          [FechaRegistro]
          )
          VALUES(
			@IdDependencia,
			@Serie,
			@IdAlmacen,
			@VidaUtil,
			@Descripcion,
			@IdCategoria,
			@IdSede,
			@IdModelo,
			@IntervaloMantenimiento,
			@FechaIngresoEquipo,
			@UsuarioRegistro,
			SYSDATETIME()
          )
         
        SET @IdEquipo = IDENT_CURRENT('[Equipo]')	  
        INSERT INTO HistorialNovedad(
        [IdEquipo],
        [FechaNovedad],
        [IdTipoNovedad],
        [UsuarioRegistro],
        [FechaRegistro]
        )
        VALUES(
        @IdEquipo, 
        SYSDATETIME(),
        6,
        @UsuarioRegistro,
		SYSDATETIME()
         )  
         SET @IdHistorial= IDENT_CURRENT('[HistorialNovedad]')
         
        INSERT INTO DetalleNovedad(
        FechaDetalle,
        Detalle,
        IdHistorialNovedad,
        UsuarioRegistro,
        FechaRegistro)
        VALUES(
        @FechaIngresoEquipo,
        'Ingreso de Equipo a Inventarios',
        @IdHistorial,
        @UsuarioRegistro,
        SYSDATETIME()
        )
        
         
         
           COMMIT TRANSACTION
			
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH  
      
       
END
GO
/****** Object:  StoredProcedure [dbo].[HistorialDetalle]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HistorialDetalle]
    @IdEquipo as int,
    @FechaNovedad AS DATETIME,
	@IdTipoNovedad as int,
	@Usuario as varchar(50)	,
	@Detalle as varchar(250)
	
		
AS
BEGIN
DECLARE @IdHistorial as int
SET NOCOUNT ON;

	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
        INSERT INTO HistorialNovedad(
        [IdEquipo],
        [FechaNovedad],
        [IdTipoNovedad],
        [UsuarioRegistro],
        [FechaRegistro]
        )
        VALUES(
        @IdEquipo, 
        @FechaNovedad,
        @IdTipoNovedad,
        @Usuario,
		SYSDATETIME()
         )  
         	SET @IdHistorial = IDENT_CURRENT('[HistorialNovedad]')
            INSERT INTO DetalleNovedad(
            FechaDetalle,
            Detalle,
            IdHistorialNovedad,
            UsuarioRegistro,
            FechaRegistro
          )
            VALUES(
            @FechaNovedad,
            @Detalle,
            @IdHistorial,
            @Usuario,
            SYSDATETIME()
              )
         
         
           COMMIT TRANSACTION
			
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            SELECT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
            
        END CATCH  
      
       
END
GO
/****** Object:  StoredProcedure [dbo].[GetEventos]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetEventos]
	@IdEspacio int=NULL,
	@IdDependencia int=NULL
	
AS


BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   if @IdEspacio=NULL AND @IdDependencia=NULL

	
SELECT        ReservaEspacios.IdReservaEspacio, ReservaEspacios.FechaRegistro, ReservaEspacios.TipoEvento, ReservaEspacios.HoraInicial, ReservaEspacios.HoraFinal, 
                         ReservaEspacios.IdPeriodo, ReservaEspacios.IdEspacioSolicitado, ReservaEspacios.Telefono, ReservaEspacios.Cupo, ReservaEspacios.NombreEvento, 
                         ReservaEspacios.Observaciones, ReservaEspacios.IdEstadoReservaEspacio, ReservaEspacios.Enviado, ReservaEspacios.CanceladoPor, 
                         ReservaEspacios.FechaCancelacion, ReservaEspacios.IdDependencia, ReservaEspacios.FechaReserva, ReservaEspacios.Responsable, 
                         ReservaEspacios.IdUsuarioSolicitante, TipoEvento.TipoEvento AS TipoEven, EstadoReservaEspacio.NombreEstado, 
                         aspnet_Users.UserName, ReservaEspacios.Correo, ReservaEspacios.IdDependencia AS IdDep, Dependencia.NombreDependencia, 
                        AsignacionReservaEspacios.IdEspacio , ISNULL(Espacio.NombreEspacio, 'Sin Asignar') AS NombreEspacio
FROM            ReservaEspacios INNER JOIN
                         TipoEvento ON ReservaEspacios.TipoEvento = TipoEvento.IdTipoEvento INNER JOIN
                         Espacio ON ReservaEspacios.IdEspacioSolicitado = Espacio.IdEspacio INNER JOIN
                         EstadoReservaEspacio ON ReservaEspacios.IdEstadoReservaEspacio = EstadoReservaEspacio.IdEstado INNER JOIN
                         Dependencia ON ReservaEspacios.IdDependencia = Dependencia.IdDependencia INNER JOIN
                         aspnet_Users ON ReservaEspacios.IdUsuarioSolicitante = aspnet_Users.UserId INNER JOIN
                         AsignacionReservaEspacios ON ReservaEspacios.IdReservaEspacio = AsignacionReservaEspacios.IdReserva LEFT OUTER JOIN
                         Espacio as Espacio2 ON AsignacionReservaEspacios.IdEspacio = Espacio.IdEspacio
WHERE       (ReservaEspacios.FechaReserva >= CONVERT(DATETIME, CONVERT(VARCHAR(10), GETDATE(), 103)))and(ReservaEspacios.IdEstadoReservaEspacio <> 4)     
ORDER BY ReservaEspacios.FechaReserva, ReservaEspacios.Correo

	ELSE
	
	IF(@IdEspacio=NULL AND @IdDependencia<>NULL )
	
	SELECT        ReservaEspacios.IdReservaEspacio, ReservaEspacios.FechaRegistro, ReservaEspacios.TipoEvento, ReservaEspacios.HoraInicial, ReservaEspacios.HoraFinal, 
                         ReservaEspacios.IdPeriodo, ReservaEspacios.IdEspacioSolicitado,ReservaEspacios.Telefono, ReservaEspacios.Cupo, ReservaEspacios.NombreEvento, 
                         ReservaEspacios.Observaciones, ReservaEspacios.IdEstadoReservaEspacio, ReservaEspacios.Enviado, ReservaEspacios.CanceladoPor, 
                         ReservaEspacios.FechaCancelacion, ReservaEspacios.IdDependencia, ReservaEspacios.FechaReserva, ReservaEspacios.Responsable, 
                         ReservaEspacios.IdUsuarioSolicitante, TipoEvento.TipoEvento AS TipoEven,EstadoReservaEspacio.NombreEstado, 
                         aspnet_Users.UserName, ReservaEspacios.Correo, ReservaEspacios.IdDependencia AS IdDep, Dependencia.NombreDependencia, 
                        AsignacionReservaEspacios.IdEspacio , ISNULL(Espacio.NombreEspacio, 'Sin Asignar') AS NombreEspacio
FROM            ReservaEspacios INNER JOIN
                         TipoEvento ON ReservaEspacios.TipoEvento = TipoEvento.IdTipoEvento INNER JOIN
                         Espacio ON ReservaEspacios.IdEspacioSolicitado = Espacio.IdEspacio INNER JOIN
                         EstadoReservaEspacio ON ReservaEspacios.IdEstadoReservaEspacio = EstadoReservaEspacio.IdEstado INNER JOIN
                         Dependencia ON ReservaEspacios.IdDependencia = Dependencia.IdDependencia INNER JOIN
                         aspnet_Users ON ReservaEspacios.IdUsuarioSolicitante = aspnet_Users.UserId INNER JOIN
                         AsignacionReservaEspacios ON ReservaEspacios.IdReservaEspacio = AsignacionReservaEspacios.IdReserva LEFT OUTER JOIN
                         Espacio as Espacio2 ON AsignacionReservaEspacios.IdEspacio = Espacio.IdEspacio
WHERE       (ReservaEspacios.FechaReserva >= CONVERT(DATETIME, CONVERT(VARCHAR(10), GETDATE(), 103)))and(ReservaEspacios.IdEstadoReservaEspacio <> 4)  AND  ReservaEspacios.IdDependencia=@IdDependencia  
ORDER BY ReservaEspacios.FechaReserva, ReservaEspacios.Correo

ELSE
   IF @IdEspacio<>NULL AND @IdDependencia=NULL 
  
   SELECT        ReservaEspacios.IdReservaEspacio, ReservaEspacios.FechaRegistro, ReservaEspacios.TipoEvento, ReservaEspacios.HoraInicial, ReservaEspacios.HoraFinal, 
                         ReservaEspacios.IdPeriodo, ReservaEspacios.IdEspacioSolicitado, ReservaEspacios.Telefono, ReservaEspacios.Cupo, ReservaEspacios.NombreEvento, 
                         ReservaEspacios.Observaciones, ReservaEspacios.IdEstadoReservaEspacio, ReservaEspacios.Enviado, ReservaEspacios.CanceladoPor, 
                         ReservaEspacios.FechaCancelacion, ReservaEspacios.IdDependencia, ReservaEspacios.FechaReserva, ReservaEspacios.Responsable, 
                         ReservaEspacios.IdUsuarioSolicitante, TipoEvento.TipoEvento AS TipoEven,EstadoReservaEspacio.NombreEstado, 
                         aspnet_Users.UserName, ReservaEspacios.Correo, ReservaEspacios.IdDependencia AS IdDep, Dependencia.NombreDependencia, 
                        AsignacionReservaEspacios.IdEspacio , ISNULL(Espacio.NombreEspacio, 'Sin Asignar') AS NombreEspacio
FROM            ReservaEspacios INNER JOIN
                         TipoEvento ON ReservaEspacios.TipoEvento = TipoEvento.IdTipoEvento INNER JOIN
                         Espacio ON ReservaEspacios.IdEspacioSolicitado = Espacio.IdEspacio INNER JOIN
                         EstadoReservaEspacio ON ReservaEspacios.IdEstadoReservaEspacio = EstadoReservaEspacio.IdEstado INNER JOIN
                         Dependencia ON ReservaEspacios.IdDependencia = Dependencia.IdDependencia INNER JOIN
                         aspnet_Users ON ReservaEspacios.IdUsuarioSolicitante = aspnet_Users.UserId INNER JOIN
                         AsignacionReservaEspacios ON ReservaEspacios.IdReservaEspacio = AsignacionReservaEspacios.IdReserva LEFT OUTER JOIN
                         Espacio as Espacio2 ON AsignacionReservaEspacios.IdEspacio = Espacio.IdEspacio
WHERE       (ReservaEspacios.FechaReserva >= CONVERT(DATETIME, CONVERT(VARCHAR(10), GETDATE(), 103)))and(ReservaEspacios.IdEstadoReservaEspacio <> 4)  AND  AsignacionReservaEspacios.IdEspacio=@IdEspacio
   




	
	
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultaUsoPorServicio]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[ConsultaUsoPorServicio]
	@IdPeriodo as int,
	@IdDependencia AS INT
	
	
AS
BEGIN
DECLARE @FechaInicio DateTIME
DECLARE @FechaFin Datetime

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.


   
	SELECT @FechaInicio=FechaInicio,@FechaFin=FechaFinal
	FROM Periodo
	WHERE IdPeriodo=@IdPeriodo
	
	SELECT     TOP (100) PERCENT CategoriaEquipo.Categoria, SUM(ISNULL(Reserva.HoraFinal, 0) - ISNULL(Reserva.HoraInicial, 0)) AS HorasActivo 
                      
FROM         CategoriaEquipo FULL OUTER JOIN
                      Equipo ON CategoriaEquipo.IdCategoria = Equipo.IdCategoria FULL OUTER JOIN
                      Prestamo FULL OUTER JOIN
                      Reserva ON Prestamo.IdReserva = Reserva.IdReserva ON Equipo.IdEquipo = Prestamo.IdEquipo
WHERE     (Reserva.FechaReserva >= @FechaInicio) AND (Reserva.FechaReserva <= @FechaFin) AND (Equipo.IdCategoria <> 12) AND 
                      (Reserva.IdDependencia = @IdDependencia)
GROUP BY CategoriaEquipo.Categoria, Reserva.IdDependencia
ORDER BY CategoriaEquipo.Categoria
	
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultaUsoPorEquipo]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto Mal
-- Create date: 04/10/2010
-- Description:	Consulta Horas Uso de un Equipo en particular en un determinado año
-- =============================================
CREATE PROCEDURE [dbo].[ConsultaUsoPorEquipo]
	@IdCategoria int
AS
BEGIN

Declare @IdEquipo int
Declare @anios int
  
	Declare @Tablafinal TABLE
    (
    Total int,
    Serie Varchar(50),
    Almacen int,
    anios int
    )

 DECLARE @TablaAuxiliaranios TABLE
    (
    anios int
    )   
    
    
declare @TablaAuxiliarEquipo TABLE
(
IdEquipo int

)
 INSERT  @TablaAuxiliaranios
                (
                  anios
                )
                                
               SELECT DISTINCT Anio
               FROM Periodo where IdPeriodo<>8 and IdPeriodo<>10

INSERT @TablaAuxiliarEquipo(
IdEquipo
)
SELECT IdEquipo from Equipo where Equipo.IdCategoria=@IdCategoria

     
       DECLARE TablaAuxiliarAnios_Cursor CURSOR
       FOR SELECT  Anios
       FROM   @TablaAuxiliaranios 
        
        OPEN  TablaAuxiliarAnios_Cursor
        FETCH NEXT FROM  TablaAuxiliarAnios_Cursor INTO @anios


         WHILE @@FETCH_STATUS = 0
            BEGIN 
                
                 DECLARE TablaAuxiliarEquipo_Cursor CURSOR
                  FOR SELECT  IdEquipo FROM   @TablaAuxiliarEquipo 
                     OPEN  TablaAuxiliarEquipo_Cursor
                     FETCH NEXT FROM TablaAuxiliarEquipo_Cursor INTO @IdEquipo
                       WHILE @@FETCH_STATUS = 0
                        BEGIN 
                        
                         INSERT  @Tablafinal
                        (
                        Total,
                         Serie,
                         Almacen,
                         anios
                         )
                      
                        SELECT ISNULL( ( SELECT  
	
                        SUM(ISNULL(Reserva.HoraFinal, 0)
                            - ISNULL(Reserva.HoraInicial, 0)) AS HorasUso
                 FROM   Equipo
                        INNER JOIN Prestamo ON Equipo.IdEquipo = Prestamo.IdEquipo
                        INNER JOIN Reserva ON Prestamo.IdReserva = Reserva.IdReserva
                        RIGHT OUTER JOIN CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria
                 WHERE  dbo.CategoriaEquipo.IdCategoria = @IdCategoria and(DATEPART(YYYY, Reserva.FechaReserva)= @anios)and Equipo.IdEquipo=@IdEquipo
                 GROUP BY Equipo.IdEquipo
               
               ), 0) AS HorasUso, 
                 (SELECT Serie FROM dbo.Equipo WHERE IdEquipo= @IdEquipo) AS Equipo,
                 (SELECT IdAlmacen FROM dbo.Equipo WHERE IdEquipo= @IdEquipo) As Almacen,
                  @anios
                      
                      
                      
                        
                        FETCH NEXT FROM TablaAuxiliarEquipo_Cursor INTO @IdEquipo
                        end
                          CLOSE  TablaAuxiliarEquipo_Cursor
                          DEALLOCATE TablaAuxiliarEquipo_Cursor
                                                 
                           
                           
                           
            
            
            FETCH NEXT FROM TablaAuxiliarAnios_Cursor INTO @anios
            end
             CLOSE  TablaAuxiliarAnios_Cursor
             DEALLOCATE TablaAuxiliarAnios_Cursor
         Select Serie,Almacen,Total,anios From @Tablafinal
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultarMantenimiento]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ConsultarMantenimiento]
	AS
BEGIN


                      SELECT  distinct (Equipo.IdAlmacen)
FROM      HistorialNovedad INNER JOIN
                      TiposNovedad ON HistorialNovedad.IdTipoNovedad = TiposNovedad.IdTipoNovedad INNER JOIN
                      Equipo ON HistorialNovedad.IdEquipo = Equipo.IdEquipo INNER JOIN
                      CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria LEFT OUTER JOIN
                      DetalleNovedad ON HistorialNovedad.IdHistorialNovedad = DetalleNovedad.IdHistorialNovedad 
                      where (HistorialNovedad.IdTipoNovedad<>2) and (HistorialNovedad.IdTipoNovedad<>6)                  
              
 
 END
GO
/****** Object:  StoredProcedure [dbo].[ConsultaEquipos]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ConsultaEquipos]
	@IdCategoria int
AS
BEGIN
Declare @anios int


    DECLARE @TablaAuxiliaranios TABLE
    (
    anios int
    )        
    Declare @Tablafinal TABLE
    (
    Categoria Varchar(50),
    Serie Varchar(50),
    Almacen int,
    Total int,
    anios int
    )
    
     INSERT  @TablaAuxiliaranios
                (
                  anios
                )
                                
               SELECT DISTINCT Anio
               FROM Periodo 
           
        DECLARE TablaAuxiliarAnios_Cursor CURSOR
       FOR SELECT  Anios
       FROM   @TablaAuxiliaranios 
        
        OPEN  TablaAuxiliarAnios_Cursor
        FETCH NEXT FROM  TablaAuxiliarAnios_Cursor INTO @anios
        
          WHILE @@FETCH_STATUS = 0
            BEGIN 
              INSERT  @TablaFinal
                        (
                         Categoria,
                        Serie,
                         Almacen,
                         Total,
                         anios
                         
		                 )
               
            
            
SELECT        CategoriaEquipo.Categoria, Equipo.Serie, Equipo.IdAlmacen, SUM(ISNULL(Reserva.HoraFinal - Reserva.HoraInicial, 0)) AS TOTAL,@anios as anios
FROM            Reserva INNER JOIN
                         Prestamo ON Reserva.IdReserva = Prestamo.IdReserva RIGHT OUTER JOIN
                         Equipo INNER JOIN
                         CategoriaEquipo ON Equipo.IdCategoria = CategoriaEquipo.IdCategoria ON Prestamo.IdEquipo = Equipo.IdEquipo
WHERE        (Equipo.IdCategoria = @IdCategoria)and(DATEPART(YYYY, Reserva.FechaReserva)= @anios)
GROUP BY Equipo.IdEquipo, Equipo.Serie, Equipo.IdAlmacen,CategoriaEquipo.Categoria
 FETCH NEXT FROM TablaAuxiliarAnios_Cursor INTO @anios
  END 
  Select Categoria,Serie,Almacen,Total,anios From @Tablafinal
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultaAuditoriosUpdate]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ConsultaAuditoriosUpdate]
@IdReserva as int,
@HoraInicial as int,
@Horafinal as int,
@IdEspacio as int,
@FechaReserva as datetime
AS
BEGIN
Declare @Ret VARCHAR(max)=0
 DECLARE @instruccion VARCHAR(max)
 
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

if @IdEspacio=179 or @IdEspacio=180
BEGIN
SET @Ret=(SELECT COUNT(ReservaEspacios.IdReservaEspacio) AS Expr1
FROM            ReservaEspacios INNER JOIN
                         AsignacionReservaEspacios ON ReservaEspacios.IdReservaEspacio = AsignacionReservaEspacios.IdReserva
WHERE        (CONVERT(DATETIME, CONVERT(VARCHAR(10), ReservaEspacios.FechaReserva, 103)) = CONVERT(DATETIME, CONVERT(VARCHAR(10), @FechaReserva, 103))) AND
                          (AsignacionReservaEspacios.IdEspacio = 166) AND (@HoraInicial >= ReservaEspacios.HoraInicial) AND (@HoraInicial < ReservaEspacios.HoraFinal) AND 
                         (ReservaEspacios.IdReservaEspacio <> @IdReserva) AND (ReservaEspacios.IdEstadoReservaEspacio<>4) OR
                         (CONVERT(DATETIME, CONVERT(VARCHAR(10), ReservaEspacios.FechaReserva, 103)) = CONVERT(DATETIME, CONVERT(VARCHAR(10), @FechaReserva, 103))) AND 
                         (AsignacionReservaEspacios.IdEspacio = 166) AND (ReservaEspacios.IdReservaEspacio <> @IdReserva) AND (@HoraFinal > ReservaEspacios.HoraInicial) 
                         AND (@HoraFinal <= ReservaEspacios.HoraFinal)AND (ReservaEspacios.IdEstadoReservaEspacio<>4) OR  (ReservaEspacios.IdEstadoReservaEspacio<>4)
                         AND(CONVERT(DATETIME, CONVERT(VARCHAR(10), ReservaEspacios.FechaReserva, 103)) = CONVERT(DATETIME, CONVERT(VARCHAR(10), @FechaReserva, 103))) AND 
                         (AsignacionReservaEspacios.IdEspacio = 166) AND (@HoraInicial <= ReservaEspacios.HoraInicial) AND 
                         (ReservaEspacios.IdReservaEspacio <> @IdReserva) AND (@HoraFinal >= ReservaEspacios.HoraFinal))
                        

                   
   END
   
   ELSE 
   
   BEGIN
   IF @IdEspacio=166 
   
   BEGIN
 SET @Ret=(SELECT COUNT(ReservaEspacios.IdReservaEspacio) AS Expr1
FROM  ReservaEspacios INNER JOIN
                         AsignacionReservaEspacios ON ReservaEspacios.IdReservaEspacio = AsignacionReservaEspacios.IdReserva
WHERE        (CONVERT(DATETIME, CONVERT(VARCHAR(10), ReservaEspacios.FechaReserva, 103)) = CONVERT(DATETIME, CONVERT(VARCHAR(10), @FechaReserva, 103))) AND
                          (AsignacionReservaEspacios.IdEspacio = 179 OR AsignacionReservaEspacios.IdEspacio = 180  ) AND (@HoraInicial >= ReservaEspacios.HoraInicial) AND (@HoraInicial < ReservaEspacios.HoraFinal) AND 
                         (ReservaEspacios.IdReservaEspacio <> @IdReserva) AND (ReservaEspacios.IdEstadoReservaEspacio<>4) OR
                         (CONVERT(DATETIME, CONVERT(VARCHAR(10), ReservaEspacios.FechaReserva, 103)) = CONVERT(DATETIME, CONVERT(VARCHAR(10), @FechaReserva, 103))) AND 
                         (AsignacionReservaEspacios.IdEspacio = 179 OR AsignacionReservaEspacios.IdEspacio = 180 ) AND (ReservaEspacios.IdReservaEspacio <> @IdReserva) AND (@HoraFinal > ReservaEspacios.HoraInicial) 
                         AND (@HoraFinal <= ReservaEspacios.HoraFinal)AND (ReservaEspacios.IdEstadoReservaEspacio<>4) OR  (ReservaEspacios.IdEstadoReservaEspacio<>4)AND
                         (CONVERT(DATETIME, CONVERT(VARCHAR(10), ReservaEspacios.FechaReserva, 103)) = CONVERT(DATETIME, CONVERT(VARCHAR(10), @FechaReserva, 103))) AND 
                         (AsignacionReservaEspacios.IdEspacio = 179 OR AsignacionReservaEspacios.IdEspacio = 180 ) AND (@HoraInicial <= ReservaEspacios.HoraInicial) AND 
                         (ReservaEspacios.IdReservaEspacio <> @IdReserva) AND (@HoraFinal >= ReservaEspacios.HoraFinal))
                       
                         
   END
   
   
   
   END
   SELECT @Ret
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultaAuditoriosInsert]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[ConsultaAuditoriosInsert]
@HoraInicial as int,
@Horafinal as int,
@IdEspacio as int,
@FechaReserva as datetime
AS
BEGIN
Declare @Ret VARCHAR(max)=0
 DECLARE @instruccion VARCHAR(max)
 
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

if @IdEspacio=179 or @IdEspacio=180
BEGIN
SET @Ret=(SELECT COUNT(ReservaEspacios.IdReservaEspacio) AS Expr1
FROM            ReservaEspacios INNER JOIN
                         AsignacionReservaEspacios ON ReservaEspacios.IdReservaEspacio = AsignacionReservaEspacios.IdReserva
WHERE        (CONVERT(DATETIME, CONVERT(VARCHAR(10), ReservaEspacios.FechaReserva, 103)) = CONVERT(DATETIME, CONVERT(VARCHAR(10), @FechaReserva, 103))) AND
                          (AsignacionReservaEspacios.IdEspacio = 166) AND (@HoraInicial >= ReservaEspacios.HoraInicial) AND (@HoraInicial < ReservaEspacios.HoraFinal) AND (ReservaEspacios.IdEstadoReservaEspacio<>4) 
                          OR
                         (CONVERT(DATETIME, CONVERT(VARCHAR(10), ReservaEspacios.FechaReserva, 103)) = CONVERT(DATETIME, CONVERT(VARCHAR(10), @FechaReserva, 103))) AND 
                         (AsignacionReservaEspacios.IdEspacio = 166) AND (@HoraFinal > ReservaEspacios.HoraInicial) 
                         AND (@HoraFinal <= ReservaEspacios.HoraFinal)AND (ReservaEspacios.IdEstadoReservaEspacio<>4) OR (ReservaEspacios.IdEstadoReservaEspacio<>4)
                        AND (CONVERT(DATETIME, CONVERT(VARCHAR(10), ReservaEspacios.FechaReserva, 103)) = CONVERT(DATETIME, CONVERT(VARCHAR(10), @FechaReserva, 103))) AND 
                          (AsignacionReservaEspacios.IdEspacio = 166) AND (@HoraInicial <= ReservaEspacios.HoraInicial) AND 
                          (@HoraFinal >= ReservaEspacios.HoraFinal))
                        

                   
   END
   
   ELSE 
   
   BEGIN
   IF @IdEspacio=166 
   
   BEGIN
 SET @Ret=(SELECT COUNT(ReservaEspacios.IdReservaEspacio) AS Expr1
FROM  ReservaEspacios INNER JOIN
                         AsignacionReservaEspacios ON ReservaEspacios.IdReservaEspacio = AsignacionReservaEspacios.IdReserva
WHERE        (CONVERT(DATETIME, CONVERT(VARCHAR(10), ReservaEspacios.FechaReserva, 103)) = CONVERT(DATETIME, CONVERT(VARCHAR(10), @FechaReserva, 103))) AND
                          (AsignacionReservaEspacios.IdEspacio = 179 OR AsignacionReservaEspacios.IdEspacio = 180  ) AND (@HoraInicial >= ReservaEspacios.HoraInicial) AND (@HoraInicial < ReservaEspacios.HoraFinal)AND (ReservaEspacios.IdEstadoReservaEspacio<>4)  
                          OR
                         (CONVERT(DATETIME, CONVERT(VARCHAR(10), ReservaEspacios.FechaReserva, 103)) = CONVERT(DATETIME, CONVERT(VARCHAR(10), @FechaReserva, 103))) AND 
                         (AsignacionReservaEspacios.IdEspacio = 179 OR AsignacionReservaEspacios.IdEspacio = 180 ) AND  (@HoraFinal > ReservaEspacios.HoraInicial) 
                         AND (@HoraFinal <= ReservaEspacios.HoraFinal)AND (ReservaEspacios.IdEstadoReservaEspacio<>4) OR  (ReservaEspacios.IdEstadoReservaEspacio<>4)AND
                         (CONVERT(DATETIME, CONVERT(VARCHAR(10), ReservaEspacios.FechaReserva, 103)) = CONVERT(DATETIME, CONVERT(VARCHAR(10), @FechaReserva, 103))) AND 
                         (AsignacionReservaEspacios.IdEspacio = 179 OR AsignacionReservaEspacios.IdEspacio = 180 ) AND (@HoraInicial <= ReservaEspacios.HoraInicial) 
                          AND (@HoraFinal >= ReservaEspacios.HoraFinal))
                       
                         
   END
   
   
   
   END
   SELECT @Ret
END
GO
/****** Object:  StoredProcedure [dbo].[consulta]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[consulta]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  SELECT     TOP (100) PERCENT dbo.CategoriaEquipo.Categoria, SUM(ISNULL(dbo.Reserva.HoraFinal, 0) - ISNULL(dbo.Reserva.HoraInicial, 0)) AS HorasActivo, 
                      ISNULL(dbo.Reserva.IdDependencia, 0) AS IdDependencia
FROM         dbo.Prestamo INNER JOIN
                      dbo.Reserva ON dbo.Prestamo.IdReserva = dbo.Reserva.IdReserva INNER JOIN
                      dbo.Equipo ON dbo.Prestamo.IdEquipo = dbo.Equipo.IdEquipo RIGHT OUTER JOIN
                      dbo.CategoriaEquipo ON dbo.Equipo.IdCategoria = dbo.CategoriaEquipo.IdCategoria
GROUP BY dbo.CategoriaEquipo.Categoria, dbo.Reserva.IdDependencia, dbo.CategoriaEquipo.IdCategoria
HAVING      (dbo.CategoriaEquipo.IdCategoria <> 12)
ORDER BY dbo.CategoriaEquipo.Categoria
END
GO
/****** Object:  Table [dbo].[DetalleRepuesto]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleRepuesto](
	[IdRepuesto] [int] NOT NULL,
	[IdDetalle] [int] NOT NULL,
	[CostoRepuesto] [bigint] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Detalle_Repuesto] PRIMARY KEY CLUSTERED 
(
	[IdRepuesto] ASC,
	[IdDetalle] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[DescargarEquipo]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Roberto Mal>
-- Create date: <Create Date,17/07/2010,>
-- Description:	<Description,Actualiza la tabla prestamos,>
-- =============================================
CREATE PROCEDURE [dbo].[DescargarEquipo] 
	-- Add the parameters for the stored procedure here
	@FechaDevolucion DATETIME,
	@Recibe varchar(50),
	@IdEquipo int
AS
BEGIN
BEGIN TRY
		BEGIN TRANSACTION
	
	 UPDATE Prestamo
	SET
	FechaDevolucion = @FechaDevolucion,
	Recibe = @Recibe
	
	WHERE(Prestamo.IdEquipo=@IdEquipo)

   COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @IdEquipo = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
        SELECT @IdEquipo
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarSolicitud]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarSolicitud]
    @IdSolicitud as int,
    @Usuario as varchar(50)
AS
BEGIN

SET NOCOUNT ON;
DECLARE @Res as int
	
  BEGIN TRY
          BEGIN TRANSACTION   
                        
       UPDATE ReservaEspacios set IdEstadoReservaEspacio=4,CanceladoPor=@Usuario,FechaCancelacion=SYSDATETIME() 
       where IdReservaEspacio=@IdSolicitud 
      
       UPDATE AsignacionReservaEspacios set IdUsuarioModifico=@Usuario,FechaModificacion=SYSDATETIME() where 
       IdReserva=@IdSolicitud
             
          COMMIT TRANSACTION
		  SET @Res = 1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
           SET @res=-1 
            
        END CATCH  
      
      SELECT @res
       
END
GO
/****** Object:  Table [dbo].[AsignacionEspacio]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AsignacionEspacio](
	[IdAsignacion] [int] IDENTITY(1,1) NOT NULL,
	[IdEspacio] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[IdPeriodo] [int] NOT NULL,
	[IdUsuario] [nvarchar](256) NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[UsuarioModifico] [varchar](50) NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK__ASIGNACION_SALON__00551192] PRIMARY KEY CLUSTERED 
(
	[IdAsignacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_ASIGNACION_SALON] UNIQUE NONCLUSTERED 
(
	[IdHorario] ASC,
	[IdPeriodo] ASC,
	[IdEspacio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo identificador de la de la asignación.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionEspacio', @level2type=N'COLUMN',@level2name=N'IdAsignacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo identificador del salón.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionEspacio', @level2type=N'COLUMN',@level2name=N'IdEspacio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo identificador del horario o lapso. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionEspacio', @level2type=N'COLUMN',@level2name=N'IdHorario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo identificador de periodo al que pertenece la asignación.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionEspacio', @level2type=N'COLUMN',@level2name=N'IdPeriodo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del usuario que realiza la asignación.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionEspacio', @level2type=N'COLUMN',@level2name=N'IdUsuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Registro de la asignacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionEspacio', @level2type=N'COLUMN',@level2name=N'FechaRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuario que realizo modificacion sobre el registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionEspacio', @level2type=N'COLUMN',@level2name=N'UsuarioModifico'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha en la cual fue modificada la asignacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionEspacio', @level2type=N'COLUMN',@level2name=N'FechaModificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Esta tabla contiene todos los campos necesarios para determinar la asignación o el uso de  cada espacio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AsignacionEspacio'
GO
/****** Object:  StoredProcedure [dbo].[ActualizarPrestamo]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarPrestamo]
(
	@FechaDevolucion datetime,
	@Recibe varchar(50),
	@IdDevolucion int,
	@IdAlmacen int
	
)

AS
BEGIN
	  BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION
						DECLARE 	@IdPrestamo int
						DECLARE db_cursor CURSOR FOR



-- obtiene los id prestamo --
		
						SELECT     Prestamo.IdPrestamo
						FROM         Prestamo INNER JOIN
						Equipo ON Prestamo.IdEquipo = Equipo.IdEquipo
						WHERE     (Prestamo.IdDevolucion IS NULL) AND (Equipo.IdAlmacen = @IdAlmacen)
---bloque del cursor ---
							OPEN db_cursor

								FETCH NEXT FROM db_cursor INTO @IdPrestamo
								WHILE @@FETCH_STATUS = 0
									BEGIN
--- actualiza o descarga los equipos ------------
										UPDATE       Prestamo
										SET          FechaDevolucion = @FechaDevolucion, Recibe = @Recibe,IdDevolucion=@IdDevolucion
										WHERE       (IdPrestamo = @IdPrestamo)

								
	
								FETCH NEXT FROM db_cursor INTO @IdPrestamo
								END
							CLOSE db_cursor
							DEALLOCATE db_cursor
-----finaliza el cursor -----
             COMMIT TRANSACTION
		END TRY
		
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @IdPrestamo = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
		END CATCH
         return @IdPrestamo
        END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarHistorial]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ActualizarHistorial]
	@FechaNovedad as datetime,
	@IdTipoNovedad as int,
	@CostoMantenimiento as int=Null,
	@Detalle as Varchar(MAX),
	@IdEmpresa as int=Null,
	@IdTipoMantenimiento as int=Null,
	@IdDetalle as int,
	@IdHistorialNovedad as int
	
	
	
AS
BEGIN
	SET NOCOUNT ON;
 Declare @Ret int
	
  BEGIN TRY
          BEGIN TRANSACTION  
          
          UPDATE HistorialNovedad SET FechaNovedad=@FechaNovedad,IdTipoNovedad=@IdTipoNovedad where IdHistorialNovedad=@IdHistorialNovedad
          UPDATE DetalleNovedad SET CostoMantenimiento=@CostoMantenimiento,FechaDetalle=@FechaNovedad
          ,Detalle=@Detalle,IdEmpresa=@IdEmpresa,IdTipoMantenimiento=@IdTipoMantenimiento
           WHERE IdDetalle=@IdDetalle
         
          
          
            COMMIT TRANSACTION
			set @Ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @Ret=0
        END CATCH  
        select @Ret
   
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEspacioSolicitado]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[ActualizarEspacioSolicitado]

		
AS
BEGIN
	SET NOCOUNT ON;
 Declare @Ret int
	
  BEGIN TRY
          BEGIN TRANSACTION  
          
         Update ReservaEspacios set ReservaEspacios.IdEspacioSolicitado=(Select AsignacionReservaEspacios.IdEspacio from AsignacionReservaEspacios where AsignacionReservaEspacios.IdAsignacionReserva=ReservaEspacios.IdReservaEspacio)                   
           -- COMMIT TRANSACTION
			
			
		 select * from ReservaEspacios	
		 set @Ret=1
		   END TRY
    
   
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @Ret=0
        END CATCH  
        select @Ret
   
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarDetalleNovedad]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ActualizarDetalleNovedad]
    @CostoMantenimiento as Int,
    @CostoRepuesto AS int,
	@FechaDetalle as datetime,
	@Detalle as int,
	@IdRepuesto as int,
	@IdEmpresa as int,
	@IdHistorialNovedad as int,
	@UsuarioRegistro as varchar(50),
	@FechaRegistro as datetime,
	@UsuarioModifico as varchar(50),
	@FechaModificacion as datetime,
	@IdDetalle as int	
AS
BEGIN
SET NOCOUNT ON;

	
  BEGIN TRY
          BEGIN TRANSACTION  
          
          UPDATE DetalleNovedad SET CostoMantenimiento=@CostoMantenimiento,FechaDetalle=@FechaDetalle,
          Detalle=@Detalle,IdEmpresa=@IdEmpresa,IdHistorialNovedad=@IdHistorialNovedad,
           UsuarioRegistro=@UsuarioRegistro,FechaRegistro=@FechaRegistro,UsuarioModifico=@UsuarioModifico,FechaModificacion=@FechaModificacion
           
            where IdDetalle=@IdDetalle
          
          
            COMMIT TRANSACTION
			
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH  
       
	
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarSolicitudEspacio]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto Mal
-- Create date: 23/11/2010
-- Description:	Actualizar Solicitudes espacios temporales
-- =============================================
CREATE PROCEDURE [dbo].[ActualizarSolicitudEspacio]
	@Responsable as Varchar(80),
	@Telefono AS varchar(50),
	@Correo AS varchar(250),
	@IdDependencia AS int,
	@FechaReserva AS Datetime,
	@IdTipoEvento  AS int,
	@HoraInicial AS int,
	@HoraFinal AS int,
	@Cupo AS int,
	@NombreEvento AS varchar(50),
	@Observaciones AS VARCHAR(200),
	@IdEstadoReservaEspacio as int,
	@IdEspacioAsignado as int,
	@IdUsuario as varchar(50),
	@original_IdReservaEspacio AS int
	
AS
BEGIN

declare @Id int

	BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION

   
	UPDATE ReservaEspacios
	SET
	Correo=@Correo, 
	TipoEvento=@IdTipoEvento,
	HoraInicial=@HoraInicial,
	HoraFinal=@HoraFinal,
	Telefono=@Telefono,
	Cupo=@Cupo,
	NombreEvento=@NombreEvento,
	Observaciones=@Observaciones,
	IdEstadoReservaEspacio=@IdEstadoReservaEspacio,
	IdDependencia=@IdDependencia,
	FechaReserva=@FechaReserva,
	Responsable=@Responsable
	
	WHERE IdReservaEspacio=@original_IdReservaEspacio
	
	UPDATE AsignacionReservaEspacios SET IdEspacio=@IdEspacioAsignado,FechaModificacion=SYSDATETIME(),IdUsuarioModifico=@IdUsuario
	where IdReserva=@original_IdReservaEspacio
	
	--Ejecutamos el lote de Lote de opearaciones y transacciones
			COMMIT TRANSACTION
			 SET @Id = 1
			 
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
		    SET @Id=-1
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        SELECT  @Id
			
END
GO
/****** Object:  StoredProcedure [dbo].[Sancionar]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Henry Rodriguez
-- Create date: 27/10/2010
-- Description:	Sanciona las reservas que no fueron utilizadas.
-- =============================================

CREATE PROCEDURE [dbo].[Sancionar]
	--@idSancionCategoriaSancion INT = 5	
AS
BEGIN

--Variables a Utilizar
DECLARE @idSancionCategoriaSancion INT = 4	
DECLARE @TemIdReserva INT
DECLARE @Duracion INT
DECLARE @FechaFin DATE
DEClARE @Habilitada BIT

--Tabla temporal para almacenar las reservas que se van sancionar
DECLARE @TablaTemporal TABLE (IdReserva INT,HoraInicial INT, HoraFinal INT, IdUsuarioSolicitante UNIQUEIDENTIFIER)

--Se Establece si la sancion esta habilida o no
SET @Habilitada =  (SELECT     Sancion_CategoriaSancion.Habilitada
FROM         Sancion_CategoriaSancion
WHERE     (IdSancionCategoriaSancion = @idSancionCategoriaSancion))


IF (@Habilitada = 1)
            BEGIN
					--Se Establece la Duracion de la sanción teniendo en cuenta el idSancionCategoriaSancion
					SET @Duracion = (SELECT     Sancion.Duracion
					FROM       Sancion INNER JOIN
                      Sancion_CategoriaSancion ON Sancion.IdSancion = Sancion_CategoriaSancion.IdSancion
					WHERE     (Sancion_CategoriaSancion.IdSancionCategoriaSancion = @idSancionCategoriaSancion))

					--Se Suma la duración de la sancion a la fecha actual para estabalecer la fecha final de la sanción
					SET @FechaFin = DATEADD(day, @Duracion, SYSDATETIME())

					--Se llena la tabla temporal para los sancionados esta tiene la reservas que a la hora no se han usado
					INSERT INTO  @TablaTemporal 
					SELECT Reserva.IdReserva, Reserva.HoraInicial, Reserva.HoraFinal, Reserva.IdUsuarioSolicitante FROM dbo.Reserva LEFT OUTER JOIN
                         dbo.Prestamo ON Reserva.IdReserva = Prestamo.IdReserva WHERE 
					dbo.Reserva.FechaReserva =  CONVERT (date, SYSDATETIME()) AND dbo.Reserva.HoraInicial = DATEPART(hour, SYSDATETIME())
					AND (Prestamo.IdReserva IS NULL) AND dbo.Reserva.EstadoReserva = 1


					DECLARE TablaTemporal_Cursor CURSOR
					FOR SELECT  IdReserva
					FROM   @TablaTemporal
       
					OPEN TablaTemporal_Cursor

					FETCH NEXT FROM TablaTemporal_Cursor INTO @TemIdReserva
        
					WHILE @@FETCH_STATUS = 0
					BEGIN
       
                      INSERT  SancionAudiovisuales
                        (
							FechaInicio,
							FechaFin,
							IdReserva,
						    IdSancionCategoriaSancion,
						    Estado,
						    DeshabilitadoPor
		                 )
		                 SELECT SYSDATETIME(),
						  @FechaFin,
						  IdReserva,
						  @idSancionCategoriaSancion,
						  'True',
						  'siare'
						  FROM  @TablaTemporal  WHERE IdReserva = @TemIdReserva				  
        					
                          FETCH NEXT FROM TablaTemporal_Cursor INTO @TemIdReserva
		            END
            
				CLOSE  TablaTemporal_Cursor
				DEALLOCATE TablaTemporal_Cursor 
        
				SELECT IdReserva, HoraInicial, HoraFinal,IdUsuarioSolicitante   FROM @TablaTemporal            
			END   
            
END
GO
/****** Object:  View [dbo].[ReservaEspaciosSinAsignacion]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReservaEspaciosSinAsignacion]
AS
SELECT     TOP (100) PERCENT dbo.ReservaEspacios.IdReservaEspacio, dbo.TipoEvento.TipoEvento, dbo.Espacio.NombreEspacio AS NombreEspacioAsignado, 
                      Espacio_1.NombreEspacio AS NombreEspacioSolicitado, dbo.Dependencia.NombreDependencia, dbo.aspnet_Users.UserId, dbo.aspnet_Users.UserName, 
                      dbo.ReservaEspacios.IdEstadoReservaEspacio
FROM         dbo.aspnet_Users INNER JOIN
                      dbo.DependenciaUsuario ON dbo.aspnet_Users.UserId = dbo.DependenciaUsuario.IdUsuario INNER JOIN
                      dbo.DependenciaEspacio INNER JOIN
                      dbo.Dependencia ON dbo.DependenciaEspacio.IdDependencia = dbo.Dependencia.IdDependencia ON 
                      dbo.DependenciaUsuario.IdDependencia = dbo.Dependencia.IdDependencia FULL OUTER JOIN
                      dbo.AsignacionReservaEspacios INNER JOIN
                      dbo.Espacio ON dbo.AsignacionReservaEspacios.IdEspacio = dbo.Espacio.IdEspacio RIGHT OUTER JOIN
                      dbo.Espacio AS Espacio_1 RIGHT OUTER JOIN
                      dbo.ReservaEspacios INNER JOIN
                      dbo.TipoEvento ON dbo.ReservaEspacios.TipoEvento = dbo.TipoEvento.IdTipoEvento ON Espacio_1.IdEspacio = dbo.ReservaEspacios.IdEspacioSolicitado ON 
                      dbo.AsignacionReservaEspacios.IdReserva = dbo.ReservaEspacios.IdReservaEspacio ON dbo.DependenciaEspacio.IdEspacio = dbo.Espacio.IdEspacio
WHERE     (dbo.aspnet_Users.UserId = '082B7E22-EB90-4B81-AC3E-4F6FACC3FAA0')
ORDER BY dbo.ReservaEspacios.IdReservaEspacio
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[26] 4[3] 2[44] 3) )"
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
         Begin Table = "Espacio_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ReservaEspacios"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 152
               Right = 482
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "TipoEvento"
            Begin Extent = 
               Top = 6
               Left = 520
               Bottom = 110
               Right = 718
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "aspnet_Users"
            Begin Extent = 
               Top = 95
               Left = 621
               Bottom = 214
               Right = 819
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DependenciaUsuario"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 230
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DependenciaEspacio"
            Begin Extent = 
               Top = 152
               Left = 331
               Bottom = 256
               Right = 529
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Dependencia"
            Begin Extent = 
               Top = 234
               Left = 38
               Bottom = 323
               Right = 236
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReservaEspaciosSinAsignacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Espacio"
            Begin Extent = 
               Top = 363
               Left = 414
               Bottom = 482
               Right = 612
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AsignacionReservaEspacios"
            Begin Extent = 
               Top = 268
               Left = 693
               Bottom = 387
               Right = 891
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1500
         Width = 3195
         Width = 3735
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3045
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReservaEspaciosSinAsignacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReservaEspaciosSinAsignacion'
GO
/****** Object:  StoredProcedure [dbo].[QuitarSancionesAudiovisuales]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Henry Rodriguez
-- Create date: 29/10/2010
-- Description:	Quita las sanciones de audiovisuales que ya se vencieron.
-- =============================================

CREATE PROCEDURE [dbo].[QuitarSancionesAudiovisuales]
	--@idSancionCategoriaSancion INT = 5	
AS
	BEGIN	
		
		DECLARE @_IdSancionAudiovisuales INT
			
		BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION   
     
				--Realizando insercción
				UPDATE SancionAudiovisuales
				
				SET Estado = 'False'		
									
				WHERE ( CONVERT (date, FechaFin) = CONVERT (date, SYSDATETIME()))				
              
			--Ejecutamos el lote de Lote de opearaciones y transacciones
			COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @_IdSancionAudiovisuales = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
      SELECT @_IdSancionAudiovisuales
    END
GO
/****** Object:  View [dbo].[ReservasEspaciosConAsignacion]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReservasEspaciosConAsignacion]
AS
SELECT     TOP (100) PERCENT dbo.ReservaEspacios.IdReservaEspacio, dbo.TipoEvento.TipoEvento, dbo.Espacio.NombreEspacio AS NombreEspacioAsignado, 
                      Espacio_1.NombreEspacio AS NombreEspacioSolicitado, dbo.Dependencia.NombreDependencia, dbo.aspnet_Users.UserId, dbo.aspnet_Users.UserName, 
                      dbo.ReservaEspacios.IdEstadoReservaEspacio
FROM         dbo.Espacio AS Espacio_1 RIGHT OUTER JOIN
                      dbo.ReservaEspacios INNER JOIN
                      dbo.TipoEvento ON dbo.ReservaEspacios.TipoEvento = dbo.TipoEvento.IdTipoEvento ON 
                      Espacio_1.IdEspacio = dbo.ReservaEspacios.IdEspacioSolicitado LEFT OUTER JOIN
                      dbo.aspnet_Users INNER JOIN
                      dbo.DependenciaUsuario ON dbo.aspnet_Users.UserId = dbo.DependenciaUsuario.IdUsuario INNER JOIN
                      dbo.DependenciaEspacio INNER JOIN
                      dbo.Dependencia ON dbo.DependenciaEspacio.IdDependencia = dbo.Dependencia.IdDependencia ON 
                      dbo.DependenciaUsuario.IdDependencia = dbo.Dependencia.IdDependencia INNER JOIN
                      dbo.Espacio ON dbo.DependenciaEspacio.IdEspacio = dbo.Espacio.IdEspacio RIGHT OUTER JOIN
                      dbo.AsignacionReservaEspacios ON dbo.Espacio.IdEspacio = dbo.AsignacionReservaEspacios.IdEspacio ON 
                      dbo.ReservaEspacios.IdReservaEspacio = dbo.AsignacionReservaEspacios.IdReserva
WHERE     (dbo.aspnet_Users.UserId = '082B7E22-EB90-4B81-AC3E-4F6FACC3FAA0')
ORDER BY dbo.ReservaEspacios.IdReservaEspacio
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[8] 2[19] 3) )"
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
         Begin Table = "ReservaEspacios"
            Begin Extent = 
               Top = 0
               Left = 349
               Bottom = 122
               Right = 547
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "TipoEvento"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Espacio"
            Begin Extent = 
               Top = 136
               Left = 332
               Bottom = 255
               Right = 530
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DependenciaEspacio"
            Begin Extent = 
               Top = 64
               Left = 834
               Bottom = 168
               Right = 1032
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Dependencia"
            Begin Extent = 
               Top = 198
               Left = 572
               Bottom = 287
               Right = 770
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "aspnet_Users"
            Begin Extent = 
               Top = 289
               Left = 596
               Bottom = 408
               Right = 794
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DependenciaUsuario"
            Begin Extent = 
               Top = 178
               Left = 813
               Bottom = 282
               Right = 1011
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReservasEspaciosConAsignacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AsignacionReservaEspacios"
            Begin Extent = 
               Top = 108
               Left = 27
               Bottom = 227
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Espacio_1"
            Begin Extent = 
               Top = 0
               Left = 621
               Bottom = 119
               Right = 819
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 2325
         Width = 2820
         Width = 2640
         Width = 1695
         Width = 1500
         Width = 2670
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2760
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReservasEspaciosConAsignacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReservasEspaciosConAsignacion'
GO
/****** Object:  StoredProcedure [dbo].[ReporteAdmisiones]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ReporteAdmisiones]
 @FechaInicial DATETIME='01/12/2011',
 @FechaFinal DATETIME='31/12/2011',
 @CodigoPrograma INT=NULL,
 @Semestre INT=NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
	
                      
    SELECT Historial_Ajuste_Horario.CodPrograma AS CodProgramaAnterior , Historial_Ajuste_Horario.JornadaPrograma AS JornadaProgramaAnterior, Historial_Ajuste_Horario.PlanEstudio PlanEstudioAnterior, Historial_Ajuste_Horario.CodUnidadAcademica AS CodUnidadAcademicaAnterior , Historial_Ajuste_Horario.NombreMateria AS NombreMateriaAnterior ,
 Historial_Ajuste_Horario.ConsecutivoCurso AS ConsecutivocursoAnterior ,Historial_Ajuste_Horario.Semestre SemestreAnterior, 
                      Historial_Ajuste_Horario.CodigoMateria AS CodigoMateriaAnterior , Historial_Ajuste_Horario.IdDocente AS IdDocenteAnterior ,  Historial_Ajuste_Horario.NumeroGrupo AS NumeroGrupoAnterior ,  Historial_Ajuste_Horario.TipoGrupo AS TipoGrupoAnterior ,  Historial_Ajuste_Horario.NombreElectiva AS NombreElectivaAnterior ,  Historial_Ajuste_Horario.Capacidad  AS CapacidadAnterior ,  Historial_Ajuste_Horario.Dia AS DiaAnterior , 
                       Historial_Ajuste_Horario.HoraInicial AS HoraInicialAnterior ,  Historial_Ajuste_Horario.HoraFinal AS HoraFinalAnterior ,  Historial_Ajuste_Horario.FechaRegistro AS FechaRegistroAnterior ,  
                      Grupo.IdDocente AS IdDocenteNuevo, Grupo.NumeroGrupo AS NumeroGrupoNuevo, Grupo.TipoGrupo AS TipoGrupoNuevo, Grupo.NombreElectiva AS NombreElectivaNuevo, Grupo.Capacidad AS CapacidadNuevo, Horario.Dia DiaNuevo, 
                      Horario.HoraInicial AS HoraInicialNuevo, Horario.HoraFinal AS HoraFinalNuevo , Historial_Ajuste_Horario.TipoTransaccion
                      
FROM        
 Historial_Ajuste_Horario 
LEFT JOIN Materia ON dbo.Historial_Ajuste_Horario.CodigoMateria = dbo.Materia.CodigoMateria 
AND dbo.Historial_Ajuste_Horario.PlanEstudio = dbo.Materia.IdPlanEstudio
AND dbo.Historial_Ajuste_Horario.IdMateria = dbo.Materia.IdMateria
AND dbo.Historial_Ajuste_Horario.CodUnidadAcademica = dbo.Materia.CodUnidadAcademica
AND dbo.Historial_Ajuste_Horario.ConsecutivoCurso = dbo.Materia.ConsecutivoCurso
AND dbo.Historial_Ajuste_Horario.Semestre = dbo.Materia.Semestre
AND dbo.Historial_Ajuste_Horario.IdPrograma = dbo.Materia.IdPrograma
AND dbo.Historial_Ajuste_Horario.CodigoMateria = dbo.Materia.CodigoMateria
LEFT JOIN dbo.Programa ON dbo.Historial_Ajuste_Horario.IdPrograma= dbo.Programa.IdPrograma
AND		dbo.Historial_Ajuste_Horario.CodPrograma=dbo.Programa.CodigoPrograma
AND dbo.Historial_Ajuste_Horario.JornadaPrograma=dbo.Programa.Jornada
LEFT JOIN dbo.Grupo ON dbo.Historial_Ajuste_Horario.IdGrupo=dbo.Grupo.IdGrupo
LEFT JOIN dbo.Horario ON dbo.Historial_Ajuste_Horario.IdHorario=dbo.Horario.IdHorario



WHERE     (CONVERT(VARCHAR(10), Historial_Ajuste_Horario.FechaRegistro, 103) >= CONVERT(VARCHAR(10), @FechaInicial, 103)) AND (CONVERT(VARCHAR(10), Historial_Ajuste_Horario.FechaRegistro, 103) 
                      <= CONVERT(VARCHAR(10), @FechaFinal, 103)) AND (Historial_Ajuste_Horario.CodPrograma = ISNULL(@CodigoPrograma,Historial_Ajuste_Horario.CodPrograma)) AND (Historial_Ajuste_Horario.Semestre = ISNULL(@Semestre, Historial_Ajuste_Horario.Semestre))
ORDER BY CodPrograma                  
                      
                      
                      
                      
                    
                      
	    -- Insert statements for procedure here
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[UsoPorDependencia]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create FUNCTION [dbo].[UsoPorDependencia]
(	
	-- Add the parameters for the function here
	-- Add the parameters for the function here
	@FechaInicio as datetime, 
	@FechaFin as datetime,
	@IdDependencia as int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	 SELECT     TOP (100) PERCENT dbo.CategoriaEquipo.Categoria, SUM(ISNULL(dbo.Reserva.HoraFinal, 0) - ISNULL(dbo.Reserva.HoraInicial, 0)) AS HorasActivo, 
                      ISNULL(dbo.Reserva.IdDependencia, 0) AS IdDependencia
FROM         dbo.Prestamo INNER JOIN
                      dbo.Reserva ON dbo.Prestamo.IdReserva = dbo.Reserva.IdReserva INNER JOIN
                      dbo.Equipo ON dbo.Prestamo.IdEquipo = dbo.Equipo.IdEquipo RIGHT OUTER JOIN
                      dbo.CategoriaEquipo ON dbo.Equipo.IdCategoria = dbo.CategoriaEquipo.IdCategoria
                      where dbo.Reserva.FechaReserva >= @FechaInicio AND dbo.Reserva.FechaReserva <=@FechaFin AND dbo.Equipo.IdCategoria<>12 AND dbo.Reserva.IdDependencia=@IdDependencia
GROUP BY dbo.CategoriaEquipo.Categoria, dbo.Reserva.IdDependencia
ORDER BY dbo.CategoriaEquipo.Categoria
)
GO
/****** Object:  View [dbo].[vistaprueba]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaprueba]
AS
SELECT     TOP (100) PERCENT dbo.CategoriaEquipo.Categoria
FROM         dbo.Prestamo RIGHT OUTER JOIN
                      dbo.CategoriaEquipo LEFT OUTER JOIN
                      dbo.Equipo ON dbo.CategoriaEquipo.IdCategoria = dbo.Equipo.IdCategoria ON dbo.Prestamo.IdEquipo = dbo.Equipo.IdEquipo
GROUP BY dbo.CategoriaEquipo.Categoria
ORDER BY dbo.CategoriaEquipo.Categoria
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[36] 4[26] 2[15] 3) )"
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
         Begin Table = "Prestamo"
            Begin Extent = 
               Top = 0
               Left = 533
               Bottom = 175
               Right = 731
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CategoriaEquipo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Equipo"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 236
               Right = 473
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 3660
         Width = 2790
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 3705
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaprueba'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaprueba'
GO
/****** Object:  View [dbo].[VistaHistorialNovedad]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaHistorialNovedad]
AS
SELECT     dbo.HistorialNovedad.IdHistorialNovedad, dbo.HistorialNovedad.IdEquipo, dbo.HistorialNovedad.FechaNovedad, dbo.HistorialNovedad.IdTipoNovedad, 
                      dbo.HistorialNovedad.UsuarioRegistro, dbo.HistorialNovedad.FechaRegistro, dbo.DetalleNovedad.IdDetalle, dbo.DetalleNovedad.CostoMantenimiento, 
                      dbo.DetalleNovedad.FechaDetalle, dbo.DetalleNovedad.Detalle, dbo.DetalleNovedad.IdEmpresa, dbo.DetalleNovedad.IdHistorialNovedad AS DetalleIdHistorial, 
                      dbo.DetalleNovedad.UsuarioRegistro AS DetalleUsuario, dbo.DetalleNovedad.FechaRegistro AS DetalleFechaRegistro, dbo.DetalleNovedad.UsuarioModifico, 
                      dbo.DetalleNovedad.FechaModificacion, dbo.DetalleNovedad.IdTipoMantenimiento
FROM         dbo.HistorialNovedad INNER JOIN
                      dbo.DetalleNovedad ON dbo.HistorialNovedad.IdHistorialNovedad = dbo.DetalleNovedad.IdHistorialNovedad
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[11] 3) )"
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
         Begin Table = "HistorialNovedad"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 240
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DetalleNovedad"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 252
               Right = 472
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
      Begin ColumnWidths = 18
         Width = 284
         Width = 1950
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaHistorialNovedad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaHistorialNovedad'
GO
/****** Object:  View [dbo].[Vista_consultasolicitudreserva_BORRAR]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vista_consultasolicitudreserva_BORRAR]
AS
SELECT     TOP (100) PERCENT dbo.ReservaEspacios.IdReservaEspacio, dbo.TipoEvento.TipoEvento, dbo.Espacio.NombreEspacio AS NombreEspacioAsignado, 
                      Espacio_1.NombreEspacio AS NombreEspacioSolicitado, dbo.Dependencia.NombreDependencia, dbo.aspnet_Users.UserId, dbo.aspnet_Users.UserName, 
                      dbo.ReservaEspacios.IdEstadoReservaEspacio
FROM         dbo.Espacio AS Espacio_1 RIGHT OUTER JOIN
                      dbo.ReservaEspacios INNER JOIN
                      dbo.TipoEvento ON dbo.ReservaEspacios.TipoEvento = dbo.TipoEvento.IdTipoEvento ON 
                      Espacio_1.IdEspacio = dbo.ReservaEspacios.IdEspacioSolicitado LEFT OUTER JOIN
                      dbo.aspnet_Users INNER JOIN
                      dbo.DependenciaUsuario ON dbo.aspnet_Users.UserId = dbo.DependenciaUsuario.IdUsuario INNER JOIN
                      dbo.DependenciaEspacio INNER JOIN
                      dbo.Dependencia ON dbo.DependenciaEspacio.IdDependencia = dbo.Dependencia.IdDependencia ON 
                      dbo.DependenciaUsuario.IdDependencia = dbo.Dependencia.IdDependencia INNER JOIN
                      dbo.Espacio ON dbo.DependenciaEspacio.IdEspacio = dbo.Espacio.IdEspacio RIGHT OUTER JOIN
                      dbo.AsignacionReservaEspacios ON dbo.Espacio.IdEspacio = dbo.AsignacionReservaEspacios.IdEspacio ON 
                      dbo.ReservaEspacios.IdReservaEspacio = dbo.AsignacionReservaEspacios.IdReserva
WHERE     (dbo.aspnet_Users.UserId = '082B7E22-EB90-4B81-AC3E-4F6FACC3FAA0')
ORDER BY dbo.ReservaEspacios.IdReservaEspacio
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[36] 4[3] 2[15] 3) )"
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
         Begin Table = "Espacio_1"
            Begin Extent = 
               Top = 0
               Left = 621
               Bottom = 119
               Right = 819
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ReservaEspacios"
            Begin Extent = 
               Top = 0
               Left = 349
               Bottom = 122
               Right = 547
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "TipoEvento"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "aspnet_Users"
            Begin Extent = 
               Top = 289
               Left = 596
               Bottom = 408
               Right = 794
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DependenciaUsuario"
            Begin Extent = 
               Top = 178
               Left = 813
               Bottom = 282
               Right = 1011
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DependenciaEspacio"
            Begin Extent = 
               Top = 64
               Left = 834
               Bottom = 168
               Right = 1032
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Dependencia"
            Begin Extent = 
               Top = 198
               Left = 572
               Bottom = 287
               Right = 770
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vista_consultasolicitudreserva_BORRAR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Espacio"
            Begin Extent = 
               Top = 136
               Left = 332
               Bottom = 255
               Right = 530
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AsignacionReservaEspacios"
            Begin Extent = 
               Top = 108
               Left = 27
               Bottom = 227
               Right = 225
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 2325
         Width = 2820
         Width = 2640
         Width = 1695
         Width = 1500
         Width = 2670
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2760
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vista_consultasolicitudreserva_BORRAR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vista_consultasolicitudreserva_BORRAR'
GO
/****** Object:  View [dbo].[VHoraUsoEquipos]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VHoraUsoEquipos]
AS
SELECT     TOP (100) PERCENT dbo.CategoriaEquipo.Categoria, SUM(ISNULL(dbo.Reserva.HoraFinal, 0) - ISNULL(dbo.Reserva.HoraInicial, 0)) AS HorasActivo, 
                      ISNULL(dbo.Reserva.IdDependencia, 0) AS IdDependencia
FROM         dbo.Prestamo INNER JOIN
                      dbo.Reserva ON dbo.Prestamo.IdReserva = dbo.Reserva.IdReserva INNER JOIN
                      dbo.Equipo ON dbo.Prestamo.IdEquipo = dbo.Equipo.IdEquipo RIGHT OUTER JOIN
                      dbo.CategoriaEquipo ON dbo.Equipo.IdCategoria = dbo.CategoriaEquipo.IdCategoria
GROUP BY dbo.CategoriaEquipo.Categoria, dbo.Reserva.IdDependencia
ORDER BY dbo.CategoriaEquipo.Categoria
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[26] 4[25] 2[19] 3) )"
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
         Begin Table = "Prestamo"
            Begin Extent = 
               Top = 16
               Left = 481
               Bottom = 190
               Right = 679
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Reserva"
            Begin Extent = 
               Top = 5
               Left = 726
               Bottom = 252
               Right = 933
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "CategoriaEquipo"
            Begin Extent = 
               Top = 188
               Left = 110
               Bottom = 277
               Right = 308
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Equipo"
            Begin Extent = 
               Top = 4
               Left = 187
               Bottom = 123
               Right = 390
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 2715
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 4380
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
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VHoraUsoEquipos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VHoraUsoEquipos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VHoraUsoEquipos'
GO
/****** Object:  StoredProcedure [dbo].[ValidarCruce]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Roberto Mal
-- Create date: 15/02/2011
-- Description:	Valida el cruce de un evento con una asignacion de espacio
-- =============================================
CREATE PROCEDURE [dbo].[ValidarCruce]
	-- Add the parameters for the stored procedure here
	@IdPeriodo as int,
	@IdEspacioSolicitado as int,
	@HoraInicio as int,
	@HoraFin as int,
	@Dia as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     COUNT(AsignacionEspacio.IdAsignacion) AS Conteo
FROM         AsignacionEspacio INNER JOIN
                      Espacio ON AsignacionEspacio.IdEspacio = Espacio.IdEspacio INNER JOIN
                      Grupo INNER JOIN
                      Horario ON Grupo.IdGrupo = Horario.IdGrupo INNER JOIN
                      Materia ON Grupo.IdMateria = Materia.IdMateria INNER JOIN
                      Programa ON Materia.IdPrograma = Programa.IdPrograma ON AsignacionEspacio.IdHorario = Horario.IdHorario
WHERE     (Horario.Dia = @Dia) AND (AsignacionEspacio.IdEspacio = @IdEspacioSolicitado) AND (@HoraInicio >= Horario.HoraInicial) AND (@HoraInicio < Horario.HoraFinal) 
                      AND (AsignacionEspacio.IdPeriodo = @IdPeriodo) OR
                      (Horario.Dia = @Dia) AND (AsignacionEspacio.IdEspacio = @IdEspacioSolicitado) AND (@HoraFin > Horario.HoraInicial) AND (@HoraFin <= Horario.HoraFinal) AND 
                      (AsignacionEspacio.IdPeriodo = @IdPeriodo) OR
                      (Horario.Dia = @Dia) AND (AsignacionEspacio.IdEspacio = @IdEspacioSolicitado) AND (@HoraInicio <= Horario.HoraInicial) AND (@HoraFin >= Horario.HoraFinal) AND 
                      (AsignacionEspacio.IdPeriodo = @IdPeriodo)
                                             
END
GO
/****** Object:  View [dbo].[VHorasUsoEquipoDependencia]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VHorasUsoEquipoDependencia]
AS
SELECT     TOP (100) PERCENT dbo.Dependencia.NombreDependencia, SUM(ISNULL(dbo.VHoraUsoEquipos.HorasActivo, 0)) AS Expr1
FROM         dbo.VHoraUsoEquipos RIGHT OUTER JOIN
                      dbo.Dependencia ON dbo.VHoraUsoEquipos.IdDependencia = dbo.Dependencia.IdDependencia
GROUP BY dbo.Dependencia.NombreDependencia
ORDER BY dbo.Dependencia.NombreDependencia, SUM(dbo.VHoraUsoEquipos.HorasActivo)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[27] 4[12] 2[20] 3) )"
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
         Begin Table = "VHoraUsoEquipos"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Dependencia"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 95
               Right = 472
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 4680
         Width = 3510
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VHorasUsoEquipoDependencia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VHorasUsoEquipoDependencia'
GO
/****** Object:  StoredProcedure [dbo].[AjusteInsertarHorario]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriel G. Barrios Martinez
-- Create date: 09 Dic 2011
-- Description:	Inserta crecacion de nuevos grupos en epoca de ajuste
-- =============================================
CREATE PROCEDURE [dbo].[AjusteInsertarHorario] 
	-- Add the parameters for the stored procedure here
	@IdHorario int,
	@FechaRegistro datetime,
	@Usuario nvarchar(50)
	

	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	declare @IdHistorialAjuste int
	declare @Transaccion nvarchar(50) = 'AgregarHorario'
	
	BEGIN TRY
	
	--Lote de opearaciones y transacciones
			BEGIN TRANSACTION   
	
	Insert Into historial_Ajuste_Horario (IdPrograma,CodPrograma,JornadaPrograma,PlanEstudio,IdMateria,NombreMateria,CodUnidadAcademica,ConsecutivoCurso,Semestre,CodigoMateria,IdGrupo,IdPeriodo, IdDocente,NumeroGrupo,TipoGrupo,Capacidad,NombreElectiva,IdHorario, Dia, HoraInicial, HoraFinal, NombreEspacio,TipoTransaccion,FechaRegistro,Usuario) 
	SELECT     Programa.IdPrograma, Programa.CodigoPrograma, Programa.Jornada, PlanPrograma.IdPlanEstudio, Materia.IdMateria, Materia.NombreMateria, 
                      Materia.CodUnidadAcademica, Materia.ConsecutivoCurso, Materia.Semestre, Materia.CodigoMateria, Grupo.IdGrupo, Grupo.IdPeriodo, Grupo.IdDocente, 
                      Grupo.NumeroGrupo, Grupo.TipoGrupo, Grupo.Capacidad, Grupo.NombreElectiva, Horario.IdHorario, Horario.Dia, Horario.HoraInicial, Horario.HoraFinal, 
                      Espacio.NombreEspacio,@Transaccion as transaccion,@FechaRegistro as FechaRegistro, @Usuario as Usuario
FROM         Espacio INNER JOIN
                      AsignacionEspacio ON Espacio.IdEspacio = AsignacionEspacio.IdEspacio RIGHT OUTER JOIN
                      Programa INNER JOIN
                      PlanPrograma ON Programa.IdPrograma = PlanPrograma.IdPrograma INNER JOIN
                      Materia ON PlanPrograma.IdPlanEstudio = Materia.IdPlanEstudio AND PlanPrograma.IdPrograma = Materia.IdPrograma INNER JOIN
                      Grupo ON Materia.IdMateria = Grupo.IdMateria INNER JOIN
                      Horario ON Grupo.IdGrupo = Horario.IdGrupo ON AsignacionEspacio.IdHorario = Horario.IdHorario
                      where Horario.IdHorario = @IdHorario

--Capturamos el Id del nuevo registro	
				SET @IdHistorialAjuste = IDENT_CURRENT('[historial_Ajuste_Horario]')
				COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @IdHistorialAjuste = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        --SELECT  @IdHistorialAjuste  
     
    END
GO
/****** Object:  StoredProcedure [dbo].[AjusteEliminarHorario]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriel G. Barrios Martinez
-- Create date: 09 Dic 2011
-- Description:	Inserta crecacion de nuevos grupos en epoca de ajuste
-- =============================================
CREATE PROCEDURE [dbo].[AjusteEliminarHorario] 
	-- Add the parameters for the stored procedure here
	@IdHorario int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	declare @IdHistorialAjuste int
	declare @Transaccion nvarchar(50) = 'EliminarHorario'
	
	BEGIN TRY
	
	--Lote de opearaciones y transacciones
			BEGIN TRANSACTION   
	
	Insert Into historial_Ajuste_Horario (IdPrograma,CodPrograma,JornadaPrograma,PlanEstudio,IdMateria,NombreMateria,CodUnidadAcademica,ConsecutivoCurso,Semestre,CodigoMateria,IdGrupo,IdPeriodo, IdDocente,NumeroGrupo,TipoGrupo,Capacidad,NombreElectiva,IdHorario, Dia, HoraInicial, HoraFinal, NombreEspacio,TipoTransaccion,FechaRegistro,Usuario) 
		SELECT     Programa.IdPrograma, Programa.CodigoPrograma, Programa.Jornada, PlanPrograma.IdPlanEstudio, Materia.IdMateria, Materia.NombreMateria, 
                      Materia.CodUnidadAcademica, Materia.ConsecutivoCurso, Materia.Semestre, Materia.CodigoMateria, Grupo.IdGrupo, Grupo.IdPeriodo, Grupo.IdDocente, 
                      Grupo.NumeroGrupo, Grupo.TipoGrupo, Grupo.Capacidad, Grupo.NombreElectiva, Horario.IdHorario, Horario.Dia, Horario.HoraInicial, Horario.HoraFinal, 
                      Espacio.NombreEspacio, @Transaccion as transaccion, SYSDATETIME(), Horario.Usuario
FROM         Espacio INNER JOIN
                      AsignacionEspacio ON Espacio.IdEspacio = AsignacionEspacio.IdEspacio RIGHT OUTER JOIN
                      Programa INNER JOIN
                      PlanPrograma ON Programa.IdPrograma = PlanPrograma.IdPrograma INNER JOIN
                      Materia ON PlanPrograma.IdPlanEstudio = Materia.IdPlanEstudio AND PlanPrograma.IdPrograma = Materia.IdPrograma INNER JOIN
                      Grupo ON Materia.IdMateria = Grupo.IdMateria INNER JOIN
                      Horario ON Grupo.IdGrupo = Horario.IdGrupo ON AsignacionEspacio.IdHorario = Horario.IdHorario
WHERE     (Horario.IdHorario = @IdHorario)

--Capturamos el Id del nuevo registro	
				SET @IdHistorialAjuste = IDENT_CURRENT('[historial_Ajuste_Horario]')
				COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @IdHistorialAjuste = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        --SELECT  @IdHistorialAjuste  
     
    END
GO
/****** Object:  StoredProcedure [dbo].[AjusteCambioEspacio]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriel G. Barrios Martinez
-- Create date: 09 Dic 2011
-- Description:	Inserta crecacion de nuevos grupos en epoca de ajuste
-- =============================================
CREATE PROCEDURE [dbo].[AjusteCambioEspacio]
	-- Add the parameters for the stored procedure here
	@IdHorario int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	declare @IdHistorialAjuste int
	declare @Transaccion nvarchar(50) = 'CambioSalon'
	
	BEGIN TRY
	
	--Lote de opearaciones y transacciones
			BEGIN TRANSACTION   
	
	Insert Into historial_Ajuste_Horario (IdPrograma,CodPrograma,JornadaPrograma,PlanEstudio,IdMateria,NombreMateria,CodUnidadAcademica,ConsecutivoCurso,Semestre,CodigoMateria,IdGrupo,IdPeriodo, IdDocente,NumeroGrupo,TipoGrupo,Capacidad,NombreElectiva,IdHorario, Dia, HoraInicial, HoraFinal, NombreEspacio,TipoTransaccion,FechaRegistro,Usuario) 
		SELECT     Programa.IdPrograma, Programa.CodigoPrograma, Programa.Jornada, PlanPrograma.IdPlanEstudio, Materia.IdMateria, Materia.NombreMateria, 
                      Materia.CodUnidadAcademica, Materia.ConsecutivoCurso, Materia.Semestre, Materia.CodigoMateria, Grupo.IdGrupo, Grupo.IdPeriodo, Grupo.IdDocente, 
                      Grupo.NumeroGrupo, Grupo.TipoGrupo, Grupo.Capacidad, Grupo.NombreElectiva, Horario.IdHorario, Horario.Dia, Horario.HoraInicial, Horario.HoraFinal, 
                      Espacio.NombreEspacio, @Transaccion as transaccion, SYSDATETIME(), Horario.Usuario
FROM         Espacio INNER JOIN
                      AsignacionEspacio ON Espacio.IdEspacio = AsignacionEspacio.IdEspacio RIGHT OUTER JOIN
                      Programa INNER JOIN
                      PlanPrograma ON Programa.IdPrograma = PlanPrograma.IdPrograma INNER JOIN
                      Materia ON PlanPrograma.IdPlanEstudio = Materia.IdPlanEstudio AND PlanPrograma.IdPrograma = Materia.IdPrograma INNER JOIN
                      Grupo ON Materia.IdMateria = Grupo.IdMateria INNER JOIN
                      Horario ON Grupo.IdGrupo = Horario.IdGrupo ON AsignacionEspacio.IdHorario = Horario.IdHorario
WHERE     (Horario.IdHorario = @IdHorario)

--Capturamos el Id del nuevo registro	
				SET @IdHistorialAjuste = IDENT_CURRENT('[historial_Ajuste_Horario]')
				COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @IdHistorialAjuste = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
           
        --SELECT  @IdHistorialAjuste  
     
    END
GO
/****** Object:  StoredProcedure [dbo].[EliminarDetalleRepuesto]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarDetalleRepuesto]
	
	@IdDetalle as int
	
AS
BEGIN
Declare @ret int
	BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION
			
  DELETE from DetalleRepuesto where IdDetalle=@IdDetalle
   
			COMMIT TRANSACTION
			set @ret=1
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
          
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @ret=0
            
        END CATCH
         select @ret  
       
END
GO
/****** Object:  StoredProcedure [dbo].[ConsultaHorasPorDependencia]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ConsultaHorasPorDependencia]
@IdDependencia AS INT,
@IdPeriodo As INT
AS 

    BEGIN
	


        DECLARE @Dependencia VARCHAR(50)
        DECLARE @Categoria VARCHAR(50)
        DECLARE @NumeroHorasUso INT
        DECLARE @FechaInicio Datetime
        DECLARE @FechaFin Datetime


        DECLARE @TablaFinal TABLE
            (
              Dependencia VARCHAR(50),
              Categoria VARCHAR(50),
              NumeroHorasUso INT
            )



        DECLARE @tIdCategoria INT 
        DECLARE @tCategoria VARCHAR(50)
        DECLARE @TablaTemporal TABLE
            (
              tIdCategoria INT,
              tCategoria VARCHAR(50)
            )

--Insertaremos el contenido que queramos en nuestra tabla temporal
       -- DECLARE @IdDependencia INT
        --SET @IdDependencia = 24
        DECLARE @HoraUso INT 

       SELECT @FechaInicio=FechaInicio,@FechaFin=FechaFinal
	FROM Periodo
	WHERE IdPeriodo=@IdPeriodo

        INSERT  @TablaTemporal
                (
                  tIdCategoria,
                  tCategoria 
                )
                SELECT  IdCategoria,
                        Categoria
                FROM    dbo.CategoriaEquipo
                where IdCategoria<>12




        DECLARE TablaTemporal_Cursor CURSOR
            FOR SELECT  tIdCategoria,
                        tCategoria
                FROM    @TablaTemporal
       
        OPEN TablaTemporal_Cursor

        FETCH NEXT FROM TablaTemporal_Cursor INTO @tIdCategoria, @tCategoria


            
            
        WHILE @@FETCH_STATUS = 0
            BEGIN
        
        
                INSERT  @TablaFinal
                        (
                          Dependencia,
                          Categoria,
                          NumeroHorasUso 
		            )
                        SELECT  Dependencia,
                                Categoria,
                                HorasUso
                        FROM    [recursosFinal_new1].[dbo].[HorasEquipoPorDependenciaCategoria](@IdDependencia,@tIdCategoria,@FechaInicio,@FechaFin,default)
  
                FETCH NEXT FROM TablaTemporal_Cursor INTO @tIdCategoria,
                    @tCategoria
            END
    
        SELECT  Dependencia,
                Categoria,
                NumeroHorasUso
        FROM    @TablaFinal
         
         CLOSE  TablaTemporal_Cursor
         DEALLOCATE TablaTemporal_Cursor       
                  
    END
GO
/****** Object:  StoredProcedure [dbo].[ConsultaHorasdeUso]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[ConsultaHorasdeUso]
	-- Add the parameters for the stored procedure here
	@IdPeriodo as int,
	@IdTipoUsoReserva AS INT
	
	
AS
BEGIN
DECLARE @FechaInicio DateTIME
DECLARE @FechaFin Datetime

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.


   
	SELECT @FechaInicio=FechaInicio,@FechaFin=FechaFinal
	FROM Periodo
	WHERE IdPeriodo=@IdPeriodo
	
	
	
	SELECT        Dependencia.NombreDependencia, SUM(ISNULL(ObtenerEquipoHorasFecha_1.HorasActivo, 0)) AS TotalUso
FROM            dbo.ObtenerEquipoHorasFecha(@FechaInicio, @FechaFin, @IdTipoUsoReserva) AS ObtenerEquipoHorasFecha_1 RIGHT OUTER JOIN
                         Dependencia ON ObtenerEquipoHorasFecha_1.IdDependencia = Dependencia.IdDependencia
GROUP BY Dependencia.IdDependencia, Dependencia.NombreDependencia
ORDER BY Dependencia.NombreDependencia
	
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarDetalleRepuesto]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarDetalleRepuesto]
    @IdRepuesto as int,
    @IdDetalle as int,
	@CostoRepuesto as bigint,
	@Cantidad as int	
AS
BEGIN

SET NOCOUNT ON;
	Declare @ret int
  BEGIN TRY
          BEGIN TRANSACTION   
                        
        INSERT INTO DetalleRepuesto(
        IdRepuesto,
        IdDetalle,
        CostoRepuesto,
        Cantidad
         )
        VALUES(
       @IdRepuesto, 
       @IdDetalle,
       @CostoRepuesto,
       @Cantidad
		
         ) 
       
          COMMIT TRANSACTION
		  set @ret=1
		   END TRY
    
       BEGIN CATCH
		
			ROLLBACK TRANSACTION
         
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            set @ret=-1
            
        END CATCH  
      
      select @ret
       
END
GO
/****** Object:  StoredProcedure [dbo].[HorasPorCategoriaEquipo]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[HorasPorCategoriaEquipo]
	-- Add the parameters for the stored procedure here
	@IdPeriodo as int,
	@IdDependencia AS INT
	
	
AS
BEGIN
DECLARE @FechaInicio Datetime
DECLARE @FechaFin Datetime

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.


   
	SELECT @FechaInicio=FechaInicio,@FechaFin=FechaFinal
	FROM Periodo
	WHERE IdPeriodo=@IdPeriodo
		
	SELECT Dependencia.NombreDependencia,SUM(ISNULL(UsoPorDependencia_1.HorasActivo,0)) AS TotalUso
    FROM UsoPorDependencia(@FechaInicio,@FechaFin,@IdDependencia) AS UsoPorDependencia_1 RIGHT OUTER JOIN
    Dependencia ON UsoPorDependencia_1.IdDependencia = Dependencia.IdDependencia
GROUP BY Dependencia.IdDependencia, Dependencia.NombreDependencia
ORDER BY Dependencia.NombreDependencia
	
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[Horarios2]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Horarios2] 
	@Dia int,
	@periodo int
AS
BEGIN

-- variables Inserccion Tabla Arys
DECLARE @IdHoraInsertar INT
DECLARE	@Condicion		INT
DECLARE	@HoraConsultar  INT
DECLARE	@Delta          INT
--Fin Variables Inserccion Tabla Arys

-- Declaracion  Y llenado de la Tabla Temporal Arys
DECLARE @IdSalonArys INT
DECLARE @SalonNombreArys VARCHAR(50)
DECLARE @Capacidad_SalonArys INT
DECLARE	@idHoraArys INT
DECLARE	@idmateriaArys INT
DECLARE	@NombreMateriaArys VARCHAR(100)
DECLARE @HorarioId INT
DECLARE	@TablaArys TABLE (HorarioId INT,IdSalon INT,SalonNombre VARCHAR(50),Capacidad_Salon INT,idHora INT,idmateria INT, NombreMateria VARCHAR(100))

INSERT INTO @TablaArys(IdSalon,SalonNombre,Capacidad_Salon,idHora)
(SELECT IdEspacio,Nomenclatura,CapacidadEspacio,idHora from Espacio,Horas )

 -- Fin Declaacion Tabla Temporal Arys
DECLARE @Cantidad INT


-- variable del cursor Asignacion
	DECLARE @IdAsignacion			INT
	DECLARE	@IdHorario				INT  	
	DECLARE @IdPeriodo				INT
	DECLARE	@IdGrupo				INT
	DECLARE	@HoraInicio				INT
	DECLARE	@HoraFin				INT
	DECLARE	@DiaTemp				INT 
	DECLARE @NumeroGrupo			INT
	DECLARE @GrupoCapacidad			INT
	DECLARE @TipoGrupo				NCHAR(1)
	DECLARE @IdSalon				INT
	DECLARE	@MateriaNombre			VARCHAR(100)
	DECLARE @SemestreMateria		INT
	DECLARE @CodigoMateria			VARCHAR(15)	
	DECLARE	@SalonNombreTemp		VARCHAR(50)
	DECLARE @CapacidadSalon			INT
	DECLARE @PeriodoTemp			VARCHAR(200)
	DECLARE @MateriaGrupo			VARCHAR(200)
	DECLARE @GetDatos CURSOR
-- Fin Variables Cursor Asignacion

SET @GetDatos = CURSOR FOR SELECT  A.IdEspacio, A.IdAsignacion,A.IdHorario,A.IdPeriodo,H.IdGrupo,H.HoraInicial,H.HoraFinal,H.Dia,G.NumeroGrupo,G.Capacidad,G.TipoGrupo,M.NombreMateria,M.Semestre,M.CodigoMateria,S.Nomenclatura,s.CapacidadEspacio,
							(SELECT  CAST(P.Anio AS VARCHAR(10) )+'-'+CAST(P.Periodo AS VARCHAR(10)) FROM Periodo P WHERE ( P.IdPeriodo= A.IdPeriodo AND GETDATE() BETWEEN FechaInicio AND FechaFinal)) AS Periodo,M.NombreMateria+'- GR-'+CAST(G.NumeroGrupo AS VARCHAR(3))AS MGrupo
							FROM AsignacionEspacio A 
							INNER JOIN (Horario H INNER JOIN 
							(Grupo G INNER JOIN Materia M ON G.IdMateria=M.IdMateria)ON H.IdGrupo=G.IdGrupo)
							ON A.IdHorario = H.IdHorario
							INNER JOIN Espacio S ON A.IdEspacio = S.IdEspacio
							WHERE (H.Dia=@Dia) AND (A.IdPeriodo = @periodo) 
                              ---ojo corregidos
OPEN @GetDatos
FETCH NEXT FROM   @GetDatos INTO @IdSalon,@IdAsignacion,@IdHorario,@IdPeriodo,@IdGrupo,@HoraInicio,@HoraFin,@DiaTemp,@NumeroGrupo,@GrupoCapacidad,@TipoGrupo,@MateriaNombre,@SemestreMateria,@CodigoMateria,@SalonNombreTemp,@CapacidadSalon,@PeriodoTemp,@MateriaGrupo
	   WHILE @@FETCH_STATUS = 0
		     BEGIN
				SET @HoraConsultar = @HoraInicio
				SET @Condicion     = @HoraFin-@HoraInicio
				SET @Delta         = 0
				WHILE @Condicion > 0
					BEGIN
						
						--UPDATE
						UPDATE @TablaArys
							   SET  idHora = (SELECT idHora FROM Horas WHERE (Hora=(@HoraConsultar+@Delta))),
									NombreMateria = @MateriaGrupo,HorarioId =@IdHorario
								WHERE (IdSalon=@IdSalon and idHora =(SELECT idHora FROM Horas WHERE (Hora=(@HoraConsultar+@Delta))))
						
						
						--Fin Update
						SET @Delta=@Delta+1
						SET @Condicion = @Condicion-1
					END
				FETCH NEXT FROM  @GetDatos INTO @IdSalon,@IdAsignacion,@IdHorario,@IdPeriodo,@IdGrupo,@HoraInicio,@HoraFin,@DiaTemp,@NumeroGrupo,@GrupoCapacidad,@TipoGrupo,@MateriaNombre,@SemestreMateria,@CodigoMateria,@SalonNombreTemp,@CapacidadSalon,@PeriodoTemp,@MateriaGrupo
			 END	

SELECT IdSalon,SalonNombre,Capacidad_Salon,idHora,case isnull(HorarioId,0) when 0 then -1 else HorarioId end as HorarioId ,
case isnull(idmateria,0) when 0  then -1  else NombreMateria end AS IdMateria, 
case isnull(NombreMateria,'0') when '0'  then 'Sin Asignar' else NombreMateria end as NombreMateria
  FROM @TablaArys
ORDER BY Capacidad_Salon,idHora

END
GO
/****** Object:  StoredProcedure [dbo].[HorarioInsertar]    Script Date: 11/12/2012 15:45:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Henry Rodriguez
-- Create date: 24/03/2010
-- Description:	Insercción de Grupos y horarios de grupos por Materia
-- =============================================

CREATE PROCEDURE [dbo].[HorarioInsertar]
	@IdGrupo INT,  
	@HoraInicial INT, 	
	@HoraFinal INT,
	@Dia INT, 
	@Usuario VARCHAR(256),
	@ESugerido INT = NULL 
	
AS
	BEGIN	
		
		DECLARE @IdHorario INT
		declare @FechaRegistro datetime = SYSDATETIME()
			
		BEGIN TRY
		
			--Lote de opearaciones y transacciones
			BEGIN TRANSACTION   
     
				--Realizando insercción
				INSERT INTO	[Horario]
				(	[IdGrupo],
					[HoraInicial],
					[HoraFinal],					
					[Dia],
					[Usuario],
					[ESugerido],
					[FechaRegistro]
				)
				VALUES
				(
					@IdGrupo,
					@HoraInicial,
					@HoraFinal,
					@Dia,
					@Usuario,
					@ESugerido,
					@FechaRegistro
				)
	
				--Capturamos el Id del nuevo registro	
				SET @IdHorario = IDENT_CURRENT('[Horario]')
              
			--Ejecutamos el lote de Lote de opearaciones y transacciones
			COMMIT TRANSACTION
			
		END TRY
		
		--Revertimos el lote de operacioens realizadas en caso de fallos
		BEGIN CATCH
		
			ROLLBACK TRANSACTION
            SET @IdHorario = 0
            PRINT 'Se presento el siguiente error en  ' + ERROR_MESSAGE()
            
        END CATCH
        
         EXEC dbo.AjusteInsertarHorario @IdHorario,@FechaRegistro, @Usuario
            
        SELECT  @IdHorario 
     
    END
GO
/****** Object:  ForeignKey [FK_PLAN_PROGRAMA_PROGRAMA]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[PlanPrograma]  WITH NOCHECK ADD  CONSTRAINT [FK_PLAN_PROGRAMA_PROGRAMA] FOREIGN KEY([IdPrograma])
REFERENCES [dbo].[Programa] ([IdPrograma])
GO
ALTER TABLE [dbo].[PlanPrograma] CHECK CONSTRAINT [FK_PLAN_PROGRAMA_PROGRAMA]
GO
/****** Object:  ForeignKey [FK_EmpresaxServicios_Empresa]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[EmpresaxServicios]  WITH CHECK ADD  CONSTRAINT [FK_EmpresaxServicios_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[EmpresaxServicios] CHECK CONSTRAINT [FK_EmpresaxServicios_Empresa]
GO
/****** Object:  ForeignKey [FK_EmpresaxServicios_ServiciosEmpresas]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[EmpresaxServicios]  WITH CHECK ADD  CONSTRAINT [FK_EmpresaxServicios_ServiciosEmpresas] FOREIGN KEY([IdServiciosEmpresas])
REFERENCES [dbo].[ServiciosEmpresas] ([IdServiciosEmpresas])
GO
ALTER TABLE [dbo].[EmpresaxServicios] CHECK CONSTRAINT [FK_EmpresaxServicios_ServiciosEmpresas]
GO
/****** Object:  ForeignKey [FK_Laboratorio_Programa]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[Laboratorio]  WITH NOCHECK ADD  CONSTRAINT [FK_Laboratorio_Programa] FOREIGN KEY([IdPrograma])
REFERENCES [dbo].[Programa] ([IdPrograma])
GO
ALTER TABLE [dbo].[Laboratorio] CHECK CONSTRAINT [FK_Laboratorio_Programa]
GO
/****** Object:  ForeignKey [FK_Contrato_Empresa]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_Empresa]
GO
/****** Object:  ForeignKey [FK_Contrato_TipoContrato]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[Contrato]  WITH CHECK ADD  CONSTRAINT [FK_Contrato_TipoContrato] FOREIGN KEY([IdTipoContrato])
REFERENCES [dbo].[TipoContrato] ([IdTipoContrato])
GO
ALTER TABLE [dbo].[Contrato] CHECK CONSTRAINT [FK_Contrato_TipoContrato]
GO
/****** Object:  ForeignKey [FK_Docente_TipoVinculacion]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[Docente]  WITH CHECK ADD  CONSTRAINT [FK_Docente_TipoVinculacion] FOREIGN KEY([TipoDocente])
REFERENCES [dbo].[TipoVinculacion] ([IdTipo])
GO
ALTER TABLE [dbo].[Docente] CHECK CONSTRAINT [FK_Docente_TipoVinculacion]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__72910220]    Script Date: 11/12/2012 15:45:40 ******/
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FKACTUALIZA_263313]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[ActualizaPeriodo]  WITH NOCHECK ADD  CONSTRAINT [FKACTUALIZA_263313] FOREIGN KEY([IdPeriodo])
REFERENCES [dbo].[Periodo] ([IdPeriodo])
GO
ALTER TABLE [dbo].[ActualizaPeriodo] CHECK CONSTRAINT [FKACTUALIZA_263313]
GO
/****** Object:  ForeignKey [FKBLOQUES459729]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Bloques]  WITH NOCHECK ADD  CONSTRAINT [FKBLOQUES459729] FOREIGN KEY([IdSede])
REFERENCES [dbo].[Sede] ([IdSede])
GO
ALTER TABLE [dbo].[Bloques] CHECK CONSTRAINT [FKBLOQUES459729]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__339FAB6E]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__Appli__339FAB6E] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK__aspnet_Us__Appli__339FAB6E]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__7755B73D]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Ro__Appli__7755B73D] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Roles] CHECK CONSTRAINT [FK__aspnet_Ro__Appli__7755B73D]
GO
/****** Object:  ForeignKey [ModelosMarcas]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Modelo]  WITH NOCHECK ADD  CONSTRAINT [ModelosMarcas] FOREIGN KEY([IdMarca])
REFERENCES [dbo].[Marca] ([IdMarca])
GO
ALTER TABLE [dbo].[Modelo] CHECK CONSTRAINT [ModelosMarcas]
GO
/****** Object:  ForeignKey [FK_Sancion_CategoriaSancion_CategoriaSancion]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Sancion_CategoriaSancion]  WITH CHECK ADD  CONSTRAINT [FK_Sancion_CategoriaSancion_CategoriaSancion] FOREIGN KEY([IdCategoriaSancion])
REFERENCES [dbo].[CategoriaSancion] ([IdCategoriaSancion])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sancion_CategoriaSancion] CHECK CONSTRAINT [FK_Sancion_CategoriaSancion_CategoriaSancion]
GO
/****** Object:  ForeignKey [FK_Sancion_CategoriaSancion_Sancion]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Sancion_CategoriaSancion]  WITH NOCHECK ADD  CONSTRAINT [FK_Sancion_CategoriaSancion_Sancion] FOREIGN KEY([IdSancion])
REFERENCES [dbo].[Sancion] ([IdSancion])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sancion_CategoriaSancion] CHECK CONSTRAINT [FK_Sancion_CategoriaSancion_Sancion]
GO
/****** Object:  ForeignKey [FK_Servicio_CategoriaEquipo]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Servicio]  WITH NOCHECK ADD  CONSTRAINT [FK_Servicio_CategoriaEquipo] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CategoriaEquipo] ([IdCategoria])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Servicio_CategoriaEquipo]
GO
/****** Object:  ForeignKey [FK_Servicio_Sede]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[Servicio]  WITH NOCHECK ADD  CONSTRAINT [FK_Servicio_Sede] FOREIGN KEY([IdSede])
REFERENCES [dbo].[Sede] ([IdSede])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Servicio_Sede]
GO
/****** Object:  ForeignKey [FK_PROGRAMA_PRIORIDAD_PRIORIDAD]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[ProgramaPrioridad]  WITH CHECK ADD  CONSTRAINT [FK_PROGRAMA_PRIORIDAD_PRIORIDAD] FOREIGN KEY([IdPrioridad])
REFERENCES [dbo].[Prioridad] ([IdPrioridad])
GO
ALTER TABLE [dbo].[ProgramaPrioridad] CHECK CONSTRAINT [FK_PROGRAMA_PRIORIDAD_PRIORIDAD]
GO
/****** Object:  ForeignKey [FK_PROGRAMA_PRIORIDAD_PROGRAMA]    Script Date: 11/12/2012 15:45:41 ******/
ALTER TABLE [dbo].[ProgramaPrioridad]  WITH NOCHECK ADD  CONSTRAINT [FK_PROGRAMA_PRIORIDAD_PROGRAMA] FOREIGN KEY([IdPrograma])
REFERENCES [dbo].[Programa] ([IdPrograma])
GO
ALTER TABLE [dbo].[ProgramaPrioridad] CHECK CONSTRAINT [FK_PROGRAMA_PRIORIDAD_PROGRAMA]
GO
/****** Object:  ForeignKey [FK_UsoExclusivo_CategoriaEquipo]    Script Date: 11/12/2012 15:45:42 ******/
ALTER TABLE [dbo].[UsoExclusivo]  WITH NOCHECK ADD  CONSTRAINT [FK_UsoExclusivo_CategoriaEquipo] FOREIGN KEY([IdCategoriaEquipo])
REFERENCES [dbo].[CategoriaEquipo] ([IdCategoria])
GO
ALTER TABLE [dbo].[UsoExclusivo] CHECK CONSTRAINT [FK_UsoExclusivo_CategoriaEquipo]
GO
/****** Object:  ForeignKey [FK_UsoExclusivo_Periodo]    Script Date: 11/12/2012 15:45:42 ******/
ALTER TABLE [dbo].[UsoExclusivo]  WITH NOCHECK ADD  CONSTRAINT [FK_UsoExclusivo_Periodo] FOREIGN KEY([IdPeriodo])
REFERENCES [dbo].[Periodo] ([IdPeriodo])
GO
ALTER TABLE [dbo].[UsoExclusivo] CHECK CONSTRAINT [FK_UsoExclusivo_Periodo]
GO
/****** Object:  ForeignKey [FK_SolicitudLaboratorio_FuenteGasto]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[SolicitudLaboratorio]  WITH NOCHECK ADD  CONSTRAINT [FK_SolicitudLaboratorio_FuenteGasto] FOREIGN KEY([IdDestinacion])
REFERENCES [dbo].[FuenteGasto] ([IdDestinacion])
GO
ALTER TABLE [dbo].[SolicitudLaboratorio] CHECK CONSTRAINT [FK_SolicitudLaboratorio_FuenteGasto]
GO
/****** Object:  ForeignKey [FK_SolicitudLaboratorio_Laboratorio]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[SolicitudLaboratorio]  WITH NOCHECK ADD  CONSTRAINT [FK_SolicitudLaboratorio_Laboratorio] FOREIGN KEY([IdLaboratorio])
REFERENCES [dbo].[Laboratorio] ([IdLaboratorio])
GO
ALTER TABLE [dbo].[SolicitudLaboratorio] CHECK CONSTRAINT [FK_SolicitudLaboratorio_Laboratorio]
GO
/****** Object:  ForeignKey [FK_SolicitudLaboratorio_Suministro]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[SolicitudLaboratorio]  WITH NOCHECK ADD  CONSTRAINT [FK_SolicitudLaboratorio_Suministro] FOREIGN KEY([IdSuministro])
REFERENCES [dbo].[Suministro] ([IdSuministro])
GO
ALTER TABLE [dbo].[SolicitudLaboratorio] CHECK CONSTRAINT [FK_SolicitudLaboratorio_Suministro]
GO
/****** Object:  ForeignKey [FK_Solicitud_Servicio]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[Solicitud]  WITH NOCHECK ADD  CONSTRAINT [FK_Solicitud_Servicio] FOREIGN KEY([IdServicio])
REFERENCES [dbo].[Servicio] ([IdServicio])
GO
ALTER TABLE [dbo].[Solicitud] CHECK CONSTRAINT [FK_Solicitud_Servicio]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__74794A92]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__756D6ECB]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__58D1301D]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pr__UserI__58D1301D] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile] CHECK CONSTRAINT [FK__aspnet_Pr__UserI__58D1301D]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__671F4F74]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__RoleI__671F4F74] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__RoleI__671F4F74]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__662B2B3B]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__UserI__662B2B3B] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__UserI__662B2B3B]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__70A8B9AE]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__719CDDE7]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__73852659]    Script Date: 11/12/2012 15:45:43 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK_DependenciaUsuario_aspnet_Users]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[DependenciaUsuario]  WITH CHECK ADD  CONSTRAINT [FK_DependenciaUsuario_aspnet_Users] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[aspnet_Users] ([UserId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DependenciaUsuario] CHECK CONSTRAINT [FK_DependenciaUsuario_aspnet_Users]
GO
/****** Object:  ForeignKey [FK_DependenciaUsuario_Dependencia]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[DependenciaUsuario]  WITH NOCHECK ADD  CONSTRAINT [FK_DependenciaUsuario_Dependencia] FOREIGN KEY([IdDependencia])
REFERENCES [dbo].[Dependencia] ([IdDependencia])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DependenciaUsuario] CHECK CONSTRAINT [FK_DependenciaUsuario_Dependencia]
GO
/****** Object:  ForeignKey [FK_Espacio_TipoEspacio]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[Espacio]  WITH NOCHECK ADD  CONSTRAINT [FK_Espacio_TipoEspacio] FOREIGN KEY([TipoEspacio])
REFERENCES [dbo].[TipoEspacio] ([IdTipoEspacio])
GO
ALTER TABLE [dbo].[Espacio] CHECK CONSTRAINT [FK_Espacio_TipoEspacio]
GO
/****** Object:  ForeignKey [FKSALON212358]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[Espacio]  WITH NOCHECK ADD  CONSTRAINT [FKSALON212358] FOREIGN KEY([CodBloque])
REFERENCES [dbo].[Bloques] ([CodBloque])
GO
ALTER TABLE [dbo].[Espacio] CHECK CONSTRAINT [FKSALON212358]
GO
/****** Object:  ForeignKey [EquiposCategoriasEquipos]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[Equipo]  WITH NOCHECK ADD  CONSTRAINT [EquiposCategoriasEquipos] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CategoriaEquipo] ([IdCategoria])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [EquiposCategoriasEquipos]
GO
/****** Object:  ForeignKey [EquiposModelos]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[Equipo]  WITH NOCHECK ADD  CONSTRAINT [EquiposModelos] FOREIGN KEY([IdModelo])
REFERENCES [dbo].[Modelo] ([IdModelo])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [EquiposModelos]
GO
/****** Object:  ForeignKey [FK_Equipo_Dependencia]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[Equipo]  WITH NOCHECK ADD  CONSTRAINT [FK_Equipo_Dependencia] FOREIGN KEY([IdDependencia])
REFERENCES [dbo].[Dependencia] ([IdDependencia])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipo_Dependencia]
GO
/****** Object:  ForeignKey [FK_Equipos_Sede]    Script Date: 11/12/2012 15:45:44 ******/
ALTER TABLE [dbo].[Equipo]  WITH NOCHECK ADD  CONSTRAINT [FK_Equipos_Sede] FOREIGN KEY([IdSede])
REFERENCES [dbo].[Sede] ([IdSede])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipos_Sede]
GO
/****** Object:  ForeignKey [FK_ItemContratado_Contrato]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ItemContratado]  WITH CHECK ADD  CONSTRAINT [FK_ItemContratado_Contrato] FOREIGN KEY([IdContrato])
REFERENCES [dbo].[Contrato] ([IdContrato])
GO
ALTER TABLE [dbo].[ItemContratado] CHECK CONSTRAINT [FK_ItemContratado_Contrato]
GO
/****** Object:  ForeignKey [FK_PermisoLaboratorio_aspnet_Roles]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[PermisoLaboratorio]  WITH CHECK ADD  CONSTRAINT [FK_PermisoLaboratorio_aspnet_Roles] FOREIGN KEY([IdRol])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[PermisoLaboratorio] CHECK CONSTRAINT [FK_PermisoLaboratorio_aspnet_Roles]
GO
/****** Object:  ForeignKey [FK_PermisoLaboratorio_Laboratorio]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[PermisoLaboratorio]  WITH NOCHECK ADD  CONSTRAINT [FK_PermisoLaboratorio_Laboratorio] FOREIGN KEY([IdLaboratorio])
REFERENCES [dbo].[Laboratorio] ([IdLaboratorio])
GO
ALTER TABLE [dbo].[PermisoLaboratorio] CHECK CONSTRAINT [FK_PermisoLaboratorio_Laboratorio]
GO
/****** Object:  ForeignKey [FK_Permiso_aspnet_Roles]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Permiso]  WITH CHECK ADD  CONSTRAINT [FK_Permiso_aspnet_Roles] FOREIGN KEY([IdRol])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Permiso] CHECK CONSTRAINT [FK_Permiso_aspnet_Roles]
GO
/****** Object:  ForeignKey [FK_Permiso_Programa]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Permiso]  WITH NOCHECK ADD  CONSTRAINT [FK_Permiso_Programa] FOREIGN KEY([IdPrograma])
REFERENCES [dbo].[Programa] ([IdPrograma])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permiso] CHECK CONSTRAINT [FK_Permiso_Programa]
GO
/****** Object:  ForeignKey [FK_MATERIA_PLAN_PROGRAMA]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Materia]  WITH NOCHECK ADD  CONSTRAINT [FK_MATERIA_PLAN_PROGRAMA] FOREIGN KEY([IdPlanEstudio], [IdPrograma])
REFERENCES [dbo].[PlanPrograma] ([IdPlanEstudio], [IdPrograma])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_MATERIA_PLAN_PROGRAMA]
GO
/****** Object:  ForeignKey [FK_ReservaEspacios_aspnet_Users]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ReservaEspacios]  WITH CHECK ADD  CONSTRAINT [FK_ReservaEspacios_aspnet_Users] FOREIGN KEY([IdUsuarioSolicitante])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[ReservaEspacios] CHECK CONSTRAINT [FK_ReservaEspacios_aspnet_Users]
GO
/****** Object:  ForeignKey [FK_ReservaEspacios_Dependencia]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ReservaEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_ReservaEspacios_Dependencia] FOREIGN KEY([IdDependencia])
REFERENCES [dbo].[Dependencia] ([IdDependencia])
GO
ALTER TABLE [dbo].[ReservaEspacios] CHECK CONSTRAINT [FK_ReservaEspacios_Dependencia]
GO
/****** Object:  ForeignKey [FK_ReservaEspacios_Espacio1]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ReservaEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_ReservaEspacios_Espacio1] FOREIGN KEY([IdEspacioSolicitado])
REFERENCES [dbo].[Espacio] ([IdEspacio])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReservaEspacios] CHECK CONSTRAINT [FK_ReservaEspacios_Espacio1]
GO
/****** Object:  ForeignKey [FK_ReservaEspacios_EstadoReservaEspacio]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ReservaEspacios]  WITH CHECK ADD  CONSTRAINT [FK_ReservaEspacios_EstadoReservaEspacio] FOREIGN KEY([IdEstadoReservaEspacio])
REFERENCES [dbo].[EstadoReservaEspacio] ([IdEstado])
GO
ALTER TABLE [dbo].[ReservaEspacios] CHECK CONSTRAINT [FK_ReservaEspacios_EstadoReservaEspacio]
GO
/****** Object:  ForeignKey [FK_ReservaEspacios_Periodo]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ReservaEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_ReservaEspacios_Periodo] FOREIGN KEY([IdPeriodo])
REFERENCES [dbo].[Periodo] ([IdPeriodo])
GO
ALTER TABLE [dbo].[ReservaEspacios] CHECK CONSTRAINT [FK_ReservaEspacios_Periodo]
GO
/****** Object:  ForeignKey [FK_ReservaEspacios_TipoEvento]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ReservaEspacios]  WITH CHECK ADD  CONSTRAINT [FK_ReservaEspacios_TipoEvento] FOREIGN KEY([TipoEvento])
REFERENCES [dbo].[TipoEvento] ([IdTipoEvento])
GO
ALTER TABLE [dbo].[ReservaEspacios] CHECK CONSTRAINT [FK_ReservaEspacios_TipoEvento]
GO
/****** Object:  ForeignKey [FK_Reserva_aspnet_Users]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_aspnet_Users] FOREIGN KEY([IdUsuarioSolicitante])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_aspnet_Users]
GO
/****** Object:  ForeignKey [FK_Reserva_Dependencia]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Reserva]  WITH NOCHECK ADD  CONSTRAINT [FK_Reserva_Dependencia] FOREIGN KEY([IdDependencia])
REFERENCES [dbo].[Dependencia] ([IdDependencia])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Dependencia]
GO
/****** Object:  ForeignKey [FK_Reserva_Servicio]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Reserva]  WITH NOCHECK ADD  CONSTRAINT [FK_Reserva_Servicio] FOREIGN KEY([IdServicio])
REFERENCES [dbo].[Servicio] ([IdServicio])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_Servicio]
GO
/****** Object:  ForeignKey [FK_Reserva_TipoUsoReserva]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Reserva]  WITH CHECK ADD  CONSTRAINT [FK_Reserva_TipoUsoReserva] FOREIGN KEY([IdTipoUsoReserva])
REFERENCES [dbo].[TipoUsoReserva] ([IdTipoUsoReserva])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reserva_TipoUsoReserva]
GO
/****** Object:  ForeignKey [FK_Reservas_Espacio]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Reserva]  WITH NOCHECK ADD  CONSTRAINT [FK_Reservas_Espacio] FOREIGN KEY([IdEspacio])
REFERENCES [dbo].[Espacio] ([IdEspacio])
GO
ALTER TABLE [dbo].[Reserva] CHECK CONSTRAINT [FK_Reservas_Espacio]
GO
/****** Object:  ForeignKey [FK_Grupo_Docente]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Grupo]  WITH NOCHECK ADD  CONSTRAINT [FK_Grupo_Docente] FOREIGN KEY([IdDocente])
REFERENCES [dbo].[Docente] ([Cedula])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[Grupo] NOCHECK CONSTRAINT [FK_Grupo_Docente]
GO
/****** Object:  ForeignKey [FKGRUPO113750]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Grupo]  WITH NOCHECK ADD  CONSTRAINT [FKGRUPO113750] FOREIGN KEY([IdMateria])
REFERENCES [dbo].[Materia] ([IdMateria])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FKGRUPO113750]
GO
/****** Object:  ForeignKey [FKGRUPO158371]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[Grupo]  WITH NOCHECK ADD  CONSTRAINT [FKGRUPO158371] FOREIGN KEY([IdPeriodo])
REFERENCES [dbo].[Periodo] ([IdPeriodo])
GO
ALTER TABLE [dbo].[Grupo] CHECK CONSTRAINT [FKGRUPO158371]
GO
/****** Object:  ForeignKey [HistorialnovedadesEquipos]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[HistorialNovedad]  WITH NOCHECK ADD  CONSTRAINT [HistorialnovedadesEquipos] FOREIGN KEY([IdEquipo])
REFERENCES [dbo].[Equipo] ([IdEquipo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HistorialNovedad] CHECK CONSTRAINT [HistorialnovedadesEquipos]
GO
/****** Object:  ForeignKey [HistorialNovedadesTipoNovedad]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[HistorialNovedad]  WITH CHECK ADD  CONSTRAINT [HistorialNovedadesTipoNovedad] FOREIGN KEY([IdTipoNovedad])
REFERENCES [dbo].[TiposNovedad] ([IdTipoNovedad])
GO
ALTER TABLE [dbo].[HistorialNovedad] CHECK CONSTRAINT [HistorialNovedadesTipoNovedad]
GO
/****** Object:  ForeignKey [FK_ContratadoSolicitud_ItemContratado]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ContratadoSolicitud]  WITH CHECK ADD  CONSTRAINT [FK_ContratadoSolicitud_ItemContratado] FOREIGN KEY([IdItemContratado])
REFERENCES [dbo].[ItemContratado] ([IdItemContratado])
GO
ALTER TABLE [dbo].[ContratadoSolicitud] CHECK CONSTRAINT [FK_ContratadoSolicitud_ItemContratado]
GO
/****** Object:  ForeignKey [FK_ContratadoSolicitud_SolicitudLaboratorio]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[ContratadoSolicitud]  WITH CHECK ADD  CONSTRAINT [FK_ContratadoSolicitud_SolicitudLaboratorio] FOREIGN KEY([IdSolicitudLab])
REFERENCES [dbo].[SolicitudLaboratorio] ([IdSolicitudLab])
GO
ALTER TABLE [dbo].[ContratadoSolicitud] CHECK CONSTRAINT [FK_ContratadoSolicitud_SolicitudLaboratorio]
GO
/****** Object:  ForeignKey [FK_DependenciaEspacio_Dependencia]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[DependenciaEspacio]  WITH NOCHECK ADD  CONSTRAINT [FK_DependenciaEspacio_Dependencia] FOREIGN KEY([IdDependencia])
REFERENCES [dbo].[Dependencia] ([IdDependencia])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DependenciaEspacio] CHECK CONSTRAINT [FK_DependenciaEspacio_Dependencia]
GO
/****** Object:  ForeignKey [FK_DependenciaEspacio_Espacio]    Script Date: 11/12/2012 15:45:45 ******/
ALTER TABLE [dbo].[DependenciaEspacio]  WITH NOCHECK ADD  CONSTRAINT [FK_DependenciaEspacio_Espacio] FOREIGN KEY([IdEspacio])
REFERENCES [dbo].[Espacio] ([IdEspacio])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DependenciaEspacio] CHECK CONSTRAINT [FK_DependenciaEspacio_Espacio]
GO
/****** Object:  ForeignKey [FK_RESTRICCION_SALON_PERIODO]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[RestriccionEspacio]  WITH NOCHECK ADD  CONSTRAINT [FK_RESTRICCION_SALON_PERIODO] FOREIGN KEY([IdPeriodo])
REFERENCES [dbo].[Periodo] ([IdPeriodo])
GO
ALTER TABLE [dbo].[RestriccionEspacio] CHECK CONSTRAINT [FK_RESTRICCION_SALON_PERIODO]
GO
/****** Object:  ForeignKey [FK_RestriccionEspacio_Espacio]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[RestriccionEspacio]  WITH NOCHECK ADD  CONSTRAINT [FK_RestriccionEspacio_Espacio] FOREIGN KEY([IdEspacio])
REFERENCES [dbo].[Espacio] ([IdEspacio])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RestriccionEspacio] CHECK CONSTRAINT [FK_RestriccionEspacio_Espacio]
GO
/****** Object:  ForeignKey [FK_SuministrosEntregados_ContratadoSolicitud]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[SuministrosEntregados]  WITH CHECK ADD  CONSTRAINT [FK_SuministrosEntregados_ContratadoSolicitud] FOREIGN KEY([IdContratoSolicitud])
REFERENCES [dbo].[ContratadoSolicitud] ([IdContratadoSolicitud])
GO
ALTER TABLE [dbo].[SuministrosEntregados] CHECK CONSTRAINT [FK_SuministrosEntregados_ContratadoSolicitud]
GO
/****** Object:  ForeignKey [FKPrestamos455484]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [FKPrestamos455484] FOREIGN KEY([IdDevolucion])
REFERENCES [dbo].[Devolucion] ([IdDevolucion])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [FKPrestamos455484]
GO
/****** Object:  ForeignKey [PrestamoReservas]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [PrestamoReservas] FOREIGN KEY([IdReserva])
REFERENCES [dbo].[Reserva] ([IdReserva])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [PrestamoReservas]
GO
/****** Object:  ForeignKey [PrestamosEquipos]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[Prestamo]  WITH NOCHECK ADD  CONSTRAINT [PrestamosEquipos] FOREIGN KEY([IdEquipo])
REFERENCES [dbo].[Equipo] ([IdEquipo])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [PrestamosEquipos]
GO
/****** Object:  ForeignKey [FK_SancionEspacios_ReservaEspacios]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[SancionEspacios]  WITH CHECK ADD  CONSTRAINT [FK_SancionEspacios_ReservaEspacios] FOREIGN KEY([IdReservaEspacios])
REFERENCES [dbo].[ReservaEspacios] ([IdReservaEspacio])
GO
ALTER TABLE [dbo].[SancionEspacios] CHECK CONSTRAINT [FK_SancionEspacios_ReservaEspacios]
GO
/****** Object:  ForeignKey [FK_SancionEspacios_Sancion_CategoriaSancion]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[SancionEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_SancionEspacios_Sancion_CategoriaSancion] FOREIGN KEY([IdSancionCategoriaSancion])
REFERENCES [dbo].[Sancion_CategoriaSancion] ([IdSancionCategoriaSancion])
GO
ALTER TABLE [dbo].[SancionEspacios] CHECK CONSTRAINT [FK_SancionEspacios_Sancion_CategoriaSancion]
GO
/****** Object:  ForeignKey [FK_SancionAudiovisuales_Sancion_CategoriaSancion1]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[SancionAudiovisuales]  WITH CHECK ADD  CONSTRAINT [FK_SancionAudiovisuales_Sancion_CategoriaSancion1] FOREIGN KEY([IdSancionCategoriaSancion])
REFERENCES [dbo].[Sancion_CategoriaSancion] ([IdSancionCategoriaSancion])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SancionAudiovisuales] CHECK CONSTRAINT [FK_SancionAudiovisuales_Sancion_CategoriaSancion1]
GO
/****** Object:  ForeignKey [SancionesReservas]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[SancionAudiovisuales]  WITH CHECK ADD  CONSTRAINT [SancionesReservas] FOREIGN KEY([IdReserva])
REFERENCES [dbo].[Reserva] ([IdReserva])
GO
ALTER TABLE [dbo].[SancionAudiovisuales] CHECK CONSTRAINT [SancionesReservas]
GO
/****** Object:  ForeignKey [FK_AsignacionReservaEspacios_Espacio]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[AsignacionReservaEspacios]  WITH NOCHECK ADD  CONSTRAINT [FK_AsignacionReservaEspacios_Espacio] FOREIGN KEY([IdEspacio])
REFERENCES [dbo].[Espacio] ([IdEspacio])
GO
ALTER TABLE [dbo].[AsignacionReservaEspacios] CHECK CONSTRAINT [FK_AsignacionReservaEspacios_Espacio]
GO
/****** Object:  ForeignKey [FK_AsignacionReservaEspacios_ReservaEspacios]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[AsignacionReservaEspacios]  WITH CHECK ADD  CONSTRAINT [FK_AsignacionReservaEspacios_ReservaEspacios] FOREIGN KEY([IdReserva])
REFERENCES [dbo].[ReservaEspacios] ([IdReservaEspacio])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AsignacionReservaEspacios] CHECK CONSTRAINT [FK_AsignacionReservaEspacios_ReservaEspacios]
GO
/****** Object:  ForeignKey [FK_DetalleNovedad_Empresa]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[DetalleNovedad]  WITH CHECK ADD  CONSTRAINT [FK_DetalleNovedad_Empresa] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[Empresa] ([IdEmpresa])
GO
ALTER TABLE [dbo].[DetalleNovedad] CHECK CONSTRAINT [FK_DetalleNovedad_Empresa]
GO
/****** Object:  ForeignKey [FK_DetalleNovedad_HistorialNovedad]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[DetalleNovedad]  WITH NOCHECK ADD  CONSTRAINT [FK_DetalleNovedad_HistorialNovedad] FOREIGN KEY([IdHistorialNovedad])
REFERENCES [dbo].[HistorialNovedad] ([IdHistorialNovedad])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DetalleNovedad] CHECK CONSTRAINT [FK_DetalleNovedad_HistorialNovedad]
GO
/****** Object:  ForeignKey [FK_DetalleNovedad_TipoMantenimiento]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[DetalleNovedad]  WITH CHECK ADD  CONSTRAINT [FK_DetalleNovedad_TipoMantenimiento] FOREIGN KEY([IdTipoMantenimiento])
REFERENCES [dbo].[TipoMantenimiento] ([IdTipoMantenimiento])
GO
ALTER TABLE [dbo].[DetalleNovedad] CHECK CONSTRAINT [FK_DetalleNovedad_TipoMantenimiento]
GO
/****** Object:  ForeignKey [FK_Horario_Espacio]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[Horario]  WITH NOCHECK ADD  CONSTRAINT [FK_Horario_Espacio] FOREIGN KEY([ESugerido])
REFERENCES [dbo].[Espacio] ([IdEspacio])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Espacio]
GO
/****** Object:  ForeignKey [FK_HORARIO_GRUPO]    Script Date: 11/12/2012 15:45:46 ******/
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_HORARIO_GRUPO] FOREIGN KEY([IdGrupo])
REFERENCES [dbo].[Grupo] ([IdGrupo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_HORARIO_GRUPO]
GO
/****** Object:  ForeignKey [FK_Detalle_Repuesto_DetalleNovedad]    Script Date: 11/12/2012 15:45:47 ******/
ALTER TABLE [dbo].[DetalleRepuesto]  WITH NOCHECK ADD  CONSTRAINT [FK_Detalle_Repuesto_DetalleNovedad] FOREIGN KEY([IdDetalle])
REFERENCES [dbo].[DetalleNovedad] ([IdDetalle])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DetalleRepuesto] CHECK CONSTRAINT [FK_Detalle_Repuesto_DetalleNovedad]
GO
/****** Object:  ForeignKey [FK_Detalle_Repuesto_Repuesto]    Script Date: 11/12/2012 15:45:47 ******/
ALTER TABLE [dbo].[DetalleRepuesto]  WITH NOCHECK ADD  CONSTRAINT [FK_Detalle_Repuesto_Repuesto] FOREIGN KEY([IdRepuesto])
REFERENCES [dbo].[Repuesto] ([IdRepuesto])
GO
ALTER TABLE [dbo].[DetalleRepuesto] CHECK CONSTRAINT [FK_Detalle_Repuesto_Repuesto]
GO
/****** Object:  ForeignKey [FK_AsignacionEspacio_Espacio]    Script Date: 11/12/2012 15:45:47 ******/
ALTER TABLE [dbo].[AsignacionEspacio]  WITH NOCHECK ADD  CONSTRAINT [FK_AsignacionEspacio_Espacio] FOREIGN KEY([IdEspacio])
REFERENCES [dbo].[Espacio] ([IdEspacio])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AsignacionEspacio] CHECK CONSTRAINT [FK_AsignacionEspacio_Espacio]
GO
/****** Object:  ForeignKey [FKASIGNACION53323]    Script Date: 11/12/2012 15:45:47 ******/
ALTER TABLE [dbo].[AsignacionEspacio]  WITH CHECK ADD  CONSTRAINT [FKASIGNACION53323] FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AsignacionEspacio] CHECK CONSTRAINT [FKASIGNACION53323]
GO
/****** Object:  ForeignKey [FKASIGNACION864505]    Script Date: 11/12/2012 15:45:47 ******/
ALTER TABLE [dbo].[AsignacionEspacio]  WITH NOCHECK ADD  CONSTRAINT [FKASIGNACION864505] FOREIGN KEY([IdPeriodo])
REFERENCES [dbo].[Periodo] ([IdPeriodo])
GO
ALTER TABLE [dbo].[AsignacionEspacio] CHECK CONSTRAINT [FKASIGNACION864505]
GO
