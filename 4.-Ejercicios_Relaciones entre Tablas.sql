
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.
SELECT t."Name" AS track_name, a."Title" AS album_title
FROM "Track" AS t
INNER JOIN "Album" AS a
ON t."AlbumId" = a."AlbumId";

-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.
SELECT ar."Name" AS artist_name, al."Title" AS album_title
FROM "Artist" AS ar
INNER JOIN "Album" AS al
ON ar."ArtistId" = al."ArtistId"
ORDER BY ar."Name";

-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 
SELECT c."FirstName" || ' ' || c."LastName" AS customer_name, SUM(i."Total") AS total_spent
FROM "Customer" AS c
INNER JOIN "Invoice" AS i
ON c."CustomerId" = i."CustomerId"
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.
SELECT CONCAT(e."FirstName", ' ', e."LastName") AS employee_name, 
       CONCAT(c."FirstName", ' ', c."LastName") AS customer_name
FROM "Employee" AS e
INNER JOIN "Customer" AS c
ON e."EmployeeId" = c."SupportRepId";

-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.
SELECT il."InvoiceId", t."Name" AS track_name
FROM "InvoiceLine" AS il
INNER JOIN "Track" AS t
ON il."TrackId" = t."TrackId";

-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.
SELECT ar."Name" AS artist_name, g."Name" AS genre_name
FROM "Artist" AS ar
INNER JOIN "Album" AS al
ON ar."ArtistId" = al."ArtistId"
INNER JOIN "Track" AS t
ON al."AlbumId" = t."AlbumId"
INNER JOIN "Genre" AS g
ON t."GenreId" = g."GenreId";

--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.
SELECT t."Name" AS track_name, mt."Name" AS media_type
FROM "Track" AS t
INNER JOIN "MediaType" AS mt
ON t."MediaTypeId" = mt."MediaTypeId";

-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**
SELECT t."Name" AS track_name, g."Name" AS genre_name
FROM "Track" AS t
LEFT JOIN "Genre" AS g
ON t."GenreId" = g."GenreId";

-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.
SELECT c."FirstName" || ' ' || c."LastName" AS customer_name, i."InvoiceId", i."Total"
FROM "Customer" AS c
LEFT JOIN "Invoice" AS i
ON c."CustomerId" = i."CustomerId";

-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).
SELECT al."Title" AS album_title, ar."Name" AS artist_name
FROM "Album" AS al
LEFT JOIN "Artist" AS ar
ON al."ArtistId" = ar."ArtistId";

-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 
SELECT g."Name" AS genre_name, COUNT(t."TrackId") AS track_count
FROM "Genre" AS g
INNER JOIN "Track" AS t
ON g."GenreId" = t."GenreId"
GROUP BY g."Name"
ORDER BY track_count DESC;

--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.
SELECT al."Title" AS album_title, SUM(t."Milliseconds") AS total_duration
FROM "Album" AS al
INNER JOIN "Track" AS t
ON al."AlbumId" = t."AlbumId"
GROUP BY al."Title";

-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.
SELECT c."FirstName" || ' ' || c."LastName" AS customer_name, SUM(i."Total") AS total_spent
FROM "Customer" AS c
INNER JOIN "Invoice" AS i
ON c."CustomerId" = i."CustomerId"
GROUP BY customer_name;

-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.
SELECT CONCAT(e."FirstName", ' ', e."LastName") AS employee_name, 
       CONCAT(c."FirstName", ' ', c."LastName") AS customer_name
FROM "Employee" AS e
LEFT JOIN "Customer" AS c
ON e."EmployeeId" = c."SupportRepId";


