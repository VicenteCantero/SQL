/*select * from HumanResources.Employee;
select * from Person.Person;
select * from Sales.Customer;
select * from Sales.SalesOrderHeader;*/


----1
select
HE.JobTitle, 
HE.BirthDate,
PP.FirstName, 
PP.LastName
from HumanResources.Employee as HE inner join Person.Person as PP
on (HE.BusinessEntityID= PP.BusinessEntityID);

----2
select
SC.CustomerID,
SC.StoreID,
SC.TerritoryID,
PP.FirstName
from Person.Person as PP inner join Sales.Customer as SC
on (PP.BusinessEntityID = SC.CustomerID);


----3
select
SC.CustomerID,
SC.StoreID,
SC.TerritoryID,
PP.FirstName,
SOH.SalesOrderID
from Person.Person as PP 
inner join Sales.Customer as SC 
on (PP.BusinessEntityID = SC.CustomerID)
inner join Sales.SalesOrderHeader as SOH
on (SC.CustomerID= SOH.CustomerID);


---4
select
SSOH.SalesOrderID,
SSP.SalesQuota,
SSP.Bonus 
from Sales.SalesPerson as SSP
inner join Sales.SalesOrderHeader as SSOH
on (SSP.BusinessEntityID= SSOH.SalesPersonID);


---5
select
PP.FirstName,
SSOH.SalesOrderID,
SSP.SalesQuota,
SSP.Bonus 
from Sales.SalesPerson as SSP
inner join Sales.SalesOrderHeader as SSOH
on (SSP.BusinessEntityID= SSOH.SalesPersonID)
inner join Person.Person as PP
on (PP.BusinessEntityID = SSOH.SalesPersonID);


---6
select
PPM.CatalogDescription,
PP.Color,
PP.Size
from Production.ProductModel as PPM
inner join Production.Product as PP
on (PPM.ProductModelID = PP.ProductModelID);