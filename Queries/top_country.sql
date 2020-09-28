--Which country's customers spent the most?

SELECT TOP(1) BillingCountry, SUM(Total) [Total Customers Spent]
FROM Invoice
GROUP BY BillingCountry
ORDER BY [Total Customers Spent] Desc