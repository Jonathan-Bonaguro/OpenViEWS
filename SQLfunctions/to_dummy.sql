CREATE OR REPLACE FUNCTION public.to_dummy(i bigint) RETURNS int AS
$$
BEGIN
IF i>0 THEN RETURN 1;
ELSE RETURN 0;
END IF;
end
$$
LANGUAGE 'plpgsql' RETURNS NULL ON NULL INPUT IMMUTABLE;