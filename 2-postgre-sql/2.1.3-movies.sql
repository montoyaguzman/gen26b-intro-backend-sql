CREATE TABLE Movies(
 idMovie SERIAL PRIMARY KEY,
 name VARCHAR NOT NULL,
 sku VARCHAR UNIQUE,
 premier DATE,
 idDirector INT
);

CREATE TABLE Directors(
    idDirector SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL
);
    
INSERT INTO Directors VALUES (DEFAULT, 'David Yates');
INSERT INTO Directors VALUES (DEFAULT, 'Guillermo del Toro');
INSERT INTO Directors VALUES (DEFAULT, 'Potito');

INSERT INTO Directors VALUES (DEFAULT, 'David Yates'), (DEFAULT, 'Guillermo del Toro'), (DEFAULT, 'Potito');

INSERT INTO Movies VALUES (DEFAULT, 'harry potter', '12340', '1999-01-08', 1);
INSERT INTO Movies VALUES (DEFAULT, 'avengers', '12340', '1999-01-08', 2);
INSERT INTO Movies VALUES (DEFAULT, 'it', '12340', '1999-01-08', 3);
INSERT INTO Movies VALUES (DEFAULT, 'pokemon', '12340', '1999-01-08', 3);

INSERT INTO Movies VALUES (DEFAULT, 'harry potter', '21212', '1999-01-08', 1), (DEFAULT, 'avengers', '3434', '1999-01-08', 2), (DEFAULT, 'it', '34384', '1999-01-08', 3);

ALTER TABLE Movies ADD CONSTRAINT movies_directors_fk
    FOREIGN KEY (idDirector)
    REFERENCES Directors (idDirector);
