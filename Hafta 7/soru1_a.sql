SELECT F.Adi AS [Fak�lte Ad?], B.Adi AS [B�l�m Ad?]
FROM tblFakulteler F 
INNER JOIN tblBolumler B ON F.Kodu = B.FakulteKodu