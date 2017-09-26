SELECT TOP 5 e.EmployeeID,e.FirstName,p.Name FROM Employees as e
INNER JOIN EmployeesProjects as ep
ON e.EmployeeID=ep.EmployeeID
INNER JOIN Projects as p
ON p.ProjectID=ep.ProjectID
WHERE p.StartDate>2012-08-13 AND p.EndDate is NULL
ORDER BY e.EmployeeID