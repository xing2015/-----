insert into type(id_type, nom_type, capacity) values (1,'A231',15);
insert into type(id_type, nom_type, capacity) values (2,'B522',30);
insert into type(id_type, nom_type, capacity) values (3,'A318',22);
insert into type(id_type, nom_type, capacity) values (4,'A321',24);
insert into type(id_type, nom_type, capacity) values (5,'B747',30);

insert into avion(id_avion, date_service, nb_heure, id_type) values(2345297200,'01-janvier-2015',400,2);
insert into avion(id_avion, date_service, nb_heure, id_type) values(2345297300,'25-novembre-2014',50,4);
insert into avion(id_avion, date_service, nb_heure, id_type) values(2345297400,'08-septembre-2014',350,5);
insert into avion(id_avion, date_service, nb_heure, id_type) values(2345297500,'11-octobre-2014',100,3);
insert into avion(id_avion, date_service, nb_heure, id_type) values(2345297600,'30-juin-2014',150,1);

insert into equipage(id_equipage, nb_heure_mois, nb_heure_total) values(1,30,120); 
insert into equipage(id_equipage, nb_heure_mois, nb_heure_total) values(2,20,20); 
insert into equipage(id_equipage, nb_heure_mois, nb_heure_total) values(3,0,50);
insert into equipage(id_equipage, nb_heure_mois, nb_heure_total) values(4,50,200);
insert into equipage(id_equipage, nb_heure_mois, nb_heure_total) values(5,10,30);
insert into equipage(id_equipage, nb_heure_mois, nb_heure_total) values(6,0,0);
insert into equipage(id_equipage, nb_heure_mois, nb_heure_total) values(7,35,40);
insert into equipage(id_equipage, nb_heure_mois, nb_heure_total) values(8,15,100);
insert into equipage(id_equipage, nb_heure_mois, nb_heure_total) values(9,5,150);
insert into equipage(id_equipage, nb_heure_mois, nb_heure_total) values(10,8,30);
insert into equipage(id_equipage, nb_heure_mois, nb_heure_total) values(11,49,120);
insert into equipage(id_equipage, nb_heure_mois, nb_heure_total) values(12,0,30);

insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(1,'Lavezzi','Ezequiel','0123456789','35 Rue du Chevalier de la Barre 75018 Paris',2500,'05-Juin-2013','pilote',1,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(2,'Bahebeck','Jean Christophe','0123456789','67 Rue Saint-Lazare, 75009 Paris',2800,'05-Mai-2013','hotesse',1,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(3,'Ibrahimovi','Zlatan','0123456789','Place du 11 Novembre 1918 75010 Paris',3000,'01-F¨¦vrier-2013','pilote',2,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(4,'Cavani','Edison','0123456789','17 Rue Scribe 75009 Paris',2500,'01-Mars-2013','pilote',3,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(5,'Pastore','Javier','0123456789','63 Rue Sainte-Anne 75002 Paris',1900,'07-Juillet-2014','pilote',4,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(6,'Rabiot','Adrien','0123456789','31 Rue d"Argenteuil 75001 Paris',2000,'02-F¨¦vrier-2014','steward',2,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(7,'Verratti','Marco','0123456789','11 Rue Sainte-Anne 75001 Paris',2200,'05-Mai-2014','hotesse',4,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(8,'Matuidi','Blaise','0123456789','33 Rue des Petits Champs 75001 Paris',2300,'01-Juin-2014','pilote',5,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(9,'Motta','Thiago','0123456789','88 Rue des Gravilliers 75003 Paris',2500,'30-Ao?t-2014','pilote',6,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(10,'Lucas','Moura','0123456789','23 Rue au Maire 75003 Paris',2600,'20-Septembre-2014','steward',3,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(11,'Cabaye','Yohan','0123456789','7 Boulevard de Magenta 75010 Paris',2700,'20-F¨¦vrier-2013','steward',5,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(12,'David','Luiz','0123456789','24 Boulevard de Magenta 75010 Paris',3000,'30-Janvier-2013','pilote',7,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(13,'VanderWiel','Gregory','0123456789','5 Rue Sainte-Croix de la Bretonnerie 75004 Paris',2900,'25-F¨¦vrier-2013','hotesse',6,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(14,'Digne','Lucas','0123456789','32 Rue des Rosiers 75004 Paris',3000,'1-Mars-2013','pilote',8,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(15,'Aurier','Serge','0123456789','5 Rue des Rosiers 75004 Paris',2200,'10-Octobre-2013','steward',7,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(16,'Maxwell','Maxwell','0123456789','97 Rue de Charonne 75011 Paris',2400,'11-Novembre-2013','pilote',9,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(17,'Camara','Zoumana','0123456789','17 Rue Crozatier 75012 Paris',2300,'20-Septembre-2013','steward',8,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(18,'Silva','Thiago','0123456789','4 Place Jussieu 75005 Paris',3000,'26-F¨¦vrier-2013','pilote',10,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(19,'Douchez','Nicolas','0123456789','16 Rue de l"Estrapade 75005 Paris',2700,'04-Mars-2013','hotesse',9,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(20,'Maignan','Mike','0123456789','20 Boulevard Saint-Michel 75005 Paris',2600,'20-Mai-2013','steward',10,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(21,'Sirigu','Salvatore','0123456789','77 Boulevard Saint-Jacques 75014 Paris',2800,'24-Avril-2013','pilote',11,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(22,'Diaw','Salvatore','0123456789','55 Rue Ducoudic 75014 Paris',2800,'08-Avril-2013','steward',11,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(23,'Areola','Alphonse','0123456789','17 Avenue Emile Zola 75015 Paris',2400,'20-Janvier-2014','hotesse',12,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction, id_equipage,category)
values(24,'Habran','Romain','0123456789','11B Rue Beaugrenelle 75015 Paris',2000,'20-Ao?t-2014','pilote',12,'navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction,category)
values(25,'Ikoko','Jordan','0123456789','Quai de Grenelle 75015 Paris',2200,'10-Septembre-2014','hotesse','navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction,category)
values(26,'Ongenda','Hervin','0123456789','5 Avenue Anatole France 75007 Paris',2000,'11-Octobre-2014','steward','navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction,category)
values(27,'Sabaly','Youssouf','0123456789','23 Rue de la Com¨¨te 75007 Paris',2000,'10-Septembre-2014','steward','navigant');


insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction,category)
values(28,'Blanc','Laurent','0123456789','153 Boulevard de Stalingrad 94400 Vitry-sur-Seine',2200,'2-F¨¦vrier-2013','mecanicien','non navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction,category)
values(29,'Gasset','Jean-Louis','0123456789','28 Rue Andr¨¦ Bru 94800 Villejuif',2100,'2-Avril-2013','mecanicien','non navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction,category)
values(30,'Dehon','Nicolas','0123456789','97 Rue de Charonne 75011 Paris',2000,'5-Mai-2013','mecanicien','non navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction,category)
values(31,'Lambert','Philippe','0123456789','23 Rue au Maire 75003 Paris',2000,'2-Juin-2013','administratif','non navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction,category)
values(32,'Buchheit','Martin','0123456789','36 Rue Guilleminot 75014 Paris',2000,'1-Ao?t-2013','administratif','non navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction,category)
values(33,'Colinet','Simon','0123456789','19 Rue Commandant Ren¨¦ Mouchotte 75014 Paris',2100,'30-Septembre-2013','administratif','non navigant');
insert into personnel(id_personnel, nom_personnel, prenom_personnel, phone_number, adresse, salaire, date_embauche, fonction,category)
values(34,'Mayer','Nicolas','0123456789','167 Rue de Rennes 75006 Paris',2150,'25-F¨¦vrier-2013','administratif','non navigant');

insert into mission(id_mission, ville_depart, ville_arrivee, heure_depart) values(1,'Creteil','Annecy', '10:00');
insert into mission(id_mission, ville_depart, ville_arrivee, heure_depart) values(2,'Annecy','Creteil', '14:00');
insert into mission(id_mission, ville_depart, ville_arrivee, heure_depart) values(3,'Leman','Marseille', '11:00');
insert into mission(id_mission, ville_depart, ville_arrivee, heure_depart) values(4,'Marseille','Leman', '15:00');
insert into mission(id_mission, ville_depart, ville_arrivee, heure_depart) values(5,'Creteil','Brest', '10:30');
insert into mission(id_mission, ville_depart, ville_arrivee, heure_depart) values(6,'Brest','Creteil', '14:30');
insert into mission(id_mission, ville_depart, ville_arrivee, heure_depart) values(7,'Leman','Lyon', '13:30');
insert into mission(id_mission, ville_depart, ville_arrivee, heure_depart) values(8,'Lyon','Leman', '16:00');
insert into mission(id_mission, ville_depart, ville_arrivee, heure_depart) values(9,'Creteil','Enghien', '10:00');
insert into mission(id_mission, ville_depart, ville_arrivee, heure_depart) values(10,'Enghien','Annecy', '10:30');
insert into mission(id_mission, ville_depart, ville_arrivee, heure_depart) values(11,'Annecy','Enghien', '14:00');
insert into mission(id_mission, ville_depart, ville_arrivee, heure_depart) values(12,'Enghien','Creteil', '17:00');
insert into mission(id_mission, ville_depart, ville_arrivee, heure_depart) values(13,'Enghien','Trouville', '11:00');

insert into escale(id_escale, ville_escale, heure_arrivee, duree_escale,id_mission) values(1,'Enghien','10h30', 180,1);
insert into escale(id_escale, ville_escale, heure_arrivee, duree_escale,id_mission) values(2,'Enghien','17h00', 30, 2);
insert into escale(id_escale, ville_escale, heure_arrivee, duree_escale,id_mission) values(3,'Annecy','12h00', 120, 3);
insert into escale(id_escale, ville_escale, heure_arrivee, duree_escale,id_mission) values(4,'Annecy','17h00', 60, 4);
insert into escale(id_escale, ville_escale, heure_arrivee, duree_escale,id_mission) values(5,'Enghien','11h00', 90, 5);
insert into escale(id_escale, ville_escale, heure_arrivee, duree_escale,id_mission) values(6,'Trouville','12h30', 90, 5);
insert into escale(id_escale, ville_escale, heure_arrivee, duree_escale,id_mission) values(7,'Trouville','15H30', 120, 6);
insert into escale(id_escale, ville_escale, heure_arrivee, duree_escale,id_mission) values(8,'Enghien','17H30', 30, 6);
insert into escale(id_escale, ville_escale, heure_arrivee, duree_escale,id_mission) values(9,'Annecy','14H30', 60, 7);
insert into escale(id_escale, ville_escale, heure_arrivee, duree_escale,id_mission) values(10,'Annecy','17h00', 60, 8);


insert into revision(id_revision, date_revision, id_mecanicien) values(1,'30-Janvier-2015',28);
insert into revision(id_revision, date_revision, id_mecanicien) values(2,'01-Avril-2015',29);
insert into revision(id_revision, date_revision, id_mecanicien) values(3,'08-Mars-2015',30);

insert into elements(id_element, nom_element, id_avion, id_revision) values(1,'moteur',2345297400,1);
insert into elements(id_element, nom_element, id_avion, id_revision) values(2,'aile droite',2345297200,1);
insert into elements(id_element, nom_element, id_avion, id_revision) values(3,'fuselage',2345297600,2);
insert into elements(id_element, nom_element, id_avion, id_revision) values(4,'empennage',2345297500,2);
insert into elements(id_element, nom_element, id_avion, id_revision) values(5,'train principal',2345297300,3);
insert into elements(id_element, nom_element, id_avion, id_revision) values(6,'aile gauche',2345297200,3);
insert into elements(id_element, nom_element, id_avion, id_revision) values(7,'empennage',2345297400,3);
insert into elements(id_element, nom_element, id_avion, id_revision) values(8,'aile gauche',2345297400,2);

insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1501',1,1,2345297200,'19-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1502',2,2,2345297300,'19-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1503',3,3,2345297400,'19-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1504',4,4,2345297500,'19-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1505',5,5,2345297600,'20-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1506',6,6,2345297200,'20-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1507',7,7,2345297300,'20-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1508',8,8,2345297400,'20-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1509',1,9,2345297500,'20-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1510',2,10,2345297600,'20-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1511',5,11,2345297200,'21-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1512',6,12,2345297300,'21-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1513',7,1,2345297400,'21-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1514',8,2,2345297500,'21-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1515',1,3,2345297600,'21-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1516',2,4,2345297200,'21-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1517',1,5,2345297300,'22-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1518',2,6,2345297400,'22-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1519',3,7,2345297500,'22-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1520',4,8,2345297600,'22-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1521',1,9,2345297200,'23-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1522',2,10,2345297300,'23-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1523',3,11,2345297400,'23-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1524',4,12,2345297500,'23-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1525',1,1,2345297600,'24-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1526',2,2,2345297200,'24-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1527',3,3,2345297300,'24-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1528',4,4,2345297400,'24-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1529',1,5,2345297500,'25-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1530',2,6,2345297600,'25-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1531',3,7,2345297200,'25-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1532',4,8,2345297300,'25-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1533',1,9,2345297400,'26-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1534',2,10,2345297500,'26-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1535',3,11,2345297600,'26-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1536',4,12,2345297200,'26-D¨¦cembre-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1401',1,9,2345297300,'02-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1402',2,10,2345297400,'02-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1403',3,11,2345297500,'02-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1404',4,12,2345297600,'02-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1405',1,1,2345297200,'03-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1406',2,2,2345297300,'03-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1407',3,3,2345297400,'03-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1408',4,4,2345297500,'03-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1409',10,5,2345297600,'03-Juin-2014');
insert into vol(ID_VOL,DATE_VOL) values('AC1410','03-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1411',1,6,2345297200,'06-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1412',2,7,2345297300,'06-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1413',3,8,2345297400,'06-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1414',4,9,2345297500,'06-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1415',1,10,2345297600,'01-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1416',2,11,2345297200,'01-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1417',3,8,2345297300,'01-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1418',4,9,2345297400,'01-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1419',5,12,2345297500,'07-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1420',13,1,2345297200,'07-Juin-2014');
insert into vol(ID_VOL,ID_MISSION,ID_EQUIPAGE,ID_AVION,DATE_VOL) values('AC1421',13,2,2345297300,'06-Juin-2014');

