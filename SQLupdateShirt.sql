Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_Blue_2.jpg', SINGLE_BLOB)AS MyFile)
UPDATE Product
SET ProductImage = @Img
where ProductID='SH104'
