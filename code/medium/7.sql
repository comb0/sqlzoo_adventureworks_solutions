select p.Name as prod_name, c.CompanyName
from ProductAW as p
join ProductModel as pm on (p.ProductModelID = pm.ProductModelID)
join SalesOrderDetail as sod on (sod.ProductID = p.ProductID)
join SalesOrderHeader as soh on (sod.SalesOrderID = soh.SalesOrderID)
join CustomerAW as c on (soh.CustomerID = c.CustomerID)
where pm.Name = 'Racing Socks'
