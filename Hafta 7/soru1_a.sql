SELECT F.Adi AS [Fakülte Ad?], B.Adi AS [Bölüm Ad?]
FROM tblFakulteler F 
INNER JOIN tblBolumler B ON F.Kodu = B.FakulteKodu