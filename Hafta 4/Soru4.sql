Siparişlerden ağırlığı 50 birimden buyuk olan kayıtları 
Müşteri kodu, Sipariş alan personelin adı, Sipariş Tarihi
şeklinde getiren sorguyu yazınız

SELECT
O.CustomerID AS [Müşteri Kodu], 
E.FirstName AS [Sipariş alan personelin adı],
O.OrderDate AS [Sipariş Tarihi]
FROM Orders O INNER JOIN Employees E 
ON O.EmployeeID = E.EmployeeID
WHERE O.Freight > 50


