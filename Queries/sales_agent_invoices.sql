/* Provide a query that shows the invoices associated with each sales agent. 
The resultant table should include the Sales Agent's full name. */

SELECT (e.FirstName + ' ' + e.LastName) [Sales Agent Name],
		(c.FirstName + ' ' + c.LastName) [Customer Name], i.*
FROM Employee e
	JOIN Customer c
	ON e.EmployeeId = c.SupportRepId
	JOIN Invoice i
	ON c.CustomerId = i.CustomerId
ORDER BY [Sales Agent Name]