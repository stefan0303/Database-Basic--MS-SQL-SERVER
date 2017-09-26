CREATE TABLE Teachers
(
	TeacherID int PRIMARY KEY IDENTITY(101,1),
	Name nvarchar(50),
	ManagerID int 
	CONSTRAINT FK_ManagerID_TeacherID Foreign KEY(ManagerID)
	REFERENCES Teachers(TeacherID)
)
INSERT INTO Teachers(Name,ManagerID)
VALUES('John',Null),('Maya',106),('Silvia',106),('Ted',105),('Mark',101),('Greta',101)