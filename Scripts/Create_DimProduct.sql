-- Create DimProduct
IF OBJECT_ID('dbo.DimProduct') IS NOT NULL DROP TABLE dbo.DimProduct;
CREATE TABLE dbo.DimProduct(
  ProductKey INT IDENTITY(1,1) PRIMARY KEY,
  Category NVARCHAR(50),
  Subcategory NVARCHAR(50),
  ProductName NVARCHAR(100),
  UnitPrice DECIMAL(10,2)
);
