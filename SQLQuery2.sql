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

DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\Code2\Web_Assignment\WebAssignment\Images\Jackets\Leather_Black_Biker_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Jacket VALUES ('J102','Black Leather Biker Jacket','Real, premium leather',200.00,4,'Large','Black',@img)

CREATE TABLE Apparel(
ApparelID VARCHAR(20) not null PRIMARY KEY,
ApparelName VARCHAR(50),
ApparelDescription VARCHAR(100),
ApparelPricePerUnit decimal(5,2),
ApparelQuantity INT,
ApparelSize VARCHAR(10),
ApparelColour VARCHAR(50),
ApparelImage VARBINARY(max))


DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\Code2\Web_Assignment\WebAssignment\Images\Apparel\Beanie_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Apparel VALUES ('A101','Black Beanie','Lovely Black Beanie',10.00,20,'Small','Grey',@img)



/*			GENERIC CONSTRUCTOR FOR ENTERING NEW DATA
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'', SINGLE_BLOB)AS MyFile)
INSERT INTO Jacket VALUES ('','','', , ,' ',' ',@img)*/

Create Table Customer(
Username VARCHAR(50) not null PRIMARY KEY,
Firstname VARCHAR(50),
Lastname VARCHAR(50),
Email VARCHAR(50),
Pass VARCHAR(100)
)

DROP TABLE Customer

CREATE PROC uspInsertCustomer
@Username VARCHAR(50),
@FirstName VARCHAR(50),
@LastName VARCHAR(50),
@Email VARCHAR(50),
@Pass VARCHAR(100)
AS
INSERT INTO Customer VALUES(@Username, @Firstname, @Lastname, @Email, @Pass)

CREATE PROC uspLoginCustomer
@user varchar(50)
AS
SELECT Username, Pass
FROM Customer 
WHERE Username=@user
GO

EXEC uspLoginCustomer @user=qqqqq

