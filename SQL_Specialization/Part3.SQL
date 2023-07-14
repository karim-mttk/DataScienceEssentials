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
--1 Using a subquery, find the names of all the tracks for the album "Californication".
SELECT Tracks.Name, Tracks.TrackIdFROM Tracks 
JOIN Albums     
ON Albums.AlbumId = Tracks.AlbumId
WHERE Albums.Title = 'Californication';

--2 Find the total number of invoices for each customer along with the customer's full name, city and email.
SELECT Customers.CustomerId, Customers.FirstName, Customers.LastName, Customers.Email, 
COUNT (Invoices.InvoiceId) AS Total_InvoicesFROM Customers
JOIN Invoices 
    ON Customers.CustomerId = Invoices.InvoiceId
GROUP BY Customers.CustomerId

--3 Retrieve the track name, album, artistID, and trackID for all the albums.
SELECT Tracks.Name, Albums.Title, Albums.ArtistId, Tracks.TrackId
FROM Artists
LEFT JOIN Tracks ON Albums.AlbumId = Tracks.AlbumId
LEFT JOIN Albums ON Artists.ArtistId = Albums.ArtistId
WHERE Albums.Title = 'For Those About to Rock We Salute You'
AND Tracks.TrackId = 12;

--5 Find the name and ID of the artists who do not have albums. 
SELECT Artists.Name, Artists.ArtistId, Albums.Title
FROM Artists
LEFT JOIN Albums    
    ON Artists.ArtistId = Albums.ArtistId 
WHERE Albums.Title IS NULL;

--6 Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the last name in descending order.
SELECT FirstName, LastName
FROM EmployeesUNIONSELECT FirstName, LastName
FROM CustomersORDER BY LastName DESC;

--7 See if there are any customers who have a different city listed in their billing city versus their customer city.

SELECT Customers.FirstName, Customers.City, Invoices.BillingCity
FROM Customers
INNER JOIN Invoices    
    ON Customers.CustomerId = Invoices.CustomerId 
WHERE Customers.City <> Invoices.BillingCity