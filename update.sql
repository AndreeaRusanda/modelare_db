
update carte set pagini=300;

update carte set pagini=500 where autori_id=2;

update carte set pagini=1000 where autori_id=1 and titlu='Ingrijire spatii verzi';

update carte set pagini=1000 where titlu='Ingrijire spatii verzi';

update carte as c set pagini=1000 where autori_id=1 and titlu='Ingrijire spatii verzi';
--update carte as c set c.pagini=1000 where c.autori_id=1 and c.titlu='Ingrijire spatii verzi';--de identif pattern.

update carte set pagini=null where id=3

update carte set deleted = False;

update carte set deleted = True where id=2;

select * from carte where deleted=True;




