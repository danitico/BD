ACCEPT pseudo PROMPT 'Introduzca un numero para aumentar las estadisticas'
DECLARE
    cursor c is SELECT * FROM JUGADORES;
BEGIN
    for B in c loop
        INSERT INTO JUGADORESTOP VALUES(B.ID_JUGADOR, B.NOMBRE, B.POSICION,
                                        B.GLOBAL + &pseudo, B.RITMO + &pseudo, 
                                        B.TIRO + &pseudo, B.PASE + &pseudo,
                                        B.REGATE + &pseudo, B.DEFENSA + &pseudo,
                                        B.FISICO + &pseudo);
    end loop;
END;
/