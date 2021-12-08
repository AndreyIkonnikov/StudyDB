--6.	Показать подкатегории продуктов (ProductSubcategoryID из таблицы Production.Product),
--которые имеют несколько цветов начинающихся на «B», используя SELF JOIN.
SELECT DISTINCT a.ProductSubcategoryID, a.Color FROM Production.Product as a
JOIN Production.Product AS b ON a.ProductSubcategoryID = b.ProductSubcategoryID
WHERE a.Color <> b.Color AND a.Color LIKE 'B%' AND b.Color LIKE 'B%'