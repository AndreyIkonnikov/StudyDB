--3. Показать поля ProductID, StartDate, EndDate, ListPrice из таблицы Production.ProductListPriceHistory.
--Показать только те записи, для которых стоимость (ListPrice) больше $50 и меньше $60 и известна дата 
--окончания стоимости продукта (EndDate). Использовать оператор BETWEEN.
SELECT ProductID, StartDate, EndDate, ListPrice
FROM Production.ProductListPriceHistory
WHERE ListPrice BETWEEN 50 and 60 AND EndDate IS NOT NULL