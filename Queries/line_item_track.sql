--Provide a query that includes the purchased track name with each invoice line item.

SELECT il.*, t.Name [Track Name]
FROM InvoiceLine il
	JOIN Track t
	ON il.TrackId = t.TrackId
ORDER BY InvoiceLineId