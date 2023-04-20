--siparisler tablosuna kargoucreti alanını ekleyen
-- ve siparis agirligi her 10 birim için 1 TL kargo
--ucreti olacak sekilde bu alani guncelleyen kodu
--yaziniz

ALTER TABLE Orders ADD KargoUcreti NUMERIC(12,2)

--UPDATE Orders SET KargoUcreti = CAST(Freight AS INT)/10

DECLARE @KargoUcreti numeric(12,2),
		@OrderID INT

DECLARE Siparisler CURSOR FOR 
SELECT OrderID,CAST(Freight AS INT)/10 FROM Orders

OPEN Siparisler

FETCH NEXT FROM Siparisler INTO @OrderID,@KargoUcreti

WHILE @@FETCH_STATUS=0
BEGIN
	UPDATE Orders SET KargoUcreti = @KargoUcreti WHERE
	OrderID = @OrderID

	FETCH NEXT FROM Siparisler INTO @OrderID,@KargoUcreti
END

CLOSE Siparisler
DEALLOCATE Siparisler


