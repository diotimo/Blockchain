USE [master]
GO
/****** Object:  Database [dbBlockchain]    Script Date: 14.03.2019 10:24:18 ******/
CREATE DATABASE [dbBlockchain]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbBlockchain', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dbBlockchain.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbBlockchain_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\dbBlockchain_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [dbBlockchain] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbBlockchain].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbBlockchain] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbBlockchain] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbBlockchain] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbBlockchain] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbBlockchain] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbBlockchain] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbBlockchain] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbBlockchain] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbBlockchain] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbBlockchain] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbBlockchain] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbBlockchain] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbBlockchain] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbBlockchain] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbBlockchain] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbBlockchain] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbBlockchain] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbBlockchain] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbBlockchain] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbBlockchain] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbBlockchain] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbBlockchain] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbBlockchain] SET RECOVERY FULL 
GO
ALTER DATABASE [dbBlockchain] SET  MULTI_USER 
GO
ALTER DATABASE [dbBlockchain] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbBlockchain] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbBlockchain] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbBlockchain] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbBlockchain] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbBlockchain', N'ON'
GO
ALTER DATABASE [dbBlockchain] SET QUERY_STORE = OFF
GO
USE [dbBlockchain]
GO
/****** Object:  Table [TBlockChain]    Script Date: 14.03.2019 10:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TBlockChain](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Data] [varchar](8000) NULL,
	[Hash] [varchar](400) NULL,
	[Nonce] [bigint] NULL,
	[Difficulty] [tinyint] NULL,
 CONSTRAINT [PK_TBlockChain] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [TBlockChain] ON 

INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (1, N'This is the data stored on the blockchain', N'Genesis', NULL, NULL)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (2, N'This could be a hash of other data', N'0000072730abc9b1137b4c7b249509326de31e946cc4919f9a66a0f5b625c6c6', 717607, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (3, N'If the data is a hash, then it keeps it secret', N'000008191c3d33dfcdcb630cdaed43b5be026067572bed9f832264b739193455', 1387131, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (4, N'Change a block and all future blocks are invalid', N'0000062e34d01ffe5aecdf3157cf039b1f7a4acce268c301c91876c340f523e0', 871689, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (5, N'Once a new block is added . . .', N'00000159d4e27fdb9ace4139df84e1809f8e4d478e8298d10226b8c85cce1cc1', 554098, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (6, N'then the previous block cannot be changed . . .', N'0000072e3a84c72d190ca04b0dfd48c3dcc99cfe7a5fbb18cb85d345a9c7bd79', 1466614, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (7, N'without changing the next block.', N'00000e898de7553a7c127b3087f685b6dabd1756f1c9fe14779dcf9499233cc8', 459265, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (8, N'Even the slightest change . . .', N'0000002f86a159d00db97052e4b2c837e9e69eafd94085886922ec942c5c9fb4', 6775430, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (9, N'triggers a whole different hash.', N'000002b205265bd0d4f17d9077ba01f94f9bbb87910cdc489dde9fc6cd72e548', 640303, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (10, N'The last block validate the whole chain', N'000009a1d063376f13df60a2dca1a7552e0ea5e484a2a9869e89a566f9576964', 1585229, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (11, N'Hallo', N'00000dc5ba6c7b4c1ca070c32fe6c5bb6251b049bc01171e888222d0b0d6e1fd', 216097, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (12, N'schon wieder', N'000002aec8847a28aefe9b5faec04cb87408ac16541f7cbdc20d997edff55d72', 1003976, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (13, N'was ist denn los', N'0000088bb41fb60119ed140fcae251577cabc635450e38696e2bbe29562cd177', 1528584, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (14, N'gehts noch', N'00000deeb7fd7a676dd6c987961e9adcc432e717cae3679ae1ce90ba49b2d5e9', 1072562, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (15, N'pass mal auf', N'000004cd8151784279a6ab491102b60d133c41bcf649c4eac9011d70b42bb941', 331181, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (16, N'halloooooooooooooooooooo', N'00000eb9dcd66ea8983fd8ce4456e2f4fbc3e5036892561a3cb51527a62bedc6', 465431, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (17, N'hihihhiiiiiiiiiiiii', N'000004b6edb2a7aff07a3f9060c7ee6c6db0ab3ad7a2c4abccf3cd689bb95a1f', 804273, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (18, N'lustig', N'000003d6b7a1e87aa5f0483256b7cc28ac5d2ba78a94b0053cb77a8fe1273951', 2755336, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (19, N'falsch', N'00000ffc1d368026dd4cf96830f3cc1248742883fe57e773b15c6141b03574ac', 1698113, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (20, N'so was??', N'0000047bcb5121c8c4e3ae810fd054b55891a6843affa132d96a1a9bae23ef29', 4313320, 5)
INSERT [TBlockChain] ([id], [Data], [Hash], [Nonce], [Difficulty]) VALUES (21, N'nichts..', N'000008c79264e5ee949b021d402f763cdac1c6003e66acc33afc2a748e6e8c27', 51765, 5)
SET IDENTITY_INSERT [TBlockChain] OFF
USE [master]
GO
ALTER DATABASE [dbBlockchain] SET  READ_WRITE 
GO
