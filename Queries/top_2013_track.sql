--Provide a query that shows the most purchased track of 2013.

SELECT TOP(10) t.Name [Track Name], 
			  COUNT(CASE WHEN i.InvoiceDate LIKE '%2013%' THEN i.InvoiceId ELSE null END) [# Times Purchased]
FROM Track t
	JOIN InvoiceLine il
	ON t.TrackId = il.TrackId
	JOIN Invoice i
	ON il.InvoiceId = i.InvoiceId
GROUP BY t.Name
ORDER BY [# Times Purchased] DESC