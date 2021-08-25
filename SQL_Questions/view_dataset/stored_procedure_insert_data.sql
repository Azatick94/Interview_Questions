
DROP PROCEDURE IF EXISTS insert_data;

CREATE PROCEDURE insert_data(name varchar, age integer)
LANGUAGE SQL
AS $$
INSERT INTO public.person (name, age) VALUES (name, age);
$$;

CALL insert_data('test_name_1', 1);
CALL insert_data('test_name_2', 2);											  
CALL insert_data('test_name_3', 3);											  