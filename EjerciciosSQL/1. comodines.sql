Select * from Person.Person;

Select Name, ProductID from Production.Product where Name like 'chain%';

Select Name, ProductID from Production.Product where Name like '%helmet%';

Select Name, ProductID from Production.Product where Name not like '%helmet%';

Select BusinessEntityId, FirstName, MiddleName, LastName from Person.Person where MiddleName like '%E%' or MiddleName like '%B%';