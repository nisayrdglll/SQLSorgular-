--ürünler tablosundan tüm kayıtlari  
--getiren stored procedure ü yazınız
CREATE PROCEDURE GetProducts
AS
BEGIN
	SELECT * FROM Products
END

EXEC dbo.GetProducts 