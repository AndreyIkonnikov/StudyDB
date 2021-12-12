--5.	Показать список скидок на единицу продукции (UnitPriceDiscount), к которым относятся несколько
--продуктов (ProductID), из таблицы Sales.SalesOrderDetail, используя SELF JOIN.
SELECT DISTINCT a.UnitPriceDiscount, a.ProductID FROM Sales.SalesOrderDetail as a
JOIN Sales.SalesOrderDetail AS b ON a.UnitPriceDiscount = b.UnitPriceDiscount
AND a.ProductID <> b.ProductID