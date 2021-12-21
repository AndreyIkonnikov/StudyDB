--3.	Показать товары, для которых существует только один стиль в одном цвете (стиль и цвет 
--определен) (Таблица Production.Product). Показать поля [Name], Style и Color.
SELECT p1.[Name], p1.Style, p1.Color
FROM Production.Product as p1
WHERE p1.Color IS NOT NULL
AND p1.Style IS NOT NULL
AND (
SELECT COUNT(DISTINCT p2.Style) as StyleCount
FROM Production.Product as p2
WHERE p2.Style IS NOT NULL
AND p1.Color = p2.Color) = 1
ORDER BY p1.Name, p1.Color