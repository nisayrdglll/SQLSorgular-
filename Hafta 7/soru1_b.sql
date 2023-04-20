SELECT B.Adi AS [Bölüm Adı], 
O.Adi AS [Öğretmen Adı],
 O.Soyadi AS [Öğretmen Soyadı],
 O.Unvani AS [Öğretmen Unvanı]
FROM tblBolumler B INNER JOIN tblOgretmenler O
ON B.Kodu = O.BolumKodu