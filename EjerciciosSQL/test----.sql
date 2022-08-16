
/*
Select 
PP.BusinessEntityID,
FirstName,
LastName,
EmailAddress


from Person.Person as PP
inner join Person.EmailAddress as EA
on PP.BusinessEntityID = EA.BusinessEntityID
order by FirstName;



select 
TerritoryID,
count (TotalDue) as 'recuento'

from Sales.SalesOrderHeader
group by TerritoryID
having TotalDue <1000
order by 
;



select LastName from person.Person
where LastName like'D%' and LastName like'%A%'   */

/*

select p.ProductID, Color, 
ShoppingCartID
from Production.Product as p
inner join Sales.ShoppingCartItem as sc
on p.ProductID = sc.ProductID
where Color!='Blue' and Color !='Yellow' and (Size Like'[S,M,L,XL]');

select
soh.SalesOrderID,
OrderDate,
unitPrice
from Sales.SalesOrderHeader as soh
inner join Sales.SalesOrderDetail as sod
on soh.SalesOrderID= sod.SalesOrderID
order by soh.SalesOrderID;



select 
ProductID,
Name,
Size,
Color,
Weight
from Production.Product
order by ProductID;


select
SalesOrderID,
DepartmentID

from Sales.SalesOrderHeader as soh
inner join Sales.SalesPerson as sp
on soh.CustomerID = sp.BusinessEntityID
inner join HumanResources.Employee as e
on sp.BusinessEntityID = e.BusinessEntityID
inner join HumanResources.EmployeeDepartmentHistory as edh
on e.BusinessEntityID = edh.BusinessEntityID;*/

/*
select
count(SalesOrderID),
ModifiedDate,
OrderDate
from Sales.SalesOrderHeader 
where TerritoryID like 8 and year(OrderDate)=2008 and MONTH(OrderDate)= 1
group by OrderDate, ModifiedDate
order by ModifiedDate ;*/

select 
e.BusinessEntityID
from HumanResources.Employee as e
inner join HumanResources.EmployeeDepartmentHistory as h
on e.BusinessEntityID = h.BusinessEntityID
inner join HumanResources.Department as d
on d.DepartmentID = h.DepartmentID
where h.DepartmentID like 7;