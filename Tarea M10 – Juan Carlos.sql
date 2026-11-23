USE AdventureWorks2022;
GO

SELECT ProductID,
       SUM(OrderQty) AS TotalVentas,
       SUM(LineTotal) AS ValorTotal
FROM Sales.SalesOrderDetail
GROUP BY ProductID;
GO

SELECT ProductID,
       SUM(OrderQty) AS TotalVentas
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(OrderQty) > 50;
GO

SELECT SalesOrderID,
       ProductID,
       LineTotal,
       SUM(LineTotal) OVER (PARTITION BY SalesOrderID) AS TotalOrden
FROM Sales.SalesOrderDetail;
GO

SELECT SalesOrderID,
       SalesOrderDetailID,
       ProductID,
       LineTotal,
       ROW_NUMBER() OVER (PARTITION BY SalesOrderID ORDER BY SalesOrderDetailID) AS NumeroLinea
FROM Sales.SalesOrderDetail;
GO

SELECT SalesOrderID,
       ProductID,
       LineTotal,
       RANK() OVER (PARTITION BY SalesOrderID ORDER BY LineTotal DESC) AS Rango
FROM Sales.SalesOrderDetail;
GO

SELECT SalesOrderID,
       ProductID,
       LineTotal,
       DENSE_RANK() OVER (PARTITION BY SalesOrderID ORDER BY LineTotal DESC) AS RangoDenso
FROM Sales.SalesOrderDetail;
GO

SELECT ProductID,
       SUM(LineTotal) AS ValorTotal
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) > 5000
ORDER BY ValorTotal DESC;
GO
