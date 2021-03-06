CREATE TABLE FIFA18(
    NICK         VARCHAR2(20) NOT NULL,
    ID_PLAYER      NUMBER(2) NOT NULL,
    NOM            VARCHAR2(18) NOT NULL,
    EQUIPO         VARCHAR2(30),
    NACIONALIDAD   VARCHAR2(20) NOT NULL,    
    PAC            NUMBER(2)   NOT NULL,
    SHO_           NUMBER(2)   NOT NULL,
    PAS            NUMBER(2)   NOT NULL,
    DRI            NUMBER(2)   NOT NULL,
    DEF_           NUMBER(2)   NOT NULL,
    PHY            NUMBER(2)   NOT NULL,
    MEDIA          NUMBER(2)   NOT NULL,
    PRIMARY KEY(NICK, ID_PLAYER),
    CONSTRAINT FIFA18_PACE_CK CHECK ( PAC < 100 AND PAC >= 0),
    CONSTRAINT FIFA18_SHOOTING_CK CHECK (SHO_ < 100 AND SHO_ >= 0),
    CONSTRAINT FIFA18_PASSING_CK CHECK (PAS < 100 AND PAS >= 0),
    CONSTRAINT FIFA18_DRIBBLING_CK CHECK (DRI < 100 AND DRI >= 0),
    CONSTRAINT FIFA18_DEF_CK CHECK (DEF_ < 100 AND DEF_ >= 0),
    CONSTRAINT FIFA18_PHY_CK CHECK (PHY < 100 AND PHY >=0),
    CONSTRAINT FIFA18_MEDIA_CK CHECK (MEDIA < 100 AND MEDIA >=0),
    CONSTRAINT FIFA18_NICK_USUARIOS_FK FOREIGN KEY (NICK) REFERENCES USUARIOS(NICK)
);
INSERT INTO FIFA18 VALUES ('danitico', 1, 'MESSI', 'F.C BARCELONA', 'ARGENTINA', 91, 92, 89, 97, 27, 62, 93);
INSERT INTO FIFA18 VALUES ('danitico',2, 'PELE', NULL, 'BRAZIL', 95, 96, 93, 96, 60, 76, 98);
INSERT INTO FIFA18 VALUES ('danitico',3, 'MARADONA', NULL, 'ARGENTINA', 92, 93, 92, 97, 40, 76, 97);
INSERT INTO FIFA18 VALUES ('danitico',4, 'RONALDO', NULL, 'BRAZIL', 97, 95, 81, 95, 45, 76, 96);
INSERT INTO FIFA18 VALUES ('danitico',5, 'PUYOL', NULL, 'CATALUNYA', 70, 45, 68, 58, 94 ,90, 92);
INSERT INTO FIFA18 VALUES ('danitico',6, 'JOAQUIN', 'REAL BETIS', 'ESPAÑA', 77, 81, 86, 86, 42, 60, 82);
INSERT INTO FIFA18 VALUES ('danitico',7, 'SANABRIA', 'REAL BETIS', 'PARAGUAY', 84, 82, 78, 85, 30, 70, 82);
INSERT INTO FIFA18 VALUES ('danitico',8, 'SERGIO RAMOS', 'REAL MADRID', 'ESPAÑA', 76, 63, 71, 72, 88, 83, 90); 
INSERT INTO FIFA18 VALUES ('danitic',9, 'NEYMAR', 'PSG', 'BRAZIL', 92, 84, 79, 94, 30, 60, 92);
INSERT INTO FIFA18 VALUES ('danitic',2, 'PELE', NULL, 'BRAZIL', 95, 96, 93, 96, 60, 76, 98);