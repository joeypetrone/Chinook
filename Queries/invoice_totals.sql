--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT DISTINCT (c.FirstName + ' ' + c.LastName) [Customer Name], 
	c.Country, (e.FirstName + ' ' + e.LastName) [Sales Agent], i.Total [Invoice Total]
FROM Customer c
	JOIN Invoice i
	ON c.CustomerId = i.CustomerId
	JOIN Employee e
	ON c.SupportRepId = e.EmployeeId