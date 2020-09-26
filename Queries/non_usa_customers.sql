--Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.

SELECT (FirstName + ' ' + LastName) [Full Name], Country, CustomerId
FROM Customer
WHERE Country != 'USA'