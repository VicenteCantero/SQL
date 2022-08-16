/*if object_id ('dbo.testCustomer') is not null begin 
drop table dbo.testCustomer;
end;

create table dbo.testCustomer(
CustomerID  int primary key identity(1,1) not null,
FirstName varchar(40) not null,
LastName varchar(40) not null,
Age int,
columnaYN char(1) default 'Y',
constraint chequearEdad check (Age < 120),
constraint chequearColumnaYN check (ColumnaYN = 'Y' or ColumnaYN ='N'));

insert into dbo.testCustomer(FirstName, LastName, Age, columnaYN)
values 
('Pepe','Ramirez', 33,'Y'),
('Jose','Ram', 32,'Y'),
('Pepito','Ramir', 22,'N'),
('Pepa','Ramire', 11,'Y'),
('Pepota','mirez', 12,'N');
*/
select * from dbo.testCustomer;

/*

--2
if object_id ('dbo.testOrder') is not null begin 
drop table dbo.testOrder;
end;


create table dbo.testOrder(
CustomerID  int not null,
OrderID int primary key identity(1,1) not null,
OrderDate datetime default Getdate(),
Version rowversion,
constraint FK_testOrder foreign key (CustomerID)
references dbo.testCustomer (CustomerID));

insert into dbo.testOrder
(CustomerID)
values 
(2), (3), (1);
*/
select* from dbo.testOrder;

--3
if object_id ('dbo.testOrderDetail') is not null begin 
drop table dbo.testOrderDetail;
end;

create table dbo.testOrderDetail(
OrderID int not null,
ItemID integer,
Price money,
Qty int not null,
LineItemTotal as (Price * Qty),
constraint FK_testOrderDetail foreign key (OrderID)
references dbo.testOrder(OrderID),
constraint PK_testOrderDetail primary key (OrderID, ItemID));

insert into dbo.testOrderDetail(OrderID,ItemID,Price,Qty)
values
(1,3,22.32,4),
(2,2,13,45),
(3,3,33.87,33);

select* from dbo.testOrderDetail;



