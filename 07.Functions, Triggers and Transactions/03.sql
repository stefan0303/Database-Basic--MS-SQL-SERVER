CREATE PROCEDURE usp_GetTownsStartingWith(@Word varchar(50))
AS
BEGIN
SELECT Name from Towns
Where Substring(Name,1,LEN(@word))=@Word
RETURN 
END