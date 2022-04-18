CREATE PROC dbo.pVacationInsert
(
	@BeginDate DATE,
	@EndDate DATE,
	@EmployeePassport VARCHAR(255),
	@Reason VARCHAR(255)

)
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN Insertion

			DECLARE @ID_Employee UNIQUEIDENTIFIER = dbo.fEmployeeID(@EmployeePassport);
			DECLARE @ID_VacationReason UNIQUEIDENTIFIER = dbo.fVacationReasonID(@Reason);
			
			INSERT INTO Vacation
			VALUES(NEWID(), @BeginDate, @EndDate, @ID_Employee, @ID_VacationReason);

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