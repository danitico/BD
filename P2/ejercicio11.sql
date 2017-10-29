SELECT S.NOMBRE_COMPLETO "Nombre socio", SUM(A.CONSUMO) "Consumo total"
FROM SOCIO S, ASISTENTES A
WHERE S.ID_SOCIO=A.ID_SOCIO
GROUP BY S.NOMBRE_COMPLETO
ORDER BY SUM(A.CONSUMO);