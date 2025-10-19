-- Row counts (staging vs warehouse)
SELECT 'Customer' Tbl, COUNT(*) Cnt FROM Staging.Customer
UNION ALL SELECT 'Product', COUNT(*) FROM Staging.Product
UNION ALL SELECT 'Sales', COUNT(*) FROM Staging.Sales;
SELECT 'DimCustomer' Tbl, COUNT(*) FROM dbo.DimCustomer
UNION ALL SELECT 'DimProduct', COUNT(*) FROM dbo.DimProduct
UNION ALL SELECT 'FactSales', COUNT(*) FROM dbo.FactSales;
