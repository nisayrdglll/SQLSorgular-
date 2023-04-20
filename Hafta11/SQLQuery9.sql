--musteri tablosundaki tüm sıra numarasız kayıtlara 
--sequence ile tek tek sira numarası atayan kodu
--yaziniz
DECLARE @CustomerID nchar(5),
		@SiraNo int


DECLARE musteriler CURSOR FOR
SELECT CustomerID FROM Customers 
WHERE SiraNo IS NULL

OPEN musteriler

FETCH NEXT FROM musteriler INTO @CustomerID

WHILE @@FETCH_STATUS = 0
BEGIN
	SELECT @SiraNo = CAST(current_value AS INT)
	FROM sys.sequences 
	WHERE name='sqSiraNo'

	UPDATE Customers SET SiraNo = @SiraNo
	WHERE CustomerID = @CustomerID

	SELECT NEXT VALUE FOR sqSiraNo

	FETCH NEXT FROM musteriler INTO @CustomerID
END

CLOSE musteriler
DEALLOCATE musteriler


