Sipariş edilen ürünleri Ürün Adı ve Sipariş eden 
müşteri bilgilerini Müşteri Adı, Kontakt Adı ve Telefon 
bilgilerini 
Müşteri İletişim Bilgileri şeklinde aralarında boşluk olarak 
getiren sorguyu yazınız.

SELECT P.ProductName AS [Ürün Adı],
C.CompanyName + ' ' + C.ContactName + ' ' + C.Phone
AS [Müşteri İletişim Bilgileri]
FROM Products P
INNER JOIN OrderDetails OD ON P.ProductID = OD.ProductID
INNER JOIN Orders O ON OD.OrderID = O.OrderID
INNER JOIN Customers C ON O.CustomerID = C.CustomerID

