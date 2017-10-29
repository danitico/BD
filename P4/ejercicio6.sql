SELECT ID_SOCIO, SUM(PREMIO),
    DECODE(ID_SOCIO, (SELECT DISTINCT ID_SOCIO 
                      FROM PARTICIPANTES 
                      WHERE ID_SOCIO = 
                      ANY (SELECT ID_SOCIO 
                           FROM PARTICIPANTES 
                           WHERE ID_SOCIO!=2)),
                           SUM(PREMIO)+(SELECT SUM(PREMIO) FROM PARTICIPANTES WHERE ID_SOCIO=2)/((SELECT COUNT (DISTINCT ID_SOCIO) FROM PARTICIPANTES)-1),
                      0)
           nuevo
FROM PARTICIPANTES
GROUP BY ID_SOCIO
ORDER BY ID_SOCIO;
