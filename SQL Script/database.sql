USE [master]
GO
/****** Object:  Database [Frames]    Script Date: 2018-12-07 2:59:19 PM ******/
CREATE DATABASE [Frames]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Frames', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Frames.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Frames_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Frames_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Frames] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Frames].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Frames] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Frames] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Frames] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Frames] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Frames] SET ARITHABORT OFF 
GO
ALTER DATABASE [Frames] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Frames] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Frames] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Frames] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Frames] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Frames] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Frames] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Frames] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Frames] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Frames] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Frames] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Frames] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Frames] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Frames] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Frames] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Frames] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Frames] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Frames] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Frames] SET  MULTI_USER 
GO
ALTER DATABASE [Frames] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Frames] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Frames] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Frames] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Frames] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Frames] SET QUERY_STORE = OFF
GO
USE [Frames]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Frames]
GO
/****** Object:  Table [dbo].[Balance]    Script Date: 2018-12-07 2:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Balance](
	[BalenceId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Balance] PRIMARY KEY CLUSTERED 
(
	[BalenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 2018-12-07 2:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[PhotoId] [bigint] NOT NULL,
	[CommentText] [nvarchar](512) NOT NULL,
	[Rate] [smallint] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 2018-12-07 2:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[GalleryId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[PhotoId] [bigint] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_Gallery] PRIMARY KEY CLUSTERED 
(
	[GalleryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaidDownload]    Script Date: 2018-12-07 2:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaidDownload](
	[DownloadID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[PhotoID] [bigint] NOT NULL,
	[PaidDownloadCount] [int] NOT NULL,
 CONSTRAINT [PK_PaidDownload] PRIMARY KEY CLUSTERED 
(
	[DownloadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhotoCategory]    Script Date: 2018-12-07 2:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoCategory](
	[CatId] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PhotoCategory] PRIMARY KEY CLUSTERED 
(
	[CatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photographs]    Script Date: 2018-12-07 2:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photographs](
	[PhotoId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[CatId] [int] NOT NULL,
	[PhotoName] [nvarchar](50) NOT NULL,
	[PhotoDescription] [nvarchar](1024) NOT NULL,
	[PhotoTags] [nvarchar](128) NOT NULL,
	[PhotoPrice] [decimal](18, 2) NOT NULL,
	[PhotoLocation] [nvarchar](128) NOT NULL,
	[WatermarkedLocation] [nvarchar](128) NOT NULL,
	[PhotoFileLocation] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Photographs] PRIMARY KEY CLUSTERED 
(
	[PhotoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 2018-12-07 2:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[PhotoId] [bigint] NOT NULL,
	[rating] [decimal](1, 1) NOT NULL,
	[rated] [bit] NOT NULL,
 CONSTRAINT [PK_Ratings] PRIMARY KEY CLUSTERED 
(
	[PhotoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2018-12-07 2:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [char](64) NOT NULL,
	[UserRole] [char](1) NOT NULL,
	[ProfilePhoto] [varchar](128) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ratings] ADD  CONSTRAINT [DF_Ratings_rating]  DEFAULT ((0.0)) FOR [rating]
GO
ALTER TABLE [dbo].[Ratings] ADD  CONSTRAINT [DF_Ratings_count]  DEFAULT ((0)) FOR [rated]
GO
ALTER TABLE [dbo].[Balance]  WITH CHECK ADD  CONSTRAINT [FK_Balance_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Balance] CHECK CONSTRAINT [FK_Balance_Users]
GO
ALTER TABLE [dbo].[Gallery]  WITH CHECK ADD  CONSTRAINT [FK_Gallery_Photographs] FOREIGN KEY([PhotoId])
REFERENCES [dbo].[Photographs] ([PhotoId])
GO
ALTER TABLE [dbo].[Gallery] CHECK CONSTRAINT [FK_Gallery_Photographs]
GO
ALTER TABLE [dbo].[PaidDownload]  WITH CHECK ADD  CONSTRAINT [FK_PaidDownload_Photographs] FOREIGN KEY([PhotoID])
REFERENCES [dbo].[Photographs] ([PhotoId])
GO
ALTER TABLE [dbo].[PaidDownload] CHECK CONSTRAINT [FK_PaidDownload_Photographs]
GO
ALTER TABLE [dbo].[PaidDownload]  WITH CHECK ADD  CONSTRAINT [FK_PaidDownload_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[PaidDownload] CHECK CONSTRAINT [FK_PaidDownload_Users]
GO
ALTER TABLE [dbo].[Photographs]  WITH CHECK ADD  CONSTRAINT [FK_Photographs_PhotoCategory] FOREIGN KEY([CatId])
REFERENCES [dbo].[PhotoCategory] ([CatId])
GO
ALTER TABLE [dbo].[Photographs] CHECK CONSTRAINT [FK_Photographs_PhotoCategory]
GO
ALTER TABLE [dbo].[Photographs]  WITH CHECK ADD  CONSTRAINT [FK_Photographs_Photographs] FOREIGN KEY([PhotoId])
REFERENCES [dbo].[Photographs] ([PhotoId])
GO
ALTER TABLE [dbo].[Photographs] CHECK CONSTRAINT [FK_Photographs_Photographs]
GO
ALTER TABLE [dbo].[Photographs]  WITH CHECK ADD  CONSTRAINT [FK_Photographs_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Photographs] CHECK CONSTRAINT [FK_Photographs_Users]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Photographs] FOREIGN KEY([PhotoId])
REFERENCES [dbo].[Photographs] ([PhotoId])
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Photographs]
GO
/****** Object:  StoredProcedure [dbo].[AddRating]    Script Date: 2018-12-07 2:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddRating] 
	-- Add the parameters for the stored procedure here
	@photoID BIGINT, 
	@ratings INT,
	@avgRatings DECIMAL(1,1) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @r decimal(1,1);
	DECLARE @isRated bit; 
    -- Insert statements for procedure here
	SELECT @r = rating, @isRated = rated FROM dbo.Ratings
	       WHERE PhotoId = @photoID;
    IF(@isRated = 0)
	BEGIN
		SET @isRated = 1;
		UPDATE dbo.Ratings SET rating = @ratings , rated = @isRated 
			WHERE PhotoId = @photoID;
	END 
	ELSE
	BEGIN
	SET @r =  ROUND( (@ratings+@r)/2 , 1);
	UPDATE dbo.Ratings SET rating =@r, rated = @isRated 
		WHERE PhotoId = @photoID;
	END;
	RETURN @r;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectRating]    Script Date: 2018-12-07 2:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectRating] 
	-- Add the parameters for the stored procedure here
	@photoID BIGINT, 
	@avgRatings DECIMAL(1,1) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @r decimal(1,1);
	
    -- Insert statements for procedure here
	SELECT @r = rating FROM dbo.Ratings
	       WHERE PhotoId = @photoID;
   
	RETURN @r;
END
GO
/****** Object:  StoredProcedure [dbo].[UpsertDownload]    Script Date: 2018-12-07 2:59:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpsertDownload] 
	-- Add the parameters for the stored procedure here
	@photoID BIGINT ,
	@userID BIGINT,
	@downloadCount  INT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @downloadIndex BIGINT; 
    -- Insert statements for procedure here
	IF EXISTS (SELECT DownloadID 
		FROM [dbo].[PaidDownload] WHERE PhotoID = @photoID AND UserID = @userID)
	BEGIN
		SELECT @downloadCount = PaidDownloadCount 
		FROM [dbo].[PaidDownload] WHERE PhotoID = @photoID AND UserID = @userID
		SET @downloadCount += 1;
		IF @downloadCount <4 
		UPDATE dbo.[PaidDownload] SET PaidDownloadCount = @downloadCount 
			WHERE PhotoId = @photoID AND UserID = @userID; 
	END
	ELSE 
	BEGIN
		SET @downloadCount += 1;
		
		INSERT INTO dbo.[PaidDownload]( UserID, PhotoID, PaidDownloadCount) 
		VALUES (@userID, @photoID, @downloadCount);
	END
END
GO
USE [master]
GO
ALTER DATABASE [Frames] SET  READ_WRITE 
GO
