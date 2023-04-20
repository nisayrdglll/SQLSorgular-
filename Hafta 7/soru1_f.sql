SELECT B.Adi AS [Bölüm Adı],
COUNT(*) AS [Öğretmen Sayısı]
FROM tblBolumler B INNER JOIN tblOgretmenler O
ON B.Kodu = O.BolumKodu
GROUP BY B.Adi
HAVING COUNT(*)>=2

