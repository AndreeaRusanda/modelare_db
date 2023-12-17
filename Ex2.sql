CREATE TABLE IF NOT EXISTS proprietar (
    cnp VARCHAR NOT NULL,
    serie CHAR(2) NOT NULL,
    nr VARCHAR(6) NOT NULL,
    nume VARCHAR(50) NOT NULL,
    PRIMARY KEY (cnp, serie, nr)
);

CREATE TABLE IF NOT EXISTS adresa (
    id SERIAL NOT NULL,
    proprietar_cnp VARCHAR NOT NULL,
    strada VARCHAR(200) NOT NULL,
    oras CHAR(15) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (proprietar_cnp) REFERENCES proprietar (cnp)
);

CREATE TABLE IF NOT EXISTS primarie (
    id SERIAL NOT NULL,
    angajati INTEGER NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS uat (
    id SERIAL NOT NULL,
    primarie_id INTEGER NOT NULL UNIQUE,
    nume VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (primarie_id) REFERENCES primarie (id)
);

CREATE TABLE IF NOT EXISTS teren (
    id SERIAL NOT NULL,
    primarie_id INTEGER NOT NULL UNIQUE,
    nume VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (primarie_id) REFERENCES primarie (id)
);

CREATE TABLE IF NOT EXISTS proprietar_teren (
    cnp VARCHAR NOT NULL,
    serie_numar VARCHAR(9) NOT NULL,
    teren_id INTEGER NOT NULL,
    PRIMARY KEY (cnp, serie_numar, teren_id),
    FOREIGN KEY (teren_id) REFERENCES teren (id),
    FOREIGN KEY (cnp, serie_numar) REFERENCES proprietar (cnp, serie)
);

CREATE TABLE IF NOT EXISTS registru_agricol (
    teren_id INTEGER NOT NULL,
    primarie_id INTEGER NOT NULL,
    PRIMARY KEY (teren_id, primarie_id),
    FOREIGN KEY (teren_id) REFERENCES teren (id),
    FOREIGN KEY (primarie_id) REFERENCES primarie (id)
);
