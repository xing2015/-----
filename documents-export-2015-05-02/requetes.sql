/* 1.Quelle est la date de la derniere revision et le nom du mecanicien l'ayant effectue de
l'appareil immatricule 2345297400 ??*/
SELECT *
FROM
  (SELECT revision.DATE_REVISION,
    personnel.NOM_personnel
  FROM revision,
    personnel
  WHERE revision.id_mecanicien = personnel.id_personnel
  AND revision.id_revision    IN
    (SELECT id_revision FROM elements WHERE elements.id_avion = 2345297400
    )
  ORDER BY revision.DATE_REVISION DESC
  )
WHERE rownum = 1;

/* 2.Quel est le nom du salarie de la categorie navigant ayant le plus gros salaire ?*/
SELECT nom_personnel
FROM personnel
WHERE salaire =
  (SELECT MAX(salaire) FROM personnel
  ) and CATEGORY = 'navigant'; 

/* 3.Quel est le nom du salarie le plus recemment embauche?*/
SELECT personnel.NOM_personnel,
  DATE_EMBAUCHE
FROM personnel
WHERE DATE_EMBAUCHE =
  (SELECT MAX(DATE_EMBAUCHE) FROM personnel
  );

/* 4.Quels sont les salaires moyens par fonction classes par ordre decroissants ?*/
SELECT AVG(salaire),fonction FROM personnel GROUP BY fonction ORDER BY AVG(salaire) DESC;
  
/* 5.Quel est la mission de vol comportant le plus d'escales ?*/
SELECT *
FROM mission
WHERE ID_MISSION IN
  (SELECT ID_MISSION
  FROM
    (SELECT COUNT(*) AS COUNT,
      escale.ID_MISSION
    FROM escale
    GROUP BY id_mission, escale.ID_MISSION
    HAVING COUNT(*) =
      (SELECT MAX(COUNT)
      FROM
        (SELECT COUNT(*) AS COUNT, escale.ID_MISSION FROM escale GROUP BY id_mission
        )
      )
    )
  );
  
/* 6.Quelle est la ville comportant le plus de mission de vols au depart et a l'arrivee confondus ?*/
SELECT ville_depart
FROM mission
GROUP BY VILLE_DEPART
HAVING COUNT(*) =
  (SELECT MAX(COUNT)
  FROM
    (SELECT COUNT(*) AS COUNT FROM mission GROUP BY VILLE_DEPART
    )
  );

/* 7.Quel est le nom du pilote affectee au vol du 19 decembre 2014 au depart de Creteil a 10h00 ?*/
SELECT Personnel.nom_personnel
FROM Personnel,
  Mission,
  vol
WHERE vol.DATE_VOL       = '19-décembre-2014'
AND vol.ID_MISSION       = Mission.ID_MISSION
AND Mission.VILLE_DEPART = 'Creteil'
AND Mission.HEURE_DEPART = '10:00'
AND vol.ID_EQUIPAGE      = Personnel.ID_EQUIPAGE
AND Personnel.FONCTION   = 'pilote';

/* 8.Quel est le prochain vol a destination d¡¯Annecy au depart de Creteil ?*/
SELECT vol.id_vol
FROM vol,
  mission
WHERE vol.ID_MISSION      = mission.ID_MISSION
AND mission.VILLE_DEPART  = 'Creteil'
AND mission.VILLE_ARRIVEE = 'Annecy';

/* 9.Quels sont les pilotes qui ne sont jamais alles a Annecy ?*/
SELECT personnel.nom_personnel
FROM personnel
WHERE FONCTION   = 'pilote'
AND ID_EQUIPAGE IN
  (SELECT ID_EQUIPAGE
  FROM vol
  WHERE ID_MISSION NOT IN
    (SELECT mission.id_mission
    FROM mission
    WHERE VILLE_DEPART='Annecy'
    OR VILLE_ARRIVEE  ='Annecy'
    )
  );
  
/* 10.Quels sont les vols au depart de Creteil ayant une escale maximum ?*/
SELECT id_vol
FROM vol
WHERE ID_MISSION =
  (SELECT id_mission
  FROM
    (SELECT COUNT(*) AS COUNT,
      id_mission
    FROM escale
    GROUP BY ID_MISSION
    HAVING ID_MISSION IN
      ( SELECT id_mission AS id FROM MISSION WHERE VILLE_DEPART = 'Creteil'
      )
    )
  WHERE COUNT =
    (SELECT MAX(COUNT(*))
    FROM escale
    GROUP BY ID_MISSION
    HAVING ID_MISSION IN
      ( SELECT id_mission AS id FROM MISSION WHERE VILLE_DEPART = 'Creteil'
      )
    )
  );
  
/* 11.Quels sont les vols ayant ete effectues sans escale ?*/
select * from vol where ID_MISSION not in(select escale.id_mission from escale);

/* 12.Quels sont les avions actuellement en vol à ce jour et cette heure ?*/
select * from vol where DATE_VOL = TO_date(sysdate);

/* 13.Quelle est la liste des passagers du vol du 03/06/2014 entre Enghien et Annecy ?*/
SELECT *
FROM personnel,
  vol,
  mission,
  escale
WHERE vol.date_vol         = '03-Juin-2014'
AND vol.ID_EQUIPAGE        = personnel.ID_EQUIPAGE
AND mission.ID_MISSION     = vol.ID_MISSION
AND ((mission.VILLE_DEPART = 'Annecy'
AND escale.ID_MISSION      = vol.ID_MISSION
AND escale.VILLE_ESCALE    = 'Enghien')
OR (mission.VILLE_ARRIVEE  = 'Annecy'
AND escale.ID_MISSION      = vol.ID_MISSION
AND escale.VILLE_ESCALE    = 'Enghien'));

