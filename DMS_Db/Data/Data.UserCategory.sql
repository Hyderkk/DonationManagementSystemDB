SET IDENTITY_INSERT UserCategory ON;

MERGE INTO UserCategory AS Target 
USING (VALUES 
  (1, N'Super Admin',  1, getdate(), getdate()), 
  (2, N'Client',  1, getdate(), getdate()),
  (3, N'Customer',  1, getdate(), getdate()),
  (4, N'Consumer',  1, getdate(), getdate())
) 
AS Source (Id, [Name], [IsActive], [CreatedDate], [UpdatedDate]) 
ON Target.Id = Source.Id

--update matched rows
WHEN MATCHED 
THEN 
UPDATE SET 
	[Name] = Source.[Name], 
	[IsActive] = Source.[IsActive],
	[UpdatedDate] = Source.UpdatedDate

--insert new rows
WHEN NOT MATCHED BY TARGET THEN 
INSERT (Id, [Name], [IsActive], [CreatedDate], [UpdatedDate]) 
VALUES (Source.Id, Source.[Name], Source.[IsActive], Source.[CreatedDate], Source.[UpdatedDate]);

SET IDENTITY_INSERT UserCategory OFF;