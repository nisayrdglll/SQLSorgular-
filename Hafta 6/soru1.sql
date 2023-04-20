SELECT O.*,S.CompanyName AS KargoFirmasi FROM
Orders O INNER JOIN Shippers S 
ON O.ShipVia=S.ShipperID
