-----------------------------------------------------
--P_AFFECTATION_AVION. 
--Cette procédure affecte un avion à un vol donné.Définissez la signature, les contrôles fonctionnels associés. 
-----------------------------------------------------
CREATE OR REPLACE PROCEDURE P_AFFECTATION_AVION(volid IN VOL.VOL_ID%type) 
AS
	
BEGIN
	INSERT INTO EQUIPE VALUES(null,null,null,);
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


-----------------------------------------------------

-----------------------------------------------------