--7.	Показать комбинированный список таблиц Person.EmailAddress, Person.Person по полям
--BusinessEntityID, rowguid, ModifiedDate, используя UNION.
SELECT BusinessEntityID, rowguid, ModifiedDate
FROM Person.EmailAddress
UNION
SELECT BusinessEntityID, rowguid, ModifiedDate
FROM Person.Person