--Section 1--
-- 1 How many albums does the artist Led Zeppelin have? 
SELECT artists.Name, COUNT(albums.Title) AS Albums    
FROM artists  
INNER JOIN albums     
    ON artists.ArtistId = albums.ArtistId    
WHERE artists.Name = 'Led Zeppelin';

--2 Create a list of album titles and the unit prices for the artist "Audioslave"
SELECT artists.Name, albums.Title, tracks.Name, tracks.UnitPriceFROM artistsINNER 
JOIN albums     
    ON artists.ArtistId = albums.ArtistIdINNER 
JOIN tracks    
    ON albums.AlbumId = tracks.AlbumId
WHERE artists.Name = 'Audioslave'         

--3 Find the first and last name of any customer who does not have an invoice
SELECT customers.FirstName, customers.LastName, invoices.invoiceIdFROM customersINNER 
JOIN invoices     
    ON customers.CustomerId = invoices.CustomerId
WHERE invoiceId IS NULL; 

--Section 2--
