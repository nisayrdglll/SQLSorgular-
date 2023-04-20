--her bir calisanin almis oldugu siparis sayilarini 
--ayri ayri hesaplayarak calisan tablosuna eklenen 
--toplamsiparissayisi alanini guncelleyen 
--kodu yaziniz

ALTER TABLE Employees ADD ToplamSiparisSayisi INT

DECLARE @EmployeeID INT,
		@ToplamSiparisSayisi INT

DECLARE Calisanlar CURSOR FOR 
SELECT EmployeeID FROM Employees

OPEN Calisanlar

FETCH NEXT FROM Calisanlar INTO @EmployeeID

WHILE @@FETCH_STATUS=0
BEGIN
	SET @ToplamSiparisSayisi = (SELECT COUNT(*) FROM 
	Orders WHERE EmployeeID = @EmployeeID)

	UPDATE Employees SET ToplamSiparisSayisi=
	@ToplamSiparisSayisi WHERE EmployeeID = 
	@EmployeeID

	FETCH NEXT FROM Calisanlar INTO @EmployeeID
END

CLOSE Calisanlar
DEALLOCATE Calisanlar