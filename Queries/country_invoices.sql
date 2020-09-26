--Provide a query that shows the # of invoices per country.

SELECT BillingCountry, COUNT(InvoiceId) [# of Invoices]
FROM Invoice
GROUP BY BillingCountry