SET SERVEROUTPUT ON
DECLARE 
    fisico_ number(3);
BEGIN
    SELECT FISICO
    INTO fisico_
    FROM JUGADORES
    WHERE GLOBAL=(SELECT MAX(GLOBAL) FROM JUGADORES);
    UPDATE JUGADORES
    SET FISICO=fisico_ + 1
    where GLOBAL=(SELECT MAX(GLOBAL) FROM JUGADORES);
    DBMS_OUTPUT.PUT_LINE('HEY ---> ' || fisico_);
END;
/