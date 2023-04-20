-- Product tablosuna Ürün eklemesi yapan ve eklemeden sonra 
--Ürünün QuantityPerUnit değerini güncelleyen sorguyu Transaction ile yazınız.

BEGIN TRANSACTION

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

     VALUES (
	 'elma', 12,5,'5kg',12.00,45,0,0,0
	 )

UPDATE Products
SET QuantityPerUnit=8,
UnitsInStock=10
WHERE ProductID=(Select Top 1 ProductId from Products Where ProductName='elma')

