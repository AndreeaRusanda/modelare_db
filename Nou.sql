select 2;
select 'Text for select';
select 2+2;
select 3>4;

select NOW ();

select * FROM autori;

select nume from autori;

select nume, carti_scrise from autori;

select id, nume, sex, carti_scrise from autori;

select *, nume, sex, carti_scrise from autori;

select *, * from autori;

select 'Popescu Vasile', 4;

select 'Popescu Vasile', 4+8;

select *, 4+5 from autori;

select nume, 3/5 from autori;

select nume, carti_scrise, 3%5 from autori;

select nume, carti_scrise > 5 from autori;

select nume, carti_scrise > 5 as "peste_5" from autori;

select nume, carti_scrise > 5 "peste_5" from autori;

select nume as "Nume", carti_scrise as "Carti scrise" from autori;

select * from autori as a;

select * from autori as "Autori";

select nume, sex from autori as a;

select a.nume, a.sex from autori as a;

select * from adresa where id > 4;

select * from adresa;

select * from adresa where autori_id=4;

select * from adresa where autori_id=4 and casa_bloc='c';

select * from adresa where casa_bloc='b';

select distinct nume from autori;

select * from autori where nume like 'Georgescu Ion';
select * from autori where nume='Georgescu Ion';

select * from autori where nume like '%Georgescu%';

select * from autori where nume like '%Ion%';

select * from autori where not nume like '%Ion&';

select * from autori where nume like '_on%';

select * from carte where pagini = '' --; nu merge
select * from carte where pagini IS NULL;

select * from carte where pagini > 0;
select * from carte where pagini is not null;

select * from carte;

select * from carte where capitole >=7 and capitole <=12;
select * from carte where capitole between 7 and 12; -- [] (] () [)

select * from carte where 
	titlu = 'Timisoara Verde' 
	or 
	titlu= 'Toamna lunga in Timisoara' 
	OR
	titlu= 'Iepurele Vesel';

select * from carte 
	WHERE titlu in ('Timisoara Verde' ,'Toamna lunga in Timisoara' ,'Iepurele Vesel' );
	
select * from carte
	where titlu not in ('Timisoara Verde' ,'Toamna lunga in Timisoara' ,'Iepurele Vesel' );

select nume, count(nume) from autori -- COUNT, SUM, MIN, MAX, AVG
group by nume;

select * from carte;
select autori_id, titlu from carte;
select autori_id as "Id Autor", titlu as "Titlu carte" from carte;

select titlu as "Titlu carte", autori_id, pagini as "Numar pagini", capitole "Nr capitole" from carte

select * from carte;

select * from carte order by autori_id DESC;

select * from carte order by autori_id;
select * from carte order by autori_id ASC;

SELECT * from carte order by autori_id DESC, capitole ASC;

SELECT AVG (pagini) as "Numar mediu pagini carte" from carte;
SELECT AVG (pagini) as "Numar mediu pagini carte", AVG (capitole) "Nr capitole" from carte;
select AVG (capitole) "Nr capitole", AVG(pagini) as "Numar mediu pagini carte" from carte;

select AVG (capitole) "Nr capitole", AVG(pagini) as "Numar mediu pagini carte" from carte
WHERE autori_id > 3

select AVG(capitole) "Nr capitole", SUM(pagini) from carte;
select titlu, max(pagini) from carte
group by titlu;

select MIN(pagini) from carte;
select titlu, min(capitole) from carte
group by titlu;

select count (*) from carte;
select autori_id, count (*) as "Nr carti" from carte
group by autori_id, pagini
having pagini > 300;




