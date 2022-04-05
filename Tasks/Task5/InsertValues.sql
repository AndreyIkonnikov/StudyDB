-- Insert Positions
INSERT INTO Position VALUES (NEWID(), 'DevOps', '150000');
INSERT INTO Position VALUES (NEWID(), 'Backend Developer', '200000');
INSERT INTO Position VALUES (NEWID(), 'Frontend Developer', '180000');

-- Insert Rates
INSERT INTO Rate VALUES (NEWID(), 0.25);
INSERT INTO Rate VALUES (NEWID(), 0.5);
INSERT INTO Rate VALUES (NEWID(), 0.75);
INSERT INTO Rate VALUES (NEWID(), 1);

-- Insert WorkContracts
INSERT INTO WorkContract VALUES (NEWID(),
(SELECT ID FROM Position WHERE [Name] = 'DevOps'),
(SELECT ID FROM Rate WHERE [Coefficient] = 0.25),
'1999-04-12');
INSERT INTO WorkContract VALUES (NEWID(),
(SELECT ID FROM Position WHERE [Name] = 'Backend Developer'),
(SELECT ID FROM Rate WHERE [Coefficient] = 0.5),
'2002-08-15');
INSERT INTO WorkContract VALUES (NEWID(),
(SELECT ID FROM Position WHERE [Name] = 'Frontend Developer'),
(SELECT ID FROM Rate WHERE [Coefficient] = 0.75),
'2002-05-29');

-- Insert Genders
INSERT INTO Gender VALUES (NEWID(), 'Male');
INSERT INTO Gender VALUES (NEWID(), 'Female');

-- Insert Units
INSERT INTO Unit VALUES (NEWID(), 'BigOS');
INSERT INTO Unit VALUES (NEWID(), 'LittleOS');

-- Insert Employees
INSERT INTO Employee VALUES (NEWID(), 'Andrey', 'Ivanovich', 'Prutko',
'1970-03-03', 'Moskva, Pushika 43', '88187714',
'1712 252037', 0 , (SELECT ID FROM WorkContract WHERE BeginDate = '1999-04-12'),
(SELECT ID FROM Unit WHERE [Name] = 'BigOS'),
(SELECT ID FROM Gender WHERE [Name] = 'Male'));

INSERT INTO Employee VALUES (NEWID(), 'Evgeniy', 'Petrovich', 'Tushin',
'1970-03-23', 'Moskva, Pushika 47', '88423423423',
'1712 212332', 1 , (SELECT ID FROM WorkContract WHERE BeginDate = '2002-08-15'),
(SELECT ID FROM Unit WHERE [Name] = 'LittleOS'),
(SELECT ID FROM Gender WHERE [Name] = 'Male'));

INSERT INTO Employee VALUES (NEWID(), 'Valeriya', 'Mihaylovna', 'Horosheva',
'1970-03-23', 'Moskva, Kosmonavtov 47', '88424243242',
'4332 252347', 0 , (SELECT ID FROM WorkContract WHERE BeginDate = '2002-05-29'),
(SELECT ID FROM Unit WHERE [Name] = 'LittleOS'),
(SELECT ID FROM Gender WHERE [Name] = 'Female'));

-- Insert Kids
INSERT INTO Kid VALUES (NEWID(), 'Sergey', 'Andreevich', 'Prutko', (SELECT ID FROM Employee WHERE FirstName = 'Andrey'), (SELECT ID FROM Gender WHERE [Name] = 'Male'));
INSERT INTO Kid VALUES (NEWID(), 'Anya', 'Andreevna', 'Prutko', (SELECT ID FROM Employee WHERE FirstName = 'Andrey'), (SELECT ID FROM Gender WHERE [Name] = 'Female'));

-- Insert Past Works
INSERT INTO PastWork VALUES (NEWID(), 'Yandex', 'SysAdmin', '1990-03-23','1999-03-02', (SELECT ID FROM Employee WHERE FirstName = 'Evgeniy'));
INSERT INTO PastWork VALUES (NEWID(), 'MailRu', 'SysAdmin', '1999-03-03','1999-03-27', (SELECT ID FROM Employee WHERE FirstName = 'Valeriya'));

-- Insert Vacation Reasons
INSERT INTO VacationReason VALUES (NEWID(), 'Usual');
INSERT INTO VacationReason VALUES (NEWID(), 'Baby Care');

-- Insert Vacations
INSERT INTO Vacation VALUES (NEWID(), '2002-03-19', '2005-03-19', (SELECT ID FROM Employee WHERE FirstName = 'Andrey'), (SELECT ID FROM VacationReason WHERE Reason = 'Usual'));
INSERT INTO Vacation VALUES (NEWID(), '2003-09-01', '2003-09-28', (SELECT ID FROM Employee WHERE FirstName = 'Valeriya'), (SELECT ID FROM VacationReason WHERE Reason = 'Baby Care'));