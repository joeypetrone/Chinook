/* Provide a query showing the Invoices of customers who are from Brazil. 
   The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country. */

SELECT (c.FirstName + ' ' + c.LastName) [Full Name], i.InvoiceDate, i.BillingCountry, i.InvoiceId
FROM Customer c
	JOIN Invoice i
	ON c.CustomerId = i.CustomerId
WHERE c.Country = 'Brazil'
ORDER BY [Full Name]