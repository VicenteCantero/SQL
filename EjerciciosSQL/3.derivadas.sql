select 
soh.SalesOrderID, soh.OrderDate, sod.ProductID 
from Sales.SalesOrderHeader as soh 
inner join (select ProductID, SalesOrderDetailID from Sales.SalesOrderDetail) as sod  

on soh.SalesOrderID = sod.SalesOrderDetailID; 