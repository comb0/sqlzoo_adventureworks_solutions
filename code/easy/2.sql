SELECT DISTINCT c.CompanyName
FROM CustomerAW AS c
JOIN CustomerAddress AS ca on(c.CustomerID = ca.CustomerID)
JOIN Address AS a on(c.AdressID = a.AdressID)
