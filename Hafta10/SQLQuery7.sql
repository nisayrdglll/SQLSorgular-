--dışarıdan girilen bir tarihe göre
--son 1 aya ait eger siparis vermemis olan 
--musteri varsa 'Toplam ... müşteri 
--son 1 ay içerisinde sipariş vermedi.', yoksa
-- 'son 1 ay içerisinde sipariş vermemiş müşteri yok'
--şeklinde ekrana bilgi yazdiran kodu yaziniz 

--DATEADD(month,-1,'2021-03-04')

DECLARE @Tarih DATE,
		@SiparisVermemisMusteriSayisi INT

SET @Tarih = '1996-08-30'

SELECT @SiparisVermemisMusteriSayisi =
COUNT(DISTINCT C.CustomerID) FROM Customers C 
LEFT JOIN Orders O ON C.CustomerID = O.CustomerID
AND O.OrderDate BETWEEN DATEADD(MONTH,-1,@Tarih) 
AND @Tarih
WHERE O.OrderID IS NULL 

IF @SiparisVermemisMusteriSayisi>0
PRINT 'Toplam '
+ CAST(@SiparisVermemisMusteriSayisi AS VARCHAR(50)) 
+' müşteri son 1 ay içerisinde sipariş vermedi.'
ELSE
PRINT 'son 1 ay içerisinde sipariş vermemiş 
müşteri yok'

