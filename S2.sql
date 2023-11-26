/*
create table if not exists users(
	id serial primary key not null,
	name varchar(50) not null,
	email varchar(50) null,
	phone_number varchar(20) null
);

CREATE TABLE IF NOT EXISTS books(
	id serial primary key not null,
	title varchar(100) not null,
	isbn varchar(10) not null,
	published_date date not null,
	price decimal null
);

CREATE TABLE IF NOT EXISTS users_books(
	id serial primary key not null,
	users_id integer not null,
	books_id integer not null,
	review text not null,
	review_date date not null,
	foreign key(users_id) references users(id),
	foreign key(books_id) references books(id)
);
*/

CREATE TABLE IF NOT EXISTS materie(
	id serial primary key not null,
	name varchar(50) not null,
	sala char(20) not null,
	ziua date not null,
	ora time not null
);

CREATE TABLE IF NOT EXISTS prof(
	id serial primary key not null,
	name varchar(50) not null,
	mail varchar(50) null
);

CREATE TABLE IF NOT EXISTS materie_prof(
	id serial primary key not null,
	materie_id integer not null,
	prof_id integer not null,
	foreign key(materie_id) references materie(id),
	foreign key(prof_id) references prof(id)
);