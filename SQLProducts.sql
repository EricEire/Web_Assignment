Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_Black_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH102','Shirt','Black Shirt','Black as midnight',25.00,5,'Large','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_Blue_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH103','Shirt','Blue Shirt','Beautity in Blue',25.00,5,'Large','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_Blue_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH104','Shirt','Blue Shirt','Mr Blue Sky',20.00,5,'Medium','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_CHeck_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH105','Shirt','Red Check','Check it out',30.00,5,'Large','Red',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_Check_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH106','Shirt','Green Check','Check please',30.00,5,'Large','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_Check_3.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH107','Shirt','Red Check','Check please',25.00,5,'Small','Red',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_Check_4.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH108','Shirt','Grey Check','Check please!',25.00,5,'Small','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_Floral_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH109','Shirt','Floral Splatter','Flower Power',35.00,3,'Medium','White',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_Floral_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH110','Shirt','Floral Print','Flower Power',35.00,3,'Medium','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_Floral_3.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH111','Shirt','Floral Print','Groovy',40.00,3,'Large','Cream',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_Floral_4.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH112','Shirt','Floral Sleeve','Groovy',40.00,3,'Medium','White',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_Grey_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH113','Shirt','Slate Grey','Cool, calm, collected',25.00,5,'Medium','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_LightBlue_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH114','Shirt','Light Blue','Cool and Light',25.00,2,'Small','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_Purple_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH115','Shirt','Wine','Like A Glass of Red',30.00,5,'Large','Purple',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_White_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH116','Shirt','Snow White','Nothing Plain Here',20.00,5,'Small','White',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shirts\Shirt_White_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('SH117','Shirt','Ice White','Classic',20.00,5,'Medium','White',@img);
                                                            --End of Shirts--
														 --Beginning of Apparel--
Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Beanie_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP101','Apparel','Black Beanie','Top Hat',10.00,5,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Beanie_Black_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP102','Apparel','Lovely Beanie','Of Course, They Are All Lovely Beanies',10.00,5,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Beanie_Grey_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP103','Apparel','Grey Beanie','Classic Look',10.00,5,'Medium','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Beanie_Yellow_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP104','Apparel','Yellow Beanie','Hello Yellow',10.00,5,'Medium','Yellow',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Belt_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP105','Apparel','Black Belt','Premium Leather',20.00,5,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Belt_Black_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP106','Apparel','Black Belt','Premium Leather',20.00,5,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Belt_Black_3.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP107','Apparel','Black Belt','Premium Leather,Silver Buckle',30.00,5,'Medium','Black',@img)

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Belt_Black_4.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP108','Apparel','Black Belt','Premium Leather, Gold Buckle',30.00,5,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Belt_Brown_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP109','Apparel','Brown Belt','Premium Leather',20.00,5,'Medium','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Belt_Brown_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP110','Apparel','Brown Belt','Premium Leather',20.00,5,'Medium','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Belt_Brown_3.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP111','Apparel','Brown Belt','Premium Leather',20.00,5,'Medium','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Belt_Brown_4.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP112','Apparel','Brown Belt','Premium Leather',20.00,5,'Medium','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Bow_Tie_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP113','Apparel','Bow Tie','Red Velvet',30.00,5,'Medium','Red',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Bow_Tie_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP114','Apparel','Bow Tie','Floral Elegance',20.00,5,'Medium','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Cap_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP115','Apparel','Black Cap','Back In Black',15.00,5,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Cap_Black_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP116','Apparel','Black Cap','Cool',15.00,5,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Cap_Grey_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP117','Apparel','Grey Cap','Cool',15.00,5,'Medium','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Cap_Suede_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP118','Apparel','Suede Cap','Sweet Suede',25.00,5,'Medium','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Tie_Black.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP119','Apparel','Black Tie','Classic',20.00,3,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Tie_Blue.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP120','Apparel','Blue Tie','Mr Blue Tie',20.00,3,'Medium','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Tie_Burgandy.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP121','Apparel','Burgandy Tie','Rich Mahagony',25.00,3,'Medium','Red',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Tie_Check.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP122','Apparel','Check Tie','Check Please!',20.00,3,'Medium','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Tie_Floral.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP123','Apparel','Floral Tie','Flower Power',20.00,3,'Medium','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Tie_Floral.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP124','Apparel','Velvet Tie','Velvety Soft',30.00,1,'Medium','Green',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Tie_Pink.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP125','Apparel','Pink Tie','Gorgeous',20.00,1,'Medium','Pink',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Apparel\Tie_Silver.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('AP126','Apparel','Silver Tie','Solid',20.00,1,'Medium','Silver',@img);
															--End Apparel--
															 --Jackets--
Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Bomber_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA101','Jackets','Black Bomber','Bombs Away',45.00,6,'Large','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Cord_Tan_Jacket_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA102','Jackets','Tan Cord Jacket','Faux Fur Lined',50.00,4,'Small','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Denim_Jacket_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA103','Jackets','Black Denim Jacket','Faux Fur Lined',45.00,8,'Small','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Denim_Jacket_Blue_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA104','Jackets','Blue Denim Jacket','Faux Fur Lined',45.00,8,'Small','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Denim_Jacket_Blue_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA105','Jackets','Blue Denim Jacket','Faux Fur Lined',45.00,4,'Medium','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Leather_Black_Biker_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA106','Jackets','Leather Biker Jacket','Authentic Irish Leather',190.00,4,'Large','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Leather_Black_Biker_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA107','Jackets','Leather Biker Jacket','Authentic Irish Leather',210.00,2,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Leather_Black_Racer_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA108','Jackets','Leather Racer Jacket','Authentic Irish Leather',170.00,2,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Overcoat_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA109','Jackets','Black Overcoat','Winter Styles',150.00,6,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Overcoat_Brown_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA110','Jackets','Brown Overcoat','Winter Styles',150.00,4,'Small','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Overcoat_Grey_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA111','Jackets','Grey Overcoat','Winter Styles',150.00,6,'Medium','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Parka_Jacket_Black_FauxFur.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA112','Jackets','Parka Jacket','Faux Fur',100.00,6,'Medium','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Puffer_Jacket_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA113','Jackets','Puff Jacket','Puffy',50.00,4,'Small','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Suede_Biker_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA114','Jackets','Suede Biker Jacket','Sweet Suede',140.00,4,'Medium','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Suede_Racer_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA115','Jackets','Suede Racer Jacket','Sweet Suede',140.00,4,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Jackets\Suede_Racer_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('JA116','Jackets','Suede Racer Jacket','Sweet Suede',140.00,4,'Medium','Brown',@img);
															--End Jackets--
															--Start Shoes--
Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Boot_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW101','Shoes','Black Boots','Put Your Foot Down',70.00,4,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Boot_Black_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW102','Shoes','Black Boots','Style and Comfort',70.00,4,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Boot_Black_3.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW103','Shoes','Black Boots','Quality Leather',80.00,4,'Large','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Boot_Black_4.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW104','Shoes','Black Boots','Tan soled',70.00,4,'Small','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Boot_Brown_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW105','Shoes','Brown Suede Boots','Style and Comfort',65.00,4,'Medium','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Boot_Brown_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW106','Shoes','Brown Boots','Classic Style',60.00,2,'Medium','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Boot_Brown_3.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW107','Shoes','Brown Boots','Classic Style',90.00,6,'Large','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Boot_Brown_4.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW108','Shoes','Brown Suede Boots','Authentic Suede',60.00,6,'Large','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Boot_Brown_5.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW109','Shoes','Brown Boots','For The Outdoors Man',110.00,6,'Large','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Shoe_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW110','Shoes','Black Shoes','Classic',40.00,3,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Shoe_Black_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW111','Shoes','Black Suede Shoes','A New Take',45.00,7,'Medium','Black',@img);


Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Shoe_Black_3.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW112','Shoes','Black Shoes','A New Classic',47.00,3,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Shoe_Black_4.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW113','Shoes','Black Shoes','A New Classic',40.00,6,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Shoe_Brown_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW114','Shoes','Brown Shoes','For The Stylish Man',40.00,6,'Small','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Shoe_Brown_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW115','Shoes','Brown Shoes','For The Stylish Man',45.00,3,'Medium','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Shoe_Brown_3.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW116','Shoes','Brown Shoes','Stylish, Smart ',50.00,3,'Medium','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Shoe_Brown_4.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW117','Shoes','Brown Shoes','Simply Stylish',40.00,4,'Large','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Trainer_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW118','Shoes','Black Trainers','Sporty',30.00,4,'Large','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Trainer_Black_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW119','Shoes','Black Trainers','Casual Wear',30.00,4,'Large','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Trainer_Brown_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW120','Shoes','Brown Trainers','Casual Wear',30.00,4,'Large','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Trainer_Canvas_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW121','Shoes','Canvas Trainers','Casual Wear',30.00,4,'Large','White',@img);


Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Trainer_Croc_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW122','Shoes','Crocodile Leather Trainers','Snappy',70.00,4,'Large','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Trainer_Grey_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW123','Shoes','Grey Canvas Trainers','Casual Wear',35.00,4,'Small','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Trainer_HiTop_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW124','Shoes','HiTop','Casual Wear With Support',55.00,4,'Medium','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Trainer_HiTop_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW125','Shoes','HiTop','Casual Wear With Support',55.00,4,'Medium','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Shoes\Trainer_White_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('FW126','Shoes','White Trainer','Simple, Classic, Casual',30.00,4,'Medium','White',@img);
									--End Shoes--
									--Tops--
Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Tops\LS_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TO101','Tops','Black Long Sleeve','Simple But Stylish',17.00,8,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Tops\LS_BlackandGray_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TO102','Tops','Black and Grey Long Sleeve','Simple But Stylish',17.00,8,'Medium','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Tops\LS_BlackandRed_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TO103','Tops','Black and Red Long Sleeve','Simple But Stylish',17.00,8,'Medium','Red',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Tops\LS_Brown_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TO104','Tops','Brown Long Sleeve','Comfort Wear',12.00,8,'Medium','Brown',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Tops\LS_Green_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TO105','Tops','Green Long Sleeve','Comfort Wear',12.00,8,'Medium','Green',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Tops\LS_Grey_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TO106','Tops','Grey Long Sleeve','Comfort Wear',12.00,8,'Medium','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Tops\LS_Red_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TO107','Tops','Red Long Sleeve','Comfort Wear',12.00,8,'Medium','Red',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Tops\LS_White_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TO108','Tops','White Long Sleeve','Comfort Wear',12.00,8,'Medium','White',@img);
														--End Tops--
														--Trousers--
Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR101','Trousers','Black Jeans','Black Midnight',30.00,8,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_Black_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR102','Trousers','Black Jeans','Comfort Fit',30.00,8,'Large','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_Black_3.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR103','Trousers','Black Jeans','Comfort Fit',27.00,8,'Large','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_Black_4.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR104','Trousers','Black Jeans','Comfort Fit',32.00,5,'Large','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_Black_5.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR105','Trousers','Black Jeans','Classic Look',35.00,5,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_BlackFaded_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR106','Trousers','Black Faded Jeans','This Style Wont Fade',30.00,4,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_BlackFaded_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR107','Trousers','Black Faded Jeans','This Style Wont Fade',30.00,5,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_BlueFaded_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR108','Trousers','Blue Faded Jeans','This Style Wont Fade',30.00,2,'Medium','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_BlueFaded_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR109','Trousers','Blue Faded Jeans','This Style Wont Fade',30.00,8,'Medium','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_BlueFaded_3.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR110','Trousers','Blue Faded Jeans','Hint Of Acid Wash',30.00,2,'Small','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_DarkBlue_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR111','Trousers','Dark Blue Jeans','Classic Style',32.00,3,'Medium','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_DarkBlue_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR112','Trousers','Dark Blue Jeans','Classic Style',32.00,7,'Medium','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_DarkBlue_3.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR113','Trousers','Dark Blue Jeans','Classic Style',32.00,8,'Small','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_DarkBlue_4.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR114','Trousers','Dark Blue Jeans','Classic Style',32.00,6,'Large','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_DarkBlue_5.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR115','Trousers','Dark Blue Jeans','New Style',25.00,3,'Large','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_Faded_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR116','Trousers','Blue Faded Jeans','New Style',27.00,4,'Small','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_Faded_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR117','Trousers','Blue Faded Jeans','New Style',30.00,4,'Medium','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_Faded_3.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR118','Trousers','Blue Faded Jeans','New Style',30.00,4,'Large','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_Grey_Faded_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR119','Trousers','Grey Faded Jeans','New Style',32.00,6,'Medium','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_GreyWash_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR120','Trousers','Grey Wash Jeans','New Style',32.00,2,'Medium','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_GreyWash_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR121','Trousers','Grey Wash Jeans','New Style',32.00,2,'Small','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_LightBlue_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR122','Trousers','Light Blue Jeans','Classic Style',25.00,2,'Small','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_LightBlue_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR123','Trousers','Light Blue Jeans','Barely Blue',25.00,2,'Small','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_RippedBlack_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR124','Trousers','Black Ripped Jeans','Precision Sliced',35.00,2,'Large','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_RippedBlack_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR125','Trousers','Black Ripped Jeans','To Shreds You Say?',35.00,2,'Large','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_RippedBlue_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR126','Trousers','Blue Ripped Jeans','Diamond Cut',35.00,2,'Large','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_RippedBlue_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR127','Trousers','Blue Ripped Jeans','Diamond Cut',35.00,6,'Large','Blue',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_RippedGrey_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR128','Trousers','Grey Ripped Jeans','Fit For The Bin Honestly',27.00,6,'Large','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_White_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR129','Trousers','Grey Ripped Jeans','Stain Resistant',35.00,6,'Medium','White',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\Trousers\Mens_Jeans_White_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TR130','Trousers','Grey Ripped Jeans','Stain Proof',35.00,6,'Small','White',@img);
													--end trousers--
													--Tshirts--
Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Dark_Red_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS101','TShirts','Dark Red TShirt','Muscle Fit',15.00,4,'Small','Red',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Floral_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS102','TShirts','Floral TShirt','Print Series',15.00,5,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Floral_Splatter_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS103','TShirts','Floral Splatter TShirt','Print Series',15.00,5,'Medium','White',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Muscle_Black_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS104','TShirts','Black Muscle TShirt','Muscle Fit',17.00,5,'Large','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Muscle_Grey_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS105','TShirts','Grey Muscle TShirt','Muscle Fit',17.00,5,'Large','Grey',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Muscle_Navy_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS106','TShirts','Navy Muscle TShirt','Muscle Fit',17.00,7,'Medium','Navy',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Muscle_White_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS107','TShirts','White Muscle TShirt','Muscle Fit',17.00,7,'Small','White',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Pink_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS108','TShirts','Pink TShirt','Cool and Light',15.00,7,'Medium','Pink',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Print_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS109','TShirts','Print TShirt','Print Series',19.00,7,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Print_2.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS110','TShirts','Print TShirt','Print Series',19.00,7,'Medium','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Print_3.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS111','TShirts','Print TShirt','Print Series',19.00,3,'Large','White',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Print_4.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS112','TShirts','Print TShirt','Print Series',19.00,9,'Small','Black',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Radar_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS113','TShirts','Print TShirt','Print Series',19.00,9,'Small','White',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Raglan_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS114','TShirts','Raglan TShirt','New Style',14.00,3,'Medium','White',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Stripe_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS115','TShirts','Striped TShirt','New Style',14.00,3,'Medium','White',@img);

Go
DECLARE @img AS VARBINARY(MAX)
SET @img = (SELECT BulkColumn FROM OPENROWSET(BULK'C:\code\WebAssignment\Images\TShirts\TShirt_Stripe_1.jpg', SINGLE_BLOB)AS MyFile)
INSERT INTO Product(ProductID,ProductType, ProductName, ProductDescription, ProductPricePerUnit, ProductQuantity,ProductSize,ProductColour,ProductImage)
VALUES('TS116','TShirts','Striped Sleeve TShirt','New Style',14.00,3,'Medium','Blue',@img);
															--End Tshirts--