CREATE FUNCTION ufn_GetSalaryLevel(@salary MONEY) 
RETURNS varchar(55)
AS
BEGIN
	DECLARE @SalaryLevel int
	if(@salary<30000)
	BEGIN
		RETURN 'Low'
	END
	if(@salary>=30000 and @salary<=50000)
	BEGIN 
		RETURN 'Average'
	END
	if(@salary>50000)
	BEGIN
		RETURN 'High'
	END
	RETURN @SalaryLevel
END
--SELECT dbo.ufn_GetSalaryLevel([Salary]), Salary
 -- FROM [Employees];