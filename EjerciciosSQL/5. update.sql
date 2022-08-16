update dbo.demoAddress 
set AddressLine2 = 'N/A' 
where AddressLine2 is null



--2
update dbo.demoProduct
set ListPrice = (ListPrice * 0.1) + ListPrice;


--3
update dbo.demoSalesOrderDetail
set dsod.UnitPrice = dp.ListPrice 
from dbo.demoProduct as dp
inner join dbo.demoSalesOrderDetail as dsod
on (dp.ProductID = dosd.ProductID);


--4
update dbo.demoSalesOrderHeader
set Subtotal= (sum(dsod.LineTotal))
from dbo.demoSalesOrderDemo as dsod
inner join dbo.demoSalesOrderHeader as dsoh
on(dsoh.SalesOrderID = dsod.SalesOrderID);