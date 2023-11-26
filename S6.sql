--urmeaza sa creem un tabel cu cheie primara simpla
CREATE TABLE IF NOT EXISTS account_roles(
	id serial not null,
	name varchar(50) not null unique,
	creation_date date not null,
	primary key(id)
);
/* multiline comment
CREATE TABLE IF NOT EXISTS account_roles2(
	id serial not null,
	name varchar(50) not null unique,
	creation_date date not null,
	primary key(id,name)
);
*/

CREATE TABLE IF NOT EXISTS account_roles3(
	id integer not null,
	name varchar(50) not null,
	creation_date date not null,
	primary key(id, name)
);