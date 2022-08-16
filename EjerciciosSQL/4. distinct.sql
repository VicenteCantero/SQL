select distinct
ProductID,
count(*) as 'recuento'
from Sales.SalesOrderDetail
group by ProductID;

select
count (distinct ProductID) as 'recuento'
from Sales.SalesOrderDetail



--2
select distinct
TerritoryID,
count(*) as 'recuento'
from Sales.SalesOrderHeader
group by TerritoryID;

select
count(distinct TerritoryID) as 'recuento',
CustomerID
from Sales.SalesOrderHeader
group by CustomerID;
