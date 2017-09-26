CREATE FUNCTION ufn_IsWordComprised(@setOfLetters varchar(MAX), @word varchar(MAX))
RETURNS INT --result
AS
BEGIN
	DECLARE @currentLetter varchar
	DECLARE @wordLenght INT
	DECLARE @currentLetterPosition INT
	DECLARE @setLetterResults INT
	SET @currentLetterPosition=1
	SET @wordLenght = LEN(@word)

	WHILE @currentLetterPosition<=@wordLenght
		BEGIN
			SET  @currentLetter = SUBSTRING(@word,@currentLetterPosition,1) 
			SET  @setLetterResults=CHARINDEX(@setOfLetters,@currentLetterPosition)
			IF(@setLetterResults=0)
				BEGIN
					RETURN @setLetterResults 
					BREAK;
				END

			SET @currentLetterPosition+=1 --uvelichavame za sledvashtata bukva
		END	
		SET @setLetterResults=1
	RETURN @setLetterResults 
END