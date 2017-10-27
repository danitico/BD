SELECT ID_PARTIDO, 
SUM( DECODE(EQUIPO_1, 'Madrid', GOLES_1 * 3,
                      'Atletico', GOLES_1 * 4,
                                GOLES_1) + GOLES_2) AS "GOLES"
FROM PARTIDO
GROUP BY ID_PARTIDO;