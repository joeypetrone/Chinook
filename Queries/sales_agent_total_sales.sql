--Provide a query that shows total sales made by each sales agent.

SELECT (e.FirstName + ' ' + e.LastName) [Sales Agent], COUNT(i.InvoiceId) [Total Sales]
FROM Invoice i
	JOIN Customer c
	ON i.CustomerId = c.CustomerId
	JOIN Employee e 
	ON c.SupportRepId = e.EmployeeId
GROUP BY e.FirstName, e.LastName
ORDER BY [Total Sales] DESC