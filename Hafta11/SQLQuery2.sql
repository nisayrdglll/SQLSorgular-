--siparis detaylari tablosundan bir kayit
--silindiginde siparis tablosundaki 
--siparistutari alanını güncelleyen trigger i
--yaziniz

CREATE TRIGGER tgSiparisDetayiSilindiginde
ON OrderDetails AFTER DELETE
AS
BEGIN
	DECLARE @SiparisDetayiTutari numeric(12, 2),
			@OrderID int

	SELECT @SiparisDetayiTutari = Quantity*UnitPrice,
			@OrderID = OrderID
	FROM deleted 

	UPDATE Orders SET SiparisTutari = SiparisTutari -
	@SiparisDetayiTutari WHERE OrderID = @OrderID

END