CREATE TABLE [dbo].[User]
(
    [user_Id] INT identity(1607000,1) NOT NULL PRIMARY KEY, 
    [Full_Name] VARCHAR(50) NOT NULL, 
    [Email] VARCHAR(50) NOT NULL, 
    [Department] VARCHAR(50) NULL, 
    [Password] VARCHAR(50) NOT NULL, 
    [User_type] VARCHAR(50) NOT NULL
)