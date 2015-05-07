CREATE TABLE  AVION  
   ( AV_NII           VARCHAR2(50 BYTE) PRIMARY KEY , 
	 AV_TYPE          VARCHAR2(20 BYTE) NOT NULL, 
	 AV_DATE_SERVICE  DATE  NOT NULL, 
	 AV_NB_HEURE      FLOAT(126)  NOT NULL, 
	 AV_CAPACITE  	  NUMBER  NOT NULL
   ) ;
   
 CREATE TABLE  ELEMENT  
   (
	 ELEM_ID   NUMBER PRIMARY KEY, 
	 ELEM_NOM  VARCHAR2(50 BYTE)
   )  ;

CREATE TABLE  ELEMENT_REVISION  
   (	 
     ELEM_ID  NUMBER, 
	 REV_ID   NUMBER NOT NULL,
	 CONSTRAINT ELEMENT_REVISION_pk PRIMARY KEY(ELEM_ID,REV_ID)
   );

CREATE TABLE  EMPLOYEE  
   (	
	 EMP_ID             VARCHAR2(5) PRIMARY KEY, 
	 EMP_NOM 			VARCHAR2(100 BYTE)  NOT NULL, 
	 EMP_PRENOM         VARCHAR2(100 BYTE)  NOT NULL, 
	 EMP_SEXE           VARCHAR2(10 BYTE) NOT NULL,
 	 EMP_DATE_NAISSANCE DATE  NOT NULL,
	 EMP_ADRESSE        VARCHAR2(200 BYTE) NOT NULL, 
	 EMP_DATE_EMBAUCHE  DATE  NOT NULL, 
	 EMP_CATEGORIE      VARCHAR2(100 BYTE) NOT NULL, 
	 EMP_SALAIRE        NUMBER NOT NULL, 
	 EMP_TEL            NUMBER NOT NULL
   );
/*
 CREATE TABLE  EQUIPE  
   (	 EQUIPE_ID  NUMBER PRIMARY KEY, 
	 PILOTE_ID  VARCHAR2(5) NOT NULL, 
	 STEWARD_ID  VARCHAR2(5) NOT NULL, 
	 AVION_NII  VARCHAR2(50 BYTE) NOT NULL
   ); 
*/
CREATE TABLE  ESCALE  
   (	
     ESC_MIS_ID    NUMBER, 
	 ESC_VILLE_ID  NUMBER NOT NULL, 
	 ESC_HEURE     VARCHAR2(5) NOT NULL,
	  CONSTRAINT ESCALE_pk PRIMARY KEY(ESC_MIS_ID,ESC_VILLE_ID)
   );

CREATE TABLE  MISSION  
   ( 
     MIS_ID            NUMBER PRIMARY KEY, 
	 MIS_VILLE_DEPART  NUMBER NOT NULL, 
	 MIS_VILLE_ARRIVE  NUMBER NOT NULL, 
	 MIS_HEURE_DEPART  VARCHAR2 (5) NOT NULL, 
	 MIS_HEURE_ARRIVE  VARCHAR2 (5) NOT NULL
   );

 CREATE TABLE  VOL  
   ( 
	 VOL_ID     NUMBER PRIMARY KEY ,
     MIS_ID     NUMBER NOT NULL, 
	 VOL_DATE   DATE NOT NULL,
	 PILOTE_ID  VARCHAR2(5) , 
	 STEWARD_ID VARCHAR2(5), 
	 AVION_NII  VARCHAR2(50 BYTE),
	 CONSTRAINT MIS_DATE_UNIQUE UNIQUE(MIS_ID,VOL_DATE)
   ); 


CREATE TABLE  NAVIGANT  
   (	 
     NAV_EMP_ID     VARCHAR2(5) PRIMARY KEY, 
	 NAV_HEURE_VOL  FLOAT(126) NOT NULL
   );


 CREATE TABLE  REVISION  
   (	
	 REV_ID         NUMBER PRIMARY KEY, 
	 REV_DATE       DATE NOT NULL, 
	 REV_MECA_ID    VARCHAR2(5) NOT NULL, 
	 REV_AVION_NII  VARCHAR2(50) NOT NULL, 
	 REV_HEURE_VOL  VARCHAR2 (20) NOT NULL
   ); 


CREATE TABLE  VILLE  
   (
     VILLE_ID      NUMBER PRIMARY KEY, 
	 VILLE_NOM     VARCHAR2(50 BYTE) NOT NULL, 
	 VILLE_PAYS    VARCHAR2(20 BYTE) NOT NULL, 
	 VILLE_POSTAL  NUMBER NOT NULL
   );
   
CREATE TABLE PASSAGER
	(
		P_ID  	    NUMBER PRIMARY KEY,
		P_NOM 	    VARCHAR2(100) NOT NULL,
		P_PRENOM    VARCHAR2(100) NOT NULL,
		P_DATE_NAISSANCE DATE NOT NULL,
		P_TEL       NUMBER NOT NULL,
		P_EMAIL     VARCHAR2(100) NOT NULL,
		P_ADRESSE   VARCHAR2(200) NOT NULL,
		P_PASSEPORT VARCHAR2(50) NOT NULL,
		P_SEXE      VARCHAR2(5) NOT NULL		
	)   ;
	
CREATE TABLE VOL_PASSAGER
		(
			VOL_ID NUMBER NOT NULL,
			P_ID   NUMBER NOT NULL,
			CONSTRAINT VOL_PASSAGER_PK PRIMARY KEY (VOL_ID,P_ID)
		);

CREATE TABLE RESERVATION
  (
	res_id			 NUMBER PRIMARY KEY,
    villeOrigine     VARCHAR2(30) NOT NULL,
    villeDestination VARCHAR2(30) NOT NULL,
    dateVol          DATE,
    nombrePssagers   NUMBER(2),
    nomClient        VARCHAR2(30),
    listePassager    VARCHAR(300)
  );
-------------------------------------------------------
--  Ref Constraints for Table ELEMENT_REVISION
--------------------------------------------------------

  ALTER TABLE ELEMENT_REVISION  ADD CONSTRAINT  ELEM_FK  FOREIGN KEY ( ELEM_ID )
	  REFERENCES  ELEMENT  ( ELEM_ID );
	  
  ALTER TABLE  ELEMENT_REVISION  ADD CONSTRAINT  REV_FK  FOREIGN KEY ( REV_ID )
	  REFERENCES  REVISION  ( REV_ID ) ;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE 
--------------------------------------------------------	  
	  ALTER TABLE EMPLOYEE ADD CONSTRAINT categorie_check CHECK(emp_categorie IN('admin','pilote','steward','mecanicien'));
	  ALTER TABLE EMPLOYEE ADD CONSTRAINT sexe_check CHECK(emp_sexe IN('F','M')); --xym

--------------------------------------------------------
--  Ref Constraints for Table EQUIPE
--------------------------------------------------------
/*
  ALTER TABLE  EQUIPE  ADD CONSTRAINT  AVION_NII_FK  FOREIGN KEY ( AVION_NII )
	  REFERENCES  AVION  ( AV_NII ) ;
  ALTER TABLE  EQUIPE  ADD CONSTRAINT  PILOTE_ID_FK  FOREIGN KEY ( PILOTE_ID )
	  REFERENCES  EMPLOYEE  ( EMP_ID ) ;
  ALTER TABLE  EQUIPE  ADD CONSTRAINT  STEWARD_ID_FK  FOREIGN KEY ( STEWARD_ID )
	  REFERENCES  EMPLOYEE  ( EMP_ID ) ;*/
--------------------------------------------------------
--  Ref Constraints for Table ESCALE
--------------------------------------------------------

  ALTER TABLE  ESCALE  ADD CONSTRAINT  MIS_ID_FK  FOREIGN KEY ( ESC_MIS_ID )
	  REFERENCES  MISSION  ( MIS_ID ) ;
	  
  ALTER TABLE  ESCALE  ADD CONSTRAINT  VILLE_ID_FK  FOREIGN KEY ( ESC_VILLE_ID )
	  REFERENCES  VILLE  ( VILLE_ID ) ;
--------------------------------------------------------
--  Ref Constraints for Table MISSION
--------------------------------------------------------

  ALTER TABLE  MISSION  ADD CONSTRAINT  VILLE_ARRIVE_FK  FOREIGN KEY ( MIS_VILLE_ARRIVE )
	  REFERENCES  VILLE  ( VILLE_ID ) ;
	  
  ALTER TABLE  MISSION  ADD CONSTRAINT  VILLE_DEPART_FK  FOREIGN KEY ( MIS_VILLE_DEPART )
	  REFERENCES  VILLE  ( VILLE_ID ) ;
--------------------------------------------------------
--  Ref Constraints for Table VOL
--------------------------------------------------------

  /*ALTER TABLE  VOL  ADD CONSTRAINT  EQUIPE_FK  FOREIGN KEY ( EQUIPE_ID )
	  REFERENCES  EQUIPE  ( EQUIPE_ID ) ;*/
  ALTER TABLE  VOL  ADD CONSTRAINT  MIS_FK  FOREIGN KEY ( MIS_ID )
	  REFERENCES  MISSION  ( MIS_ID ) ;
	  
 ALTER TABLE  VOL  ADD CONSTRAINT  AVION_NII_FK  FOREIGN KEY ( AVION_NII )
	  REFERENCES  AVION  ( AV_NII ) ;
	  
  ALTER TABLE  VOL  ADD CONSTRAINT  PILOTE_ID_FK  FOREIGN KEY ( PILOTE_ID )
	  REFERENCES  EMPLOYEE  ( EMP_ID ) ;
	  
  ALTER TABLE  VOL  ADD CONSTRAINT  STEWARD_ID_FK  FOREIGN KEY ( STEWARD_ID )
	  REFERENCES  EMPLOYEE  ( EMP_ID ) ;	  
--------------------------------------------------------
--  Ref Constraints for Table NAVIGANT
--------------------------------------------------------

  ALTER TABLE  NAVIGANT  ADD CONSTRAINT  EMP_ID_PK  FOREIGN KEY ( NAV_EMP_ID )
	  REFERENCES  EMPLOYEE  ( EMP_ID ) ;
--------------------------------------------------------
--  Ref Constraints for Table REVISION
--------------------------------------------------------

  ALTER TABLE  REVISION  ADD CONSTRAINT  REV_AVION_FK  FOREIGN KEY ( REV_AVION_NII )
	  REFERENCES  AVION  ( AV_NII ) ;
	  
  ALTER TABLE  REVISION  ADD CONSTRAINT  REV_MECA_FK  FOREIGN KEY ( REV_MECA_ID )
	  REFERENCES  EMPLOYEE  ( EMP_ID ) ;
 --------------------------------------------------------
--  Ref Constraints for Table RESERVATION
--------------------------------------------------------
  
 ALTER TABLE  VOL_PASSAGER  ADD CONSTRAINT  VOL_ID_FK  FOREIGN KEY ( VOL_ID )
	  REFERENCES  VOL  ( VOL_ID ) ;
	  
  ALTER TABLE  VOL_PASSAGER  ADD CONSTRAINT  P_ID_FK  FOREIGN KEY ( P_ID )
	  REFERENCES  PASSAGER  ( P_ID ) ;
  --------------------------------------------------------
--  Ref Constraints for Table passager
--------------------------------------------------------     
 ALTER TABLE PASSAGER ADD CONSTRAINT p_sexe_check CHECK(p_sexe IN('F','M')); --xym
	 