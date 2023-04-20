-- Birim Fiyatı adında bir değişken oluşturup bu değişkene Ürünler tablosundaki ÜrünId'si 10 olan ürünün Birim Fiyatı bulunacak
-- Ardından Transacation bloğu içerisinde Ürünler tablosuna ürün eklemesi yapılacak eğer Birim Fiyatı değişkeni 25'den küçükse
-- ekleme gerçekleşmeyecek ve 'Üzgünüm Stok miktarı 25 den fazla olmalı' hatası yazdırılmalı, ancak Birim Fiyat değikeni 25'den büyükse
-- Product tablosuna ekleme yapılacak ve 'Ekleme Yapıldı' yazdırılacak

DECLARE @UnitPrice money = (Select UnitPrice From Products Where ProductID=10)

BEGIN TRANSACTION AddProducts

INSERT INTO Products(
	   [ProductName]
      ,[SupplierID]
      ,[CategoryID]
      ,[QuantityPerUnit]
      ,[UnitPrice]
      ,[UnitsInStock]
      ,[UnitsOnOrder]
      ,[ReorderLevel]
      ,[Discontinued]
	   )
     VALUES ('armut', 18,5,'5kg',12,68,0,0,0)

IF @UnitPrice < 25
	BEGIN
	    ROLLBACK TRANSACTION AddProducts
	    PRINT 'Üzgünüm Stok miktarı 25 den fazla olmalı'
	END
ELSE
	BEGIN
		COMMIT TRANSACTION AddProducts
		PRINT 'Ekleme Yapıldı'
	END		
SELECT * FROM Products

