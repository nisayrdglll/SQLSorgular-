--ürünler tablosundan belirli bir 
--ürüne ait kaydı 
--getiren stored procedure ü yazınız
CREATE PROCEDURE GetProductByProductID
(
	@ProductID int
)
AS
BEGIN
	SELECT * FROM Products 
	WHERE ProductID = @ProductID
END

EXEC dbo.GetProductByProductID @ProductID=1