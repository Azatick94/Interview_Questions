DROP VIEW IF EXISTS count_persons_view; 

-- creating view
CREATE VIEW count_persons_view AS 
select count(*) as people_number from public.person; 

-- calling view
SELECT * FROM count_persons_view; 

