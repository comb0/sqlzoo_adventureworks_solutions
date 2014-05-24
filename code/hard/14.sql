select "0- 99" as "RANGE", count(SalesOrderID) as "Num Orders", sum(SubTotal) as "Total Value"
from SalesOrderHeader
where SubTotal between 0 and 99

union
select "100- 999" as "RANGE", count(SalesOrderID) as "Num Orders", sum(SubTotal) as "Total Value"
from SalesOrderHeader
where SubTotal between 100 and 999

union
select "1000- 9999" as "RANGE", count(SalesOrderID) as "Num Orders", sum(SubTotal) as "Total Value"
from SalesOrderHeader
where SubTotal between 1000 and 9999
union
select "10000-" as "RANGE", count(SalesOrderID) as "Num Orders", sum(SubTotal) as "Total Value"
from SalesOrderHeader
where SubTotal >= 1e4
