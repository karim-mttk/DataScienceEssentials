--Section 1--
--1
SELECT CustomerId,      UPPER(City) || ' ' ||UPPER(Country)
FROM Customers  

--2
SELECT FirstName, LastName,    
LOWER(SUBSTR(FirstName, 1, 4)) || LOWER(SUBSTR(LastName,1,2)) AS UserID
FROM Employees;   

--3
SELECT FirstName, LastName,     
DATE ('now') - HireDate as Years_in_serviceFROM Employees
ORDER BY LastName ASC;

--4
SELECT *FROM Customers 
WHERE Address IS NULL
OR Phone IS NULL
OR Fax IS NULLOR PostalCode IS NULL
OR Company IS NULL
OR FirstName IS NULL