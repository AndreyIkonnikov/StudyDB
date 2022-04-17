CREATE FUNCTION dbo.fOldestPensionerEmployeeFirstName()
    RETURNS NVARCHAR(255)
	AS
    BEGIN
        DECLARE @PensionerName NVARCHAR(255) = (SELECT TOP 1 FirstName as OldestPensionerEmployeeFirstName FROM Employee WHERE Birthday = (SELECT MAX(Birthday) FROM Employee WHERE Pensioner = 1))
        RETURN @PensionerName
    END;