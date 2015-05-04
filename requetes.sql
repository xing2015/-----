
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
--Quel est la mission de vol comportant le plus d’escales ?
--------------------------------------------------------




--------------------------------------------------------
--Quelle est la ville comportant le plus de mission de vols au départ et à l’arrivée confondus ?
--------------------------------------------------------






--------------------------------------------------------
--------------------------------------------------------