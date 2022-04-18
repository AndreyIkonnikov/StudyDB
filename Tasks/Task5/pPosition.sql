CREATE PROC dbo.pPositionInsert
(
	@Name VARCHAR(255),
    @Salary INT
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN Insertion
			
			INSERT INTO Position
			VALUES(NEWID(), @Name, @Salary);

		COMMIT
	END TRY
	BEGIN CATCH
	    ROLLBACK;
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT 
			@ErrorMessage = ERROR_MESSAGE(),
			@ErrorSeverity = ERROR_SEVERITY(),
			@ErrorState = ERROR_STATE();

		RAISERROR	(@ErrorMessage, -- Message text.
					@ErrorSeverity, -- Severity.
					@ErrorState -- State.
					);
	END CATCH;
END;