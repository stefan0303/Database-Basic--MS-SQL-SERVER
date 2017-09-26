SELECT DepartmentID,Min(Salary) as 'MinimumSalary' 
from Employees WHERE DepartmentID in (2,5,7) and HireDate>'2000-01-01'
GROUP BY DepartmentID