--siparis detaylari tablosuna yeni bir kayit
--eklendiginde siparis tablosundaki 
--siparistutari alanını güncelleyen trigger i
--yaziniz

CREATE TRIGGER tgSiparisDetayiEklendiginde
ON OrderDetails AFTER INSERT
AS
BEGIN
	DECLARE @SiparisDetayiTutari numeric(12, 2),
			@OrderID int

	SELECT @SiparisDetayiTutari = Quantity*UnitPrice,
			@OrderID = OrderID
	FROM inserted 

	UPDATE Orders SET SiparisTutari = SiparisTutari +
	@SiparisDetayiTutari WHERE OrderID = @OrderID

END