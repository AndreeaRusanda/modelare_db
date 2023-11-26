/*ASSIGMENT
1. doua tabele cu cheie primară simplă
2. doua tabele cu cheie primară compusă
3. fiecare tabel trebuie sa aiba o constrangere de UNIQUE pe una din coloane
4. minimum 4 coloane per tabel
5.
6.
*/

create table authors(
	id SERIAL NOT NULL,
	name char(50) unique not null,
	book_name varchar(100) not null,
	publication_date date not null,
	primary key(id)
);

create table educatoare(
	id smallint not null,
	name char(50) not null,
	grad varchar(50) not null,
	mail varchar(50)not null,
	primary key(id, name)
);

create table magazine(
	id serial not null,
	name varchar(50) unique not null,
	adresa varchar(100) not null,
	orar time not null,
	primary key(id)
);

create table cluburi_sportive(
	id integer not null,
	name char(100) not null,
	specializare char(50) not null,
	adresa varchar(100) not null,
	primary key(id,name)
);
	