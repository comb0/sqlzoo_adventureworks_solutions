select CompanyName,moa.AddressLine1 as 'Main Office Address', sa.AddressLine1 as 'Shipping Address'
from CustomerAW as caw
join CustomerAddress as ca using (CustomerID)
join CustomerAddress as cb using (CustomerID)
join Address as moa on (ca.AddressID = moa.AddressID and ca.AddressType='Main Office')
left join Address as sa on (cb.AddressID = sa.AddressID and cb.AddressType='Shipping')
where moa.City = 'Dallas'
group by caw.CustomerID
