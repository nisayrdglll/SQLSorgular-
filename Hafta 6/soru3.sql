SELECT P.ProductName,
ISNULL(SUM(OD.Quantity),0) AS ToplamSatisMiktari,
S.CompanyName
FROM Products P LEFT JOIN OrderDetails OD
ON P.ProductID = OD.ProductID
INNER JOIN Suppliers S 
ON P.SupplierID = S.SupplierID
GROUP BY P.ProductName,S.CompanyName