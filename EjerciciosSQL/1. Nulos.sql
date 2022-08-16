select * from Production.Product;

select ProductID, Name, Color from Production.Product where color is null;

select ProductID, Name, Color from Production.Product where color != 'Blue';
--select ProductID, Name, Color from Production.Product where color is not 'Blue';

select ProductID, Name, Color, Style, Size from Production.Product where (color is not null) or (Style is not null) or (Size is not null);
