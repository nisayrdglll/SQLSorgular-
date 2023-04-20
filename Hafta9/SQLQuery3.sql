-- ürünler tablosunda henüz satışı 
-- yapilmamis olanları ürün adı, birim adi
-- ve stok miktarı seklinde 
-- ürün adına gore buyukten kucuge sırali
-- sekilde getiren
-- stored procedure u yaziniz

CREATE PROCEDURE GetUnSoldProducts
AS
BEGIN
	SELECT P.ProductName,
	P.QuantityPerUnit,
	P.UnitsInStock
	FROM Products P
	WHERE P.ProductID NOT IN (
	SELECT ProductID FROM OrderDetails
	)
	ORDER BY P.ProductName DESC
END

EXEC dbo.GetUnSoldProducts 