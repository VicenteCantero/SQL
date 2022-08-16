--Select* from Sales.SalesOrderHeader;
Select * from Person.Person;


---1-----
select
SalesOrderID,
OrderDate
from Sales.SalesOrderHeader
where DATENAME(year, Orderdate) =2005;


----2----
select
SalesOrderID,
OrderDate
from Sales.SalesOrderHeader
order by month (OrderDate) asc, year(OrderDate);


----3-----
select
PersonType,
FirstName 
from Person.Person
order by 
case 
PersonType when 'IN' then LastName end,
case 
PersonType when 'SP' then LastName end,
case 
PersonType when 'SC' then LastName 

else FirstName end;
