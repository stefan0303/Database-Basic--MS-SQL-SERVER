CREATE PROCEDURE usp_GetEmployeesFromTown (@TownName varchar(50))
AS
BEGIN
SELECT e.FirstName,e.LastName from Employees as e
INNER JOIN Addresses as a
ON e.AddressID=a.AddressID
INNER JOIN Towns as t
ON a.TownID = t.TownID
WHERE @TownName=t.Name
END