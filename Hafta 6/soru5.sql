
SELECT C2.*,COUNT(O2.OrderID) AS ToplamSiparisAdeti
FROM Customers C2 INNER  JOIN Orders O2 
ON C2.CustomerID=O2.CustomerID
GROUP BY C2.CustomerID,C2.CompanyName,
C2.ContactName,C2.ContactTitle,
C2.Address,C2.City,C2.Region,C2.PostalCode,
C2.Country,C2.Phone,C2.Fax
HAVING COUNT(O2.OrderID) >
(SELECT COUNT(O.OrderID)/COUNT(DISTINCT C.CustomerID) FROM 
Orders O 
INNER JOIN Customers C ON O.CustomerID = C.CustomerID)