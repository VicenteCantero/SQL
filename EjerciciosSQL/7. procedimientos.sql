if object_id ('dbo.usp_CustomerTotals') is not null begin 
drop procedure dbo.usp_CustomerTotals;
end;
go
create procedure dbo.usp_CustomerTotals as (
select
CustomerID,
Sum(TotalDue) as 'Total ventas',
year (OrderDate) as 'Año pedido',
month (Orderdate) as 'Mes pedido'
from Sales.SalesOrderHeader
group by CustomerID, OrderDate);

go
exec dbo.usp_CustomerTotals;
go
--2
if object_id ('dbo.usp_CustomerTotals') is not null begin 
drop procedure dbo.usp_CustomerTotals;
end;
go
create procedure dbo.usp_CustomerTotals 
@CustomerID int
as (
select
C.CustomerID,
Sum(TotalDue) as 'Total ventas',
year (OrderDate) as 'Año pedido',
month (Orderdate) as 'Mes pedido'
from Sales.Customer as C
inner join Sales.SalesOrderHeader as SOH
on (C.CustomerID = SOH.CustomerID)
where c.CustomerID= @CustomerID
group by C.CustomerID, OrderDate);

go
exec dbo.usp_CustomerTotals 13666;
go

--3
if object_id ('dbo.usp_ProductSales') is not null begin 
drop procedure dbo.usp_ProductSales;
end;

go
create procedure dbo.usp_ProductSales 
@ProductID int,
@TotalVentas int = null output
as(
select
@TotalVentas = Sum(OrderQty)
from Sales.SalesOrderDetail
where ProductID = @ProductID);
go

declare 
@TotalVentas int;
exec dbo.usp_ProductSales @ProductID =716, @TotalVentas= @TotalVentas output;
print @TotalVentas;



