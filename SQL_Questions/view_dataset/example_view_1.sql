DROP VIEW IF EXISTS a_person_view; 

-- creating view
CREATE VIEW a_person_view AS 
select name, age from public.person
where name like 'a%'; 

-- calling view
SELECT * FROM a_person_view; 

