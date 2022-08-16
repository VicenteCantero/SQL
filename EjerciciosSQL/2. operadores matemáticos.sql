select * from Sales.SpecialOffer;

select 
SpecialOfferID, 
Description,
(isnull(MaxQty, 0) - MinQty) as Diferencia
from 
Sales.SpecialOffer
order by
SpecialOfferID;

select 
SpecialOfferID, 
Description,
(DiscountPct * MinQty) as Multiplicación
from 
Sales.SpecialOffer
order by
SpecialOfferID;

select 
SpecialOfferID, 
Description,
(isnull(MaxQty, 10) * DiscountPct) as MultiplicaMayor
from 
Sales.SpecialOffer
order by
SpecialOfferID;