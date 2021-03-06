CREATE FUNCTION dbo.fRateID
(
	@Coefficient float
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_Position UNIQUEIDENTIFIER = (SELECT TOP 1 ID FROM Rate WHERE Coefficient = @Coefficient);
	RETURN @ID_Position;
END;