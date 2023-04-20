--musteri ekleyen bir stored procedure icin
--yeni musteriye siradaki sira numarasini
--sequence uzerinden veren kodu yazınız

CREATE SEQUENCE sqSiraNo
start with 1
increment by 1
maxvalue 9999

select next value for sqSiraNo 

CREATE PROCEDURE AddCustomerBySiraNo
(
	@CustomerID	nchar(5),
	@CompanyName	nvarchar(40)
)
AS
BEGIN
	DECLARE @SiraNo	int

	SELECT @SiraNo = CAST(current_value AS INT)
	FROM sys.sequences
	WHERE name='sqSiraNo'

	INSERT INTO Customers 
	(CustomerID,CompanyName,SiraNo)
	VALUES
	(@CustomerID,@CompanyName,@SiraNo)

	select next value for sqSiraNo 
END

EXEC dbo.AddCustomerBySiraNo 
@CustomerID='OSTED',
	@CompanyName='Ostim3'