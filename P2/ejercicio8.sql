SELECT ID_SOCIO AS "Numero socio", avg(VALOR_APUESTA) AS "Media de apuestas"
FROM PARTICIPANTES
GROUP BY ID_SOCIO
ORDER BY ID_SOCIO;