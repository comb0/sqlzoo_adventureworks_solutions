select sum(sod.OrderQty)
from SalesOrderDetail as sod
join SalesOrderHeader as soh
join ProductAW as p on (sod.ProductID = p.ProductID)
join ProductCategory as pc on (p.ProductCategoryID = pc.ProductCategoryID)
join Address as a on (a.AddressID = soh.BillToAddressID)
where a.City = 'London'
and pc.Name = 'Cranksets'
