--1.	Показать товар с самой маленькой стандартной ценой (цена больше нуля) (Таблица 
--Production.Product). Показать поля [Name], StandardCost.
SELECT [Name], StandardCost FROM Production.Product
WHERE StandardCost = (SELECT MIN(StandardCost) FROM Production.Product WHERE StandardCost > 0)