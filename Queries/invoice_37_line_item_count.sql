--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT COUNT(CASE WHEN InvoiceId = 37 THEN 0 ELSE null END) [# items for Invoice ID 37]
FROM InvoiceLine