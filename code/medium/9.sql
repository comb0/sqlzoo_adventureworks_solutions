select c.CompanyName, soh.SubTotal, sum(sod.OrderQty*p.Weight) as order_weight
from SalesOrderHeader as soh
join SalesOrderDetail as sod on (soh.SalesOrderID = sod.SalesOrderID)
join CustomerAW as c on (c.CustomerID = soh.customerID)
join ProductAW as p on (p.ProductID = sod.ProductID)
group by sod.SalesOrderID
order by SubTotal desc
