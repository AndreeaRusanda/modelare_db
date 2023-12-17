select * from carte where capitole >3;

select autori_id, count (titlu) as "Titlu", count (pagini) as "Nr pagini", count (capitole) "Capitole" from carte
group by autori_id

select * from autori where sex = 'M';

select autori_id, count (*) from carte
group by autori_id;

select * from carte where titlu like '%er%';

select * from autori where sex = 'F' and carti_scrise >= 3;

select * from adresa where strada not like 'Str%';

select id, AVG(carti_scrise), MIN(carti_scrise), MAX(carti_scrise) from autori
group by id;

select AVG(carti_scrise), MIN(carti_scrise), MAX(carti_scrise) from autori;

select nota as "Nota", comentariu as "Comentariu", autori_id as "Autori id" from review;

select * from adresa where numar > 3 and casa_bloc = 'b';

select * from review where nota > 3 and comentariu like '%ta%';

select casa_bloc, count(casa_bloc) from adresa
group by casa_bloc;




