select CompanyName
from CustomerAW join
(
	select CustomerID as ci, sum(SubTotal)+sum(Freight)+sum(TaxAmt) as t
	from SalesOrderHeader
	group by CustomerID
) as totals
on(totals.ci = CustomerAW.CustomerID)
where totals.t > 1e5
