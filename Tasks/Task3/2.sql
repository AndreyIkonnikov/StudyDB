--2.	Показать список продуктов (поле Name) в котором указано, есть ли у продукта единицы
--измерения веса или нет, из таблиц Production.Product, Production.UnitMeasure, используя
--LEFT OUTER JOIN.
SELECT a.[Name], b.Name FROM Production.Product as a
LEFT OUTER JOIN Production.UnitMeasure as b ON a.WeightUnitMeasureCode = b.UnitMeasureCode