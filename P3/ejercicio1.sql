SELECT EQUIPO_1|| ' vs ' || EQUIPO_2 AS "Partidos"
FROM PARTIDO
WHERE (GOLES_1 + GOLES_2)>3; 

