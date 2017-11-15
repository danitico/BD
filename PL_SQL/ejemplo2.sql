ACCEPT str PROMPT 'Enter a string'
SET SERVEROUTPUT ON SIZE 4000
DECLARE
    cadena VARCHAR2(30);
BEGIN
    cadena := '&str';
    dbms_output.put_line(cadena);
END;