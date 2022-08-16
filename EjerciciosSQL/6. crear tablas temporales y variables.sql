
/*
create table #CustomerInfo (
CustomerID int,
FirstName nvarchar(50),
LastName nvarchar(50),
CountOfSales int,
SumOfTotalDue money)


insert into #CustomerInfo
select 
c.CustomerID,
p.FirstName,
p.LastName ,
Count(*) as 'recuento',
Sum(SOH.TotalDue) as 'suma del total'
from Sales.Customer as C
inner join Person.Person as P
on (c.CustomerID = p.BusinessEntityID)
inner join Sales.SalesOrderHeader as SOH
on (SOH.CustomerID= c.CustomerID)
group by c.CustomerID, p.FirstName, p.LastName;

select * from #CustomerInfo;



--2
declare @CustomerInfo table (
CustomerID int,
FirstName nvarchar(50),
LastName nvarchar(50),
CountOfSales int,
SumOfTotalDue money);

insert into @CustomerInfo
select 
c.CustomerID,
p.FirstName,
p.LastName ,
Count(*) as 'recuento',
Sum(SOH.TotalDue) as 'suma del total'
from Sales.Customer as C
inner join Person.Person as P
on (c.CustomerID = p.BusinessEntityID)
inner join Sales.SalesOrderHeader as SOH
on (SOH.CustomerID= c.CustomerID)
group by c.CustomerID, p.FirstName, p.LastName;

select * from @CustomerInfo; */

--3
declare @Ejercicio3 table(
id int identity(1,1),
Aleatorio int)
declare
@cuenta int=1,
@valor int;

while @cuenta <= 1000
begin 
set @valor =CAST(RAND() * 10000 AS INT) + 1 ;
insert into @Ejercicio3(Aleatorio)
values (@valor)
set @cuenta= @cuenta+1;
end; 

set @cuenta=1;
while @cuenta <=1000
begin
select @valor = Aleatorio
from @Ejercicio3
where id= @cuenta;
print @valor;
set @cuenta +=1;
end;

select* from @Ejercicio3;
