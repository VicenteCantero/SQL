select * from Sales.Customer;


select count (CustomerID) as 'total clientes'
from Sales.Customer;


--2
select 
count (OrderQty) as contar,
sum(OrderQty) as suma
from Sales.SalesOrderDetail;


--3
select
max(UnitPrice) as 'M�s caro'
from Sales.SalesOrderDetail;


--4
select
avg(freight) as promedio
from Sales.SalesOrderHeader;


--5
select
min(ListPrice) as 'M�nimo',
max(ListPrice) as 'M�ximo',
avg(ListPrice) as 'Promedio'
from Production.Product;