--Update Employees set Employees.Salary+=Employees.Salary*0.12 where Employees.JobTitle in('Engineering Manager', 'Tool Designer', 'Marketing Specialist','Information Services Manager')
--select e.salary from Employees as e
UPDATE Employees set Salary+=Salary *0.12 
where DepartmentID in (1,2,4,11)
SELECT e.Salary from Employees as e