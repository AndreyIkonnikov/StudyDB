CREATE TRIGGER EmployeeTrigger on Employee
FOR UPDATE
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @NewRec XML
	DECLARE @OldRec XML

	SET @OldRec = (SELECT * FROM deleted FOR XML RAW, TYPE);
	SET @NewRec = (SELECT * FROM inserted FOR XML RAW, TYPE);

	IF @NewRec IS NOT NULL AND @OldRec IS NOT NULL
	BEGIN
		INSERT INTO [Changes] (TableName, Oper, OldRec, NewRec, UserName, DateCH)
		VALUES ('Employee', 'UPDATE', @OldRec, @NewRec, SUSER_NAME(), GETDATE())
	END
END;