SET SERVEROUTPUT ON
ACCEPT PSEUDOSTRING PROMPT 'Introduzca el nombre del jugador';
DECLARE
    cursor players is SELECT * FROM JUGADORES WHERE NOMBRE='&PSEUDOSTRING' AND PASE <> (SELECT MIN(PASE) FROM JUGADORES WHERE NOMBRE='&PSEUDOSTRING' GROUP BY NOMBRE);
    pase_ number(3);
BEGIN
    DELETE FROM MEJORES_PASADORES;
    SELECT MIN(PASE)
    INTO pase_
    FROM JUGADORES
    WHERE NOMBRE='&PSEUDOSTRING'
    GROUP BY NOMBRE;
    for num_row in players loop
        INSERT INTO MEJORES_PASADORES VALUES (num_row.ID_JUGADOR, num_row.NOMBRE, 
                                              num_row.POSICION, num_row.GLOBAL,
                                              num_row.RITMO, num_row.TIRO,
                                              num_row.PASE - pase_, num_row.REGATE,
                                              num_row.DEFENSA, num_row.FISICO);
    end loop;
END;
/
