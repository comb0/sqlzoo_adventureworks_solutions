-- -- sehr wortreich mit subselects
select a.SalesOrderID, a.SubTotal, b.SubTotal, c.SubTotal
from
(
	select SalesOrderID, SubTotal
	from SalesOrderHeader
) as a
join (
	select soh.SalesOrderID, sum(OrderQty*UnitPrice) as SubTotal
	from SalesOrderHeader as soh
	join SalesOrderDetail as sod on (soh.SalesOrderID = sod.SalesOrderID)
	group by soh.SalesOrderID
) as b on (a.SalesOrderID = b.SalesOrderID)
join (
	select soh.SalesOrderID, sum(OrderQty*paw.ListPrice) as SubTotal
	from SalesOrderHeader as soh
	join SalesOrderDetail as sod on (soh.SalesOrderID = sod.SalesOrderID)
	join ProductAW as paw on (sod.ProductID = paw.ProductID)
	group by soh.SalesOrderID
) as c on (a.SalesOrderID = c.SalesOrderID)

-- -- deutlich kuerzer
select soh.SalesOrderID, soh.SubTotal, sum(OrderQty*UnitPrice), sum(OrderQty*ListPrice)
from SalesOrderHeader as soh
join SalesOrderDetail as sod on (sod.SalesOrderID = soh.SalesOrderID)
join ProductAW as paw on (paw.ProductID = sod.ProductID)
group by soh.SalesOrderID
