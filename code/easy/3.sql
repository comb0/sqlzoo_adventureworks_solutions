select sum(SalesOrderDetail.OrderQty)
from ProductAW
join SalesOrderDetail on(ProductAW.ProductID = SalesOrderDetail.ProductID)
where ProductAW.ListPrice >= 1000;
