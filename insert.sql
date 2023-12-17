insert into autori(nume, sex, carti_scrise) values ('Mihai Eminescu', 'M', 3)

insert into autori(nume, sex, carti_scrise)
	values
	('Grigore Vieru', 'M', 10),
	('Ana Blandiana', 'F', 4),
	('Ion Creanga', 'M', 7),
	('Lucian Blaga', 'M', 8);
	
insert into adresa(autori_id, strada, numar, casa_bloc) values 
	(7,'Aleea trandafirilor', 2, 'c'),
	(8,'Aleea trandafirilor', 2, 'c'),
	(9,'Aleea trandafirilor', 2, 'c'),
	(10,'Aleea trandafirilor', 2, 'c');

insert into adresa as addr(autori_id, strada, numar, casa_bloc) values (6,'Alea trandafirilor', 2, 'c');

--insert pe baza de select
insert into autori(nume, sex, carti_scrise)
	values
(SELECT nume, sex, carti_scris from autori); --NOT WORKING





