CREATE PROC dbo.pEmployeeInsert
(
	@FirstName VARCHAR(255),
	@SurName VARCHAR(255),
	@SecondName VARCHAR(255),
	@Birthday DATE,
	@HomeAddress VARCHAR(255),
	@TelephoneNumber VARCHAR(255),
	@Passport VARCHAR(255),
	@Pensioner BIT,
	@ContractUI VARCHAR(255),
	@UnitName VARCHAR(255),
	@GenderName VARCHAR(255)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN Insertion

			DECLARE @ID_WorkContract UNIQUEIDENTIFIER = dbo.fWorkContractID(@ContractUI);

			DECLARE @ID_Unit UNIQUEIDENTIFIER = dbo.fUnitID(@UnitName);

			DECLARE @ID_Gender UNIQUEIDENTIFIER = dbo.fGenderID(@GenderName)
			
			INSERT INTO Employee
			VALUES(NEWID(), @FirstName, @SurName, @SecondName, @Birthday, @HomeAddress,
			@TelephoneNumber, @Passport, @Pensioner, @ID_WorkContract, @ID_Unit, @ID_Gender);

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