--1
--select * from Sales.SalesOrderHeader;


select 
sum(OrderQty) as 'numero total de articulos pedidos',
ProductID
from Sales.SalesOrderDetail
group by ProductID;

--2

select 
count (*) as 'recuento lineas detalle',
SalesOrderID
from Sales.SalesOrderDetail
group by SalesOrderID;

--3
select 
count (*) as 'recuento productos',
ProductLine
from Production.Product
group by ProductLine;


--4
select
count(SalesOrderID) as 'recuento pedidos',
CustomerID,
DATENAME(year, OrderDate) as 'año'
from Sales.SalesOrderHeader
group by CustomerID,
OrderDate
order by OrderDate;

select
count(*) as 'recuento pedidos',
CustomerID,
year(OrderDate) as 'año'
from Sales.SalesOrderHeader
group by CustomerID,
year(OrderDate);