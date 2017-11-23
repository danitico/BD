SET SERVEROUTPUT ON
ACCEPT pseudo PROMPT 'Introduzca el jugador para ver su posicion'
DECLARE
    posicion_ VARCHAR2(3);
    cursor c is SELECT DISTINCT POSICION FROM JUGADORES WHERE NOMBRE='&pseudo';
BEGIN
    for num_row in c loop
        CASE num_row.POSICION
            WHEN 'GK' THEN DBMS_OUTPUT.PUT_LINE('Portero');
            WHEN 'CB' THEN DBMS_OUTPUT.PUT_LINE('Defensa Central');
            WHEN 'LB' THEN DBMS_OUTPUT.PUT_LINE('Lateral Izquierdo');
            WHEN 'RB' THEN DBMS_OUTPUT.PUT_LINE('Lateral Derecho');
            WHEN 'RWB' THEN DBMS_OUTPUT.PUT_LINE('Carrilero derecho');
            WHEN 'LWB' THEN DBMS_OUTPUT.PUT_LINE('Carrilero izquierdo');
            WHEN 'LM' THEN DBMS_OUTPUT.PUT_LINE('Medio izquierdo');
            WHEN 'RM' THEN DBMS_OUTPUT.PUT_LINE('Medio derecho');
            WHEN 'LW' THEN DBMS_OUTPUT.PUT_LINE('Ala izquierda');
            WHEN 'RW' THEN DBMS_OUTPUT.PUT_LINE('Ala derecha');
            WHEN 'CDM' THEN DBMS_OUTPUT.PUT_LINE('Mediocentro defensivo');
            WHEN 'CM' THEN DBMS_OUTPUT.PUT_LINE('Mediocentro');
            WHEN 'CAM' THEN DBMS_OUTPUT.PUT_LINE('Mediocentro ofensivo');
            WHEN 'CF' THEN DBMS_OUTPUT.PUT_LINE('Media punta');
            WHEN 'ST' THEN DBMS_OUTPUT.PUT_LINE('Delantero');
        END CASE;
    end loop;
END;
/