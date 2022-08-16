Select * from Person.Person;


Select BusinessEntityID, LoginID, JobTitle from HumanResources.Employee where JobTitle like  'Research and Development Engineer';

Select FirstName, LastName, MiddleName, BusinessEntityID from Person.Person where MiddleName = 'J';

DECLARE @Fecha AS DATE ='17/06/2007'

Select * from Production.ProductCostHistory where ModifiedDate = @Fecha;

Select NationalIDNumber, LoginID, JobTitle from HumanResources.Employee where JobTitle !=  'Research and Development Engineer';


DECLARE @FechaI AS DATE ='29/12/2000'
DECLARE @fechaF AS DATE = '04/07/2022'

Select * from Person.Person
where ModifiedDate Between @FechaI and @fechaF;

DECLARE @Fe AS DATE ='29/12/2000'

Select * from Person.Person
where ModifiedDate != @Fe;



declare @FID as date ='01/12/2000'
declare @FFD as date ='31/12/2000'
Select * from Person.Person
where ModifiedDate Between @FID and @FFD;