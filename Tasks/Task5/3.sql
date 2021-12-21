--1.	Показывать список сотрудников фирмы по ФИО, по должности, ставке, имеющих детей, 
--пенсионеров, находящихся в очередном отпуске, находящихся в отпуске по
--уходу за ребенком.
SELECT FirstName, SurName, SecondName, Coefficient FROM Employee
JOIN WorkContract ON Employee.WorkContractID = WorkContract.WorkContractID
JOIN Rate ON WorkContract.RateID = Rate.RateID