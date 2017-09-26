CREATE TABLE Passports
(
PassportID INT PRIMARY KEY,
PassportNumber VARCHAR(8)
);
 
CREATE TABLE Persons
(
PersonID INT PRIMARY KEY,
FirstName VARCHAR(50),
Salary FLOAT(2),
PassportID INT --FOREIGN KEY REFERENCES Passports(PassportID)
CONSTRAINT FK_Passports_Persons FOREIGN KEY (PassportID) REFERENCES Passports(PassportID)
);
 
INSERT INTO [Passports] (PassportID, PassportNumber)
VALUES (101, 'N34FG21B'), (102, 'K65LO4R7'), (103, 'ZE657QP2');
 
INSERT INTO [Persons] (PersonID, FirstName, Salary, PassportID)
VALUES (1, 'Roberto', 43300.00, 102),
       (2, 'Tom', 56100.00, 103),
       (3, 'Yana', 60200.00, 101);