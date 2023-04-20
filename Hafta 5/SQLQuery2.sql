Select FirstName, LastName,
ISNULL(Region,'Bilinmiyor'),
CASE WHEN Region IS NULL THEN 'Bilinmiyor' ELSE Region END
FROM Employees