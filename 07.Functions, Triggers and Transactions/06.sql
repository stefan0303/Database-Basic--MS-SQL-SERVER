CREATE PROCEDURE usp_EmployeesBySalaryLevel 
(@parameterLevelOfSalary varchar(20) )
AS
BEGIN
	SELECT FirstName,LastName from Employees
	WHERE [dbo].[ufn_GetSalaryLevel](Salary) = @parameterLevelOfSalary
END