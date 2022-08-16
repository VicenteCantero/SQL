select * from Production.Product 
left join 
sales.SalesOrderDetail
on
sales.SalesOrderDetail.SalesOrderID = Production.Product.ProductID




---2
select * from Production.Product 
left join 
sales.SalesOrderDetail
on
sales.SalesOrderDetail.SalesOrderID = Production.Product.ProductID;


--3
select 
SOH.SalesOrderID,
SOH.SalesPersonID,
SP.SalesYTD
from Sales.SalesPerson as SP
full join 
sales.SalesOrderHeader as SOH
on
SOH.SalesOrderID = SP.BusinessEntityID

--4
select 
SOH.SalesOrderID,
SOH.SalesPersonID,
SP.SalesYTD,
PP.FirstName
from Sales.SalesPerson as SP
full outer join 
sales.SalesOrderHeader as SOH
on
SOH.SalesOrderID = SP.BusinessEntityID
full outer join
Person.Person as PP
on 
PP.BusinessEntityID = SP.BusinessEntityID;


--6
select 
SP.BusinessEntityID,
PP.*
from Sales.SalesPerson as SP
full join 
Production.Product as PP
on
SP.BusinessEntityID = PP.ProductID;