--4. Из таблицы Production.ProductModel показать ID модели товара (ProductModelID), наименование 
--товара (Name) и описание товара в каталоге CatalogDescription. Показать только те товары, у 
--которых в названии содержится слово «перчатки» ('gloves').
SELECT ProductModelID, Name, CatalogDescription
FROM Production.ProductModel
WHERE Name LIKE '%gloves%'

