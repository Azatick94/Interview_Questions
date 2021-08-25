-- drop view if exists
DROP MATERIALIZED VIEW IF EXISTS mater_view_example;

-- create materialized view
CREATE MATERIALIZED VIEW mater_view_example AS 
 	SELECT * FROM public.person; 
	
-- call materialized view
SELECT * FROM mater_view_example;