SELECT menor.ID_SOCIO || ' va antes que ' || mayor.ID_SOCIO as "ORDEN"
FROM SOCIO menor, SOCIO mayor
WHERE menor.ID_SOCIO < mayor.ID_SOCIO AND mayor.ID_SOCIO - menor.ID_SOCIO = 1;
