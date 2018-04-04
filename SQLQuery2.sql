CREATE TABLE Jacket(
JacketID VARCHAR(20) not null PRIMARY KEY,
JacketName VARCHAR(50),
JacketDescription VARCHAR(100),
JacketPricePerUnit decimal(5,2),
JacketQuantity INT,
JacketSize VARCHAR(10),
JacketColour VARCHAR(50),
JacketImage VARBINARY(max))

DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\Code2\Web_Assignment\WebAssignment\Images\Jackets\Bomber_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Jacket VALUES ('J101','Black Bomber','Black Bomber Jacket. Stylish, and light',50.00,4,'Large','Black',@img)


     
