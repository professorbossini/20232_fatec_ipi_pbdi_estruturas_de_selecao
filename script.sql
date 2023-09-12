DO
$$
DECLARE
	valor INT := fn_valor_aleatorio_entre(1, 100);
BEGIN
	IF valor % 2 = 0 THEN
		RAISE NOTICE '% é par', valor;
	ELSE
		RAISE NOTICE '% é ímpar', valor;
	END IF;
END;
$$


-- DO
-- $$
-- DECLARE
-- 	valor INT;
-- BEGIN
-- 	valor := fn_valor_aleatorio_entre(1, 10);
-- 	RAISE NOTICE 'O valor gerado foi %', valor;
-- 	IF valor <= 20 THEN
-- 		RAISE NOTICE 'Sim, % é menor ou igual a 20', valor;
-- 	END IF;
-- END;
-- $$

-- SELECT fn_valor_aleatorio_entre(2, 5);


-- CREATE OR REPLACE FUNCTION fn_valor_aleatorio_entre (lim_inferior INT, lim_superior INT) RETURNS INT AS
-- $$
-- BEGIN
-- 	RETURN floor(random() * (lim_superior - lim_inferior + 1) + lim_inferior)::INT;
-- END;
-- $$ LANGUAGE plpgsql;