--How many Invoices were there in 2009 and 2011?

SELECT COUNT(CASE WHEN InvoiceDate LIKE '%2009%' THEN 0 ELSE null END) [# of Invoices in 2009],
	   COUNT(CASE WHEN InvoiceDate LIKE '%2011%' THEN 0 ELSE null END) [# of Invoices in 2011]
FROM Invoice