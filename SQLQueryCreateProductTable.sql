CREATE TABLE Product (
    ProductID          VARCHAR (20)    NOT NULL PRIMARY KEY,
    ProductType         VARCHAR (20),
    ProductName         VARCHAR (50),
    ProductDescription VARCHAR (100),
    ProductPricePerUnit DECIMAL (5, 2),
    ProductQuantity    INT            ,
    ProductSize         VARCHAR (10)   ,
    ProductColour       VARCHAR (50)    ,
    ProductImage        VARBINARY (MAX) ,
    
)

