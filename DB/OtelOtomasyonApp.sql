USE [master]
GO
/****** Object:  Database [OtelOtomasyonApp]    Script Date: 6.09.2019 00:17:10 ******/
CREATE DATABASE [OtelOtomasyonApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OtelOtomasyonApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL_2014\MSSQL\DATA\OtelOtomasyonApp.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OtelOtomasyonApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL_2014\MSSQL\DATA\OtelOtomasyonApp_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [OtelOtomasyonApp] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OtelOtomasyonApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OtelOtomasyonApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OtelOtomasyonApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OtelOtomasyonApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OtelOtomasyonApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OtelOtomasyonApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OtelOtomasyonApp] SET  MULTI_USER 
GO
ALTER DATABASE [OtelOtomasyonApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OtelOtomasyonApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OtelOtomasyonApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OtelOtomasyonApp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [OtelOtomasyonApp] SET DELAYED_DURABILITY = DISABLED 
GO
USE [OtelOtomasyonApp]
GO
/****** Object:  Table [dbo].[TBL_MusteriBilgiler]    Script Date: 6.09.2019 00:17:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_MusteriBilgiler](
	[musteriID] [int] IDENTITY(1,1) NOT NULL,
	[musteriAd] [nvarchar](50) NULL,
	[musteriSoyad] [nvarchar](50) NULL,
	[musteriEposta] [nvarchar](50) NULL,
	[musteriYorum] [nvarchar](50) NULL,
	[musteriVerilenPuan] [int] NULL,
	[musteriOtelAdı] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBL_MusteiBilgiler] PRIMARY KEY CLUSTERED 
(
	[musteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_OtelBilgiler]    Script Date: 6.09.2019 00:17:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_OtelBilgiler](
	[otelId] [int] IDENTITY(1,1) NOT NULL,
	[otelAd] [nvarchar](50) NULL,
	[otelBulunduguIl] [nvarchar](50) NULL,
	[otelBulunduguIlce] [nvarchar](50) NULL,
	[otelAdres] [nvarchar](50) NULL,
	[otelTelefon] [nvarchar](50) NULL,
	[otelEposta] [nvarchar](50) NULL,
	[otelYıldızSayisi] [int] NULL,
	[otelOdaSayisi] [int] NULL,
	[otelOdaTipi] [nvarchar](50) NULL,
	[otelPuan] [int] NULL,
	[otelPlakaKodu] [int] NULL,
 CONSTRAINT [PK_TBL_OtelBilgiler] PRIMARY KEY CLUSTERED 
(
	[otelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_PersonelBilgiler]    Script Date: 6.09.2019 00:17:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_PersonelBilgiler](
	[personelId] [int] IDENTITY(1,1) NOT NULL,
	[personelTcNo] [nvarchar](50) NULL,
	[personelAd] [nvarchar](50) NULL,
	[personelSoyad] [nvarchar](50) NULL,
	[personelTelefon] [nvarchar](50) NULL,
	[personelAdres] [nvarchar](50) NULL,
	[personelEposta] [nvarchar](50) NULL,
	[personelDepartmant] [nvarchar](50) NULL,
	[personelPozisyon] [nvarchar](50) NULL,
	[personelPuan] [int] NULL,
	[personelOtel] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBL_PersonelBilgiler] PRIMARY KEY CLUSTERED 
(
	[personelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [OtelOtomasyonApp] SET  READ_WRITE 
GO
