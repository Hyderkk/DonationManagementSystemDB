CREATE TABLE [dbo].[Volunteer]
(
	[Id] INT IDENTITY (1, 1) NOT NULL PRIMARY KEY,
	[FirstName] NVARCHAR (MAX) NULL,
	[LastName] NVARCHAR (MAX) NULL,
	[Email] NVARCHAR (200)  NULL,
	[PhoneNumber]       VARCHAR (13) NULL,
	[Address] NVARCHAR (MAX) NULL,
	[City]       NVARCHAR (100) NULL,
	[Town]       NVARCHAR (100) NULL,
	[CNIC] NVARCHAR (20) NULL,
	[Type] NVARCHAR (MAX) NULL,
	[Notes] NVARCHAR (MAX) NULL,
	[IsActive]            BIT            NOT NULL DEFAULT 1,
    [CreatedBy]           NVARCHAR (100) NULL,
    [CreatedDate]         DATETIME       NOT NULL DEFAULT GetDate(),
    [UpdatedBy]           NVARCHAR (100) NULL,
    [UpdatedDate]         DATETIME       NOT NULL DEFAULT GetDate(),
)
