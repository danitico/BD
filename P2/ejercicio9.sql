SELECT ID_SOCIO AS "Numero socio", avg(valor_apuesta) AS "Media de apuestas"
FROM PARTICIPANTES
GROUP BY ID_SOCIO
HAVING avg(VALOR_APUESTA) > 23;