-- EJEMPLOS DE QUERIES CON WHERE
/*
	ESTO ES UN COMMENT
	EN MULTI-
	LINEA
*/
SELECT * FROM directors;


-- create table ventas
CREATE TABLE Ventas(
 id SERIAL PRIMARY KEY,
 name VARCHAR,
 sku VARCHAR,
 total FLOAT
);

-- query all
SELECT * FROM Ventas;

-- seed table ventas
INSERT INTO Ventas VALUES (DEFAULT, 'producto 1', 'ZBC', 100.99);
INSERT INTO Ventas VALUES (DEFAULT, 'producto 2', 'BBC', 7100.99);
INSERT INTO Ventas VALUES (DEFAULT, 'producto 3', 'DBC', 1700.99);
INSERT INTO Ventas VALUES (DEFAULT, 'producto 4', 'DBC', 18800.99);
INSERT INTO Ventas VALUES (DEFAULT, 'producto 5', 'EBC', 11020.99);
INSERT INTO Ventas VALUES (DEFAULT, 'producto 6', 'ABC', 1000.99);
INSERT INTO Ventas VALUES (DEFAULT, 'producto 7', 'ZBC', 100.99);
INSERT INTO Ventas VALUES (DEFAULT, 'producto 3', 'ABC', 1700.99);
INSERT INTO Ventas VALUES (DEFAULT, 'producto 7', 'WBC', 8190.99);
INSERT INTO Ventas VALUES (DEFAULT, 'producto 7', 'YBC', 1190.99);

SELECT * FROM Ventas WHERE id=1;
SELECT * FROM Ventas WHERE sku='ABC';
SELECT * FROM Ventas WHERE total <= 1000 AND id = 7;

SELECT name, total FROM Ventas ORDER BY total ASC;
SELECT name, total FROM Ventas ORDER BY total DESC;
SELECT name, total, sku FROM Ventas ORDER BY sku ASC;


SELECT DISTINCT sku FROM Ventas;

SELECT DISTINCT sku FROM Ventas;


SELECT * FROM Ventas WHERE total >= 10 AND total <= 101;
SELECT * FROM Ventas WHERE total BETWEEN 10 AND 101;

SELECT COUNT(total) FROM Ventas;

SELECT * FROM Ventas WHERE SKU LIKE 'A%';
SELECT * FROM Ventas WHERE SKU LIKE '%C';
SELECT * FROM Ventas WHERE SKU LIKE '%D%';

SELECT total
FROM Ventas
WHERE total > 1000
GROUP BY total;

SELECT COUNT(total), name
FROM Ventas
GROUP BY name
ORDER BY COUNT(total) DESC;

SELECT COUNT(total), name
FROM Ventas
GROUP BY name
HAVING COUNT(total) < 1000;
