--berlin ve madridde kayitli 
--ilk musterilerin adını print ile yazdıran kodu yazınız

DECLARE @MusteriAdi nvarchar(40)

SELECT TOP 1 @MusteriAdi = CompanyName FROM Customers  
WHERE City='Berlin'

PRINT @MusteriAdi

SELECT TOP 1 @MusteriAdi = CompanyName FROM Customers  
WHERE City='Madrid'

PRINT @MusteriAdi