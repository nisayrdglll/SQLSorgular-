/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ShipCountry],[SiparisTutari]
FROM (

SELECT 
		ROW_NUMBER() OVER(PARTITION BY [ShipCountry] ORDER BY [ShipCountry],[SiparisTutari] DESC) AS Sira
      ,[ShipCountry]
      ,[SiparisTutari]
  FROM [NORTHWND].[dbo].[Orders] o 
  where [ShipCountry] is not null
  ) T WHERE T.Sira IN (1,2)