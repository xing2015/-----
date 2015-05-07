-----------------------------------------------------
--P_AFFECTATION_AVION. 
--Cette procédure affecte un avion à un vol donné.Définissez la signature, les contrôles fonctionnels associés. 
-----------------------------------------------------
CREATE OR REPLACE PROCEDURE P_AFFECTATION_AVION(MON_MISSION IN VOL.MIS_ID%type,MON_VOL_DATE IN VOL.VOL_DATE%type) 
AS
	MON_VOL_ID IN VOL.VOL_ID%type;
	MON_AVION_NII IN VOL.AVION_NII%type;
BEGIN
	SELECT VOL_ID INTO MON_VOL_ID
	FROM VOL
	WHERE MIS_ID = MON_MISSION AND VOL_DATE=MON_VOL_DATE
	
	SELECT AV_NII FROM AVION,VOL
	WHERE AVION.AV_NII = VOL.AVION_NII
	AND 
	IF MON_VOL_ID != null THEN
		UPDATE VOL ON 
	
	
END;

-----------------------------------------------------
--P_AFFECTATION_PILOTE.
-- Cette procédure affecte un pilote à un vol donné. 
--Définissez la signature, les contrôles fonctionnels associés. 
--Donner un exemple de test avec un jeu de données pertinent pour ces procédures
-----------------------------------------------------

-----------------------------------------------------
--P_RESERVATION(villeOrigine VARCHAR2(30), villeDestination VARCHAR2(30), dateVol DATE, nombrePassagers NUMBER(2), nomClient VARCHAR2(30) , listePassager VARCHAR(30)) ; 
-----------------------------------------------------
create or replace PROCEDURE P_RESERVATION
(
	villeOrigine VARCHAR2, 
	villeDestination VARCHAR2, 
	dateVol DATE, 
	nombrePassagers NUMBER, 
	nomClient VARCHAR2 , 
	listePassager VARCHAR
	)  
AS
	TARGET_VOL NUMBER;
	TARGET_AVION NUMBER;
    PLACE_TOTAL NUMBER;
	PLACE_RESERVE NUMBER;
	PLACE_DISPONIBLE NUMBER;
BEGIN
	SELECT MIS.VOL_ID INTO TARGET_VOL 
	FROM VOL,MISSION MIS
	WHERE VOL.MIS_ID=MIS.MIS_ID
	AND MIS.MIS_VILLE_DEPART =(SELECT VILLE_ID FROM VILLE WHERE VILLE_NOM=villeOrigine)
	AND MIS.MIS_VILLE_ARRIVE = (SELECT VILLE_ID FROM VILLE WHERE VILLE_NOM=villeDestination)
	AND VOL.VOL_DATE = dateVol ;	
	--tester:il y a cette vol?
	IF VOL_TARGET IS NULL THEN
	 
	  DBMS_OUTPUT.PUT_LINE('Pas de vol,veuillez corriger votre commande.');
	 
	ELSE
        --tester:Il y a des PLACE?
      SELECT AV_CAPACITE INTO PLACE_TOTAL
      FROM AVION
      WHERE AV_NII = (SELECT AVION_NII FROM VOL WHERE VOL_ID = TARGET_VOL);
      
      SELECT COUNT(P_ID) INTO PLACE_RESERVE
      FROM VOL_PASSAGER
      WHERE VOL_ID = TARGET_VOL;
      
      PLACE_DISPONIBLE:= PLACE_TOTAL-PLACE_RESERVE;
      
      IF PLACE_DISPONIBLE< nombrePassagers THEN
      
          DBMS_OUTPUT.PUT_LINE('Pas de vol,veuillez corriger votre commande.');
      
      ELSE
       INSERT INTO RESERVATION VALUES(null,villeOrigine,villeDestination,dateVol,nombrePassagers,nomClient,listePassager);
       DBMS_OUTPUT.PUT_LINE('Reservation OK!');
      END IF;
      
	  END IF;
	END;
-----------------------------------------------------

-----------------------------------------------------