SELECT 
ROW_NUMBER() OVER(ORDER BY C.CompanyName DESC) AS SiraNo,
C.CompanyName,COUNT(*) AS SiparisAdeti
FROM Customers C 
INNER JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CompanyName

HAVING COUNT(*)>=10