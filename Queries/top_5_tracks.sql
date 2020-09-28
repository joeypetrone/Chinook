--Provide a query that shows the top 5 most purchased songs.

SELECT TOP(5) t.Name [Song Name], t.Composer Artist, COUNT(i.InvoiceId) [# Times Pruchased]
FROM Track t
	JOIN InvoiceLine il
	ON t.TrackId = il.TrackId
	JOIN Invoice i
	ON il.InvoiceId = i.InvoiceId
GROUP BY t.Name, t.Composer
ORDER BY [# Times Pruchased] DESC