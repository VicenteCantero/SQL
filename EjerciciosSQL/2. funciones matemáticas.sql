Select* from Sales.SalesOrderHeader;


------1-------
select
SalesOrderID,
ROUND(SubTotal, 2) as 'Redondeo'
from Sales.SalesOrderHeader;


----2-----
select
SalesOrderID,
ROUND(SubTotal,0) as 'Redondeo'
from Sales.SalesOrderHeader;


----3------
select
SQRT(SalesOrderID) as 'Raiz'
from Sales.SalesOrderHeader;


----4----
select floor (RAND()*(10-1)+ 1);



