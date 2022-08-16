--Select * from Sales.SalesOrderHeader;

declare @FechaI as date ='01/09/2001'
declare @FechaF as date ='30/09/2001'
Select SalesOrderID, OrderDate, DueDate from Sales.SalesOrderHeader where TotalDue >=1000 and OrderDate Between @FechaI and @FechaF;

declare @FechaI2 as date ='01/09/2001'
declare @FechaF2 as date ='03/09/2001'
Select SalesOrderID, OrderDate, DueDate from Sales.SalesOrderHeader where TotalDue >=1000 and OrderDate Between @FechaI2 and @FechaF2;

Select SalesOrderID from Sales.SalesOrderHeader where (TotalDue > 1000) and (SalesPersonID =279 or TerritoryID =6);

Select SalesOrderID from Sales.SalesOrderHeader where TotalDue > 1000 and (SalesPersonID =279 or TerritoryID  in (6, 4));

