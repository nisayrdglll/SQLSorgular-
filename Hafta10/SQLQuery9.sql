ALTER PROCEDURE dbo.UpdateOrdersSiparisTutari
AS
BEGIN
	DECLARE @OrderID int,
			@SiparisTutari	numeric(12, 2)
	
	DECLARE siparisler CURSOR FOR
	SELECT OrderID FROM Orders WHERE SiparisTutari IS NULL

	OPEN siparisler
	FETCH NEXT FROM siparisler INTO @OrderID

	WHILE @@FETCH_STATUS=0
	BEGIN
		SELECT
				@SiparisTutari = SUM(UnitPrice*Quantity)
		FROM
				OrderDetails
		WHERE
				OrderID = @OrderID
		
		IF @SiparisTutari IS NULL
		BEGIN
			SET @SiparisTutari = 0.00
			PRINT CAST(@OrderID AS VARCHAR) + ' nolu siparisin alt siparis kaydi olmadigi icin toplam tutar 0.00 seklinde ayarlandi'
		END

		UPDATE
				Orders
		SET
				SiparisTutari = @SiparisTutari
		WHERE
				OrderID = @OrderID

		FETCH NEXT FROM siparisler INTO @OrderID
	END

	CLOSE siparisler
	DEALLOCATE siparisler
END