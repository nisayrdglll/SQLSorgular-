--musterilerin kodları ile yapmis olduklari siparis adeti
--ve birbirinden farkli urun sayilarini getiren sorgu

SELECT O.CustomerID,COUNT(DISTINCT O.OrderID) AS SiparisSayisi,
COUNT(DISTINCT OD.ProductID) AS BirbirindenFarkliUrunSayisi
FROM Orders O 
INNER JOIN OrderDetails OD ON O.OrderID = OD.OrderID
GROUP BY O.CustomerID