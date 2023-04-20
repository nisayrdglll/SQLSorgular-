SELECT O.OrderID, dbo.SiparisTutariHesapla(O.OrderID)
FROM
Orders O