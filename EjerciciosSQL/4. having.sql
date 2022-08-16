--select * from Sales.SalesOrderDetail;


--1
select
count(*) as 'cuentas linea detalle',
SalesOrderID
from Sales.SalesOrderDetail
group by SalesOrderID;



--2
select
SalesOrderID,
sum(LineTotal) as Total
from Sales.SalesOrderDetail
group by SalesOrderID
having sum(Linetotal) >1000;

--3
select
ProductModelID,
count(*) as contar
from Production.Product
group by ProductModelID
having count(*)=1;


--4
select
ProductModelID,
Production.Product.Color,
count(*) as contar
from Production.Product
group by ProductModelID, Color
having count(*)=1 and (Color = 'Red' or Color ='blue');
