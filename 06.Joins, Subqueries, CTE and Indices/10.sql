SELECT TOP 50 e.EmployeeID,e.FirstName +' '+ e.LastName as EmployeeName, em.FirstName+' '+em.LastName as ManagerName,d.Name as DepartmentName FROM Employees AS e
INNER JOIN Employees as em
ON em.EmployeeID=e.ManagerID
INNER JOIN Departments as d
ON e.DepartmentID=d.DepartmentID
ORDER BY EmployeeID