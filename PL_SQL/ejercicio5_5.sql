DECLARE
    cursor b is SELECT PASE FROM JUGADORES;
BEGIN
    for data_ in b loop
        UPDATE JUGADORES
        SET PASE=PASE + (data_.PASE)*0.05
        WHERE PASE=data_.PASE;
    end loop;
END;
/