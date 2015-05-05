//suppression de tables qui a des contraintes
alter table ELEMENT_REVISION drop constraint elem_fk cascade;
alter table ELEMENT_REVISION drop constraint rev_fk cascade;
alter table employee drop constraint categorie_check cascade;
alter table equipe drop constraint avion_nii_fk cascade;
alter table equipe drop constraint pilote_id_fk cascade;
alter table equipe drop constraint steward_id_fk cascade;
alter table escale drop constraint mis_id_fk cascade;
alter table escale drop constraint ville_id_fk cascade;
alter table mission drop constraint ville_arrive_fk cascade;
alter table mission drop constraint ville_depart_fk cascade;
alter table mission_equipe drop constraint equipe_fk cascade;
alter table mission_equipe drop constraint mis_fk cascade;
alter table navigant drop constraint emp_id_pk cascade;
alter table revision drop constraint rev_avion_fk cascade;
alter table revision drop constraint rev_meca_fk cascade;
 --xym


DROP SEQUENCE increase_emp_seq;
DROP SEQUENCE increase_ELEM_seq;
DROP SEQUENCE increase_equipe_seq;
DROP SEQUENCE increase_mission_seq;
DROP SEQUENCE increase_revision_seq;
DROP SEQUENCE increase_ville_seq;

DROP TRIGGER tgr_emp_id;
DROP TRIGGER tgr_ELEMENT_id;
DROP TRIGGER tgr_equipe_id;
DROP TRIGGER tgr_mission_id;
DROP TRIGGER tgr_revision_id;
DROP TRIGGER tgr_ville_id;

drop table element;
drop table element_revision;
drop table employee;
drop table equipe;
drop table escale;
drop table mission;
drop table mission_equipe;
drop table navigant;
drop table revision;
drop table ville;
drop table avion;

