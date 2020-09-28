--Provide a query that shows the top 3 best selling artists.

SELECT TOP 3 a.Name [Artist Name],
	   COUNT(*) [# Times Sold]	
FROM Artist a
	JOIN Album al
	ON a.ArtistId = al.ArtistId
	JOIN Track t
	ON t.AlbumId = al.AlbumId
	JOIN InvoiceLine il
	ON t.TrackId = il.TrackId
GROUP BY a.Name
ORDER BY 2 DESC
