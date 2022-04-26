CREATE PROC dbo.pPastWorkInsert
(
	@Name VARCHAR(255),
	@Position VARCHAR(255),
	@BeginDate DATE,
	@EndDate DATE,
	@EmployeePassport VARCHAR(255)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN Insertion

			DECLARE @ID_Employee UNIQUEIDENTIFIER = dbo.fEmployeeID(@EmployeePassport);
			
			INSERT INTO PastWork
			VALUES(NEWID(), @Name, @Position, @BeginDate, @EndDate, @ID_Employee);

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