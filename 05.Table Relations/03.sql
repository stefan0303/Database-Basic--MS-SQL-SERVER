CREATE TABLE Students
(
	StudentID int Primary KEY IDENTITY(1,1),--razlika
	Name varchar(50) NOT NULL,

)
INSERT INTO STUDENTS(Name)
VALUES('Mila'),('Toni'),('Ron')

CREATE TABLE Exams
(
	ExamID int Primary KEY, --zashto nemoga i tuk da napravia Identity Key???Bich "IDENTITY(101,1)"
	Name varchar(50)
)
INSERT INTO Exams(ExamID,Name)
VALUES (101,'Spring MVC'),(102,'Neo4j'),(103,'Oracle 11g')
CREATE TABLE StudentsExams
(
	StudentID int ,
	ExamID int,	
	CONSTRAINT PK_StudentsID_ExamsID PRIMARY KEY (StudentID,ExamID),
	CONSTRAINT FK_StudentExams_Students FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
	CONSTRAINT FK_StudentExams_Exams FOREIGN KEY (ExamID) REFERENCES Exams(ExamID)
)

INSERT INTO StudentsExams(StudentID,ExamID)
VALUES (1,101),(1,102),(2,101),(3,103),(2,102),(2,103);

