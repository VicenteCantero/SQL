select * from Sales.SalesOrderHeader;

select 
DATEDIFF(day, OrderDate, ShipDate) as 'Dias',
SalesOrderID, OrderDate, ShipDate
from Sales.SalesOrderHeader;


----------2----------------
Select 
Convert(varchar, OrderDate, 1)as OrderDate,
Convert (varchar , ShipDate, 2) as ShipDate
from Sales.SalesOrderHeader;


-----3--------
Select
SalesOrderID,
OrderDate,
DATEADD(month, 6, OrderDate)as '6 meses'
from Sales.SalesOrderHeader

--------------------4----------------------
Select
SalesOrderID,
OrderDate,
DATENAME(year, OrderDate) as 'año',
datepart(month, OrderDate) as 'mes',
datename(day, OrderDate) as 'dia'
from Sales.SalesOrderHeader



-----5------------

Select
SalesOrderID,
OrderDate,
DATENAME(year, OrderDate) as 'año',
datename(month, OrderDate) as 'mes',
datename(day, OrderDate) as 'dia'
from Sales.SalesOrderHeader