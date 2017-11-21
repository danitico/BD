SET SERVEROUTPUT ON
DECLARE
    locales NUMBER(2);
    visitantes NUMBER(2);
BEGIN
    SELECT AVG(GOLES_1), AVG(GOLES_2)
    INTO locales, visitantes
    FROM PARTIDO;
    IF locales > visitantes THEN
        DBMS_OUTPUT.PUT_LINE('La media de los goles locales es mayor');
    ELSE
        DBMS_OUTPUT.PUT_LINE('La media de los goles visitantes es mayor');
    END IF;
END;