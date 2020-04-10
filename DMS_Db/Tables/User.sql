﻿CREATE TABLE [dbo].[User]
(
	[Id] INT IDENTITY (1, 1) NOT NULL PRIMARY KEY,
	[FirstName] NVARCHAR (100)  NULL,
	[LastName] NVARCHAR (100)  NULL,
	[UserName] NVARCHAR (100) NULL,
	[Email] NVARCHAR (100) NULL,
	[VolunteerId]  INT			 NOT NULL,
	[ProfilePicturePath]    NVARCHAR(MAX)   NULL,
    [Password]    VARCHAR (200)  NOT NULL,
	[PhoneNumber]       VARCHAR (13) NULL,
	[UserCategoryId]  INT			 NOT NULL,
	[UserRoleId]  INT			 NOT NULL,
	[UserActivatedDate]    DATETIME       NULL,
	[TotalLogin]  INT            NULL DEFAULT 0,
	[LastLogin]   DATETIME		 NULL DEFAULT NULL,
    [ExpirationDate] DATETIME    NULL,
	[Status]		 VARCHAR (20) NULL,
	[IsActive]            BIT            NOT NULL DEFAULT 1,
    [CreatedBy]           NVARCHAR (100) NULL,
    [CreatedDate]         DATETIME       NOT NULL DEFAULT GetDate(),
    [UpdatedBy]           NVARCHAR (100) NULL,
    [UpdatedDate]         DATETIME       NOT NULL DEFAULT GetDate()
)
