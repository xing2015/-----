Create table Type(
  id_type Number(10) primary key not null,
  nom_type Varchar(20) not null, 
  capacity NUMBER(5) constraint c_capacity check(capacity >= 15 or capacity <= 30)
);

create table equipage(
  id_equipage number(10) not null primary key,
  nb_heure_mois number(5) not null constraint c_nb_heure check(nb_heure_mois <= 50),
  nb_heure_total number(10) not null
);

create table personnel(
  id_personnel number(10) not null primary key,
  nom_personnel varchar(20) not null,
  prenom_personnel varchar(20) not null,
  phone_number number(20),
  adresse varchar(50),
  salaire number(10),
  date_embauche date not null,
  fonction varchar(20) not null,
  id_equipage number(10) constraint fk_navigant_id_equipage references equipage(id_equipage),
  category varchar(20) not null
);



create table Avion(
  id_avion number(20) primary key not null,
  date_service date not null,
  nb_heure number(20) not null,
  id_type number(10) not null constraint fk_avion_id_type references type(id_type)
);

create table Revision(
  id_revision number(10) not null primary key,
  date_revision date not null,
  id_mecanicien number(10) not null constraint fk_revision_id_mecanicien references personnel(id_personnel)
);

create table Elements(
  id_element number(10) not null primary key,
  nom_element varchar(20) not null,
  id_revision number(10) not null constraint fk_elements_id_revision references Revision(id_revision),
  id_avion number(20) not null constraint fk_elements_id_avion references Avion(id_avion)
);



create table mission(
  id_mission number(10) not null primary key,
  ville_depart varchar(20) not null,
  ville_arrivee varchar(20) not null,
  heure_depart varchar(20) not null
);

create table escale(
  id_escale number(10) not null primary key,
  ville_escale varchar(20) not null,
  heure_arrivee varchar(20) not null,
  duree_escale number(10) not null,
  id_mission number(10) constraint fk_escale_id_mission references mission(id_mission)
);

create table vol(
  id_vol varchar(20) not null primary key,
  date_vol date not null,
  id_avion number(20) constraint fk_avion_id_avion references avion(id_avion),
  id_mission number(10) constraint fk_vol_id_mission references mission(id_mission),
  id_equipage number(10) constraint fk_vol_id_equipage references equipage(id_equipage)
);



