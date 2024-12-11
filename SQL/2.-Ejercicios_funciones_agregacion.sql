
/* MIN y MAX */

-- Ejercicio 1: Encontrar la duración mínima de las pistas en milisegundos.
SELECT MIN("Milliseconds") AS minimo_duracion 
FROM "Track";

-- Ejercicio 2: Encontrar la duración máxima de las pistas en milisegundos.
SELECT MAX("Milliseconds") AS maximo_duracion 
FROM "Track";

-- Ejercicio 3: Encontrar el precio mínimo de las pistas.
   SELECT MIN("UnitPrice") AS precio_minimo 
FROM "Track";

-- Ejercicio 4: Encontrar el precio máximo de las pistas.
   SELECT MAX("UnitPrice") AS precio_maximo 
FROM "Track";

-- Ejercicio 5: Encontrar la fecha mínima de la factura.
   SELECT MIN("InvoiceDate") AS fecha_minima_factura 
FROM "Invoice";

-- Ejercicio 6: Encontrar la fecha máxima de la factura.
   SELECT MAX("InvoiceDate") AS fecha_maxima_factura 
FROM "Invoice";

/* COUNT y SUM */

-- Ejercicio 7: Contar el número total de pistas.
   SELECT COUNT(*) AS total_pistas 
FROM "Track";

-- Ejercicio 8: Contar el número de clientes en Brasil.
   SELECT COUNT(*) AS total_clientes_brasil 
FROM "Customer" 
WHERE "Country" = 'Brazil';

-- Ejercicio 9: Sumar la duración total de todas las pistas en milisegundos.
   SELECT SUM("Milliseconds") AS duracion_total 
FROM "Track";

-- Ejercicio 10: Contar el número de empleados con el título 'Sales Support Agent'.
    SELECT COUNT(*) AS total_sales_support_agents 
FROM "Employee" 
WHERE "Title" = 'Sales Support Agent';

-- Ejercicio 11: Sumar el total de las cantidades en las facturas.
    SELECT SUM("Total") AS suma_total_facturas 
FROM "Invoice";

/* AVG, STDDEV, VARIANCE */

-- Ejercicio 12: Calcular la duración media de las pistas en milisegundos.
    SELECT AVG("Milliseconds") AS duracion_media 
FROM "Track";

-- Ejercicio 13: Calcular el precio medio de las pistas.
    SELECT AVG("UnitPrice") AS precio_medio 
FROM "Track";

-- Ejercicio 14: Calcular la desviación estándar de la duración de las pistas.
    SELECT STDDEV("Milliseconds") AS desviacion_estandar_duracion 
FROM "Track";

-- Ejercicio 15: Calcular la varianza de la duración de las pistas.
SELECT VARIANCE("Milliseconds") AS varianza_duracion 
FROM "Track";

-- Ejercicio 16: Calcular la desviación estándar del precio de las pistas.
SELECT STDDEV("UnitPrice") AS desviacion_estandar_precio 
FROM "Track";

/* CONCAT */

-- Ejercicio 17: Concatenar el nombre y el apellido de los clientes.
SELECT CONCAT("FirstName", ' ', "LastName") AS nombre_completo 
FROM "Customer";

