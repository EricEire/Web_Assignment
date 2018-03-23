CREATE PROC uspCreateSaleItem
AS
CREATE TABLE SaleItem(
Title VARCHAR(50),
Price Decimal(5,2),
Description VARCHAR (100),
Image VARCHAR (100),
ItemType VARCHAR (100),
)
GO
