--Select EmployeeID,FirstName,LastName,MiddleName,JobTitle,DepartmentID,ManagerID,HireDate,Salary,AddressID   from Employees where jobtitle='Sales Representative'
SELECT * FROM Employees AS e
WHERE e.JobTitle = 'Sales Representative'