--3.	Выдавать информацию о предыдущих местах работы сотрудников.
SELECT FirstName, SurName, SecondName, [Name] FROM Employee
JOIN PastWork ON Employee.EmployeeID = PastWork.EmployeeID