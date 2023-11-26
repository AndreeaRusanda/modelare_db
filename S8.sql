CREATE TABLE IF NOT EXISTS roles(
	id integer primary key NOT NULL,
	name VARCHAR(255) UNIQUE NOT NULL
);