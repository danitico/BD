ACCEPT pseudo PROMPT 'Introduzca un numero para aumentar las estadisticas'
DECLARE
    cursor c is SELECT * FROM JUGADORES;
BEGIN
    for B in c loop
            IF (B.GLOBAL + &pseudo) >= 100 THEN 
                B.GLOBAL:=99;
            ELSE
                B.GLOBAL:=B.GLOBAL + &pseudo;
            END IF;
            IF (B.RITMO + &pseudo) >= 100 THEN 
                B.RITMO:=99;
            ELSE
                B.RITMO:=B.RITMO + &pseudo;
            END IF;
            IF (B.TIRO + &pseudo) >= 100 THEN
                B.TIRO:=99;
            ELSE
                B.TIRO:=B.TIRO + &pseudo;
            END IF;
            IF (B.PASE + &pseudo) >= 100 THEN 
                B.PASE:=99;
            ELSE
                B.PASE:=B.PASE + &pseudo;
            END IF;
            IF (B.REGATE + &pseudo) >= 100 THEN 
                B.REGATE:=99;
            ELSE
                B.REGATE:=B.REGATE + &pseudo;
            END IF;
            IF (B.DEFENSA + &pseudo) >= 100 THEN 
                B.DEFENSA:=99;
            ELSE
                B.DEFENSA:=B.DEFENSA + &pseudo;
            END IF;
            IF (B.FISICO + &pseudo) >= 100 THEN 
                B.FISICO:=99;
            ELSE
                B.FISICO:=B.FISICO + &pseudo;
            END IF;
        INSERT INTO JUGADORESTOP VALUES(B.ID_JUGADOR, B.NOMBRE, B.POSICION,
                                        B.GLOBAL, B.RITMO, B.TIRO, 
                                        B.PASE, B.REGATE, B.DEFENSA,
                                        B.FISICO);
    end loop;
END;
/