//suppression de tables qui a des contraintes
alter table ELEMENT_REVISION drop constraint ELEM_FK cascade;
alter table ELEMENT_REVISION drop constraint REV_FK cascade;
alter table employee drop constraint categorie_check cascade;
//alter table equipe drop constraint avion_nii_fk cascade;
//alter table equipe drop constraint pilote_id_fk cascade;
//alter table equipe drop constraint steward_id_fk cascade;
alter table escale drop constraint MIS_ID_FK cascade;
alter table escale drop constraint VILLE_ID_FK cascade;
alter table mission drop constraint ville_arrive_fk cascade;
alter table mission drop constraint ville_depart_fk cascade;
//alter table VOL drop constraint equipe_fk cascade;
alter table VOL drop constraint AVION_NII_FK cascade;
alter table VOL drop constraint PILOTE_ID_FK cascade;
alter table VOL drop constraint STEWARD_ID_FK cascade;
alter table VOL drop constraint MIS_FK cascade;

//alter table navigant drop constraint emp_id_pk cascade;
alter table revision drop constraint rev_avion_fk cascade;
alter table revision drop constraint rev_meca_fk cascade;



 --xym


//DROP SEQUENCE increase_emp_seq;
DROP SEQUENCE increase_ELEM_seq;
//DROP SEQUENCE increase_equipe_seq;
DROP SEQUENCE increase_mission_seq;
DROP SEQUENCE increase_revision_seq;
DROP SEQUENCE increase_ville_seq;
DROP SEQUENCE increase_vol_seq;
DROP SEQUENCE increase_passager_seq;
DROP SEQUENCE increase_reservation_seq;

//DROP TRIGGER tgr_emp_id;
DROP TRIGGER tgr_ELEMENT_id;
//DROP TRIGGER tgr_equipe_id;
DROP TRIGGER tgr_mission_id;
DROP TRIGGER tgr_revision_id;
DROP TRIGGER tgr_ville_id;
DROP TRIGGER tgr_vol_id;
DROP TRIGGER tgr_passager_id;
DROP TRIGGER tgr_reservation_id;

drop table element cascade constraints;
drop table element_revision cascade constraints;
drop table employee cascade constraints;
//drop table equipe cascade constraints;
drop table escale cascade constraints;
drop table mission cascade constraints;
drop table VOL cascade constraints;
drop table navigant cascade constraints;
drop table revision cascade constraints;
drop table ville cascade constraints;
drop table avion cascade constraints;
drop table VOL_PASSAGER cascade constraints;
drop table passager cascade constraints;

