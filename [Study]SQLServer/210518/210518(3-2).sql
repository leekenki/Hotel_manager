CREATE OR ALTER FUNCTION ufn_getInch(height INT)
	RETURNS INT
AS
	DECLARE @val INT
	SET @val = @height * 0.393
	RETURN(@val)
END
GO