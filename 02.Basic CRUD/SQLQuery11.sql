select FirstName,LastName from Employees where Employees.ManagerID is null or ManagerID=0
select FirstName,LastName from Employees where ManagerID IS NULL