--1.	Показать продажи с начала года (SalesYTD) и поля FirstName, LastName из таблиц Person.Person, 
--Sales. SalesPerson.
SELECT b.SalesYTD, a.FirstName, a.LastName FROM Person.Person as a
JOIN Sales.SalesPerson as b ON a.BusinessEntityID = b.BusinessEntityID