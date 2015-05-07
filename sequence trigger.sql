
-------------------------------------------------------
--  Ref SEQUENCE increase 1 automatiquement
--------------------------------------------------------


CREATE SEQUENCE increase_elem_seq
START WITH 1
INCREMENT BY 1
NOMAXVALUE NOCYCLE NOCACHE;

CREATE SEQUENCE increase_mission_seq
START WITH 1
INCREMENT BY 1
NOMAXVALUE NOCYCLE NOCACHE;
 --xym

CREATE SEQUENCE increase_revision_seq
START WITH 1
INCREMENT BY 1
NOMAXVALUE NOCYCLE NOCACHE;

CREATE SEQUENCE increase_ville_seq
START WITH 1
INCREMENT BY 1
NOMAXVALUE NOCYCLE NOCACHE;

CREATE SEQUENCE increase_vol_seq
START WITH 1
INCREMENT BY 1
NOMAXVALUE NOCYCLE NOCACHE;

CREATE SEQUENCE increase_passager_seq
START WITH 1
INCREMENT BY 1
NOMAXVALUE NOCYCLE NOCACHE;


CREATE SEQUENCE increase_reservation_seq
START WITH 1
INCREMENT BY 1
NOMAXVALUE NOCYCLE NOCACHE;

CREATE OR REPLACE TRIGGER tgr_ELEMENT_id
BEFORE INSERT ON "ELEMENT" 
FOR EACH ROW WHEN (new.elem_id IS NULL)
BEGIN 
	SELECT increase_elem_seq.nextval INTO :new.elem_id
	FROM DUAL;
END;

CREATE OR REPLACE TRIGGER tgr_mission_id
BEFORE INSERT ON "MISSION" 
FOR EACH ROW WHEN (new.mis_id IS NULL)
BEGIN 
	SELECT increase_mission_seq.nextval INTO :new.mis_id
	FROM DUAL;
END;

CREATE OR REPLACE TRIGGER tgr_revision_id
BEFORE INSERT ON "REVISION" 
FOR EACH ROW WHEN (new.rev_id IS NULL)
BEGIN 
	SELECT increase_revision_seq.nextval INTO :new.rev_id
	FROM DUAL;
END;

CREATE OR REPLACE TRIGGER tgr_ville_id
BEFORE INSERT ON "VILLE" 
FOR EACH ROW WHEN (new.ville_id IS NULL)
BEGIN 
	SELECT increase_ville_seq.nextval INTO :new.ville_id
	FROM DUAL;
END;

CREATE OR REPLACE TRIGGER tgr_vol_id
BEFORE INSERT ON "VOL" 
FOR EACH ROW WHEN (new.vol_id IS NULL)
BEGIN 
	SELECT increase_vol_seq.nextval INTO :new.vol_id
	FROM DUAL;
END;

CREATE OR REPLACE TRIGGER tgr_passager_id
BEFORE INSERT ON "PASSAGER" 
FOR EACH ROW WHEN (new.p_id IS NULL)
BEGIN 
	SELECT increase_passager_seq.nextval INTO :new.p_id
	FROM DUAL;
END;

CREATE OR REPLACE TRIGGER tgr_reservation_id
BEFORE INSERT ON "RESERVATION" 
FOR EACH ROW WHEN (new.res_id IS NULL)
BEGIN 
	SELECT increase_reservation_seq.nextval INTO :new.res_id
	FROM DUAL;
END;
