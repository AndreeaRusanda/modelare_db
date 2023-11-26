/*
create table if not exists country(
	id serial primary key not null,
	indicativ char(3) not null,
	geometry varchar(100) not null,
	area decimal not null
);

create table if not exists county(
	id serial primary key not null,
	country_id integer not null,
	area decimal not null,
	siruta integer not null,
	geometry varchar(100) not null default 'POLYGON',
	FOREIGN KEY(country_id) references country(id)
);
*/

create table if not exists universitate(
	id serial primary key not null,
	nume varchar (100) not null,
	adresa varchar (100) not null,
	contact smallint not null
);

create table if not exists facultate(
	id serial primary key not null,
	universitate_id integer not null,
	orar time not null,
	departament char(50) not null,
	contact smallint not null,
	FOREIGN KEY(universitate_id) references universitate(id)
);