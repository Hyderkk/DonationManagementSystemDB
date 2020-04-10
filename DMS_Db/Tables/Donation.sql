CREATE TABLE [dbo].[Donation]
(
	[Id] INT IDENTITY (1, 1) NOT NULL PRIMARY KEY,
	[BeneficiaryId] INT NULL,
	[VolunteerId] INT  NULL,
	[Type] NVARCHAR (50) NULL,	
	[Amount] INT NULL,
	[RationPacket] INT NULL,
	[BeneficiaryCNIC] NVARCHAR (20) NULL,
	[Description] NVARCHAR (MAX) NULL,
	[IsActive]            BIT            NOT NULL DEFAULT 1,
    [CreatedBy]           NVARCHAR (100) NULL,
    [CreatedDate]         DATETIME       NOT NULL DEFAULT GetDate(),
    [UpdatedBy]           NVARCHAR (100) NULL,
    [UpdatedDate]         DATETIME       NOT NULL DEFAULT GetDate()
)
