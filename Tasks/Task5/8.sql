--2.	Выдавать информацию о должностях сотрудников.
SELECT FirstName, SurName, SecondName, [Name] FROM Employee
JOIN WorkContract ON Employee.WorkContractID = WorkContract.WorkContractID
JOIN Position ON WorkContract.PositionID = Position.PositionID