
-------------------------------------------------------
-- 1.Quelle est la date de la dernière révision et le nom du mécanicien l’ayant effectué de l’appareil immatriculé 2345297400
--------------------------------------------------------
SELECT REV.REV_AVION_NII,REV.REV_DATE,EMP.EMP_NOM,EMP.EMP_PRENOM
FROM REVISION REV, EMPLOYEE EMP 
WHERE REV.REV_AVION_NII = '2345297400'
AND EMP.EMP_ID=REV.REV_MECA_ID
ORDER BY REV.REV_DATE DESC;


--------------------------------------------------------
--Quel est le nom du salarié de la catégorie navigant ayant le plus gros salaire ?
--------------------------------------------------------
SELECT EMP_NOM,EMP_NOM,EMP_CATEGORIE,EMP_SALAIRE
FROM EMPLOYEE
WHERE EMP_SALAIRE = 
(
	SELECT MAX(EMP_SALAIRE) 
	FROM EMPLOYEE
	WHERE EMP_CATEGORIE ='pilote' OR EMP_CATEGORIE ='steward'
) AND (EMP_CATEGORIE ='pilote' OR EMP_CATEGORIE ='steward');


--------------------------------------------------------
--------------------------------------------------------