SELECT TOP 5 e.EmployeeID, e.JobTitle ,a.AddressID ,a.AddressText FROM Addresses  as a
INNER JOIN Employees as e
ON e.AddressID = a.AddressID
ORDER BY e.AddressID