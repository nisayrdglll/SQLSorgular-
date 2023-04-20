DECLARE @Sayi INT,
		@Toplam INT
SET @Sayi = 1
SET @Toplam = 0

WHILE 1=1
BEGIN
	IF @Sayi%2=1
		GOTO atla

	SET @Toplam = @Toplam + @Sayi

	atla:
	SET @Sayi = @Sayi + 1

	IF @Sayi = 5
		BREAK
END

PRINT 'TOPLAM:' + CAST(@Toplam AS VARCHAR)