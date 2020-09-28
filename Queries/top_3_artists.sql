--Provide a query that shows the top 3 best selling artists.

SELECT TOP(3) t.Composer,
	   COUNT(i.InvoiceId) [# Times Sold]	
FROM Track t
	JOIN InvoiceLine il
	ON t.TrackId = il.TrackId
	JOIN Invoice i
	ON il.InvoiceId = i.InvoiceId
WHERE t.Composer IS NOT NULL
GROUP BY t.Composer
ORDER BY [# Times Sold] DESC