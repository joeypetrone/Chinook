--Provide a query that shows the count of customers assigned to each sales agent.

SELECT (e.FirstName + ' ' + e.LastName) [Sales Agent],
		COUNT(c.CustomerId) [# of Customers]
FROM Customer c
	JOIN Employee e
	ON c.SupportRepId = e.EmployeeId
GROUP BY e.FirstName, e.LastName
ORDER BY [# of Customers] DESC