Create view V_EmployeesHiredAfter2000 as select
 firstName,lastName from Employees where HireDate>'2000-12-31'