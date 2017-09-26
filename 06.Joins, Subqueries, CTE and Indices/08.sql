SELECT
 e.EmployeeID,
 e.FirstName,
 CASE
	WHEN p.StartDate<= '01/01/2005' THEN  p.Name
	ELSE  NULL
	END AS ProjectName
 FROM Employees as e
INNER JOIN EmployeesProjects as ep
ON e.EmployeeID=ep.EmployeeID
INNER JOIN Projects as p
ON p.ProjectID=ep.ProjectID
WHERE e.EmployeeID=24
