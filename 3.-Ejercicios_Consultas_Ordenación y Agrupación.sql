
-- Ejercicio 1:  Selecciona el nombre de todos los álbumes y ordénalos alfabéticamente.
SELECT "Title"
FROM "Album"
ORDER BY "Title" ASC;

-- Ejercicio 2:  Encuentra el álbum con el mayor número de canciones.
SELECT "AlbumId", COUNT("TrackId") AS numero_canciones
FROM "Track"
GROUP BY "AlbumId"
ORDER BY numero_canciones DESC
LIMIT 1;

-- Ejercicio 3:  Calcula la duración promedio, desviación estándar y varianza por compositor.
SELECT "Composer", 
       ROUND(AVG("Milliseconds"), 2) AS duracion_promedio,
       ROUND(STDDEV("Milliseconds"), 2) AS desviacion_estandar,
       ROUND(VARIANCE("Milliseconds"), 2) AS varianza
FROM "Track"
WHERE "Composer" IS NOT NULL
GROUP BY "Composer"
ORDER BY duracion_promedio DESC;

-- Ejercicio 4: Selecciona el título y el precio de las pistas, y limita los resultados a 10.
SELECT "Name" AS "Titulo", "UnitPrice" AS "Precio"
FROM "Track"
LIMIT 10;
   
-- Ejercicio 5: Lista los nombres de los empleados y ordénalos por el ID del empleado en orden descendente.
SELECT "FirstName", "LastName"
FROM "Employee"
ORDER BY "EmployeeId" DESC;

-- Ejercicio 6:  Muestra el número de géneros distintos disponibles en la base de datos.
SELECT COUNT(DISTINCT "GenreId") AS numero_generos
FROM "Genre";

-- Ejercicio 7: Selecciona el nombre del cliente y el país, limitando los resultados a 5, y ordena por el nombre del cliente.
SELECT "FirstName" AS "Nombre", "Country" AS "Pais"
FROM "Customer"
ORDER BY "FirstName" ASC
LIMIT 5;
    
-- Ejercicio 8: Muestra la cantidad total de clientes agrupados por país.
SELECT "Country", COUNT("CustomerId") AS total_clientes
FROM "Customer"
GROUP BY "Country"
ORDER BY total_clientes DESC;

-- Ejercicio 9: Obtén el total de importes de facturas para cada país y muestra solo aquellos con un total superior a 10,000.
SELECT "BillingCountry" AS "Pais", SUM("Total") AS total_facturas
FROM "Invoice"
GROUP BY "BillingCountry"
HAVING SUM("Total") > 10000
ORDER BY total_facturas DESC;

-- Ejercicio 10: Encuentra los países donde el número total de clientes es mayor a 5. Muestra el país y el número de clientes.
SELECT "Country", COUNT("CustomerId") AS numero_clientes
FROM "Customer"
GROUP BY "Country"
HAVING COUNT("CustomerId") > 5
ORDER BY numero_clientes DESC;

-- Ejercicio 11: Obtén la cantidad de pistas en cada tipo de medio (MediaType) que tienen una duración mayor a 250,000 milisegundos.
   SELECT "MediaTypeId", COUNT("TrackId") AS total_pistas
FROM "Track"
WHERE "Milliseconds" > 250000
GROUP BY "MediaTypeId"
ORDER BY total_pistas DESC;

-- Ejercicio 12: Lista el país y el número total de clientes que han sido asistidos por un representante de ventas específico, cuyo ID sea menor a 5.
   SELECT "Country", COUNT("CustomerId") AS total_clientes
FROM "Customer"
WHERE "SupportRepId" < 5
GROUP BY "Country"
ORDER BY total_clientes DESC;

-- Ejercicio 13: Muestra los códigos postales (BillingPostalCode) de los clientes que han hecho más de 5 compras.
  SELECT "BillingPostalCode", COUNT("InvoiceId") AS numero_compras
FROM "Invoice"
GROUP BY "BillingPostalCode"
HAVING COUNT("InvoiceId") > 5
ORDER BY numero_compras DESC;

-- Ejercicio 14: Encuentra la cantidad total de pistas en cada tipo de medio (MediaTypeId) donde el precio de la pista (UnitPrice) es mayor a 0.99 y la duración de la pista (Milliseconds) es mayor a 200,000. Muestra el tipo de medio y el número total de pistas.
SELECT "MediaTypeId", COUNT("TrackId") AS total_pistas
FROM "Track"
WHERE "UnitPrice" > 0.99 AND "Milliseconds" > 200000
GROUP BY "MediaTypeId"
ORDER BY total_pistas DESC;

-- Ejercicio 15: Lista el país y el estado de los clientes que tienen el soporte asignado a un representante con ID mayor a 3 y cuyo nombre de empresa (Company) no es nulo. Muestra el país, el estado y el número de clientes.
SELECT "Country", "State", COUNT("CustomerId") AS numero_clientes
FROM "Customer"
WHERE "SupportRepId" > 3 AND "Company" IS NOT NULL
GROUP BY "Country", "State"
ORDER BY numero_clientes DESC;