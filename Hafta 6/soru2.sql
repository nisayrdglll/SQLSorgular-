SELECT DISTINCT C.CompanyName FROM
Orders O INNER JOIN Customers C 
ON O.CustomerID = C.CustomerID
UNION ALL
SELECT S.CompanyName FROM Shippers S 