SELECT B.*
FROM tblFakulteler F 
INNER JOIN tblBolumler B ON F.Kodu = B.FakulteKodu
WHERE F.Adi = 'Mühendislik ve Mimarlık Fakültesi'