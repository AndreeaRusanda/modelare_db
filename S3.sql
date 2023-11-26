--one to one--

create table if not exists users(
	id serial primary key not null,
	name varchar(50) not null,
	email varchar(50) null,
	phone_number varchar(20) null
);

create table if not exists address(
	id serial primary key not null, -- coloana id joaca dublu rol de PK si FK pentru ca o cheie primara este by default unica
	address varchar(200) not null,
	is_valid bool not null
	foreign key(id) references users(id)
);

create table if not exists address(
	id serial primary key not null,
	users_id integer not null unique
	address varchar(200) not null,
	is_valid bool not null
	foreign key(users_id) references users(id)
);

-- unique ai constrangere de one to one, fara ai one to many