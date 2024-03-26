<!--1 mostre el nombre, los compositores y los milisegundos
SELECT name, Composer, City FROM customers 

2 mostre el nombre, apellido, dirección y la ciudad de la tabla cliente
SELECT FirstName, LastName, Address, City FROM customers 

3 mostre nombre y milisegundos los milisegundos mayores a 2900000 (el compositor es vacío)
SELECT  Name, Milliseconds FROM tracks
where Composer is NULL and Milliseconds > 2900000

4 mostre el apellido, nombre y compañía
SELECT  LastName, FirstName, Company FROM customers
where Company is NOT NULL

5 mostre una ciudad de facturación (BillingCity) sin que se repita la misma, donde el estado de cuenta (BillingState) no es vacío y ordene la ciudad de facturación adecuadamente
SELECT  BillingCity FROM invoices 
where BillingState is NOT NULL
ORDER BY BillingCity DESC

6 mostre el título del álbum que tiene la palabra OF y lo ordene de manera ascendente
SELECT Title FROM albums a
WHERE Title LIKE '%of%'
ORDER BY Title DESC

7 mostre el nombre y género de las canciones
SELECT t.name, g.name FROM tracks t 
JOIN genres g on t.GenreId = g.GenreId

8 mostre nombre y título de las canciones y ordene el título de forma descendente.
SELECT t.name, g.Title FROM tracks t 
JOIN albums g on t.name = g.Title
ORDER BY t.name,g.Title ASC




