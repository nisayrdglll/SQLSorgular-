SELECT B.Adi AS [B�l�m Ad?], 
COUNT(*) AS [B�l�mdeki �?retmen Say?s?]
FROM tblBolumler B INNER JOIN tblOgretmenler O
ON B.Kodu = O.BolumKodu
GROUP BY B.Adi
