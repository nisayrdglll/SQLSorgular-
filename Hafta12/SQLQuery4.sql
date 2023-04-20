--Ürünler tablosuna ürün eklemesi yapan
--ardından eklenen ürünün QuantityPerUnit ve UnitsInOrder değerlerini güncelleyen sorguyu Transaction bloğu içinde 
-- güncelleme ve ekleme gerçekleştirilirse 'Ekleme Başarıyla Tamamlandı', gerçekleşmezse 'Üzgünüm ekleme yapılamadı' yazdıran sorguyu yazınız.
BEGIN TRY
	BEGIN TRANSACTION AddProductt

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
     VALUES ('çilek', 18,5,'8kg',85.0,68,0,0,0)

	UPDATE Products
		SET QuantityPerUnit = '800gr',
			UnitsOnOrder = 74 
		WHERE ProductID = (Select ProductID from Products where ProductName='çilek')

	COMMIT TRANSACTION AddProductt
	PRINT 'Ekleme Başarıyla Tamamlandı'
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION AddProductt
		PRINT 'Üzgünüm ekleme yapılamadı'
END CATCH
	
SELECT * FROM Products

