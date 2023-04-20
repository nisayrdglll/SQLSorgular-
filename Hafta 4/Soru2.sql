Tedarikçilerin bilgilerini Tedarikçi adı, iletişim kontakt adı 
ve tam adres bilgisini içerisinde adres şehir bölge adı aralarında 
boşlukla birleştirerek getiren sorguyu yazınız.

SELECT CompanyName AS [Tedarikçi Adı],ContactName AS [iletişim kontakt adı],
Address + ' ' + ISNULL(City,'') + ' ' + ISNULL(Region,'') AS [Tam Adres] 
FROM Suppliers