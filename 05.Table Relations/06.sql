CREATE TABLE Majors
(
	MajorID int PRIMARY KEY,
	Name varchar(50)
)
CREATE TABLE Students
(
	StudentID int PRIMARY KEY ,
	StudentNumber int,
	StudentName varchar(50),
	MajorID int,
	CONSTRAINT FK_StudentsMajorID_MajorsMajorID
	FOREIGN KEY (MajorID) REFERENCES Majors(MajorID)
)
CREATE TABLE Payments
(
	PaymentID int PRIMARY KEY ,
	PaymentDate date,
	PaymentAmount decimal,--pri nego e DECIMAL(8,2) ne sum go promenial
	StudentID int,
	CONSTRAINT FK_Payments_Students
	FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
)
CREATE TABLE Subjects
(
	SubjectID int Primary KEY,
	SubjectName varchar(50)	
)
CREATE TABLE Agenda
(
	StudentID int,
	SubjectID int,
	CONSTRAINT PK_Agenda_Students PRIMARY KEY(StudentID,SubjectID),

	CONSTRAINT FK_AGENDA_STUDETS FOREIGN KEY(StudentID)
	REFERENCES Students(StudentID),
	CONSTRAINT FK_AGENDA_Subject FOREIGN KEY(SubjectID)
	REFERENCES Subjects(SubjectID)
);