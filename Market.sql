USE [master]
GO
/****** Object:  Database [db_ecomerce]    Script Date: 28/07/2022 20:34:29 ******/
CREATE DATABASE [db_ecomerce]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_ecomerce', FILENAME = N'D:\Curso generation\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_ecomerce.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_ecomerce_log', FILENAME = N'D:\Curso generation\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_ecomerce_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [db_ecomerce] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_ecomerce].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_ecomerce] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_ecomerce] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_ecomerce] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_ecomerce] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_ecomerce] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_ecomerce] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_ecomerce] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_ecomerce] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_ecomerce] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_ecomerce] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_ecomerce] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_ecomerce] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_ecomerce] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_ecomerce] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_ecomerce] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_ecomerce] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_ecomerce] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_ecomerce] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_ecomerce] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_ecomerce] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_ecomerce] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_ecomerce] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_ecomerce] SET RECOVERY FULL 
GO
ALTER DATABASE [db_ecomerce] SET  MULTI_USER 
GO
ALTER DATABASE [db_ecomerce] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_ecomerce] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_ecomerce] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_ecomerce] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_ecomerce] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_ecomerce] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_ecomerce', N'ON'
GO
ALTER DATABASE [db_ecomerce] SET QUERY_STORE = OFF
GO
USE [db_ecomerce]
GO
/****** Object:  Table [dbo].[Estoque]    Script Date: 28/07/2022 20:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estoque](
	[Produto_id] [varchar](255) NULL,
	[Quantidade] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tb_Compras]    Script Date: 28/07/2022 20:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tb_Compras](
	[fk_id] [int] NOT NULL,
	[Produto] [varchar](255) NOT NULL,
	[Compra_data] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Produto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tb_Usuario]    Script Date: 28/07/2022 20:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tb_Usuario](
	[ID] [int] NOT NULL,
	[Usuario] [varchar](255) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
	[Senha] [varchar](255) NOT NULL,
	[Doc] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Estoque]  WITH CHECK ADD FOREIGN KEY([Produto_id])
REFERENCES [dbo].[Tb_Compras] ([Produto])
GO
ALTER TABLE [dbo].[Tb_Compras]  WITH CHECK ADD FOREIGN KEY([fk_id])
REFERENCES [dbo].[Tb_Usuario] ([ID])
GO
USE [master]
GO
ALTER DATABASE [db_ecomerce] SET  READ_WRITE 
GO


USE	Db_Redesocial
INSERT into tb_Usuario values ('1', 'Ana', 'a123', 'docdodoc');
INSERT into tb_Usuario values ('2', 'Bea', 'b123', 'docdodco') ;
INSERT into tb_Usuario values ('3', 'Cana', 'c123', 'docdodoc');
INSERT into tb_Usuario values ('4', 'Dama', 'd123', 'docdodoc');
SELECT * FROM tb_Usuario

INSERT into tb_Categoria values (1, '5', 12, 'coisas para casa' );
INSERT into tb_Categoria values (2, '6', 13, 'coisas para feira' );
INSERT into tb_Categoria values (3, '7', 14, 'coisas para cidade' );
INSERT into tb_Categoria values (4, '8', 15, 'coisas para tudo' );

SELECT * FROM tb_Post

INSERT into dbo.tb_Post values (1, 4, 8, 0);
INSERT into dbo.tb_Post values (2, 5, 9, 5);
INSERT into dbo.tb_Post values (3, 6, 0, 6);
INSERT into dbo.tb_Post values (4, 7, 0, 7);

SELECT * FROM tb_Post