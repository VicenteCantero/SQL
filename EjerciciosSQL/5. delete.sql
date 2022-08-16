
IF EXISTS (SELECT * FROM sys.objects 

WHERE object_id = OBJECT_ID(N'[dbo].[demoProduct]') AND type in (N'U')) 

DROP TABLE [dbo].[demoProduct];

GO 

SELECT * INTO dbo.demoProduct FROM SalesLT.Product; IF EXISTS (SELECT * FROM sys.objects 

WHERE object_id = OBJECT_ID(N'[dbo].[demoCustomer]') 

AND type in (N'U')) DROP TABLE [dbo].[demoCustomer]; 

GO 

 

SELECT * INTO dbo.demoCustomer FROM SalesLT.Customer; IF EXISTS (SELECT * FROM sys.objects 

WHERE object_id = OBJECT_ID(N'[dbo].[demoAddress]') AND type in (N'U')) 

DROP TABLE [dbo].[demoAddress];

GO 

 

SELECT * INTO dbo.demoAddress FROM SalesLT.Address; IF EXISTS (SELECT * FROM sys.objects 

WHERE object_id = OBJECT_ID(N'[dbo].[demoSalesOrderHeader]') AND type in (N'U')) 

DROP TABLE [dbo].[demoSalesOrderHeader]; 

GO 

SELECT * INTO dbo.demoSalesOrderHeader FROM SalesLT.SalesOrderHeader; IF EXISTS (SELECT * FROM sys.objects 

WHERE object_id = OBJECT_ID(N'[dbo].[demoSalesOrderDetail]') 

AND type in (N'U')) 

DROP TABLE [dbo].[demoSalesOrderDetail];

GO 

SELECT * INTO dbo.demoSalesOrderDetail FROM SalesLT.SalesOrderDetail; 

--1 
delete from dbo.demoCustomer 
where LastName like 'S%';

select * from dbo.demoCustomer;

--2
/*delete from dbo.demoCustomer
where dbo.demoSalesOrderHeader.SalesOrderID in
(select SalesOrderID
from dbo.demoSalesOrderHeader as DSOH
where TotalDue <1000)*/

delete from dbo.demoCustomer
where CustomerID in
(select dc.CustomerID 
from dbo.demoCustomer as dc
left outer join dbo.demoSalesOrderHeader as dsoh
on (dc.CustomerID = dsoh.CustomerID)
group by dc.CustomerID
having sum (isnull(TotalDue, 0))<1000);


--3

delete from dbo.demoProduct
where ProductID not in ( 
select ProductID from dbo.demoSalesOrderDetail where ProductID is not null);

