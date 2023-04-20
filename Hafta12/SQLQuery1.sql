--	Shippers tablosuna Bir satır ekleyerek, ürünler tablosundan ÜrünId’si 1 olan ürünü silen transaction sorgusunu yazınız
BEGIN TRANSACTION

INSERT INTO Shippers
(
	   
      [CompanyName]
      ,[Phone]
)
     VALUES 
	('ostim','547897456')

DELETE FROM Products WHERE ProductID=1
	   
COMMIT TRANSACTION

--(Not: Çalıştırıldığında ProductId=1 olan silme işlemi çalışmayacak, farklı tablolarla bağlantılı olduğu için Primary Key hatası mevcut)
