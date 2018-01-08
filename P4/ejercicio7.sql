SELECT s.NOMBRE_COMPLETO, CASE 
    WHEN p.ID_SOCIO != (SELECT ID_SOCIO 
                        FROM SOCIO
                        WHERE FECHA_ALTA = ANY (SELECT MIN(FECHA_ALTA)
                                                FROM SOCIO
                                                WHERE FECHA_BAJA IS NULL))
    THEN SUM(PREMIO)+(SELECT SUM(PREMIO)
                      FROM PARTICIPANTES
                      WHERE ID_SOCIO=(SELECT ID_SOCIO 
                                      FROM SOCIO
                                      WHERE FECHA_ALTA = ANY (SELECT MIN(FECHA_ALTA)
                                                              FROM SOCIO
                                                              WHERE FECHA_BAJA IS NULL)))/((SELECT COUNT (DISTINCT ID_SOCIO) FROM PARTICIPANTES)-1)
    ELSE 0
    END AS "NUEVO"
FROM PARTICIPANTES p, SOCIO s
WHERE s.ID_SOCIO=p.ID_SOCIO
GROUP BY p.ID_SOCIO, s.NOMBRE_COMPLETO
HAVING
CASE 
    WHEN p.ID_SOCIO != (SELECT ID_SOCIO 
                        FROM SOCIO
                        WHERE FECHA_ALTA = ANY (SELECT MIN(FECHA_ALTA)
                                                FROM SOCIO
                                                WHERE FECHA_BAJA IS NULL))
    THEN SUM(PREMIO)+(SELECT SUM(PREMIO)
                      FROM PARTICIPANTES
                      WHERE ID_SOCIO=(SELECT ID_SOCIO 
                                      FROM SOCIO
                                      WHERE FECHA_ALTA = ANY (SELECT MIN(FECHA_ALTA)
                                                              FROM SOCIO
                                                              WHERE FECHA_BAJA IS NULL)))/((SELECT COUNT (DISTINCT ID_SOCIO) FROM PARTICIPANTES)-1)
    ELSE 0
    END > 0
ORDER BY SUM(PREMIO);
