DECLARE
    cursor c is SELECT * FROM JUGADORES;
BEGIN
    for B in c loop
        INSERT INTO JUGADORESTOP VALUES(B.ID_JUGADOR, B.NOMBRE, B.POSICION,
                                        B.GLOBAL + 1, B.RITMO + 1, 
                                        B.TIRO + 1, B.PASE + 1,
                                        B.REGATE + 1, B.DEFENSA + 1,
                                        B.FISICO + 1);
    end loop;
END;
/