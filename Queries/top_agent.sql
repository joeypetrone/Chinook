--Which sales agent made the most in sales over all?

SELECT TOP(1) (e.FirstName + ' ' + e.LastName) [Top Sales Agent],
		SUM(i.Total) [Sales Total]
FROM Invoice i
	JOIN Customer c
	ON i.CustomerId = c.CustomerId
	JOIN Employee e
	ON c.SupportRepId = e.EmployeeId
GROUP BY e.FirstName, e.LastName
ORDER BY [Sales Total] DESC