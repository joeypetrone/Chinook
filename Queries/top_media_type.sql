--Provide a query that shows the most purchased Media Type.

SELECT TOP(1) mt.Name [Media Type Name],
	   COUNT(i.InvoiceId) [# Times Purchased]	
FROM MediaType mt
	JOIN Track t
	ON mt.MediaTypeId = t.MediaTypeId
	JOIN InvoiceLine il
	ON t.TrackId = il.TrackId
	JOIN Invoice i
	ON il.InvoiceId = i.InvoiceId
GROUP BY mt.Name
ORDER BY [# Times Purchased] DESC