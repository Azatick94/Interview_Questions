DROP FUNCTION IF EXISTS one; 

CREATE FUNCTION one() RETURNS bigint AS $$
SELECT count(*) as nmb from public.person;
$$ LANGUAGE SQL;

SELECT one();
