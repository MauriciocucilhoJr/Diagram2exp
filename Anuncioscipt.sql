USE [master]
GO
/****** Object:  Database [db_Anuncio]    Script Date: 28/07/2022 15:32:27 ******/
CREATE DATABASE [db_Anuncio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_Anuncio', FILENAME = N'D:\Curso generation\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_Anuncio.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_Anuncio_log', FILENAME = N'D:\Curso generation\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_Anuncio_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [db_Anuncio] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_Anuncio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_Anuncio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_Anuncio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_Anuncio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_Anuncio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_Anuncio] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_Anuncio] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_Anuncio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_Anuncio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_Anuncio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_Anuncio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_Anuncio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_Anuncio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_Anuncio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_Anuncio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_Anuncio] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_Anuncio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_Anuncio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_Anuncio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_Anuncio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_Anuncio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_Anuncio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_Anuncio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_Anuncio] SET RECOVERY FULL 
GO
ALTER DATABASE [db_Anuncio] SET  MULTI_USER 
GO
ALTER DATABASE [db_Anuncio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_Anuncio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_Anuncio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_Anuncio] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_Anuncio] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_Anuncio] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_Anuncio', N'ON'
GO
ALTER DATABASE [db_Anuncio] SET QUERY_STORE = OFF
GO
USE [db_Anuncio]
GO
/****** Object:  Table [dbo].[tb_Anuncio]    Script Date: 28/07/2022 15:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Anuncio](
	[FK_Id] [varchar](1) NOT NULL,
	[DATAPUBLIC] [int] NULL,
	[Descricao] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Usuario]    Script Date: 28/07/2022 15:32:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Usuario](
	[Id] [varchar](1) NOT NULL,
	[Nome] [varchar](255) NULL,
	[Senha] [varchar](200) NULL,
	[Doc] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_Anuncio]  WITH CHECK ADD FOREIGN KEY([FK_Id])
REFERENCES [dbo].[tb_Usuario] ([Id])
GO
USE [master]
GO
ALTER DATABASE [db_Anuncio] SET  READ_WRITE 
GO

USE	db_Anuncio	
INSERT into tb_Usuario values ('1', 'Ana', 'a123', 'docdodoc');
INSERT into tb_Usuario values ('2', 'Bea', 'b123', 'docdodco') ;
INSERT into tb_Usuario values ('3', 'Cana', 'c123', 'docdodoc');
INSERT into tb_Usuario values ('4', 'Dama', 'd123', 'docdodoc');
SELECT * FROM tb_Usuario

INSERT into tb_Anuncio values (1, '120822', 'coisas para casa' );
INSERT into tb_Anuncio values (1, '130923', 'coisas para feira' );
INSERT into tb_Anuncio values (2, '131024', 'coisas para cidade' );
INSERT into tb_Anuncio values (2, '141125', 'coisas para tudo' );

SELECT * FROM tb_Anuncio

