-- Insert Positions
INSERT INTO Position VALUES ('DevOps', '150000');
INSERT INTO Position VALUES ('Backend Developer', '200000');
INSERT INTO Position VALUES ('Frontend Developer', '180000');

-- Insert Rates
INSERT INTO Rate VALUES (0.25);
INSERT INTO Rate VALUES (0.5);
INSERT INTO Rate VALUES (0.75);
INSERT INTO Rate VALUES (1);

-- Insert WorkContracts
INSERT INTO WorkContract VALUES (1, 1, '1999-04-12');
INSERT INTO WorkContract VALUES (2, 2, '2002-08-15');
INSERT INTO WorkContract VALUES (3, 3, '2002-05-29');

-- Insert Genders
INSERT INTO Gender VALUES ('Male');
INSERT INTO Gender VALUES ('Female');

-- Insert Units
INSERT INTO Unit VALUES ('BigOS');
INSERT INTO Unit VALUES ('LittleOS');

-- Insert Employees
INSERT INTO Employee VALUES ('Andrey', 'Ivanovich', 'Prutko',
'1970-03-03', 'Moskva, Pushika 43', '88187714',
'1712 252037', 0 , 1, 1, 1);

INSERT INTO Employee VALUES ('Evgeniy', 'Petrovich', 'Tushin',
'1970-03-23', 'Moskva, Pushika 47', '88423423423',
'1712 212332', 1 , 2, 1, 1);

INSERT INTO Employee VALUES ('Valeriya', 'Mihaylovna', 'Horosheva',
'1970-03-23', 'Moskva, Kosmonavtov 47', '88424243242',
'4332 252347', 0 , 3, 2, 2);

-- Insert Kids
INSERT INTO Kid VALUES ('Sergey', 'Andreevich', 'Prutko',1,1);
INSERT INTO Kid VALUES ('Anya', 'Andreevna', 'Prutko',1,2);

-- Insert Past Works
INSERT INTO PastWork VALUES ('Yandex', 'SysAdmin', '1990-03-23','1999-03-02', 1);
INSERT INTO PastWork VALUES ('MailRu', 'SysAdmin', '1999-03-03','1999-03-27', 1);

-- Insert Vacation Reasons
INSERT INTO VacationReason VALUES ('Usual');
INSERT INTO VacationReason VALUES ('Baby Care');

-- Insert Vacations
INSERT INTO Vacation VALUES ('2002-03-19', '2005-03-19', 1, 2);
INSERT INTO Vacation VALUES ('2003-09-01', '2003-09-28', 2, 1);