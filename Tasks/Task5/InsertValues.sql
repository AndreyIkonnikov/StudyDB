
-- Insert Positions
EXEC dbo.pPositionInsert 'DevOps', '150000'
EXEC dbo.pPositionInsert 'Backend Developer', '200000'
EXEC dbo.pPositionInsert 'Frontend Developer', '180000'


-- Insert Rates
EXEC dbo.pRateInsert 0.25
EXEC dbo.pRateInsert 0.5
EXEC dbo.pRateInsert 0.75
EXEC dbo.pRateInsert 1


-- Insert WorkContracts
EXEC dbo.pWorkContractInsert 'G9045J0J', 'DevOps', 0.25, '1999-04-12'
EXEC dbo.pWorkContractInsert 'L9053434', 'Backend Developer', 0.5, '2002-08-15'
EXEC dbo.pWorkContractInsert 'GERG34T9', 'Frontend Developer', 0.75, '2002-05-29'


-- Insert Genders
EXEC dbo.pGenderInsert 'Male'
EXEC dbo.pGenderInsert 'Female'


-- Insert Units
EXEC dbo.pUnitInsert 'BigOS'
EXEC dbo.pUnitInsert 'LittleOS'


-- Insert Employees
EXEC dbo.pEmployeeInsert 'Andrey', 'Ivanovich', 'Prutko',
'1970-03-03', 'Moskva, Pushika 43', '88187714',
'1712 252037', 0, 'G9045J0J','BigOS', 'Male'

EXEC dbo.pEmployeeInsert 'Evgeniy', 'Petrovich', 'Tushin',
'1970-03-23', 'Moskva, Pushika 47', '88423423423',
'1712 212332', 1, 'L9053434' , 'LittleOS', 'Male'

EXEC dbo.pEmployeeInsert 'Valeriya', 'Mihaylovna', 'Horosheva',
'1970-03-23', 'Moskva, Kosmonavtov 47', '88424243242',
'4332 252347', 0, 'GERG34T9', 'LittleOS', 'Female'

-- Insert Kids
EXEC dbo.pKidInsert 'Sergey', 'Andreevich', 'Prutko', '1712 252037', 'Male'
EXEC dbo.pKidInsert 'Anya', 'Andreevna', 'Prutko', '1712 252037', 'Female'

-- Insert Past Works
EXEC dbo.pPastWorkInsert 'Yandex', 'SysAdmin', '1990-03-23','1999-03-02', '1712 212332'
EXEC dbo.pPastWorkInsert 'MailRu', 'SysAdmin', '1999-03-03','1999-03-27', '4332 252347'

-- Insert Vacation Reasons
EXEC dbo.pVacationReasonInsert 'Usual'
EXEC dbo.pVacationReasonInsert 'Baby Care'

-- Insert Vacations
EXEC dbo.pVacationInsert '2002-03-19', '2005-03-19', '1712 252037', 'Usual'
EXEC dbo.pVacationInsert '2003-09-01', '2003-09-28', '4332 252347', 'Baby Care'