--4.	Показать список продуктов (ProductID), которые имеют несколько скидок на единицу продукции
--(UnitPriceDiscount), из таблицы Sales.SalesOrderDetail, используя SELF JOIN.
SELECT DISTINCT a.ProductID, a.UnitPriceDiscount FROM Sales.SalesOrderDetail as a
JOIN Sales.SalesOrderDetail AS b ON a.ProductID = b.ProductID
AND a.UnitPriceDiscount <> b.UnitPriceDiscount