SELECT ID_SOCIO, SUM(PREMIO), CASE 
    WHEN ID_SOCIO != (SELECT ID_SOCIO "SOCIO MÁS ANTIGUO"
                      FROM SOCIO
                      WHERE FECHA_ALTA = ANY (SELECT MIN(FECHA_ALTA)
                                              FROM SOCIO 
                                              WHERE FECHA_BAJA IS NULL)) 
    THEN SUM(PREMIO)+(SELECT SUM(PREMIO) 
                      FROM PARTICIPANTES
                      WHERE ID_SOCIO=(SELECT ID_SOCIO "SOCIO MÁS ANTIGUO"
                                      FROM SOCIO
                                      WHERE FECHA_ALTA = ANY (SELECT MIN(FECHA_ALTA)
                                                              FROM SOCIO 
                                                              WHERE FECHA_BAJA IS NULL)))/((SELECT COUNT (DISTINCT ID_SOCIO) FROM PARTICIPANTES)-1)
    ELSE 0
    END
    "Nuevo"           
FROM PARTICIPANTES
GROUP BY ID_SOCIO
ORDER BY ID_SOCIO;
