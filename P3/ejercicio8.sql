SELECT s.NOMBRE_COMPLETO "Nombre", COUNT(*)
FROM SOCIO s, PARTICIPANTES p
WHERE s.ID_SOCIO=p.ID_SOCIO AND GOLES_1>GOLES_2
GROUP BY s.NOMBRE_COMPLETO
HAVING COUNT(*)>1;