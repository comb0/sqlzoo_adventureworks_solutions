select sum(OrderQty)
from SalesOrderDetail
join ProductAW on(ProductAW.ProductID = SalesOrderDetail.ProductID)
join SalesOrderHeader on (SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID)
join CustomerAW on (SalesOrderHeader.CustomerID = CustomerAW.CustomerID)
where ProductAW.Name = 'Racing Socks, L'
and CompanyName = 'Riding Cycles'
