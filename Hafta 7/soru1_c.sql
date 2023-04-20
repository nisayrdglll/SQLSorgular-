SELECT B.Adi AS [Bölüm Ad?], 
COUNT(*) AS [Bölümdeki Ö?retmen Say?s?]
FROM tblBolumler B INNER JOIN tblOgretmenler O
ON B.Kodu = O.BolumKodu
GROUP BY B.Adi
