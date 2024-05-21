-- connect to the created Azure SQL database using the MSSMS or Azure Data Studio
-- create table 'P1_Customer' in the database 
IF OBJECT_ID('P1_Customer', 'U') IS NOT NULL
    DROP TABLE P1_Customer;
GO

CREATE TABLE P1_Customer (
    Customer_ID NVARCHAR(50) PRIMARY KEY, 
    Customer_Name NVARCHAR(200) NOT NULL,
    Email_Address NVARCHAR(100) NOT NULL,
    Phone_Number NVARCHAR(20) NOT NULL,
    Account_Number NVARCHAR(50) NOT NULL,
    Account_Balance DECIMAL(18, 2) NOT NULL
);

SELECT TOP (1000) [Customer_ID]
      ,[Customer_Name]
      ,[Email_Address]
      ,[Phone_Number]
      ,[Account_Number]
      ,[Account_Balance]
  FROM [dbo].[P1_Customer]
