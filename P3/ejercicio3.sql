SELECT NOMBRE_COMPLETO "nombre socio", EQUIPO_1 || ' vs ' || EQUIPO_2 AS "Partido", CONSUMO "Consumo"
FROM ASISTENTES a, SOCIO s, PARTIDO p
WHERE a.ID_SOCIO=s.ID_SOCIO AND a.ID_PARTIDO=p.ID_PARTIDO;
