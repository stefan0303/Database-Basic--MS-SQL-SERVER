SELECT e.FirstName,e.LastName,e.HireDate,d.Name FROM Employees as e
INNER JOIN Departments as d
ON d.DepartmentID=e.DepartmentID
WHERE e.HireDate>1/1/1999 and d.Name ='Finance' or d.Name='Sales'
ORDER BY e.HireDate