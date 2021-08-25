-- dropping table
drop table if exists public.person; 

-- creating the table
create table public.person (
	id serial primary key not null,
	name varchar(30) not null, 
	age integer not null
); 