CREATE TABLE IF NOT EXISTS tara (
    tara_id SERIAL PRIMARY KEY,
    nume_tara VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS structura_regiune (
    structura_id SERIAL PRIMARY KEY,
    descriere VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS marime_regiune (
    marime_id SERIAL PRIMARY KEY,
    dimensiune INT NOT NULL
);

CREATE TABLE IF NOT EXISTS vulnerabilitate_regiune (
    vulnerabilitate_id SERIAL PRIMARY KEY,
    nivel INT NOT NULL
);

CREATE TABLE IF NOT EXISTS regiune_geografica (
    regiune_id SERIAL,
    nume_regiune VARCHAR(100) NOT NULL,
    tara_id INT,
    structura_id INT,
    marime_id INT,
    vulnerabilitate_id INT,
    PRIMARY KEY (regiune_id, tara_id),
    FOREIGN KEY (tara_id) REFERENCES tara(tara_id),
    FOREIGN KEY (structura_id) REFERENCES structura_regiune(structura_id),
    FOREIGN KEY (marime_id) REFERENCES marime_regiune(marime_id),
    FOREIGN KEY (vulnerabilitate_id) REFERENCES vulnerabilitate_regiune(vulnerabilitate_id)
);

CREATE TABLE IF NOT EXISTS uat (
    uat_id SERIAL PRIMARY KEY,
    nume_uat VARCHAR(100) NOT NULL,
    regiune_id INT,
    FOREIGN KEY (regiune_id, tara_id) REFERENCES regiune_geografica(regiune_id, tara_id)
);
