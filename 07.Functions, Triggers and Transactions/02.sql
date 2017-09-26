CREATE PROCEDURE usp_GetEmployeesSalaryAboveNumber(@Number money)
AS
BEGIN

SELECT FirstName,LastName from Employees
WHERE Salary>=@Number

END