CREATE TABLE Manufacturers
(
ManufacturerID INT PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
EstablishedOn DATE NOT NULL
);
 
INSERT INTO Manufacturers (ManufacturerID, Name, EstablishedOn)
     VALUES (1, 'BMW', '1916-03-07'),
            (2, 'Tesla', '2003-01-01'),
            (3, 'Lada', '1966-05-01');
 
CREATE TABLE Models
(
ModelID INT PRiMARY KEY,
Name VARCHAR(50) NOT NULL,
ManufacturerID INT 
CONSTRAINT FK_Mdels_Manufactures
FOREIGN KEY (ManufacturerID) REFERENCES Manufacturers(ManufacturerID)
);
 
INSERT INTO [Models] (ModelID, Name, ManufacturerID)
     VALUES (101, 'X1', 1),
            (102, 'i6', 1),
            (103, 'Model S', 2),
            (104, 'Model X', 2),
            (105, 'Model 3', 2),
            (106, 'Nova', 3);