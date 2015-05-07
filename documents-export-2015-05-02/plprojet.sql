/*Cette procedure affecte un avion a un vol donne. Il va choisir un avion qui a le moins de nb_heure.*/
CREATE OR REPLACE PROCEDURE P_AFFECTATION_AVION(
    un_id_vol VARCHAR2)
AS
  var_id_avion INTEGER;
BEGIN
  SELECT MIN(nb_heure) INTO min_nb_heure FROM avion;
  SELECT avion.ID_AVION
  INTO var_id_avion
  FROM avion
  WHERE avion.nb_heure = min_nb_heure;
  UPDATE vol SET vol.ID_AVION = var_id_avion WHERE vol.id_vol = un_id_vol;
  dbms_output.put_line('ID_AVION : ' || var_id_avion);
END;
SET serveroutput ON;
CALL P_AFFECTATION_AVION ('AC1410');
/*Cette procedure affecte un pilote a un vol donne. On choisit un navigant dont l'equipage a le nombre d'heures minimum.*/
CREATE OR REPLACE PROCEDURE P_AFFECTATION_PILOTE(
    un_id_vol VARCHAR2)
AS
  min_nb_heure_mois  INTEGER;
  min_nb_heure_total INTEGER;
  var_id_equipage    INTEGER;
  var_nom_pilote PERSONNEL.NOM_PERSONNEL%TYPE;
BEGIN
  SELECT MIN(nb_heure_mois) INTO min_nb_heure_mois FROM equipage;
  SELECT MIN(nb_heure_total) INTO min_nb_heure_total FROM equipage;
  SELECT equipage.id_equipage
  INTO var_id_equipage
  FROM equipage
  WHERE equipage.nb_heure_mois = min_nb_heure_mois
  AND NB_HEURE_TOTAL           = min_nb_heure_total;
  UPDATE vol SET vol.ID_EQUIPAGE = var_id_equipage WHERE vol.id_vol = un_id_vol;
  SELECT personnel.nom_personnel
  INTO var_nom_pilote
  FROM personnel
  WHERE id_equipage = var_id_equipage
  AND fonction      = 'pilote';
  dbms_output.put_line('Nom de pilote : ' || var_nom_pilote);
END;
SET serveroutput ON;
CALL P_AFFECTATION_PILOTE ('AC1410');


CREATE TABLE RESERVATION
  (
    villeOrigine     VARCHAR2(30) NOT NULL,
    villeDestination VARCHAR2(30) NOT NULL,
    dateVol          DATE,
    nombrePssagers   NUMBER(2),
    nomClient        VARCHAR2(30),
    listePassager    VARCHAR(300)
  );
CREATE OR REPLACE PROCEDURE P_RESERVATION
  (
    villeOrigine     VARCHAR2,
    villeDestination VARCHAR2,
    dateVol          DATE,
    nombrePssagers   NUMBER,
    nomClient        VARCHAR2,
    listePassager    VARCHAR
  )
AS
  var_count          INTEGER;
  var_id_mission     INTEGER;
  var_id_avion       INTEGER;
  var_max_place      INTEGER;
  var_place_dispo    INTEGER;
  var_nombrePssagers INTEGER;
  var_place_occupe   INTEGER;
  CURSOR c1(c_villeOrigine VARCHAR2, c_villeDestination VARCHAR2, c_dateVol DATE)
  IS
    SELECT nombrePssagers
    FROM reservation
    WHERE dateVol        = c_dateVol
    AND villeOrigine     = c_villeOrigine
    AND villeDestination = c_villeDestination;
BEGIN
  SELECT id_mission
  INTO var_id_mission
  FROM mission
  WHERE VILLE_DEPART = villeOrigine
  AND VILLE_ARRIVEE  = villeDestination;
  dbms_output.put_line('var_id_mission : ' || var_id_mission);
  
  SELECT id_avion
  INTO var_id_avion
  FROM vol
  WHERE DATE_VOL = datevol
  AND ID_MISSION = var_id_mission;
  dbms_output.put_line('var_id_avion : ' || var_id_avion);
  
  SELECT capacity
  INTO var_max_place
  FROM type
  WHERE id_type =
    (SELECT ID_TYPE FROM avion WHERE id_avion = var_id_avion
    );
	
  dbms_output.put_line('var_max_place : ' || var_max_place);
  
  var_place_occupe := 0;
  OPEN c1(villeOrigine,villeDestination,dateVol);
  LOOP
    FETCH c1 INTO var_nombrePssagers;
    EXIT
  WHEN c1%notfound;
  var_place_occupe := var_place_occupe + var_nombrePssagers;
  END LOOP;
  CLOSE c1;
  
  dbms_output.put_line('var_place_occupe : ' || var_place_occupe);
  var_place_dispo   := var_max_place - var_place_occupe;
  
  IF var_place_dispo = 0 THEN
    dbms_output.put_line('Il ne reste plus de places. Ce vol est plein.');
  ELSE
    IF var_place_dispo >= nombrePssagers THEN
      INSERT
      INTO reservation VALUES
        (
          villeOrigine,
          villeDestination,
          dateVol,
          nombrePssagers,
          nomClient,
          listePassager
        );
      dbms_output.put_line('La reservation est reussie.');
    ELSE
      dbms_output.put_line('Il reste que ' || var_place_dispo || ' de places.');
    END IF;
  END IF;
END;


SET serveroutput ON;
CALL P_RESERVATION('Creteil', 'Annecy', '01-juin-2014', 2, 'Duchemin', 'Duchemin Paul ;Duchemin Virginie ;');
CALL P_RESERVATION('Enghien', 'Trouville', '06-juin-2014', 2, 'Durand', 'Durand Ren¨¦ ;Durand H¨¦l¨¨ne ;');
call P_RESERVATION('Enghien', 'Trouville', '07-juin-14', 2,'Durand', 'Durand Ren¨¦ ;Durand H¨¦l¨¨ne ;');

/*Cette proc¨¦dure historise les informations de r¨¦servation ant¨¦rieures ¨¤ une date donn¨¦e.*/
CREATE OR REPLACE PROCEDURE P_HIST_RESERVATION(
    dateHisto DATE)
AS
  v_msg reservation%rowtype;
  CURSOR c1(c_dateHisto DATE)
  IS
    SELECT * FROM reservation WHERE dateVol = c_dateHisto;
BEGIN
  OPEN c1(dateHisto);
  LOOP
    FETCH c1 INTO v_msg;
    EXIT
  WHEN c1%notfound;
    dbms_output.put_line(v_msg.villeOrigine || ' ' ||v_msg.villeDestination||' '||v_msg.dateVol
    ||' '||v_msg.nombrePssagers||' '||v_msg.nomClient);
  END LOOP;
  CLOSE c1;
END;

SET serveroutput ON;
CALL P_HIST_RESERVATION('07-juin-2014');


