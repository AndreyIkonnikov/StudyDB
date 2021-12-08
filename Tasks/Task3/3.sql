--3.	Показать список людей (поля FirstName, LastName), в котором указано, имеется ли логин идентификатор
--(LoginID) или нет, из таблиц HumanResources.Employee, Person.Person, используя RIGHT OUTER JOIN.
SELECT a.FirstName, a.LastName, b.LoginID FROM Person.Person as a
RIGHT OUTER JOIN HumanResources.Employee as b ON a.BusinessEntityID = b.BusinessEntityID