SELECT DISTINCT VALOR_APUESTA
FROM PARTICIPANTES
WHERE VALOR_APUESTA=(SELECT MAX(VALOR_APUESTA) FROM PARTICIPANTES);