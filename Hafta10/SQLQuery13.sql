DECLARE @Sayi INT,
		@Toplam INT
SET @Sayi = 1
SET @Toplam = 0

WHILE 1=1
BEGIN
	IF @Sayi = 5
		BREAK

	IF @Sayi%2=1
	BEGIN
		SET @Sayi = @Sayi + 1
		CONTINUE
	END

	SET @Toplam = @Toplam + @Sayi
	SET @Sayi = @Sayi + 1

END

PRINT 'TOPLAM:' + CAST(@Toplam AS VARCHAR)