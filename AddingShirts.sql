
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH101','Shirt','Black Shirt','An equisite black shirt',20.00,5,'Medium','Black',@img);