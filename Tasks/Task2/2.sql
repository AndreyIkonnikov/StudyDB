--2)	Найти количество нулевых значений веса из таблицы Production.Product.
SELECT COUNT(*)
FROM Production.Product
WHERE Weight IS NULL