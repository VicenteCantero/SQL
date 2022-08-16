select distinct 
p.Name, 
p.ProductID 
from Production.Product as p 
where p.ProductID in (select sod.ProductID from Sales.SalesOrderDetail as sod); 



---2   no sé
select distinct 
p.Name, 
p.ProductID 
from Production.Product as p 
where (ProductID in (select  sod.ProductID from Sales.SalesOrderDetail as sod));

--3

GO 

IF OBJECT_ID('Production.ProductColor') IS NOT NULL BEGIN DROP TABLE Production.ProductColor; 

END 

CREATE table Production.ProductColor 

(Color nvarchar(15) NOT NULL PRIMARY KEY) 

GO 

--Insert most of the existing colors 
INSERT INTO Production.ProductColor SELECT DISTINCT COLOR 

FROM Production.Product 

WHERE Color IS NOT NULL and Color <> 'Silver' 

--Insert some additional colors 
INSERT INTO Production.ProductColor 

VALUES ('Green'),('Orange'),('Purple'); 


