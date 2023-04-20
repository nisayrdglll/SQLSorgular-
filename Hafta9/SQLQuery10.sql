/*bir musterinin yapmis oldugu siparis adetini getiren fonksiyonu yaziniz
*/

ALTER FUNCTION dbo.fnGetCustomerOrderCount
(
	@CustomerID nchar(5)
)
RETURNS int
AS
BEGIN
	DECLARE @OrderCount int

	SET @OrderCount = 
	(SELECT COUNT(*) FROM Orders WHERE CustomerID=@CustomerID)

	SELECT @OrderCount=COUNT(*) FROM Orders WHERE CustomerID=@CustomerID

	RETURN @OrderCount
END