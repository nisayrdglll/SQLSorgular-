ALTER FUNCTION dbo.SiparisTutariHesapla
(
	@OrderID int
) RETURNS numeric(12, 2)
AS
BEGIN
DECLARE @SiparisTutari numeric(12, 2)

--SET @SiparisTutari = (
SELECT
		@SiparisTutari = SUM(OD.Quantity*OD.UnitPrice)
FROM
		OrderDetails OD
WHERE
		OD.OrderID = @OrderID
		--)
RETURN ISNULL(@SiparisTutari,0)
END