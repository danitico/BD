SELECT SUBSTR(NOMBRE_COMPLETO, 1, INSTR(NOMBRE_COMPLETO, ' ')) AS NOMBRE
FROM SOCIO s, PARTICIPANTES p
WHERE p.ID_PARTIDO IN (4,3) AND s.ID_SOCIO=p.ID_SOCIO;

