
-------------------------------------------------------
-- 1.Quelle est la date de la dernière révision et le nom du mécanicien l’ayant effectué de l’appareil immatriculé 2345297400
--------------------------------------------------------
SELECT REV.REV_AVION_NII,REV.REV_DATE,EMP.EMP_NOM,EMP.EMP_PRENOM
FROM REVISION REV, EMPLOYEE EMP 
WHERE REV.REV_AVION_NII = '2345297400'
AND EMP.EMP_ID=REV.REV_MECA_ID
ORDER BY REV.REV_DATE DESC;


--------------------------------------------------------
--2.Quel est le nom du salarié de la catégorie navigant ayant le plus gros salaire ?
--------------------------------------------------------
SELECT EMP_NOM,EMP_PRENOM,EMP_CATEGORIE,EMP_SALAIRE
FROM EMPLOYEE
WHERE EMP_SALAIRE = 
(
	SELECT MAX(EMP_SALAIRE) 
	FROM EMPLOYEE
	WHERE EMP_CATEGORIE ='pilote' OR EMP_CATEGORIE ='steward'
) AND (EMP_CATEGORIE ='pilote' OR EMP_CATEGORIE ='steward');


--------------------------------------------------------
--3.Quel est le nom du salarié le plus récemment embauché ?
--------------------------------------------------------
SELECT EMP_NOM,EMP_PRENOM,EMP_CATEGORIE,EMP_SALAIRE,EMP_DATE_EMBAUCHE
FROM EMPLOYEE
WHERE EMP_DATE_EMBAUCHE = 
(
	SELECT MAX(EMP_DATE_EMBAUCHE) 
	FROM EMPLOYEE
) ;

--------------------------------------------------------
--4.Quels sont les salaires moyens par fonction classés par ordre décroissants ?
--------------------------------------------------------
SELECT EMP_CATEGORIE,ROUND（AVG(EMP_SALAIRE)，1）
FROM EMPLOYEE
GROUP BY EMP_CATEGORIE
ORDER BY AVG(EMP_SALAIRE) DESC;

--------------------------------------------------------
--5.Quel est la mission de vol comportant le plus d’escales ?
--------------------------------------------------------
SELECT distinct MIS.MIS_ID AS MISSION,(SELECT ville_nom from ville where ville_id= MIS.MIS_VILLE_DEPART) AS VILLE_DEPART,
(SELECT ville_nom from ville where ville_id= ESCALE.ESC_VILLE_ID) AS VILLE_ESCALE,
(SELECT ville_nom from ville where ville_id= MIS.MIS_VILLE_arrive) AS VILLE_ARRIVE
FROM MISSION MIS,VILLE,ESCALE 
WHERE ESCALE.ESC_MIS_ID = MIS.MIS_ID AND
	  MIS.MIS_ID IN 
	(
	SELECT ESC_MIS_ID
	FROM ESCALE
	GROUP BY ESC_MIS_ID
	HAVING COUNT(ESC_MIS_ID)=(
								SELECT MAX(COUNT(ESC_MIS_ID))	
								FROM ESCALE 
								GROUP BY ESC_MIS_ID
							  )
	
	)
  ;
  

--------------------------------------------------------
--6.Quelle est la ville comportant le plus de mission de vols au départ et à l’arrivée confondus ?
--------------------------------------------------------
SELECT  VILLE.VILLE_NOM,count(*) AS NB_MISSION
FROM VILLE,MISSION MIS
WHERE (VILLE.VILLE_ID = MIS.MIS_VILLE_DEPART OR VILLE.VILLE_ID =MIS.MIS_VILLE_ARRIVE)
AND VILLE.VILLE_ID IN
(
	SELECT MIS_VILLE_DEPART 
	FROM MISSION
	GROUP BY MIS_VILLE_DEPART
	HAVING COUNT(MIS_VILLE_DEPART)=(
					SELECT MAX(COUNT(MIS_VILLE_DEPART))
					FROM MISSION
					GROUP BY MIS_VILLE_DEPART
					)
)
GROUP BY VILLE.VILLE_NOM;


--------------------------------------------------------
--7.Quel est le nom du pilote affecté au vol du 19 décembre 2014 au départ de Créteil à 10h00 ?
--------------------------------------------------------
SELECT VOL.MIS_ID AS MISSION_ID,VOL.VOL_DATE,MIS.MIS_heure_DEPART AS HEURE_DEPART,EMP.EMP_NOM,EMP.EMP_PRENOM
FROM EMPLOYEE EMP,VOL,EQUIPE,MISSION MIS
WHERE VOL.EQUIPE_ID=EQUIPE.EQUIPE_ID
AND VOL.MIS_ID=MIS.MIS_ID
AND EMP.EMP_ID=EQUIPE.PILOTE_ID
AND VOL.VOL_DATE= '19/12/2014'
AND MIS.MIS_heure_DEPART='10:00';

--------------------------------------------------------
--8.Quel est le prochain vol à destination d’Annecy au départ de Créteil ?
SELECT 'Créteil - Annecy' AS VOL,MIS.MIS_ID AS MISSION_ID, VOL.VOL_DATE,MIS.MIS_HEURE_DEPART
FROM MISSION MIS, VOL
WHERE (TO_TIMESTAMP(MIS.MIS_HEURE_DEPART,'HH24:MI') >= SYSTIMESTAMP OR VOL.VOL_DATE>SYSDATE)
AND MIS.MIS_VILLE_DEPART =1 AND MIS.MIS_VILLE_ARRIVE=3
AND VOL.MIS_ID=MIS.MIS_ID
AND rownum=1
;

--------------------------------------------------------
--9.Quels sont les pilotes qui ne sont jamais allés à Annecy ?
--------------------------------------------------------
SELECT EMP_NOM,EMP_PRENOM
FROM EMPLOYEE
WHERE EMP_CATEGORIE = 'pilote'
AND EMP_ID NOT IN
      (
      SELECT DISTINCT EQUIPE.PILOTE_ID
      FROM VOL,EQUIPE
      WHERE VOL.EQUIPE_ID=EQUIPE.EQUIPE_ID
      AND MIS_ID NOT IN
          ( 
            SELECT MIS.MIS_ID
            FROM MISSION MIS,ESCALE ESC
            WHERE MIS.MIS_ID = ESC.ESC_MIS_ID
            AND MIS.MIS_VILLE_DEPART !=3
            AND MIS.MIS_VILLE_ARRIVE !=3
            AND ESC.ESC_VILLE_ID !=3
          )

)ORDER BY EMP_NOM,EMP_PRENOM;

--------------------------------------------------------
--10.Quels sont les vols au départ de Créteil ayant une escale maximum ?
--------------------------------------------------------
//Résultat est Créteil - Brest,car dans VOL,on n a pas alimenté MISSION 6.
SELECT MIS.MIS_ID AS MISSION ,VOL.VOL_DATE,(SELECT VILLE_NOM FROM VILLE WHERE VILLE_ID =MIS.MIS_VILLE_DEPART) AS VILLE_DEPART,(SELECT VILLE_NOM FROM VILLE WHERE VILLE_ID =MIS.MIS_VILLE_ARRIVE) AS VILLE_ARRIVE
FROM MISSION MIS,VOL
WHERE MIS.MIS_ID = VOL.MIS_ID 
AND MIS.MIS_ID IN
    (
    SELECT ESC_MIS_ID 
    FROM ESCALE
    GROUP BY ESC_MIS_ID
    HAVING COUNT(*)=
          (
             SELECT MAX(COUNT(ESC_MIS_ID))
             FROM ESCALE
             WHERE ESC_MIS_ID IN
             (
                 SELECT MISSION.MIS_ID 
                 FROM MISSION,VOL,ESCALE
                 WHERE MIS_VILLE_DEPART=(SELECT VILLE_ID FROM VILLE WHERE VILLE_NOM='Créteil')
                  AND MISSION.MIS_ID = VOL.MIS_ID
                  AND VOL.MIS_ID = ESCALE.ESC_MIS_ID
             )
             GROUP BY ESC_MIS_ID
             
          )	 
);


--------------------------------------------------------
--11.Quels sont les vols ayant été effectués sans escale ?
--------------------------------------------------------





--------------------------------------------------------
--yuming
--------------------------------------------------------
