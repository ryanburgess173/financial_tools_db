CREATE DATABASE financial_tools;

GO

USE financial_tools;

GO

CREATE TABLE Customers(
    CustomerID int NOT NULL PRIMARY KEY,
    CustomerFirstName varchar(30) NOT NULL,
    CustomerLastName varchar(60) NOT NULL,
    CustomerStreetAddress varchar(30) NOT NULL,
    CustomerAptSuiteNumber varchar(10) NOT NULL,
    CustomerCity varchar(50) NOT NULL,
    CustomerStateProvince varchar(50),
    CustomerZipCode varchar(10),
    CustomerCountry varchar(30) NOT NULL,
    CustomerPhoneNumber varchar(18),
    CustomerEmailAddress varchar(50)
);

GO

CREATE TABLE Assets(
    AssetID int NOT NULL PRIMARY KEY,
    AssetName varchar(50) NOT NULL,
    AssetAppraisedValue DECIMAL(5,2) NOT NULL,
    AssetDescription varchar(255),
    AssetOwner int FOREIGN KEY REFERENCES Customers(CustomerID)
);

GO