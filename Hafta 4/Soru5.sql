Müşterilerin siparişlerini Müşteri Adı,
Sipariş Tarihi, Toplam Sipariş Edilen Farklı Ürün Sayısı 
ve Toplam Sipariş Tutarı şeklinde getiren sorguyu yazınız.

SELECT 
C.CompanyName AS [Müşteri Adı],
O.OrderDate AS [Sipariş Tarihi],
COUNT(DISTINCT OD.ProductID) AS [Toplam Sipariş Edilen Farklı Ürün Sayısı],
SUM(OD.UnitPrice * OD.Quantity) AS [Toplam Sipariş Tutarı]
FROM Customers C
INNER JOIN Orders O  ON C.CustomerID = O.CustomerID
INNER JOIN OrderDetails OD ON O.OrderID = OD.OrderID
GROUP BY C.CompanyName,O.OrderDate
