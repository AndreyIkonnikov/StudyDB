CREATE PROC dbo.pWorkContractInsert
(
	@ContractUI VARCHAR(255),
	@PositionName VARCHAR(255),
	@Coefficient FLOAT,
	@BeginDate DATE
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN Insertion

			DECLARE @ID_Position UNIQUEIDENTIFIER = dbo.fPositionID(@PositionName);
			DECLARE @ID_Rate UNIQUEIDENTIFIER = dbo.fRateID(@Coefficient);

			INSERT INTO WorkContract
			VALUES(NEWID(), @ContractUI, @ID_Position, @ID_Rate, @BeginDate);

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