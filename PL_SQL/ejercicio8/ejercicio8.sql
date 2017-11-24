SET SERVEROUTPUT ON
ACCEPT PSEUDOSTRING PROMPT 'Introduzca el nombre del jugador';
DECLARE
    cursor players is SELECT * FROM JUGADORES WHERE NOMBRE='&PSEUDOSTRING';
    veces_ number(3);
BEGIN
    DELETE FROM PROGRESION_JUGADOR;
    SELECT COUNT(*)
    INTO veces_
    FROM JUGADORES
    WHERE NOMBRE='&PSEUDOSTRING';
        
    IF veces_=0 THEN
        DBMS_OUTPUT.PUT_LINE('El jugador no está disponible');
    ELSE
        DBMS_OUTPUT.PUT_LINE('El jugador ' || '&PSEUDOSTRING' || ' tiene ' || veces_ || ' versiones');
        for num_row in players loop
            INSERT INTO PROGRESION_JUGADOR VALUES (num_row.ID_JUGADOR, num_row.NOMBRE, 
                                                  num_row.POSICION, num_row.GLOBAL,
                                                  num_row.RITMO, num_row.TIRO,
                                                  num_row.PASE, num_row.REGATE,
                                                  num_row.DEFENSA, num_row.FISICO);
        end loop;
    END IF;
END;
/
