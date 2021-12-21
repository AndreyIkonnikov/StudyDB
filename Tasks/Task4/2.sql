--2.	Показать количество продуктов и размер, для которого представлено максимальное количество
--продуктов (Таблица Production.Product).
SELECT Size, Count(*) as ProductCount FROM Production.Product
WHERE Size IS NOT NULL
GROUP BY Size
HAVING Count(*) =	(SELECT MAX(ProductCount) FROM
(SELECT Count(*) as ProductCount FROM Production.Product
WHERE Size IS NOT NULL
GROUP BY Size) as t)

