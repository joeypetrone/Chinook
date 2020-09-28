--Provide a query that shows the total sales per country.

SELECT BillingCountry,
		SUM(Total) [Total Sales],
		COUNT(Total) [Total # of Sales]
FROM Invoice
GROUP BY BillingCountry
ORDER BY [Total Sales] DESC