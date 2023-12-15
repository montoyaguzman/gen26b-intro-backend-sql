DROP TABLE Departments;
DROP TABLE Products;

CREATE TABLE Departments (
	idDeparment SERIAL PRIMARY KEY,
	description VARCHAR(40)
);

CREATE TABLE Products (
	idProduct SERIAL PRIMARY KEY,
	sku VARCHAR(20) UNIQUE,
	name VARCHAR,
	purchasePayment NUMERIC,
	sellingPayment NUMERIC,
	idDeparment INT,
	CONSTRAINT FK_products_departments FOREIGN KEY (idDeparment)
		REFERENCES Departments(idDeparment)
);

/* ALTER TABLE
ESTE ES UN
COMENTARIO MULTI
LINEAAAAA
*/

ALTER TABLE Products ADD brand VARCHAR(50);
ALTER TABLE Products ALTER COLUMN brand TYPE VARCHAR(20);
-- ALTER TABLE Products ALTER COLUMN brand TYPE DECIMAL; -- ERROR column "brand" cannot be cast automatically to type numeric
SELECT * FROM Products;
SELECT * FROM Departments;


-- DEPARMENTS
-- INSERT INTO Deparments VALUES (DEFAULT, 'Electronica');
-- INSERT INTO Deparments VALUES (DEFAULT, 'Electronica 2');
INSERT INTO Departments VALUES
	(DEFAULT, 'Electronica'),
	(DEFAULT, 'Tecnologia'),
	(DEFAULT, 'Deportes'),
	(DEFAULT, 'Ropa y calzado H'),
	(DEFAULT, 'Ropa y calzado M'),
	(DEFAULT, 'Niños'),
	(DEFAULT, 'Belleza y salud'),
	(DEFAULT, 'Hogar'),
	(DEFAULT, 'Juguetes'),
	(DEFAULT, 'Mascotas')
;

-- PRODUCTS
INSERT INTO Products VALUES
	(DEFAULT, 'SKU001', 'Producto1', 10.50, 15.99, 1),
	(DEFAULT, 'SKU002', 'Producto2', 8.75, 12.49, 2),
	(DEFAULT, 'SKU003', 'Producto3', 20.00, 29.99, 1),
	(DEFAULT, 'SKU004', 'Producto4', 15.99, 24.99, 3),
	(DEFAULT, 'SKU005', 'Producto5', 12.50, 18.75, 2),
	(DEFAULT, 'SKU006', 'Producto6', 18.00, 26.50, 1),
	(DEFAULT, 'SKU007', 'Producto7', 25.75, 34.99, 3),
	(DEFAULT, 'SKU008', 'Producto8', 14.99, 22.50, 2),
	(DEFAULT, 'SKU009', 'Producto9', 30.00, 45.99, 1),
	(DEFAULT, 'SKU010', 'Producto10', 22.50, 32.75, 3),
	(DEFAULT, 'SKU011', 'Producto11', 17.25, 26.00, 2),
	(DEFAULT, 'SKU012', 'Producto12', 12.99, 19.99, 1),
	(DEFAULT, 'SKU013', 'Producto13', 28.50, 39.75, 3),
	(DEFAULT, 'SKU014', 'Producto14', 19.99, 28.50, 2),
	(DEFAULT, 'SKU015', 'Producto15', 15.00, 23.49, 4),
	(DEFAULT, 'SKU016', 'Producto16', 23.75, 32.00, 4),
	(DEFAULT, 'SKU017', 'Producto17', 18.49, 26.75, 5),
	(DEFAULT, 'SKU018', 'Producto18', 13.00, 19.50, 6),
	(DEFAULT, 'SKU019', 'Producto19', 26.99, 36.25, 6),
	(DEFAULT, 'SKU020', 'Producto20', 13.50, 17.99, 7),
	(DEFAULT, 'SKU021', 'Producto21', 11.50, 15.99, 7),
	(DEFAULT, 'SKU022', 'Producto22', 24.50, 29.99, 8),
	(DEFAULT, 'SKU023', 'Producto23', 34.50, 39.99, 9),
	(DEFAULT, 'SKU024', 'Producto24', 78.50, 89.99, 9)
;

SELECT sku, name FROM Products;
SELECT * FROM Departments;
SELECT sku, name FROM Products WHERE sku = 'SKU025';

INSERT INTO Products VALUES (DEFAULT, 'SKU025', 'Producto25', 78.50, 89.99, 10);
INSERT INTO Products VALUES (DEFAULT, 'SKU026', 'Producto26', 78.50, 89.99, 11);

DELETE FROM Products WHERE sku='SKU025';
UPDATE Products SET name = 'tennis' WHERE sku='SKU024';


SELECT Products.sku, Products.sellingPayment, Departments.description 
	FROM Products INNER JOIN Departments
	ON Departments.idDeparment = Products.idDeparment;
