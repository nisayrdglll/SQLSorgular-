CREATE FUNCTION dbo.SiparisUrunleriniGetir
(
	@OrderID int
) RETURNS @Urunler TABLE (ProductName	nvarchar(40))
AS
BEGIN
	INSERT INTO @Urunler	
	SELECT
			P.ProductName
	FROM
			OrderDetails OD
			INNER JOIN Products P ON OD.ProductID = P.ProductID
	WHERE
			OD.OrderID = @OrderID
	RETURN
END