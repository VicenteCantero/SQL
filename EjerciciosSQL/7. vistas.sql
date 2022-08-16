if object_id ('dbo.vw_Productos') is not null begin 
drop view dbo.vw_Productos;
end;

go
create view dbo.vw_Productos as (
select 
PP.ProductID, 
PP.StandardCost, 
PP.Name
from Production.Product as PP
inner join Production.ProductCostHistory as PCH
on (PP.ProductID= PCH.ProductID));

go
select * from dbo.vw_Productos;


go

---2
if object_id ('dbo.vw_CustomerTotals') is not null begin 
drop view dbo.vw_CustomerTotals;
end;

go
create view dbo.vw_CustomerTotals as
select
CustomerID,
Sum(TotalDue) as 'Total ventas',
year (OrderDate) as 'Año pedido',
month (Orderdate) as 'Mes pedido'
from Sales.SalesOrderHeader
group by CustomerID, OrderDate;

go
select * from dbo.vw_CustomerTotals;
