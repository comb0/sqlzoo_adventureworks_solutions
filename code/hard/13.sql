select paw.ProductID as ProductID, sum(OrderQty*UnitPrice) as value
from ProductAW as paw
join SalesOrderDetail as sod on (paw.ProductID = sod.ProductID)
group by paw.ProductID
order by value desc
limit 1 -- this sucks
