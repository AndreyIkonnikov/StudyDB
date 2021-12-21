--4.	Показать товары, цена которых равна минимальной (больше нуля) цене товара того же размера
--(размер определен) (Таблица Production.Product). Показать поля [Name], ListPrice и Size.
SELECT a.[Name], a.ListPrice, a.Size FROM Production.Product as a
JOIN (SELECT Size, MIN(ListPrice) as MinListPrice FROM Production.Product
WHERE Size IS NOT NULL AND ListPrice > 0
GROUP BY Size) as b ON a.Size = b.Size AND a.ListPrice = b.MinListPrice
