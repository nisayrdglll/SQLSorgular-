--musteri ekleyen bir stored procedure icin
--yeni musteriye siradaki sira numarasini
--sequence uzerinden veren kodu yazınız

CREATE SEQUENCE sqSiraNo
start with 1
increment by 1
maxvalue 9999

select next value for sqSiraNo 

