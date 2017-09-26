CREATE PROCEDURE usp_GetEmployeesSalaryAbove35000 
AS
BEGIN
SELECT FirstName,LastName from Employees
WHERE Salary>35000
END