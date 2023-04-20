SELECT E.FirstName,E.LastName,
ISNULL(RE.FirstName + ' ' + RE.LastName,'Bilinmiyor') AS RaporVerdigiKisi,
COUNT(DISTINCT O.OrderID) AS ToplamSiparisMiktari
FROM Employees E LEFT JOIN Employees RE ON
E.ReportsTo = RE.EmployeeID
LEFT JOIN Orders O ON E.EmployeeID = O.EmployeeID
GROUP BY E.FirstName,E.LastName,RE.FirstName,RE.LastName

