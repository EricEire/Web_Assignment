CREATE TABLE Trousers (
    TrousersID           VARCHAR (20)    NOT NULL primary key,
    TrousersName         VARCHAR (50),
    TrousersDescription  VARCHAR (100),
    TrousersPricePerUnit DECIMAL (5, 2),
    TrousersQuantity     INT,
    TrousersSize         VARCHAR (10),
    TrousersColour       VARCHAR (50),
    TrousersImage       VARBINARY (MAX),
)

GO 
CREATE PROC uspShowAllTrousers
AS
SELECT *
FROM Trousers

exec uspShowAllTrousers