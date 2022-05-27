USE [master]
GO

/****** Object:  Database [TodoService]  ******/

CREATE DATABASE [TodoService]
GO

USE [TodoService]
GO

/****** Object:  Table [dbo].[TodoItems]  ******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TodoItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[IsComplete] [bit] NOT NULL,
	[Secret] [nvarchar](125) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TodoItems] ADD  CONSTRAINT [DF_TodoItems_IsComplete]  DEFAULT ((0)) FOR [IsComplete]
GO

SET ANSI_PADDING ON
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_Name] ON [dbo].[TodoItems]
(
	[Name] ASC
)WITH (IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF) ON [PRIMARY]
GO
