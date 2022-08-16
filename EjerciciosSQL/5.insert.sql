
IF EXISTS (SELECT * FROM sys.objects 

WHERE object_id = OBJECT_ID(N'[dbo].[demoProduct]') AND type in (N'U')) 

DROP TABLE [dbo].[demoProduct];

 

CREATE TABLE [dbo].[demoProduct]( [ProductID] [INT] NOT NULL PRIMARY KEY, 

[Name] [dbo].[Name] NOT NULL, [Color] [NVARCHAR](15) NULL, 

[StandardCost] [MONEY] NOT NULL, [ListPrice] [MONEY] NOT NULL, [Size] [NVARCHAR](5) NULL, [Weight] [DECIMAL](8, 2) NULL, 

); 

IF EXISTS (SELECT * FROM sys.objects 

WHERE object_id = OBJECT_ID(N'[dbo].[demoSalesOrderHeader]') AND type in (N'U')) 

DROP TABLE [dbo].[demoSalesOrderHeader] 

 

CREATE TABLE [dbo].[demoSalesOrderHeader]( [SalesOrderID] [INT] NOT NULL PRIMARY KEY, [SalesID] [INT] NOT NULL IDENTITY, [OrderDate] [DATETIME] NOT NULL, [CustomerID] [INT] NOT NULL, 

[SubTotal] [MONEY] NOT NULL, [TaxAmt] [MONEY] NOT NULL, [Freight] [MONEY] NOT NULL, 

  

 

[DateEntered] [DATETIME], 

[TotalDue] AS (ISNULL(([SubTotal]+[TaxAmt])+[Freight],(0))), [RV] ROWVERSION NOT NULL); 


 

ALTER TABLE [dbo].[demoSalesOrderHeader] ADD CONSTRAINT [DF_demoSalesOrderHeader_DateEntered] 

DEFAULT (GETDATE()) FOR [DateEntered]; 

 

IF EXISTS (SELECT * FROM sys.objects 

WHERE object_id = OBJECT_ID(N'[dbo].[demoAddress]') AND type in (N'U')) 

DROP TABLE [dbo].[demoAddress] 

 

CREATE TABLE [dbo].[demoAddress]( 

[AddressID] [INT] NOT NULL IDENTITY PRIMARY KEY, [AddressLine1] [NVARCHAR](60) NOT NULL, [AddressLine2] [NVARCHAR](60) NULL, 

[City] [NVARCHAR](30) NOT NULL, 

[StateProvince] [dbo].[Name] NOT NULL, [CountryRegion] [dbo].[Name] NOT NULL, [PostalCode] [NVARCHAR](15) NOT NULL 

); 



--select * from SalesLT.Product;

Select
ProductID,
Name, 
Color, 
StandardCost,
ListPrice, 
Size, 
Weight
from SalesLT.Product;

Insert into dbo.demoProduct (
ProductID,
Name, 
Color, 
StandardCost,
ListPrice, 
Size, 
Weight)
values (680,'HL Road Frame - Black, 58','Black', 1059.31, 1431.50,	58,	1016.04);

Insert into dbo.demoProduct (
ProductID,
Name, 
Color, 
StandardCost,
ListPrice, 
Size, 
Weight)
values (706,'HL Road Frame - Red, 58','Red', 1059.31, 1431.50,	58,	1016.04);

Insert into dbo.demoProduct (
ProductID,
Name, 
Color, 
StandardCost,
ListPrice, 
Size, 
Weight)
values (707,'Sport-100 Helmet, Red','Red', 13.0863, 34.99,	null, null);

Insert into dbo.demoProduct (
ProductID,
Name, 
Color, 
StandardCost,
ListPrice, 
Size, 
Weight)
values (709,'Mountain Bike Socks, M','White', 3.3963, 9.50,	'M',	null);

Insert into dbo.demoProduct (
ProductID,
Name, 
Color, 
StandardCost,
ListPrice, 
Size, 
Weight)
values (712,'AWC Logo Cap','Multi', 6.9223, 8.99,	null, null);


--2
insert into dbo.demoProduct(
ProductID,
Name, 
Color, 
StandardCost,
ListPrice, 
Size, 
Weight)
values
(713,'Long-Sleeve Logo Jersey, S',	'Multi',	38.4923	,49.99,	1	,NULL),
(714,'Long-Sleeve Logo Jersey, M',	'Multi',	38.4923	,49.99,	2	,NULL),
(715,'Long-Sleeve Logo Jersey, L',	'Multi',	38.4923	,49.99,	3	,NULL),
(716,'Long-Sleeve Logo Jersey, XL',	'Multi',	38.4923	,49.99,	4	,NULL),
(717,'HL Road Frame - Red, 62','Red',868.6342,1431.50	,62,	1043.26)

--3
insert into dbo.demoSalesOrderHeader ( SalesOrderID, OrderDAte, CustomerID, SubTotal, TaxAmt, Freight)
select SalesOrderID, OrderDAte, CustomerID, SubTotal, TaxAmt, Freight
from SalesLT.SalesOrderHeader;


--4

/*
Select C.CustomerID,
count(isnull (SalesOrderID,0)) as 'recuento pedidos',
sum(TotalDue) as 'importe total'

into dbo.tempCustomerSales4
from SalesLT.Customer as C
left join demoSalesOrderHeader as SOH
on (SOH.CustomerID = C.CustomerID)
group by C.CustomerID;
*/

--5
insert into dbo.demoProduct (ProductID, Name, Color, StandardCost, ListPrice, Size, Weight)
select ProductID, Name, Color, StandardCost, ListPrice, Size, Weight
from SalesLT.Product
where ProductID not in( 
select ProductID from dbo.demoProduct where ProductID is not null);


--6s

set identity_insert dbo.demoAddress on;

insert into dbo.demoAddress (AddressID, AddressLine1, AddressLine2, City, StateProvince, CountryRegion, PostalCode)
select AddressID, AddressLine1, AddressLine2, City, StateProvince, CountryRegion, PostalCode
from SalesLT.Address;


set identity_insert dbo.demoAddress off;

--select * from dbo.demoSalesOrderHeader;
--select * from SalesLT.SalesOrderHeader;
select * from dbo.demoAddress;
--select * from dbo.tempCustomerSales4;
--select * from SalesLT.Customer;