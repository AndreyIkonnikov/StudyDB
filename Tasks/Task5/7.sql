--1.	Показывать список сотрудников фирмы по ФИО, по должности, ставке, имеющих детей, 
--пенсионеров, находящихся в очередном отпуске, находящихся в отпуске по
--уходу за ребенком.
SELECT DISTINCT FirstName, SurName, SecondName FROM Employee
JOIN Vacation ON Vacation.EmployeeID = Employee.EmployeeID
WHERE Vacation.VacationID = (SELECT VacationReasonID FROM VacationReason WHERE Reason = 'Baby care')