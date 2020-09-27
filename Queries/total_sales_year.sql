--What are the respective total sales for each of those years? (2009 and 2011)

SELECT SUM(CASE WHEN InvoiceDate LIKE '%2009%' THEN Total ELSE null END) [Total Sales for 2009],
	   SUM(CASE WHEN InvoiceDate LIKE '%2011%' THEN Total ELSE null END) [Total Sales for 2011]	
FROM Invoice