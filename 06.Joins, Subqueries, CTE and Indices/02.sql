SELECT TOP 50 e.FirstName,e.LastName,t.Name,a.AddressText FROM Employees as e
INNER JOIN Addresses as a
ON a.AddressID=e.AddressID
INNER JOIN Towns as t
ON t.TownID=a.TownID
ORDER BY e.FirstName,e.LastName