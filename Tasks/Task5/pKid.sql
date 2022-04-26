CREATE PROC dbo.pKidInsert
(
	@FirstName VARCHAR(255),
	@SurName VARCHAR(255),
	@SecondName VARCHAR(255),
	@EmployeePassport VARCHAR(255),
	@GenderName VARCHAR(255)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN Insertion

			DECLARE @ID_Employee UNIQUEIDENTIFIER = dbo.fEmployeeID(@EmployeePassport);

			DECLARE @ID_Gender UNIQUEIDENTIFIER = dbo.fGenderID(@GenderName);

			
			INSERT INTO Kid
			VALUES(NEWID(), @FirstName, @SurName, @SecondName, @ID_Employee, @ID_Gender);

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