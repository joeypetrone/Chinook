--Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT i.InvoiceId, i.CustomerId, i.Total, COUNT(il.InvoiceId) [# of invoice line items]
FROM Invoice i
	LEFT JOIN InvoiceLine il
	ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId, i.CustomerId, i.Total