--5)	Вывести EmployeeID, ShipDate и минимум по SubTotal для всевозможных EmployeeID с одинаковой ShipDate,
--предусмотреть вывод самого минимального StandardPrice за определнный ShipDate из таблицы
--Purchasing.PurchaseOrderHeader. (Использовать CUBE)
SELECT EmployeeID, ShipDate, MIN(SubTotal) AS MinSubTotal
FROM Purchasing.PurchaseOrderHeader
GROUP BY 
CUBE (EmployeeID,ShipDate)