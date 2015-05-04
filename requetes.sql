
-------------------------------------------------------
-- 1.Quelle est la date de la dernière révision et le nom du mécanicien l’ayant effectué de l’appareil immatriculé 2345297400
--------------------------------------------------------
SELECT REV.REV_AVION_NII,REV.REV_DATE,EMP.EMP_NOM,EMP.EMP_PRENOM
FROM REVISION REV, EMPLOYEE EMP 
WHERE REV.REV_AVION_NII = '2345297400'
AND EMP.EMP_ID=REV.REV_MECA_ID
ORDER BY REV.REV_DATE DESC;