-- Create FactSales
IF OBJECT_ID('dbo.FactSales') IS NOT NULL DROP TABLE dbo.FactSales;
CREATE TABLE dbo.FactSales(
  SaleID INT PRIMARY KEY,
  CustomerKey INT NOT NULL REFERENCES dbo.DimCustomer(CustomerKey),
  ProductKey INT NOT NULL REFERENCES dbo.DimProduct(ProductKey),
  Quantity INT NOT NULL,
  SaleDate DATE NOT NULL,
  Price DECIMAL(10,2) NOT NULL,
  TotalSaleAmount DECIMAL(12,2) NOT NULL
);
