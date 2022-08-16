--Select * from Person.Address;
--Select * from Production.Product;

Select AddressLine1 from Person.Address
union all
Select City from Person.Address
union all
Select PostalCode from Person.Address;--


Select concat (AddressLine1, City, PostalCode) from Person.Address;


select ProductID, Name, 
isnull(Color, 'Sin color') as Color 
from Production.Product
order by ProductID;

select 
ProductID, 
concat(Name, ' : ', ISNULL(Color, 'Sin color')) as 'Name: Color' 
from Production.Product;

select  concat(ProductID, ' : ', Name) as 'ProductID : Name', ISNULL(Color, 'Sin color') as Color from Production.Product;

