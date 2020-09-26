/* Provide a query that shows the total number of tracks in each playlist. 
The Playlist name should be include on the resultant table. */

SELECT pl.Name [Playlist Name], COUNT(plt.TrackId) [Total # of Tracks]
FROM PlaylistTrack plt
	RIGHT JOIN Playlist pl
	ON pl.PlaylistId = plt.PlaylistId
GROUP BY pl.Name