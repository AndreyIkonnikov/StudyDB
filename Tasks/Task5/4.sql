--1.	Показывать список сотрудников фирмы по ФИО, по должности, ставке, имеющих детей, 
--пенсионеров, находящихся в очередном отпуске, находящихся в отпуске по
--уходу за ребенком.
SELECT DISTINCT Employee.FirstName, Employee.SurName, Employee.SecondName FROM Employee
JOIN Kid ON Kid.EmployeeID = Employee.EmployeeID
