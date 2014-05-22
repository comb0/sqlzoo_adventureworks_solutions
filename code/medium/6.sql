select h.SalesOrderID, UnitPrice
from SalesOrderHeader as h
join SalesOrderDetail as d on(h.SalesOrderID = d.SalesOrderID)
group by SalesOrderID
having sum(OrderQty) = 1
