SELECT C.CompanyName,COUNT(*) AS SiparisAdeti
FROM Customers C 
INNER JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CompanyName
HAVING COUNT(*)>=10
ORDER BY C.CompanyName DESC