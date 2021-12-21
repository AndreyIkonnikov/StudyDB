--5.	Показать товары, цена которых больше средней цены в любой линейке продуктов (линейка
--продуктов определена) (Таблица Production.Product). Показать поля [Name], ListPrice
--и ProductLine.
SELECT [Name], ListPrice, ProductLine FROM Production.Product
WHERE ListPrice > ANY(SELECT AVG(ListPrice) as AvgListPrice FROM Production.Product
WHERE ProductLine IS NOT NULL
GROUP BY ProductLine)