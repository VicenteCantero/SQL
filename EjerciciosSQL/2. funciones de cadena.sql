--select * from Person.Address;
select * from Person.Person;

select SUBSTRING(AddressLine1, 1, 10) as '10Primeros'
from Person.Address;

select SUBSTRING(AddressLine1, 10, 5) as '10 a 15'
from Person.Address;

select upper(FirstName) as Nombre, upper(LastName) as Apellido from Person.Person;


--falta punto4