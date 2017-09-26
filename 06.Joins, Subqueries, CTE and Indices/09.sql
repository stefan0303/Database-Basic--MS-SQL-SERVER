SELECT e.EmployeeID,e.FirstName,e.ManagerID,me.FirstName as ManagerName FROM Employees as e
INNER JOIN Employees as me
ON me.EmployeeID=e.ManagerID
WHERE e.ManagerID IN(3,7)
ORDER BY e.EmployeeID