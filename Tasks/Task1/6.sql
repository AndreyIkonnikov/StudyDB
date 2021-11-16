--6. Из таблицы Production.Document показать поля DocumentNode, Title и FileExtension. Все пустые
--значения поля FileExtension заменить на NULL, а затем все NULL этого же поля заменить на '.txt'. 
--Названия полей оставить без изменений.
SELECT DocumentNode, Title, ISNULL(NULLIF(FileExtension, ''), '.txt') AS FileExtension
FROM Production.Document