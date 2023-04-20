/*müşterilerin siparislerini müşteri adı,
siparis tarihi, siparisteki urun adeti seklinde
müşteri ve siparise gore filtreleyerek getiren 
stored procedure u yazınız
*/

ALTER PROCEDURE CustomerOrders
(
	@CustomerID nchar(5) = NULL,
	@OrderID int = NULL
)
AS
BEGIN
	SELECT
			C.CompanyName AS [müşteri adı],
			O.OrderDate AS [siparis tarihi],
			SUM(OD.Quantity) AS [siparisteki urun adeti]
	FROM
			Customers C
			INNER JOIN Orders O ON C.CustomerID = O.CustomerID
			INNER JOIN OrderDetails OD ON O.OrderID = OD.OrderID
	WHERE
			(@CustomerID IS NULL OR C.CustomerID = @CustomerID)
			AND (@OrderID IS NULL OR O.OrderID = @OrderID)
	GROUP BY
			C.CompanyName,
			O.OrderDate,
			O.OrderID
END