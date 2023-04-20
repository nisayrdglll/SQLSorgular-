SELECT O.Adi AS [Öğretmenin Adı],
O.Soyadi AS [Öğretmenin Soyadı],
O.TCKimlikNo AS [Öğretmenin TC Kimlik No]
FROM tblOgretmenler O INNER JOIN tblBolumler B
ON O.BolumKodu = B.Kodu
WHERE O.Unvani='Doçent' 
OR B.Adi = 'Bilgisayar Programcılığı'
