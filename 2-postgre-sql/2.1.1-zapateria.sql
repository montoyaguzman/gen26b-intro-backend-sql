-- 1
DROP TABLE IF EXISTS Shoes;
DROP TABLE IF EXISTS Colors;
DROP TABLE IF EXISTS Types_;
DROP TABLE IF EXISTS Models;
-- 2
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Rols;
DROP TABLE IF EXISTS Genre;
-- 3
DROP TABLE IF EXISTS Tickets;
DROP TABLE IF EXISTS Cajeros;

-- 1
CREATE SEQUENCE IF NOT EXISTS sec_colors
  start with 1
  increment by 1
  maxvalue 99999
  minvalue 1
;

CREATE SEQUENCE IF NOT EXISTS sec_types_
  start with 1
  increment by 1
  maxvalue 99999
  minvalue 1
;

CREATE SEQUENCE IF NOT EXISTS sec_models
  start with 1
  increment by 1
  maxvalue 99999
  minvalue 1
;

CREATE SEQUENCE IF NOT EXISTS sec_shoes
  start with 1
  increment by 1
  maxvalue 99999
  minvalue 1
;

-- 2
CREATE SEQUENCE IF NOT EXISTS sec_rols
  start with 1
  increment by 1
  maxvalue 99999
  minvalue 1
;

CREATE SEQUENCE IF NOT EXISTS sec_genre
  start with 1
  increment by 1
  maxvalue 99999
  minvalue 1
;

CREATE SEQUENCE IF NOT EXISTS sec_users
  start with 1
  increment by 1
  maxvalue 99999
  minvalue 1
;

-- 3
CREATE SEQUENCE IF NOT EXISTS sec_cajeros
  start with 1
  increment by 1
  maxvalue 99999
  minvalue 1
;

CREATE SEQUENCE IF NOT EXISTS sec_tickets
  start with 1
  increment by 1
  maxvalue 99999
  minvalue 1
;


-- 1
ALTER SEQUENCE sec_colors RESTART WITH 1;
ALTER SEQUENCE sec_types_ RESTART WITH 1;
ALTER SEQUENCE sec_models RESTART WITH 1;
ALTER SEQUENCE sec_shoes RESTART WITH 1;
-- 2
ALTER SEQUENCE sec_rols RESTART WITH 1;
ALTER SEQUENCE sec_genre RESTART WITH 1;
ALTER SEQUENCE sec_users RESTART WITH 1;
-- 3
ALTER SEQUENCE sec_cajeros RESTART WITH 1;
ALTER SEQUENCE sec_tickets RESTART WITH 1;


CREATE TABLE Colors (
  idColor SERIAL PRIMARY KEY,
  description VARCHAR
);

CREATE TABLE Types_ (
  idType SERIAL PRIMARY KEY,
  description VARCHAR
);

CREATE TABLE Models (
  idModel SERIAL PRIMARY KEY,
  description VARCHAR
);

CREATE TABLE Shoes (
  idShoe SERIAL PRIMARY KEY,
  description VARCHAR,
  idColor INT,
  idModel INT,
  idType INT
);

CREATE TABLE Genre (
  idGenre SERIAL PRIMARY KEY,
  description VARCHAR
);

CREATE TABLE  Rols (
  idRol SERIAL PRIMARY KEY,
  description VARCHAR
);

CREATE TABLE Users (
  idUser SERIAL PRIMARY KEY,
  name VARCHAR,
  app VARCHAR,
  apm VARCHAR,
  idGenre INT,
  edad VARCHAR, -- SI EL VALOR NO SE VA OPERAR ALGEBRAICAMENTE SE RECOMIENDA USAR VARCHAR
  phone VARCHAR, -- SI EL VALOR NO SE VA OPERAR ALGEBRAICAMENTE SE RECOMIENDA USAR VARCHAR
  idRol INT
);

CREATE TABLE Cajeros (
  idCajero SERIAL PRIMARY KEY,
  name VARCHAR
);

CREATE TABLE Tickets (
  idTicket SERIAL PRIMARY KEY,
  fechaHora timestamp,
  idCajero INT,
  amount FLOAT
);

-- CONSTRAINTS SHOES
ALTER TABLE Shoes ADD CONSTRAINT shoes_colors_fk
    FOREIGN KEY (idColor)
    REFERENCES Colors (idColor);

ALTER TABLE Shoes ADD CONSTRAINT shoes_types_fk
    FOREIGN KEY (idType)
    REFERENCES Types_ (idType);

ALTER TABLE Shoes ADD CONSTRAINT shoes_models_fk
    FOREIGN KEY (idModel)
    REFERENCES Models (idModel);

-- CONSTRAINTS USERS
ALTER TABLE Users ADD CONSTRAINT users_genres_fk
    FOREIGN KEY (idGenre)
    REFERENCES Genre (idGenre);

ALTER TABLE Users ADD CONSTRAINT users_rols_fk
    FOREIGN KEY (idRol)
    REFERENCES Rols (idRol);
	
-- CONSTRAINTS TICKETS
ALTER TABLE Tickets ADD CONSTRAINT tickets_cajeros_fk
    FOREIGN KEY (idCajero)
    REFERENCES Cajeros (idCajero);

/*
    CATALOGS
*/

-- SEED COLORS
INSERT INTO Colors VALUES
(nextval('sec_colors'), 'rojo'), 
(nextval('sec_colors'), 'negro'),
(nextval('sec_colors'), 'verde');

-- SEED TYPES_
INSERT INTO Types_ VALUES(nextval('sec_types_'), 'zapato');
INSERT INTO Types_ VALUES(nextval('sec_types_'), 'tennis');
INSERT INTO Types_ VALUES(nextval('sec_types_'), 'sandalia');

-- SEED MODELS
INSERT INTO Models VALUES(nextval('sec_models'), 'FS-200');
INSERT INTO Models VALUES(nextval('sec_models'), 'AD-301');

-- SEED ROLS
INSERT INTO Rols VALUES(nextval('sec_rols'), 'admin');
INSERT INTO Rols VALUES(nextval('sec_rols'), 'cliente');

-- SEED GENRE
INSERT INTO Genre VALUES(nextval('sec_genre'), 'M');
INSERT INTO Genre VALUES(nextval('sec_genre'), 'F');

-- SEED CAJERO
INSERT INTO Cajeros VALUES(nextval('sec_cajeros'), 'juanito');
INSERT INTO Cajeros VALUES(nextval('sec_cajeros'), 'danielito');

/*
    MAIN TABLES
*/

-- SEED SHOES
INSERT INTO Shoes VALUES(nextval('sec_shoes'), 'un zapatito', 1, 1, 1);

-- SEED USERS
INSERT INTO Users VALUES(nextval('sec_users'), 'jose', 'mon','guz', 1, 28, '0123456789', 1);
INSERT INTO Users VALUES(nextval('sec_users'), 'jose', 'mon','guz', 2, 28, '0123456789', 2);

-- SEED TICKETS
INSERT INTO Tickets VALUES(nextval('sec_tickets'), '1999-01-08 04:05:06', 1, 5000);
INSERT INTO Tickets VALUES(nextval('sec_tickets'), '1999-01-08 04:05:06', 2, 5000);


-- QUERYS DE PRUEBAS
SELECT * FROM users;
SELECT * FROM shoes;
SELECT * FROM tickets;

-- JOIN SIMPLE
SELECT users.name, genre.description FROM users JOIN genre on users.idGenre = genre.idGenre;

-- JOIN DE DOS TABLAS
SELECT users.name, genre.description, rols.description FROM users 
    JOIN genre on users.idGenre = genre.idGenre
    JOIN rols on users.idRol = rols.idRol;