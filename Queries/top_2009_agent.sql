--Which sales agent made the most in sales in 2009?

SELECT TOP(1) (e.FirstName + ' ' + e.LastName) [Top Sales Agent], 
       SUM(CASE WHEN  i.InvoiceDate LIKE '%2009%' THEN i.Total ELSE null END) [Sales in 2009]
FROM Invoice i
	JOIN Customer c
	ON i.CustomerId = c.CustomerId
	JOIN Employee e
	ON c.SupportRepId = e.EmployeeId
GROUP BY e.FirstName, e.LastName
ORDER BY [Sales in 2009] DESC