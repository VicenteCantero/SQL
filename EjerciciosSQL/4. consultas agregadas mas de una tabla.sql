select
PP.FirstName as 'lista nombres',
count (*) as 'recuento pedidos'
from Person.Person as PP 
inner join Sales.Customer as SC
on (PP.BusinessEntityID = SC.PersonID)
inner join Sales.SalesOrderHeader as SOH
on (SOH.CustomerID = SC.CustomerID)
group by PP.FirstName;



--2
select
sum(OrderQty) as 'suma total productos',
PP.ProductID,
OrderDate
from Sales.SalesOrderHeader as SOH
inner join Sales.SalesOrderDetail as SOD
on(SOH.SalesOrderID = SOD.SalesOrderID)
inner join Production.Product as PP
on(PP.ProductID = SOD.ProductID)
group by PP.ProductID, OrderDate;

